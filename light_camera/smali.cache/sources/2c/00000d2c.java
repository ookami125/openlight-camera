package openlight.co.camera.utils;

import android.graphics.Rect;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.params.Face;
import java.util.Arrays;
import java.util.List;
import openlight.co.lib.utils.FeatureManager;
import openlight.co.lib.utils.LogUtil;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class FaceDetector {
    private static final String TAG = "FaceDetector";
    private OnFaceEventListener mOnFaceEventListener;
    private static final FaceDetector sInstance = new FaceDetector();
    private static final boolean ENABLE_FACE_DETECTION = FeatureManager.get().getBoolean("face.detect", true);

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public interface OnFaceEventListener {
        void onFaceDetected(List<Face> list);
    }

    public static FaceDetector get() {
        return sInstance;
    }

    private FaceDetector() {
        String str = TAG;
        LogUtil.v(str, "Face Detect Enabled: " + isFaceDetectionFeatureEnabled());
    }

    public synchronized List<Face> processCaptureResult(CaptureResult captureResult) {
        List<Face> list;
        list = null;
        if (captureResult != null) {
            if (this.mOnFaceEventListener != null && getFaceMode(captureResult) >= 2) {
                list = Arrays.asList((Object[]) captureResult.get(CaptureResult.STATISTICS_FACES));
                this.mOnFaceEventListener.onFaceDetected(list);
            }
        }
        return list;
    }

    public int getFaceMode(CaptureResult captureResult) {
        return ((Integer) captureResult.get(CaptureResult.STATISTICS_FACE_DETECT_MODE)).intValue();
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

    public void convertFaceRectToDisplayCoordinates(Face face, int i, int i2, Rect rect) {
        float width = i / rect.width();
        float height = i2 / rect.height();
        Rect bounds = face.getBounds();
        float f = (bounds.left - rect.left) * width;
        float f2 = (bounds.top - rect.top) * height;
        float f3 = (bounds.bottom - rect.top) * height;
        face.getBounds().set((int) f, (int) f2, (int) ((bounds.right - rect.left) * width), (int) f3);
    }

    public synchronized void registerOnFaceEventListener(OnFaceEventListener onFaceEventListener) {
        if (isFaceDetectionFeatureEnabled()) {
            this.mOnFaceEventListener = onFaceEventListener;
        }
    }

    public synchronized void unregisterOnFaceEventListener() {
        this.mOnFaceEventListener = null;
    }

    public boolean isFaceDetectionFeatureEnabled() {
        return ENABLE_FACE_DETECTION;
    }
}