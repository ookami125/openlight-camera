package openlight.co.camera.utils;

import android.view.Surface;
import openlight.co.camera.AutoFitTextureView;
import openlight.co.lib.content.CamPrefsFactory;

public class CameraState {
    private static final String TAG = "CameraState";
    private static final CameraState sInstance = new CameraState();

    public enum DeviceState {
        OPEN,
        CLOSED
    }

    public enum SessionState {
        PREVIEW,
        WAITING_FOR_3A_CONVERGENCE,
        WAITING_FOR_FOCUS_TRIGGER,
        WAITING_FOR_FOCUS_ACHIEVED,
        WAITING_FOR_STILL_CAPTURE_COMPLETION,
        WAITING_FOR_BURST_CAPTURE_COMPLETION
    }

    public enum StillCaptureMode {
        SINGLE,
        BURST
    }

    private AutoFitTextureView mAutoFitTextureView;
    private DeviceState mCurrentDeviceState = DeviceState.CLOSED;
    private volatile SessionState mCurrentSessionState = SessionState.PREVIEW;
    private StillCaptureMode mStillCaptureMode = StillCaptureMode.SINGLE;
    private Surface mSurface;

    public static CameraState get() {
        return sInstance;
    }

    public void checkAndUpdateCaptureMode() {
        String value = CamPrefsFactory.get().getStringValue("burst_mode");
        mStillCaptureMode = "burst_off".equals(value) ? StillCaptureMode.SINGLE : StillCaptureMode.BURST;
    }

    public AutoFitTextureView getAutoFitTextureView() { return mAutoFitTextureView; }
    public DeviceState getDeviceState() { return mCurrentDeviceState; }
    public SessionState getSessionState() { return mCurrentSessionState; }
    public StillCaptureMode getStillCaptureMode() { return mStillCaptureMode; }
    public Surface getSurface() { return mSurface; }

    public boolean isCameraOpen() { return mCurrentDeviceState == DeviceState.OPEN; }

    public void releaseSurface() {
        if (mSurface != null) {
            mSurface.release();
            mSurface = null;
        }
    }

    public void setDeviceState(DeviceState state) { mCurrentDeviceState = state; }
    public void setSessionState(SessionState state) { mCurrentSessionState = state; }
    public void setSurface(Surface surface) { mSurface = surface; }
    public void setTextureView(AutoFitTextureView view) { mAutoFitTextureView = view; }
}
