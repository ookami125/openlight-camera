package openlight.co.camera.utils;

import android.graphics.Rect;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.params.Face;
import java.util.Arrays;
import java.util.List;
import openlight.co.lib.utils.FeatureManager;
import openlight.co.lib.utils.LogUtil;

public class FaceDetector {

    private static final String TAG = "FaceDetector";
    private static final boolean ENABLE_FACE_DETECTION;
    private static final FaceDetector sInstance = new FaceDetector();

    static {
        ENABLE_FACE_DETECTION = FeatureManager.get().getBoolean("face.detect", true);
    }

    public interface OnFaceEventListener {
        void onFaceDetected(List<Face> faces);
    }

    private OnFaceEventListener mOnFaceEventListener;

    private FaceDetector() {
        LogUtil.v(TAG, "Face Detect Enabled: " + isFaceDetectionFeatureEnabled());
    }

    public static FaceDetector get() {
        return sInstance;
    }

    public boolean isFaceDetectionFeatureEnabled() {
        return ENABLE_FACE_DETECTION;
    }

    public synchronized List<Face> processCaptureResult(CaptureResult result) {
        if (result == null) return null;
        if (mOnFaceEventListener == null) return null;
        if (getFaceMode(result) < 2) return null;
        Face[] faces = (Face[]) result.get(CaptureResult.STATISTICS_FACES);
        List<Face> faceList = Arrays.asList(faces);
        mOnFaceEventListener.onFaceDetected(faceList);
        return faceList;
    }

    public synchronized void registerOnFaceEventListener(OnFaceEventListener listener) {
        if (isFaceDetectionFeatureEnabled()) {
            mOnFaceEventListener = listener;
        }
    }

    public synchronized void unregisterOnFaceEventListener() {
        mOnFaceEventListener = null;
    }

    public int getFaceMode(CaptureResult result) {
        return (Integer) result.get(CaptureResult.STATISTICS_FACE_DETECT_MODE);
    }

    public void enableFaceDetectionOnPreview(CaptureRequest.Builder builder) {
        if (isFaceDetectionFeatureEnabled()) {
            builder.set(CaptureRequest.STATISTICS_FACE_DETECT_MODE, 2);
        }
    }

    public void disableFaceDetectionOnPreview(CaptureRequest.Builder builder) {
        if (isFaceDetectionFeatureEnabled()) {
            builder.set(CaptureRequest.STATISTICS_FACE_DETECT_MODE, 0);
        }
    }

    public void convertFaceRectToDisplayCoordinates(Face face, int viewW, int viewH, Rect sensorRect) {
        float scaleX = (float) viewW / sensorRect.width();
        float scaleY = (float) viewH / sensorRect.height();

        Rect bounds = face.getBounds();
        int left   = (int) ((bounds.left   - sensorRect.left) * scaleX);
        int top    = (int) ((bounds.top    - sensorRect.top)  * scaleY);
        int right  = (int) ((bounds.right  - sensorRect.left) * scaleX);
        int bottom = (int) ((bounds.bottom - sensorRect.top)  * scaleY);
        face.getBounds().set(left, top, right, bottom);
    }
}
