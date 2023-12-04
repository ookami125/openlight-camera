package openlight.co.camera;

import android.hardware.camera2.CaptureRequest;
import android.media.Image;
import android.media.ImageReader;
import android.os.Handler;
import android.util.Size;
import android.view.Surface;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicInteger;
import openlight.co.camera.listener.OnImageSavedListener;
import openlight.co.camera.managers.CameraManager;
import openlight.co.camera.utils.CamPrefsUtils;
import openlight.co.camera.utils.ExecutorUtil;
import openlight.co.camera.utils.FaceDetector;
import openlight.co.camera.utils.ImageUtil;
import openlight.co.camera.utils.TimingLoggerUtil;
import openlight.co.lib.content.CamPrefsFactory;
import openlight.co.lib.content.Prefs;
import openlight.co.lib.utils.LogUtil;
import openlight.co.lib.utils.Utils;

/* loaded from: /tmp/jadx-13519048814434252820.dex */
public class ImageReaderManager {
    private static final int IMAGE_READER_BUFFER_COUNT = 5;
    private static final int IMAGE_READER_BUFFER_COUNT_HISTOGRAM = 30;
    private static final int MAX_PREVIEW_HEIGHT = 1080;
    private static final int MAX_PREVIEW_WIDTH = 1920;
    private static final int MAX_PREVIEW_WIDTH_4_3 = 1440;
    private static final String TAG = Utils.safeTag(ImageReaderManager.class);
    private static ImageReaderManager sInstance;
    private RefCountedAutoCloseable<ImageReader> mJpegImageReader;
    private OnImageStatusListener mOnImageStatusListener;
    private PendingCapturesCompleteListener mPendingCapturesCompleteListener;
    private RefCountedAutoCloseable<ImageReader> mRawImageReader;
    private RefCountedAutoCloseable<ImageReader> mYuvImageReader;
    private final CameraInfo mCameraInfo = CameraInfo.get();
    private final Prefs mCameraPref = CamPrefsFactory.get();
    private final TimingLoggerUtil mTimingLoggerUtil = TimingLoggerUtil.get();
    private final TreeMap<Integer, ImageUtil.ImageSaver.ImageSaverBuilder> mJpegResultQueue = new TreeMap<>();
    private final TreeMap<Integer, ImageUtil.ImageSaver.ImageSaverBuilder> mRawResultQueue = new TreeMap<>();
    private final ImageReader.OnImageAvailableListener mOnJpegImageAvailableListener = new ImageReader.OnImageAvailableListener() { // from class: openlight.co.camera.ImageReaderManager.1
        @Override // android.media.ImageReader.OnImageAvailableListener
        public void onImageAvailable(ImageReader imageReader) {
            LogUtil.i(ImageReaderManager.TAG, "JPEG Image Available");
            ImageReaderManager.this.mTimingLoggerUtil.captureTiming(TimingLoggerUtil.TimeToCaptureSplits.JPEG_AVAILABLE);
            ImageReaderManager.this.dequeueAndSaveImage(ImageReaderManager.this.mJpegResultQueue, ImageReaderManager.this.mJpegImageReader);
        }
    };
    private final ImageReader.OnImageAvailableListener mOnYuvImageAvailableListener = new ImageReader.OnImageAvailableListener() { // from class: openlight.co.camera.ImageReaderManager.2
        @Override // android.media.ImageReader.OnImageAvailableListener
        public void onImageAvailable(ImageReader imageReader) {
            if (ImageReaderManager.this.mOnImageStatusListener != null) {
                ImageReaderManager.this.mOnImageStatusListener.onYuvImageAvailable(imageReader);
            }
        }
    };
    private final ImageReader.OnImageAvailableListener mOnRawImageAvailableListener = new ImageReader.OnImageAvailableListener() { // from class: openlight.co.camera.ImageReaderManager.3
        @Override // android.media.ImageReader.OnImageAvailableListener
        public void onImageAvailable(ImageReader imageReader) {
            LogUtil.i(ImageReaderManager.TAG, "Raw Image Available");
            ImageReaderManager.this.mTimingLoggerUtil.captureTiming(TimingLoggerUtil.TimeToCaptureSplits.RAW_AVAILABLE);
            ImageReaderManager.this.dequeueAndSaveImage(ImageReaderManager.this.mRawResultQueue, ImageReaderManager.this.mRawImageReader);
        }
    };

    /* loaded from: /tmp/jadx-13519048814434252820.dex */
    public interface OnImageStatusListener {
        void onImageSaved(int i, String str, int i2);

        void onYuvImageAvailable(ImageReader imageReader);
    }

    /* loaded from: /tmp/jadx-13519048814434252820.dex */
    public interface PendingCapturesCompleteListener {
        void onComplete();
    }

    public static synchronized ImageReaderManager get() {
        ImageReaderManager imageReaderManager;
        synchronized (ImageReaderManager.class) {
            if (sInstance == null) {
                sInstance = new ImageReaderManager();
            }
            imageReaderManager = sInstance;
        }
        return imageReaderManager;
    }

    public void setUpImageReaders() {
        synchronized (CameraManager.get().getCameraStateLock()) {
            Size largestRawOutputSize = this.mCameraInfo.getLargestRawOutputSize();
            Size jpegAndYuvSize = getJpegAndYuvSize();
            Size jpegAndYuvSize2 = getJpegAndYuvSize();
            int rawFormat = this.mCameraInfo.getRawFormat();
            Handler cameraBackgroundHandler = CameraManager.get().getCameraBackgroundHandler();
            if (this.mJpegImageReader == null || this.mJpegImageReader.get() == null) {
                this.mJpegImageReader = new RefCountedAutoCloseable<>(ImageReader.newInstance(jpegAndYuvSize2.getWidth(), jpegAndYuvSize2.getHeight(), 256, 5));
            }
            this.mJpegImageReader.get().setOnImageAvailableListener(this.mOnJpegImageAvailableListener, cameraBackgroundHandler);
            String str = TAG;
            LogUtil.d(str, "JPEG Image Reader: " + this.mJpegImageReader);
            if (CameraApp.isLight()) {
                if (this.mRawImageReader == null || this.mRawImageReader.get() == null) {
                    this.mRawImageReader = new RefCountedAutoCloseable<>(ImageReader.newInstance(largestRawOutputSize.getWidth(), largestRawOutputSize.getHeight(), rawFormat, 5));
                }
                this.mRawImageReader.get().setOnImageAvailableListener(this.mOnRawImageAvailableListener, cameraBackgroundHandler);
                String str2 = TAG;
                LogUtil.d(str2, "Raw Image Reader: " + this.mRawImageReader);
            }
            if (CameraActivity.HISTOGRAM_SUPPORTED && !FaceDetector.get().isFaceDetectionFeatureEnabled()) {
                if (this.mYuvImageReader == null || this.mYuvImageReader.get() == null) {
                    this.mYuvImageReader = new RefCountedAutoCloseable<>(ImageReader.newInstance(jpegAndYuvSize.getWidth(), jpegAndYuvSize.getHeight(), 35, 30));
                }
                this.mYuvImageReader.get().setOnImageAvailableListener(this.mOnYuvImageAvailableListener, cameraBackgroundHandler);
            }
            String str3 = TAG;
            LogUtil.d(str3, "YUV Image Reader: " + this.mYuvImageReader);
        }
    }

    public void closeImageReaders() {
        if (this.mRawImageReader != null) {
            this.mRawImageReader.close();
            this.mRawImageReader = null;
        }
        if (this.mJpegImageReader != null) {
            this.mJpegImageReader.close();
            this.mJpegImageReader = null;
        }
        if (this.mYuvImageReader != null) {
            this.mYuvImageReader.close();
            this.mYuvImageReader = null;
        }
    }

    public void addJpegResultQueue(int i, ImageUtil.ImageSaver.ImageSaverBuilder imageSaverBuilder) {
        this.mJpegResultQueue.put(Integer.valueOf(i), imageSaverBuilder);
    }

    public void addRawResultQueue(int i, ImageUtil.ImageSaver.ImageSaverBuilder imageSaverBuilder) {
        this.mRawResultQueue.put(Integer.valueOf(i), imageSaverBuilder);
    }

    public void removeJpegRequestQueue(int i) {
        this.mJpegResultQueue.remove(Integer.valueOf(i));
    }

    public void removeRawRequestQueue(int i) {
        this.mRawResultQueue.remove(Integer.valueOf(i));
    }

    public void setOnImageStatusListener(OnImageStatusListener onImageStatusListener) {
        this.mOnImageStatusListener = onImageStatusListener;
    }

    public void handleCompletionLocked(int i, ImageUtil.ImageSaver.ImageSaverBuilder imageSaverBuilder, TreeMap<Integer, ImageUtil.ImageSaver.ImageSaverBuilder> treeMap) {
        ImageUtil.ImageSaver buildIfComplete;
        if (imageSaverBuilder == null || (buildIfComplete = imageSaverBuilder.buildIfComplete()) == null) {
            return;
        }
        treeMap.remove(Integer.valueOf(i));
        ExecutorUtil.execute(buildIfComplete, buildIfComplete.getName());
    }

    /* loaded from: /tmp/jadx-13519048814434252820.dex */
    public static class RefCountedAutoCloseable<T extends AutoCloseable> implements AutoCloseable {
        private T mObject;
        int mRefCount = 0;
        private final AtomicInteger mSequence = new AtomicInteger();

        RefCountedAutoCloseable(T t) {
            if (t == null) {
                throw new NullPointerException();
            }
            this.mObject = t;
        }

        synchronized T getAndRetain() {
            if (this.mRefCount < 0) {
                return null;
            }
            this.mRefCount++;
            return this.mObject;
        }

        synchronized T get() {
            return this.mObject;
        }

        int getSequence() {
            return this.mSequence.get();
        }

        int getAndIncrementSequence() {
            return this.mSequence.getAndIncrement();
        }

        void setSequence(int i) {
            this.mSequence.set(i);
        }

        @Override // java.lang.AutoCloseable
        public synchronized void close() {
            if (this.mRefCount >= 0) {
                this.mRefCount--;
                if (this.mRefCount < 0) {
                    try {
                        this.mObject.close();
                        this.mObject = null;
                    } catch (Exception e) {
                        throw new RuntimeException(e);
                    }
                }
            }
        }
    }

    public ImageReader getJpegImageReader() {
        return this.mJpegImageReader.get();
    }

    public ImageReader getRawImageReader() {
        if (this.mRawImageReader == null) {
            return null;
        }
        return this.mRawImageReader.get();
    }

    public ImageReader getYuvImageReader() {
        if (this.mYuvImageReader == null) {
            return null;
        }
        return this.mYuvImageReader.get();
    }

    public int getJpegRefCount() {
        return this.mJpegImageReader.mRefCount;
    }

    public int getRawRefCount() {
        if (this.mRawImageReader == null) {
            return 0;
        }
        return this.mRawImageReader.mRefCount;
    }

    public TreeMap<Integer, ImageUtil.ImageSaver.ImageSaverBuilder> getJpegResultQueue() {
        return this.mJpegResultQueue;
    }

    public TreeMap<Integer, ImageUtil.ImageSaver.ImageSaverBuilder> getRawResultQueue() {
        return this.mRawResultQueue;
    }

    public ImageUtil.ImageSaver.ImageSaverBuilder getJpegImageBuilder(int i) {
        return this.mJpegResultQueue.get(Integer.valueOf(i));
    }

    public ImageUtil.ImageSaver.ImageSaverBuilder getRawImageBuilder(int i) {
        return this.mRawResultQueue.get(Integer.valueOf(i));
    }

    public void setYuvListenerForHistogram(boolean z, CaptureRequest.Builder builder) {
        if (!CameraActivity.HISTOGRAM_SUPPORTED || FaceDetector.get().isFaceDetectionFeatureEnabled()) {
            return;
        }
        Surface surface = this.mYuvImageReader.get().getSurface();
        if (z) {
            builder.addTarget(surface);
            this.mYuvImageReader.get().setOnImageAvailableListener(this.mOnYuvImageAvailableListener, CameraManager.get().getCameraBackgroundHandler());
            return;
        }
        builder.removeTarget(surface);
        this.mYuvImageReader.get().setOnImageAvailableListener(null, null);
    }

    public void setPendingCapturesCompleteListener(PendingCapturesCompleteListener pendingCapturesCompleteListener) {
        this.mPendingCapturesCompleteListener = pendingCapturesCompleteListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dequeueAndSaveImage(TreeMap<Integer, ImageUtil.ImageSaver.ImageSaverBuilder> treeMap, final RefCountedAutoCloseable<ImageReader> refCountedAutoCloseable) {
        synchronized (CameraManager.get().getCameraStateLock()) {
            Map.Entry<Integer, ImageUtil.ImageSaver.ImageSaverBuilder> firstEntry = treeMap.firstEntry();
            String str = TAG;
            LogUtil.d(str, "[IMAGE] ID: " + refCountedAutoCloseable.getSequence());
            ImageUtil.ImageSaver.ImageSaverBuilder value = firstEntry.getValue();
            if (refCountedAutoCloseable.getAndRetain() == null) {
                LogUtil.w(TAG, "[IMAGE] Paused the activity before we could save the image, ImageReader already closed.");
                refCountedAutoCloseable.close();
                treeMap.remove(firstEntry.getKey());
                return;
            }
            try {
                Image acquireNextImage = refCountedAutoCloseable.get().acquireNextImage();
                final int format = acquireNextImage.getFormat();
                String str2 = TAG;
                LogUtil.d(str2, "[IMAGE] Light Image format in acquireNextImage reader: " + format);
                value.setImage(acquireNextImage);
                value.setSaveImageListener(new OnImageSavedListener() { // from class: openlight.co.camera.ImageReaderManager.4
                    @Override // openlight.co.camera.listener.OnImageSavedListener
                    public void onSaved(String str3, int i) {
                        String str4 = ImageReaderManager.TAG;
                        LogUtil.i(str4, "Image saved path: " + str3);
                        if (ImageReaderManager.this.mOnImageStatusListener != null) {
                            ImageReaderManager.this.mOnImageStatusListener.onImageSaved(format, str3, i);
                        }
                    }

                    @Override // openlight.co.camera.listener.OnImageSavedListener
                    public void onComplete(boolean z) {
                        refCountedAutoCloseable.close();
                        boolean z2 = format == 35;
                        if (z2 == CameraApp.isLight()) {
                            CameraManager.get().decrementCapturesInFlight();
                            String str3 = ImageReaderManager.TAG;
                            LogUtil.i(str3, "RAW File saved, pending captures: " + CameraManager.get().getCapturesInFlight());
                        }
                        if (z2) {
                            String str4 = ImageReaderManager.TAG;
                            LogUtil.i(str4, "RAW File saved onComplete: " + z);
                            ImageReaderManager.this.mTimingLoggerUtil.captureTiming(TimingLoggerUtil.TimeToCaptureSplits.RAW_SAVED);
                        } else {
                            String str5 = ImageReaderManager.TAG;
                            LogUtil.i(str5, "Jpeg File saved onComplete: " + z);
                            ImageReaderManager.this.mTimingLoggerUtil.captureTiming(TimingLoggerUtil.TimeToCaptureSplits.JPEG_SAVED);
                        }
                        if (ImageReaderManager.this.mPendingCapturesCompleteListener != null) {
                            ImageReaderManager.this.mPendingCapturesCompleteListener.onComplete();
                        }
                    }
                });
                handleCompletionLocked(firstEntry.getKey().intValue(), value, treeMap);
            } catch (IllegalStateException e) {
                String str3 = TAG;
                LogUtil.e(str3, "Too many images queued for saving, dropping image for request: " + firstEntry.getKey(), e);
                refCountedAutoCloseable.close();
                treeMap.remove(firstEntry.getKey());
                CameraManager.get().decrementCapturesInFlight();
            }
        }
    }

    private Size getJpegAndYuvSize() {
        char c;
        String stringValue = this.mCameraPref.getStringValue(CamPrefsUtils.CAM_ASPECT_RATIO);
        Size size = new Size(MAX_PREVIEW_WIDTH_4_3, 1080);
        int hashCode = stringValue.hashCode();
        if (hashCode == 48936) {
            if (stringValue.equals(CamPrefsUtils.ASPECT_RATIO_1_1)) {
                c = 1;
            }
            c = 65535;
        } else if (hashCode != 51821) {
            if (hashCode == 1513508 && stringValue.equals(CamPrefsUtils.ASPECT_RATIO_16_9)) {
                c = 2;
            }
            c = 65535;
        } else {
            if (stringValue.equals(CamPrefsUtils.ASPECT_RATIO_4_3)) {
                c = 0;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
                return size;
            case 1:
                return new Size(1080, 1080);
            case 2:
                return new Size(1920, 1080);
            default:
                return size;
        }
    }
}