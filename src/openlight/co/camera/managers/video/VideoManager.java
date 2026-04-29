package openlight.co.camera.managers.video;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraDevice;
import android.media.CamcorderProfile;
import android.media.MediaCodec;
import android.media.MediaRecorder;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Size;
import android.view.Surface;
import java.io.File;
import java.io.IOException;
import openlight.co.camera.CameraApp;
import openlight.co.camera.managers.CameraManager;
import openlight.co.camera.managers.focus.FocusManager;
import openlight.co.camera.metrics.CameraMetrics;
import openlight.co.camera.metrics.Metrics;
import openlight.co.camera.enums.VideoQualityMode;
import openlight.co.camera.utils.MediaFileManager;
import openlight.co.camera.view.rotate.OrientationsController;
import openlight.co.lib.utils.FeatureManager;
import openlight.co.lib.utils.LogUtil;
import openlight.co.lib.utils.Utils;

public class VideoManager extends CameraManager {
    private static final String TAG = "VideoManager";

    private static final VideoManager sVideoManager;

    static {
        sVideoManager = new VideoManager();
    }

    private final Metrics mCameraMetrics;
    private volatile State mCurrentState;
    private String mCurrentVideoAbsolutePath;
    private final MediaRecorder.OnErrorListener mErrorListener;
    private final MediaRecorder.OnInfoListener mInfoListener;
    private final MediaFileManager mMediaFileMgr;
    private MediaRecorder mMediaRecorder;
    private Surface mRecordingSurface;
    private OnStatusListener mStatusListener;
    private final File mThumbnailsDir;
    private volatile boolean mUseSuffixFileName;
    private int mVideoQualityProfile;

    private VideoManager() {
        super();
        mVideoQualityProfile = FeatureManager.get().getInt("video.quality", 6);
        mCameraMetrics = Metrics.get();
        mMediaFileMgr = MediaFileManager.get();
        mCurrentState = State.NOT_INITIALIZED;
        mUseSuffixFileName = false;
        mThumbnailsDir = Utils.videoThumbnailsDir();
        mErrorListener = (mr, what, extra) -> {
            LogUtil.e(TAG, "Media recorder onError: " + what + " - " + extra);
            restartCamera();
            mCameraMetrics.add("event_media_recorder_error",
                    CameraMetrics.createPropertiesForMediaRecorderError(what, extra));
        };
        mInfoListener = (mr, what, extra) -> {
            LogUtil.i(TAG, "Media recorder onInfo: " + what + " - " + extra);
            if (what == MediaRecorder.MEDIA_RECORDER_INFO_MAX_DURATION_REACHED
                    || what == MediaRecorder.MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED) {
                setCurrentState(State.PREVIEW);
                stopRecording();
                mStatusListener.onError(ErrorType.MAX_FILE_SIZE_REACHED);
            }
            mCameraMetrics.add("event_media_recorder_info",
                    CameraMetrics.createPropertiesForMediaRecorderInfo(what, extra));
        };
    }

    public static VideoManager get() {
        return sVideoManager;
    }

    public boolean canGotoGallery() {
        return mCurrentState == State.PREVIEW;
    }

    @Override
    public boolean closeCamera() {
        LogUtil.d(TAG, "in close camera");
        releaseMediaRecorder();
        return super.closeCamera();
    }

    public void continueRecording() {
        try {
            setUseSuffixFileName(true);
            startRecording();
        } catch (Exception e) {
            LogUtil.e(TAG, "Fail to continue recording.", e);
            Metrics.get().add("event_media_recorder_start_failed");
            mStatusListener.onError(ErrorType.VIDEO_RECORD_START_FAILED);
            restartCamera();
        }
    }

    @Override
    public void createCameraSession(SurfaceTexture surfaceTexture, Size size) {
        try {
            setCurrentState(State.PREVIEW);
            mSurfaceList.clear();
            setupMediaRecorderAndSurface();
            mPreviewRequestBuilder = mCameraDevice.createCaptureRequest(CameraDevice.TEMPLATE_RECORD);
            mPreviewRequestBuilder.addTarget(mRecordingSurface);
            mSurfaceList.add(mRecordingSurface);
            createCameraPreviewSessionLocked(surfaceTexture, size);
        } catch (IOException | CameraAccessException e) {
            LogUtil.e(TAG, "Exception when creating preview session using TEMPLATE_RECORD", e);
            Metrics.get().add("event_camera_session_error");
            restartCamera();
        }
    }

    @Override
    public String getBackgroundThreadName() {
        return "VideoBackground";
    }

    public boolean isRecording() {
        return mCurrentState.isRecording();
    }

    public void setCurrentState(State state) {
        if (state != mCurrentState) {
            mCurrentState = state;
            if (state == State.PREVIEW || state == State.RECORDING) {
                mStatusListener.onRecordStatusChange(state);
            }
        }
    }

    public void setStatusListener(OnStatusListener listener) {
        mStatusListener = listener;
    }

    public void setUseSuffixFileName(boolean useSuffix) {
        mUseSuffixFileName = useSuffix;
    }

    public void startRecording() {
        if (mMediaRecorder == null) {
            return;
        }
        try {
            LogUtil.d(TAG, "Start recording");
            setCurrentState(State.RECORDING);
            resetMediaRecorder();
            prepareMediaRecorder();
            mMediaRecorder.start();
        } catch (IOException | IllegalStateException e) {
            LogUtil.e(TAG, "Fail to start recording.", e);
            Metrics.get().add("event_media_recorder_start_failed");
            mStatusListener.onError(ErrorType.VIDEO_RECORD_START_FAILED);
            restartCamera();
        }
    }

    public void stopRecording() {
        LogUtil.d(TAG, "Stop Recording");
        try {
            setCurrentState(State.PREVIEW);
            mStatusListener.onStopRecording();
            mMediaRecorder.stop();
            mStatusListener.onMediaSaveComplete(mCurrentVideoAbsolutePath);
            File videoFile = new File(mCurrentVideoAbsolutePath);
            if (videoFile.exists() && videoFile.length() >= 0x2800) {
                MediaScannerConnection.scanFile(
                        CameraApp.get(),
                        new String[]{mCurrentVideoAbsolutePath},
                        new String[]{"video/mp4"},
                        this::createVideoThumbnail);
            } else {
                LogUtil.e(TAG, "Invalid MP4, file not found or size less than minimum");
                Metrics.get().add("event_media_recorder_invalid_size");
            }
            setUseSuffixFileName(false);
        } catch (RuntimeException e) {
            LogUtil.e(TAG, "Fail to stop recording.", e);
            Metrics.get().add("event_media_recorder_stop_failed");
            mStatusListener.onError(ErrorType.VIDEO_RECORD_STOP_FAILED);
            restartCamera();
        }
    }

    private void createVideoThumbnail(String path, Uri uri) {
        CameraApp context = CameraApp.get();
        String fileName = new File(path).getName();
        String thumbName = Utils.thumbnailNameFor(fileName);
        File destFile = new File(mThumbnailsDir, thumbName);

        if (destFile.exists()) {
            LogUtil.d(TAG, "Found existing thumbnail file for " + fileName + ", deleting it.");
            destFile.delete();
        }

        ContentResolver cr = context.getContentResolver();
        long videoId = ContentUris.parseId(uri);
        BitmapFactory.Options options = new BitmapFactory.Options();
        Bitmap thumb = MediaStore.Video.Thumbnails.getThumbnail(cr, videoId, MediaStore.Video.Thumbnails.MINI_KIND, options);

        if (thumb == null) {
            LogUtil.w(TAG, "No thumbnail for " + fileName);
            return;
        }

        Cursor cursor = cr.query(
                MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI,
                new String[]{"_id", "_data"},
                "video_id=?",
                new String[]{Long.toString(videoId)},
                null);

        if (cursor == null) {
            return;
        }

        try {
            if (cursor.moveToFirst()) {
                long thumbId = cursor.getLong(0);
                File thumbFile = new File(cursor.getString(1));
                if (thumbFile.exists() && thumbFile.renameTo(destFile)) {
                    Uri thumbUri = ContentUris.withAppendedId(
                            MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, thumbId);
                    ContentValues cv = new ContentValues();
                    cv.put("_data", destFile.getAbsolutePath());
                    cr.update(thumbUri, cv, null, null);
                    MediaScannerConnection.scanFile(
                            context,
                            new String[]{destFile.getAbsolutePath()},
                            new String[]{"image/jpeg"},
                            (p, u) -> LogUtil.d(TAG, "scanned video thumbnail " + p));
                } else {
                    LogUtil.d(TAG, "Thumbnail file not found or failed to rename " + fileName);
                }
            } else {
                LogUtil.d(TAG, "Not thumbnail media store row " + fileName);
            }
        } finally {
            cursor.close();
        }
    }

    private String getVideoFileAbsolutePath() {
        if (mCurrentState == State.RECORDING) {
            mMediaFileMgr.deleteTempVideoFile();
            if (mUseSuffixFileName) {
                return mMediaFileMgr.getVideoFilePathWithSuffix();
            } else {
                mMediaFileMgr.resetVideoSuffixNumber();
                return mMediaFileMgr.getVideoFilePath();
            }
        }
        return mMediaFileMgr.getVideoTempFilePath();
    }

    private void prepareMediaRecorder() throws IOException {
        LogUtil.d(TAG, "prepareMediaRecorder");
        mMediaRecorder.setOnErrorListener(mErrorListener);
        mMediaRecorder.setOnInfoListener(mInfoListener);
        mMediaRecorder.setAudioSource(MediaRecorder.AudioSource.CAMCORDER);
        mMediaRecorder.setVideoSource(MediaRecorder.VideoSource.SURFACE);
        mMediaRecorder.setInputSurface(mRecordingSurface);
        mVideoQualityProfile = VideoQualityMode.fromAnyString(mCamPref.getStringValue("quality_profile"))
                .getQualityProfile();
        mMediaRecorder.setProfile(CamcorderProfile.get(mVideoQualityProfile));
        mCurrentVideoAbsolutePath = getVideoFileAbsolutePath();
        mMediaRecorder.setOutputFile(mCurrentVideoAbsolutePath);
        mMediaRecorder.setOrientationHint(
                OrientationsController.get().getConfig().getOrientationHint());
        mMediaRecorder.prepare();
        LogUtil.d(TAG, "media recorder prepared");
    }

    private void releaseMediaRecorder() {
        if (mMediaRecorder != null) {
            resetMediaRecorder();
            mMediaRecorder.release();
            mRecordingSurface.release();
            mRecordingSurface = null;
            mMediaRecorder = null;
        }
    }

    private void resetMediaRecorder() {
        if (mMediaRecorder != null) {
            mMediaRecorder.setOnErrorListener(null);
            mMediaRecorder.setOnInfoListener(null);
            mMediaRecorder.reset();
        }
    }

    private void restartCamera() {
        LogUtil.d(TAG, "restartCamera");
        if (isCameraInOpenState()) {
            closeCamera();
            openCamera();
            FocusManager.get().resetFocusStateToIdle();
            mUpdatePreviewListener.updateVideoPreview();
        }
    }

    private void setupMediaRecorderAndSurface() throws IOException {
        LogUtil.d(TAG, "Create media recorder and persistent input surface");
        if (mMediaRecorder == null) {
            mMediaRecorder = new MediaRecorder();
        }
        if (mRecordingSurface == null) {
            mRecordingSurface = MediaCodec.createPersistentInputSurface();
        }
        prepareMediaRecorder();
    }

    public interface OnStatusListener {
        void onError(ErrorType errorType);
        void onMediaSaveComplete(String path);
        void onRecordStatusChange(State state);
        void onStopRecording();
    }

    public enum State {
        NOT_INITIALIZED,
        PREVIEW,
        CONTINUE_RECORDING,
        RECORDING {
            @Override
            public boolean isRecording() {
                return true;
            }
        };

        public boolean isRecording() {
            return false;
        }
    }

    public enum ErrorType {
        FILE_SAVE_FAILED,
        MAX_FILE_SIZE_REACHED,
        VIDEO_RECORD_START_FAILED,
        VIDEO_RECORD_STOP_FAILED
    }
}
