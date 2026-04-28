package openlight.co.camera.managers.image;

import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraAccessException;
import android.util.Size;
import openlight.co.camera.CameraActivity;
import openlight.co.camera.CameraApp;
import openlight.co.camera.ImageReaderManager;
import openlight.co.camera.managers.CameraManager;
import openlight.co.camera.managers.capture.CaptureManager;
import openlight.co.camera.utils.CameraState;
import openlight.co.camera.utils.FaceDetector;
import openlight.co.lib.utils.LogUtil;

public class ImageManager extends CameraManager {

    private static final String TAG = "ImageManager";
    private static final int WAIT_FOR_CAPTURE_SLEEP_MS = 100;
    private static final int WAIT_FOR_CAPTURE_TOTAL_SLEEP_MS = 2000;
    private static final ImageManager sImageManager = new ImageManager();

    private volatile int mCapturesInFlight;
    private final ImageReaderManager mImageReaderManager;

    private ImageManager() {
        super();
        mImageReaderManager = ImageReaderManager.get();
    }

    public static ImageManager get() {
        return sImageManager;
    }

    @Override
    public synchronized boolean openCamera() {
        if (mImageReaderManager != null) {
            LogUtil.v(TAG, "Clear capture complete listener");
            mImageReaderManager.setPendingCapturesCompleteListener(null);
        }
        mCapturesInFlight = 0;
        mImageReaderManager.setUpImageReaders();
        return super.openCamera();
    }

    @Override
    public synchronized boolean closeCamera() {
        try {
            mCameraOpenCloseLock.acquire();
            if (getPendingReaderReferences() <= 0) {
                LogUtil.v(TAG, "No pending captures, close camera device");
                return closeImageReadersAndCamera();
            }
            LogUtil.v(TAG, "captures save in progress, release surface and stop repeating");
            stopRepeating();
            CameraState.get().releaseSurface();
            mImageReaderManager.setPendingCapturesCompleteListener(() -> {
                if (getPendingReaderReferences() <= 0) {
                    LogUtil.v(TAG, "Pending captures are saved, close camera device");
                    closeImageReadersAndCamera();
                    stopBackgroundThread();
                }
            });
        } catch (InterruptedException e) {
            LogUtil.w(TAG, "InterruptedException while acquiring lock during camera close.", e);
        }
        return false;
    }

    private boolean closeImageReadersAndCamera() {
        initCapturesInFlight();
        mImageReaderManager.closeImageReaders();
        return super.closeCamera();
    }

    @Override
    public void createCameraSession(SurfaceTexture surfaceTexture, Size previewSize) {
        try {
            ImageReaderManager irm = mImageReaderManager;
            android.media.ImageReader jpegReader = irm.getJpegImageReader();
            android.media.ImageReader rawReader = irm.getRawImageReader();
            android.media.ImageReader yuvReader = irm.getYuvImageReader();

            LogUtil.d(TAG, "[IMAGE_READER] Jpeg Reader: " + jpegReader);
            LogUtil.d(TAG, "[IMAGE_READER] Raw Reader: " + rawReader);
            LogUtil.d(TAG, "[IMAGE_READER] Yuv Reader: " + yuvReader);

            mSurfaceList.clear();

            mPreviewRequestBuilder = mCameraDevice.createCaptureRequest(android.hardware.camera2.CameraDevice.TEMPLATE_PREVIEW);

            mSurfaceList.add(jpegReader.getSurface());

            if (CameraApp.isLight()) {
                mSurfaceList.add(rawReader.getSurface());
            }

            if (CameraActivity.HISTOGRAM_SUPPORTED && !FaceDetector.get().isFaceDetectionFeatureEnabled()) {
                mSurfaceList.add(yuvReader.getSurface());
            }

            createCameraPreviewSessionLocked(surfaceTexture, previewSize);
        } catch (CameraAccessException e) {
            LogUtil.e(TAG, e.getMessage());
        }
    }

    public int getPendingReaderReferences() {
        return mImageReaderManager.getRawResultQueue().size()
             + mImageReaderManager.getJpegResultQueue().size()
             + mImageReaderManager.getRawRefCount()
             + mImageReaderManager.getJpegRefCount();
    }

    public void incrementCapturesInFlight() {
        mCapturesInFlight++;
    }

    public void decrementCapturesInFlight() {
        if (mCapturesInFlight > 0) {
            mCapturesInFlight--;
        }
    }

    public int getCapturesInFlight() {
        return mCapturesInFlight;
    }

    public boolean canGotoGallery() {
        LogUtil.d(TAG, "canGotoGallery() mCapturesInFlight: " + mCapturesInFlight);
        return mCapturesInFlight == 0;
    }

    @Override
    protected void initCapturesInFlight() {
        mCapturesInFlight = 0;
    }

    @Override
    protected void handleOnCaptureFailed() {
        if (mUpdatePreviewListener != null) {
            mUpdatePreviewListener.cameraDeviceError();
        }
    }

    @Override
    public void checkForQueuedState() {
        if (CaptureManager.get().isPendingCapturePostFocus()) {
            LogUtil.i(TAG, "Capture Queued during focus. Going for capture now");
            captureStart();
        }
    }

    @Override
    public String getBackgroundThreadName() {
        return "PictureBackground";
    }
}
