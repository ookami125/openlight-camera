package openlight.co.camera;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.design.widget.Snackbar;
import android.support.v13.app.FragmentCompat;
import android.util.Size;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.util.List;
import openlight.co.camera.enums.FtuView;
import openlight.co.camera.enums.OrientationConfig;
import openlight.co.camera.haptic.Immersion;
import openlight.co.camera.haptic.PlayHaptic;
import openlight.co.camera.listener.FocusListener;
import openlight.co.camera.listener.HardKeyManager;
import openlight.co.camera.listener.OrientationListener;
import openlight.co.camera.listener.ScreenGestureListener;
import openlight.co.camera.managers.CameraManager;
import openlight.co.camera.managers.autoexposure.AutoExposureManager;
import openlight.co.camera.managers.capture.CaptureManager;
import openlight.co.camera.managers.capturerequest.CaptureRequestManager;
import openlight.co.camera.managers.focus.FocusManager;
import openlight.co.camera.managers.focus.SmartAFTriggerMgr;
import openlight.co.camera.managers.zoom.ZoomManager;
import openlight.co.camera.metrics.CameraMetrics;
import openlight.co.camera.metrics.Metrics;
import openlight.co.camera.utils.CamPrefsUtils;
import openlight.co.camera.utils.CameraState;
import openlight.co.camera.utils.FaceDetector;
import openlight.co.camera.utils.LensObstructionDetector;
import openlight.co.camera.utils.LocationManager;
import openlight.co.camera.utils.PermissionsManager;
import openlight.co.camera.utils.Provider;
import openlight.co.camera.utils.SoundManager;
import openlight.co.camera.utils.TimingLoggerUtil;
import openlight.co.camera.utils.Util;
import openlight.co.camera.view.alerts.AlertActivity;
import openlight.co.camera.view.alerts.LowBatteryFragment;
import openlight.co.camera.view.alerts.OverlayWarningView;
import openlight.co.camera.view.alerts.ThermalShutdownFragment;
import openlight.co.camera.view.face.FaceViewHelper;
import openlight.co.camera.view.focus.CrossHair;
import openlight.co.camera.view.ftu.FtuHelper;
import openlight.co.camera.view.notification.BatteryStatusMonitor;
import openlight.co.camera.view.primarycontrol.ImagePrimaryControl;
import openlight.co.camera.view.proximity.ProximitySensorNotification;
import openlight.co.camera.view.rotate.OrientationsController;
import openlight.co.camera.view.zoom.ZoomWheel;
import openlight.co.lib.content.CamPrefsFactory;
import openlight.co.lib.content.Prefs;
import openlight.co.lib.thermal.ThermalManager;
import openlight.co.lib.utils.LogUtil;
import openlight.co.lib.view.LightFragment;
import openlight.co.thermalmonitor.ThermalIntent;
import openlight.co.touchstrip.TouchStrip;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public abstract class BasePreviewFragment extends LightFragment implements CameraManager.UpdatePreview, AutoExposureManager.AeUiUpdate, FocusListener, OrientationListener, ThermalManager.ThermalStateListener, ZoomManager.ZoomUpdateOnUi, ImagePrimaryControl.UpdateFocusViewListener, HardKeyManager.OnKeyListener, FragmentCompat.OnRequestPermissionsResultCallback {
    protected static final int MAX_PREVIEW_HEIGHT = 1080;
    protected static final int MAX_PREVIEW_WIDTH = 1920;
    protected static final int MSG_ADD_PRIMARY_CONTROL = 202;
    private static final int MSG_CLOSE_ALL_RES_AND_RESTART = 207;
    private static final int MSG_FOCUS_POST_ZOOM = 205;
    private static final int MSG_HIDE_AND_RESET_ZOOM = 208;
    private static final int MSG_HIDE_SYSTEM_UI = 203;
    private static final int MSG_HIDE_ZOOM_LAYOUT = 204;
    protected static final int MSG_MANAGE_PRIMARY_CONTROL = 200;
    private static final int MSG_RESET_THUMBNAIL_PATH = 209;
    private static final int MSG_SHOW_CROSS_HAIR_AND_ANIMATE = 206;
    protected static final int MSG_START_PRIMARY_CONTROL_ANIMATION = 201;
    private static final int POST_ZOOM_FOCUS_DELAY_MS = 250;
    protected static final int PRIMARY_CONTROL_SHOW_DELAY = 350;
    protected static final float SCROLL_FACTOR_CONSTANT = 0.412f;
    private static final String TAG = "BasePreviewFragment";
    private static final long ZOOM_WHEEL_DISAPPEARANCE_DELAY = 500;
    protected CrossHair mCrossHairView;
    private OrientationConfig mCurrentOrientationConfig;
    protected FrameLayout mLayoutPaddingFrame;
    protected OverlayWarningView mOverlayWarningView;
    protected Size mPreviewSize;
    protected ImagePrimaryControl mPrimaryControl;
    protected ViewGroup mRootContainer;
    protected ScreenGestureListener mScreenGestureListener;
    protected boolean mSystemUiVisible;
    protected FrameLayout mTextureLayout;
    protected AutoFitTextureView mTextureView;
    protected VideoController mVideoController;
    protected ZoomWheel mZoomWheel;
    protected static final SparseIntArray ORIENTATIONS = new SparseIntArray();
    protected static final SparseIntArray DEFAULT_ORIENTATIONS = new SparseIntArray();
    protected static final SparseIntArray INVERSE_ORIENTATIONS = new SparseIntArray();
    protected final TouchStrip mTouchStrip = TouchStrip.get(CameraApp.get());
    protected final Metrics mCameraMetrics = Metrics.get();
    protected final CameraInfo mCameraInfo = CameraInfo.get();
    protected final SoundManager mSoundManager = SoundManager.get();
    protected final ZoomManager mZoomManager = ZoomManager.get();
    protected final AutoExposureManager mAutoExposureManager = AutoExposureManager.get();
    protected final TimingLoggerUtil mTimingLoggerUtil = TimingLoggerUtil.get();
    protected final FocusManager mFocusManager = FocusManager.get();
    protected final SmartAFTriggerMgr mSmartAFTriggerMgr = SmartAFTriggerMgr.get();
    protected final LensObstructionDetector mLensObstructionDetector = LensObstructionDetector.get();
    protected final CameraCharacteristics mCharacteristics = this.mCameraInfo.getCameraCharacteristics();
    protected final Provider<CameraManager> mCameraManager = new Provider() { // from class: openlight.co.camera.-$$Lambda$VHoBP3n01T-xYwXx8e0ZTKBHfkE
        @Override // openlight.co.camera.utils.Provider
        public final Object get() {
            return CameraManager.get();
        }
    };
    protected final PlayHaptic mHaptic = PlayHaptic.get();
    protected final HardKeyManager mHardKeyManager = HardKeyManager.get();
    protected final Prefs mCameraPref = CamPrefsFactory.get();
    protected final CameraState mCameraState = CameraState.get();
    protected volatile boolean mZoomTriggersFocus = false;
    protected boolean mIsPrimaryControlEnabled = true;
    protected boolean mAspectRatioChange = false;
    protected final FtuHelper mFtuHelper = FtuHelper.get();
    private final Resources mResources = CameraApp.get().getResources();
    private final FaceViewHelper mFaceViewHelper = FaceViewHelper.get();
    private final ProximitySensorNotification mProximityNotification = new ProximitySensorNotification();
    protected final TextureView.SurfaceTextureListener mSurfaceTextureListener = new TextureView.SurfaceTextureListener() { // from class: openlight.co.camera.BasePreviewFragment.1
        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            String str = BasePreviewFragment.TAG;
            LogUtil.d(str, "[CONFIGURE] Surface texture available " + i + "x" + i2);
            BasePreviewFragment.this.configureTransform(i, i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            if (!BasePreviewFragment.this.mAspectRatioChange) {
                BasePreviewFragment.this.configureTransform(i, i2);
            }
            if (BasePreviewFragment.this.mCrossHairView != null) {
                BasePreviewFragment.this.mCrossHairView.setSize(i, i2);
            }
            BasePreviewFragment.this.mAspectRatioChange = false;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            LogUtil.d(BasePreviewFragment.TAG, "[CONFIGURE] Surface Texture Destroyed");
            synchronized (BasePreviewFragment.this.mCameraManager.get().getCameraStateLock()) {
                BasePreviewFragment.this.mPreviewSize = null;
            }
            return true;
        }
    };
    protected final LensObstructionDetector.OnObstructionEventListener mOnObstructionEventListener = new LensObstructionDetector.OnObstructionEventListener() { // from class: openlight.co.camera.BasePreviewFragment.2
        @Override // openlight.co.camera.utils.LensObstructionDetector.OnObstructionEventListener
        public void onObstruction(List<Integer> list) {
            BasePreviewFragment.this.mHaptic.playHaptic(Immersion.LENS_BLOCKED);
            BasePreviewFragment.this.mProximityNotification.setBlockedLensNumbers(list, BasePreviewFragment.this.mRootContainer);
        }

        @Override // openlight.co.camera.utils.LensObstructionDetector.OnObstructionEventListener
        public void onNoObstruction() {
            BasePreviewFragment.this.mProximityNotification.closeAll();
        }

        @Override // openlight.co.camera.utils.LensObstructionDetector.OnObstructionEventListener
        public void onInPocket() {
            BasePreviewFragment.this.mOverlayWarningView.setContent(R.string.in_pocket_warning, R.drawable.settings_inpocket);
            BasePreviewFragment.this.mOverlayWarningView.finishActivityOnWarningInactivity(true);
            BasePreviewFragment.this.mOverlayWarningView.setVisibility(true);
            LogUtil.i(BasePreviewFragment.TAG, "Camera in pocket, warning displayed");
        }

        @Override // openlight.co.camera.utils.LensObstructionDetector.OnObstructionEventListener
        public void onOutOfPocket() {
            BasePreviewFragment.this.mOverlayWarningView.clearActivityFinish();
            LogUtil.i(BasePreviewFragment.TAG, "Camera out of pocket");
        }
    };
    protected final Prefs.OnPreferenceChangeListener mPrefListener = new Prefs.OnPreferenceChangeListener() { // from class: openlight.co.camera.BasePreviewFragment.3
        @Override // openlight.co.lib.content.Prefs.OnPreferenceChangeListener
        public void onPreferenceChanged(Prefs prefs, String str) {
            if (str.equals(CamPrefsUtils.CAM_BURST_MODE)) {
                CameraState.get().checkAndUpdateCaptureMode();
            }
        }
    };
    private final View.OnSystemUiVisibilityChangeListener mSystemUiVisibilityChangeListener = new View.OnSystemUiVisibilityChangeListener() { // from class: openlight.co.camera.BasePreviewFragment.4
        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public void onSystemUiVisibilityChange(int i) {
            BasePreviewFragment.this.mSystemUiVisible = (i & 4) == 0 || (i & 2) == 0;
            String str = BasePreviewFragment.TAG;
            LogUtil.d(str, "System UI visible status: " + BasePreviewFragment.this.mSystemUiVisible);
            BasePreviewFragment.this.handleSystemUIChangeListener(BasePreviewFragment.this.mSystemUiVisible);
        }
    };
    private final BatteryStatusMonitor mBatteryStatusMonitor = new BatteryStatusMonitor() { // from class: openlight.co.camera.BasePreviewFragment.5
        @Override // openlight.co.camera.view.notification.BatteryStatusMonitor
        public void onBatteryUpdate(int i, int i2) {
            BasePreviewFragment.this.checkLowBattery(i);
            BasePreviewFragment.this.updateBatteryInfo(i, i2);
        }
    };
    protected final TouchStrip.OnTouchStripEventListener mOnTouchStripEventListener = new TouchStrip.OnTouchStripEventListener() { // from class: openlight.co.camera.BasePreviewFragment.6
        @Override // openlight.co.touchstrip.TouchStrip.OnTouchStripEventListener
        public void onEvent(TouchStrip.Event event) {
            String str = BasePreviewFragment.TAG;
            LogUtil.v(str, "Touch Strip Event: " + event.name());
            if (!BasePreviewFragment.this.mCameraManager.get().isIdle()) {
                LogUtil.v(BasePreviewFragment.TAG, "Ignoring Touch Strip Event, the camera is not idle (meter/capture/focus in progress)");
            } else if (event == TouchStrip.Event.FLING_RIGHT) {
                BasePreviewFragment.this.setZoomToNextPrimeLevel(true);
            } else if (event == TouchStrip.Event.FLING_LEFT) {
                BasePreviewFragment.this.setZoomToNextPrimeLevel(false);
            }
        }
    };
    protected final Handler mMainLooperHandler = new Handler(Looper.getMainLooper()) { // from class: openlight.co.camera.BasePreviewFragment.7
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            CameraManager cameraManager = BasePreviewFragment.this.mCameraManager.get();
            switch (message.what) {
                case 200:
                    if (BasePreviewFragment.this.mPrimaryControl != null) {
                        BasePreviewFragment.this.mPrimaryControl.updateControls(BasePreviewFragment.this.mIsPrimaryControlEnabled);
                        return;
                    }
                    return;
                case BasePreviewFragment.MSG_START_PRIMARY_CONTROL_ANIMATION /* 201 */:
                    if (BasePreviewFragment.this.mPrimaryControl != null) {
                        BasePreviewFragment.this.mPrimaryControl.startAnimation();
                        return;
                    }
                    return;
                case BasePreviewFragment.MSG_ADD_PRIMARY_CONTROL /* 202 */:
                default:
                    BasePreviewFragment.this.handleMessage(message);
                    return;
                case BasePreviewFragment.MSG_HIDE_SYSTEM_UI /* 203 */:
                    BasePreviewFragment.this.hideSystemUI();
                    return;
                case BasePreviewFragment.MSG_HIDE_ZOOM_LAYOUT /* 204 */:
                    BasePreviewFragment.this.removeZoomWheelView();
                    BasePreviewFragment.this.mZoomWheel.setVisibility(8);
                    return;
                case BasePreviewFragment.MSG_FOCUS_POST_ZOOM /* 205 */:
                    if (!cameraManager.isIdle() || BasePreviewFragment.this.mZoomManager.isCurrentlyZooming()) {
                        LogUtil.w(BasePreviewFragment.TAG, "Post Zoom, camera is not idle, so ignoring this runnable");
                        return;
                    }
                    LogUtil.i(BasePreviewFragment.TAG, "Camera is idle, Post zoom, setting ae/af roi to center, and trigger AE: ");
                    BasePreviewFragment.this.mSmartAFTriggerMgr.processZoomTrigger();
                    return;
                case BasePreviewFragment.MSG_SHOW_CROSS_HAIR_AND_ANIMATE /* 206 */:
                    BasePreviewFragment.this.mCrossHairView.showFocusStartAtCoordinates(BasePreviewFragment.this.mFocusManager.getCurrentFocusPoint());
                    return;
                case BasePreviewFragment.MSG_CLOSE_ALL_RES_AND_RESTART /* 207 */:
                    LogUtil.i(BasePreviewFragment.TAG, "Closing All Resources and Restarting App");
                    BasePreviewFragment.this.mCameraMetrics.add(CameraMetrics.EVENT_CAMERA_DEVICE_ERROR);
                    BasePreviewFragment.this.clear();
                    Util.restartAppWithDelay(BasePreviewFragment.this.getActivity());
                    return;
                case BasePreviewFragment.MSG_HIDE_AND_RESET_ZOOM /* 208 */:
                    if (BasePreviewFragment.this.mZoomWheel != null) {
                        BasePreviewFragment.this.updateZoomWheelLayout(8);
                        CaptureRequestManager.get().resetZoom(cameraManager.getPreviewRequestBuilder());
                        cameraManager.startRepeatingRequestInPreview();
                        return;
                    }
                    return;
                case BasePreviewFragment.MSG_RESET_THUMBNAIL_PATH /* 209 */:
                    if (BasePreviewFragment.this.mPrimaryControl != null) {
                        BasePreviewFragment.this.mPrimaryControl.resetThumbnailPath();
                        return;
                    }
                    return;
            }
        }
    };

    @Override // openlight.co.camera.managers.CameraManager.UpdatePreview
    public void disableControls() {
    }

    @Override // openlight.co.camera.managers.CameraManager.UpdatePreview
    public void enableControls() {
    }

    @Override // openlight.co.camera.listener.FocusListener
    public void focusStarted() {
    }

    protected abstract Size getSizeForConfigureTransform(int i, int i2, boolean z, Point point);

    protected abstract void handleMessage(@NonNull Message message);

    protected abstract void handleSystemUIChangeListener(boolean z);

    protected boolean isWithinPreview(MotionEvent motionEvent, boolean z) {
        return true;
    }

    protected abstract boolean processHardKeyCapture(HardKeyManager.KeyAction keyAction);

    @Override // openlight.co.camera.managers.CameraManager.UpdatePreview
    public void updateHistogram() {
    }

    @Override // openlight.co.camera.managers.CameraManager.UpdatePreview
    public void updateHudInfo(int i, long j, boolean z) {
    }

    protected void updateRotateHistogramView(OrientationConfig orientationConfig) {
    }

    @Override // openlight.co.camera.managers.CameraManager.UpdatePreview
    public void updateUiOnCaptureComplete() {
    }

    @Override // openlight.co.camera.managers.CameraManager.UpdatePreview
    public void updateVideoPreview() {
    }

    static {
        ORIENTATIONS.append(0, 0);
        ORIENTATIONS.append(1, 90);
        ORIENTATIONS.append(2, 180);
        ORIENTATIONS.append(3, 270);
        DEFAULT_ORIENTATIONS.append(0, 90);
        DEFAULT_ORIENTATIONS.append(1, 0);
        DEFAULT_ORIENTATIONS.append(2, 270);
        DEFAULT_ORIENTATIONS.append(3, 180);
        INVERSE_ORIENTATIONS.append(0, 270);
        INVERSE_ORIENTATIONS.append(1, 180);
        INVERSE_ORIENTATIONS.append(2, 90);
        INVERSE_ORIENTATIONS.append(3, 0);
    }

    @Override // android.app.Fragment, android.support.v13.app.FragmentCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        if (i == 1) {
            int length = strArr.length;
            while (true) {
                length--;
                if (length < 0) {
                    return;
                }
                if (iArr[length] == -1) {
                    PermissionsManager.get().showMissingPermissionError(getActivity());
                    return;
                } else if ("android.permission.ACCESS_FINE_LOCATION".equals(strArr[length])) {
                    LocationManager.get().startListening();
                }
            }
        } else {
            super.onRequestPermissionsResult(i, strArr, iArr);
        }
    }

    @Override // openlight.co.lib.view.LightFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!PermissionsManager.get().hasAllPermissionsGranted(getActivity())) {
            LogUtil.e(TAG, "Permissions not granted");
        }
        this.mScreenGestureListener = new PreviewGestureListener(getActivity());
        if (this.mCameraInfo.isCapableCameraAvailable()) {
            return;
        }
        LogUtil.e(TAG, "No compatible camera found");
        Snackbar.make(getView(), (int) R.string.camera_not_found, 0).show();
        getActivity().finish();
    }

    @Override // openlight.co.camera.listener.OrientationListener
    public void onOrientationChange(OrientationConfig orientationConfig) {
        if (this.mCurrentOrientationConfig != orientationConfig) {
            this.mCurrentOrientationConfig = orientationConfig;
            if (this.mTextureView != null && this.mTextureView.isAvailable()) {
                String str = TAG;
                LogUtil.d(str, "onOrientationChange " + orientationConfig);
                configureTransform(this.mTextureView.getWidth(), this.mTextureView.getHeight());
            }
            updateRotateHistogramView(orientationConfig);
            this.mOverlayWarningView.onOrientationChange(orientationConfig);
            this.mCrossHairView.onOrientationChange(orientationConfig);
        }
    }

    @Override // openlight.co.lib.thermal.ThermalManager.ThermalStateListener
    public void onTemperatureChange(ThermalIntent.Level level) {
        String str = TAG;
        LogUtil.d(str, "Temperature Change Event, Current level " + level);
        if (level == ThermalIntent.Level.HOT) {
            Intent intent = new Intent(getActivity(), AlertActivity.class);
            intent.putExtra(AlertActivity.EXTRAS_FRAGMENT_TAG, ThermalShutdownFragment.TAG);
            getActivity().startActivity(intent);
            this.mCameraMetrics.add(CameraMetrics.EVENT_MODULES_TEMP_HOT);
        } else if (level == ThermalIntent.Level.WARMER) {
            LogUtil.i(TAG, "Showing Warm temp warning");
            this.mOverlayWarningView.setContent(R.string.overheat_warning, R.drawable.ic_temperature);
            this.mOverlayWarningView.setVisibility(true);
            this.mCameraMetrics.add(CameraMetrics.EVENT_MODULES_TEMP_WARM);
        } else {
            this.mOverlayWarningView.setVisibility(false);
        }
    }

    @Override // openlight.co.camera.listener.HardKeyManager.OnKeyListener
    public boolean onHardKeyEvent(HardKeyManager.KeyType keyType, HardKeyManager.KeyAction keyAction) {
        if (keyType == HardKeyManager.KeyType.FULL_KEY) {
            return processHardKeyCapture(keyAction);
        }
        if (keyType == HardKeyManager.KeyType.HALF_KEY) {
            return processHardKeyFocus(keyAction);
        }
        return false;
    }

    @Override // openlight.co.camera.managers.CameraManager.UpdatePreview
    public void onNoFacesInPreview() {
        removeFocusCrossHair();
    }

    @Override // openlight.co.camera.managers.CameraManager.UpdatePreview
    public void cameraDeviceOpen() {
        if (this.mPreviewSize == null || !this.mTextureView.isAvailable()) {
            return;
        }
        LogUtil.d(TAG, "Starting preview");
        this.mCameraManager.get().createCameraSession(this.mTextureView.getSurfaceTexture(), this.mPreviewSize);
    }

    @Override // openlight.co.camera.managers.CameraManager.UpdatePreview
    public void onCaptureSessionConfigured() {
        initFaceDetect();
    }

    @Override // openlight.co.camera.managers.CameraManager.UpdatePreview
    public void cameraDeviceError() {
        Util.restartAppWithDelay(getActivity());
    }

    @Override // openlight.co.camera.managers.CameraManager.UpdatePreview
    public void resetPreviewSizeOnClose() {
        releaseFaceDetect();
        this.mPreviewSize = null;
    }

    @Override // openlight.co.camera.managers.CameraManager.UpdatePreview
    public void focusSuccessUpdateUi() {
        if (this.mCrossHairView != null) {
            LogUtil.d(TAG, "focusSuccessUpdateUi");
            this.mCrossHairView.showFocusAchieved();
        }
    }

    @Override // openlight.co.camera.managers.CameraManager.UpdatePreview
    public void focusFailedUpdateUi() {
        if (this.mCrossHairView != null) {
            this.mCrossHairView.showFocusFailed();
        }
    }

    @Override // openlight.co.camera.managers.CameraManager.UpdatePreview
    public void updateModeChange() {
        this.mSmartAFTriggerMgr.init();
        this.mZoomWheel.setZoomLevel();
    }

    @Override // openlight.co.camera.managers.autoexposure.AutoExposureManager.AeUiUpdate
    public void updateFocusUI() {
        if (this.mCrossHairView != null) {
            this.mCrossHairView.remove();
        }
    }

    @Override // openlight.co.camera.managers.zoom.ZoomManager.ZoomUpdateOnUi
    public void removePendingPostZoomCallbacks() {
        LogUtil.v(TAG, "Release runnable");
        this.mMainLooperHandler.removeMessages(MSG_HIDE_AND_RESET_ZOOM);
    }

    @Override // openlight.co.camera.managers.zoom.ZoomManager.ZoomUpdateOnUi
    public void updateZoomWheelLayout(int i) {
        this.mZoomWheel.setVisibility(i);
    }

    @Override // openlight.co.camera.managers.zoom.ZoomManager.ZoomUpdateOnUi
    public void triggerFocusPostZoom() {
        this.mZoomTriggersFocus = true;
    }

    @Override // openlight.co.camera.listener.FocusListener
    public void focusCompleted() {
        LogUtil.d(TAG, "[AF] Focus Completed: adding Focus View");
        this.mMainLooperHandler.sendEmptyMessage(MSG_SHOW_CROSS_HAIR_AND_ANIMATE);
    }

    @Override // openlight.co.camera.listener.FocusListener
    public void focusFailed() {
        if (this.mCrossHairView != null) {
            this.mCrossHairView.showFocusFailed();
        }
    }

    @Override // openlight.co.camera.view.primarycontrol.ImagePrimaryControl.UpdateFocusViewListener
    public void updateFocusView() {
        removeFocusCrossHair();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void addTextureView() {
        /*
            r3 = this;
            java.lang.String r0 = openlight.co.camera.BasePreviewFragment.TAG
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "TextureView in addTextureView: "
            r1.append(r2)
            openlight.co.camera.AutoFitTextureView r2 = r3.mTextureView
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            openlight.co.lib.utils.LogUtil.d(r0, r1)
            openlight.co.camera.AutoFitTextureView r0 = r3.mTextureView
            r1 = 0
            if (r0 != 0) goto L30
            openlight.co.camera.AutoFitTextureView r0 = new openlight.co.camera.AutoFitTextureView
            android.content.Context r1 = r3.getContext()
            r0.<init>(r1)
            r3.mTextureView = r0
            openlight.co.camera.utils.CameraState r0 = r3.mCameraState
            openlight.co.camera.AutoFitTextureView r1 = r3.mTextureView
            r0.setTextureView(r1)
            goto L42
        L30:
            android.widget.FrameLayout r0 = r3.mTextureLayout
            android.view.View r0 = r0.getChildAt(r1)
            if (r0 == 0) goto L42
            boolean r2 = r0 instanceof openlight.co.camera.AutoFitTextureView
            if (r2 == 0) goto L3d
            goto L43
        L3d:
            android.widget.FrameLayout r1 = r3.mTextureLayout
            r1.removeView(r0)
        L42:
            r1 = 1
        L43:
            if (r1 == 0) goto L4c
            android.widget.FrameLayout r0 = r3.mTextureLayout
            openlight.co.camera.AutoFitTextureView r3 = r3.mTextureView
            r0.addView(r3)
        L4c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: openlight.co.camera.BasePreviewFragment.addTextureView():void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void releaseTextureView() {
        if (this.mTextureLayout != null) {
            this.mTextureLayout.removeView(this.mTextureView);
            this.mTextureView = null;
        }
    }

    protected void releaseFaceDetect() {
        if (FaceDetector.get().isFaceDetectionFeatureEnabled()) {
            this.mFaceViewHelper.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void removeFocusCrossHair() {
        LogUtil.d(TAG, "Removing all Focus Ring related views");
        if (this.mCrossHairView != null) {
            this.mCrossHairView.remove();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void removePrimaryControl() {
        if (this.mPrimaryControl != null) {
            this.mPrimaryControl.setHistogramView(null);
            this.mPrimaryControl.closeAll();
            this.mPrimaryControl = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void showZoomWheelView(ZoomWheel.EventType eventType) {
        CameraManager cameraManager = this.mCameraManager.get();
        this.mZoomManager.startZoom();
        this.mMainLooperHandler.removeMessages(MSG_FOCUS_POST_ZOOM);
        this.mZoomWheel.setCurrentEventType(eventType);
        if (this.mScreenGestureListener.getZoomPointerCount() == 2) {
            this.mZoomManager.setPinchZoomType();
        }
        this.mZoomWheel.setVisibility(0);
        if (this.mPrimaryControl != null) {
            this.mPrimaryControl.updateHudTextOnZoomWheelView(this.mResources.getString(R.string.zoom_title));
        }
        if (Util.valueOf((Integer) cameraManager.getPreviewRequestBuilder().get(CaptureRequest.CONTROL_AF_TRIGGER)) != 0) {
            LogUtil.d(TAG, "Focus showZoomWheelView Idle");
            FocusManager.get().cancelAfTrigger(cameraManager.getPreviewRequestBuilder());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void removeZoomWheelView() {
        if (this.mZoomWheel != null) {
            this.mZoomWheel.setZoomLevel();
        }
        this.mZoomManager.resetZoom();
        if (this.mPrimaryControl != null) {
            this.mPrimaryControl.updateHudTextOnZoomWheelView(null);
        }
        removePendingPostZoomCallbacks();
        this.mMainLooperHandler.sendEmptyMessageDelayed(MSG_HIDE_AND_RESET_ZOOM, 700L);
        this.mHaptic.stopAllHaptic();
    }

    protected static boolean checkAspectsEqual(Size size, Size size2) {
        return size.getWidth() * size2.getHeight() == size.getHeight() * size2.getWidth();
    }

    protected static int sensorToDeviceRotation(CameraCharacteristics cameraCharacteristics, int i) {
        int valueOf = cameraCharacteristics == null ? 0 : Util.valueOf((Integer) cameraCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION));
        int i2 = ORIENTATIONS.get(i);
        if (Integer.valueOf(cameraCharacteristics != null ? Util.valueOf((Integer) cameraCharacteristics.get(CameraCharacteristics.LENS_FACING)) : 0).intValue() == 0) {
            i2 = -i2;
        }
        return ((valueOf + i2) + 360) % 360;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void closeAllResourcesAndRestartApp() {
        this.mMainLooperHandler.removeCallbacksAndMessages(null);
        this.mMainLooperHandler.sendEmptyMessage(MSG_CLOSE_ALL_RES_AND_RESTART);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void removeTouchAndOrientationListener() {
        if (this.mRootContainer != null) {
            this.mRootContainer.setOnTouchListener(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addTouchAndOrientationListener() {
        if (this.mRootContainer != null) {
            this.mRootContainer.setOnTouchListener(this.mScreenGestureListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void doFocusPostZoom() {
        LogUtil.i(TAG, "Focus post Focal length change");
        if (this.mZoomTriggersFocus) {
            this.mMainLooperHandler.removeMessages(MSG_FOCUS_POST_ZOOM);
            this.mMainLooperHandler.sendEmptyMessageDelayed(MSG_FOCUS_POST_ZOOM, 250L);
        }
    }

    protected void hideSystemUI() {
        Activity activity = getActivity();
        if (activity != null) {
            View decorView = activity.getWindow().getDecorView();
            Util.hideSystemUI(decorView);
            decorView.setOnSystemUiVisibilityChangeListener(this.mSystemUiVisibilityChangeListener);
        }
    }

    protected void resetFocusAeParams() {
        this.mAutoExposureManager.setMeteringPointToCenter();
        this.mFocusManager.setFocusPointToCenter();
    }

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    protected class PreviewGestureListener extends ScreenGestureListener {
        /* JADX INFO: Access modifiers changed from: package-private */
        public PreviewGestureListener(Context context) {
            super(context);
        }

        @Override // openlight.co.camera.listener.ScreenGestureListener
        public void onFling(boolean z) {
            String str = BasePreviewFragment.TAG;
            LogUtil.d(str, "Fling Listener: " + z);
            if (BasePreviewFragment.this.mCameraManager.get().isIdle()) {
                float calculatePrimeLevel = BasePreviewFragment.this.mZoomManager.calculatePrimeLevel(z);
                if (BasePreviewFragment.this.mZoomManager.getZoomLevel() != calculatePrimeLevel) {
                    BasePreviewFragment.this.mZoomManager.zoomToNextPrime(calculatePrimeLevel, BasePreviewFragment.this.mZoomWheel);
                }
                BasePreviewFragment.this.removeZoomWheelView();
                BasePreviewFragment.this.doFocusPostZoom();
                if (BasePreviewFragment.this.mFtuHelper.isFtuPlaying()) {
                    BasePreviewFragment.this.mFtuHelper.onUserActionComplete(FtuView.PRIME_SCREEN);
                }
            }
        }

        @Override // openlight.co.camera.listener.ScreenGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            String str = BasePreviewFragment.TAG;
            LogUtil.d(str, "onSingleTapUp: " + motionEvent);
            if (BasePreviewFragment.this.mPrimaryControl != null) {
                BasePreviewFragment.this.mPrimaryControl.setTappedPoint(motionEvent.getX(), motionEvent.getY());
                if (BasePreviewFragment.this.mPrimaryControl.isAncillaryToolbarVisible()) {
                    LogUtil.d(BasePreviewFragment.TAG, "Image ancillary toolbar is open, closing it");
                    BasePreviewFragment.this.mPrimaryControl.closeAncillaryToolbar();
                    BasePreviewFragment.this.mPrimaryControl.manageControlViews(true, BasePreviewFragment.this.mIsPrimaryControlEnabled);
                    return false;
                }
            } else if (BasePreviewFragment.this.mVideoController != null && (BasePreviewFragment.this.mVideoController.isAncillaryToolbarVisible() || BasePreviewFragment.this.mVideoController.isModeWheelVisible())) {
                LogUtil.d(BasePreviewFragment.TAG, "Video ancillary toolbar is open, closing it");
                BasePreviewFragment.this.mVideoController.updateToolbarsVisibility(true);
                return false;
            }
            if (BasePreviewFragment.this.isWithinPreview(motionEvent, true)) {
                String str2 = BasePreviewFragment.TAG;
                LogUtil.d(str2, "[AF] Tap to focus at " + motionEvent.getX() + " x " + motionEvent.getY() + " with focal length: " + BasePreviewFragment.this.mZoomManager.getFocalLength());
                BasePreviewFragment.this.mSmartAFTriggerMgr.processUserTap(motionEvent.getX(), motionEvent.getY());
                return true;
            }
            return false;
        }

        @Override // openlight.co.camera.listener.ScreenGestureListener
        public void onScroll(float f, float f2, boolean z) {
            LogUtil.d(BasePreviewFragment.TAG, "onScroll ");
            if (BasePreviewFragment.this.mPrimaryControl != null) {
                BasePreviewFragment.this.mPrimaryControl.setScrollDistance(f * BasePreviewFragment.SCROLL_FACTOR_CONSTANT);
            }
            if (BasePreviewFragment.this.mCameraManager.get().isIdle()) {
                if (!BasePreviewFragment.this.mZoomManager.isCurrentlyZooming()) {
                    BasePreviewFragment.this.showZoomWheelView(ZoomWheel.EventType.DISPLAY);
                    BasePreviewFragment.this.removeFocusCrossHair();
                }
                if (z) {
                    String str = BasePreviewFragment.TAG;
                    LogUtil.d(str, "scaleRatio: " + f2);
                    BasePreviewFragment.this.mZoomManager.setZoom(f2);
                    BasePreviewFragment.this.mZoomManager.performZoom(BasePreviewFragment.this.mZoomWheel);
                }
            }
        }

        @Override // openlight.co.camera.listener.ScreenGestureListener
        public boolean areValidEvents(MotionEvent motionEvent, MotionEvent motionEvent2) {
            return BasePreviewFragment.this.isWithinPreview(motionEvent, false) && BasePreviewFragment.this.isWithinPreview(motionEvent2, false);
        }

        @Override // openlight.co.camera.listener.ScreenGestureListener
        public boolean onTouch(MotionEvent motionEvent, float f, boolean z) {
            if (CaptureManager.get().isIdle()) {
                boolean isCurrentlyZooming = BasePreviewFragment.this.mZoomManager.isCurrentlyZooming();
                switch (motionEvent.getActionMasked()) {
                    case 0:
                        BasePreviewFragment.this.mZoomTriggersFocus = false;
                        return true;
                    case 1:
                        if (isCurrentlyZooming && !BasePreviewFragment.this.mFtuHelper.isFtuPlaying()) {
                            LogUtil.d(BasePreviewFragment.TAG, "Zoom Touch Up Event");
                            BasePreviewFragment.this.removeZoomWheelView();
                            BasePreviewFragment.this.doFocusPostZoom();
                        }
                        if (isCurrentlyZooming && BasePreviewFragment.this.mZoomManager.getZoomType().equals(ZoomManager.ZoomType.SCROLL) && BasePreviewFragment.this.mFtuHelper.isFtuPlaying()) {
                            BasePreviewFragment.this.mFtuHelper.onUserActionComplete(FtuView.ZOOM_SCREEN);
                        }
                        if (BasePreviewFragment.this.mPrimaryControl != null) {
                            BasePreviewFragment.this.mPrimaryControl.touchUp();
                            return true;
                        }
                        return true;
                    case 2:
                        if (motionEvent.getPointerCount() != 2 || BasePreviewFragment.this.mAutoExposureManager.isMetering() || BasePreviewFragment.this.mFocusManager.isFocusing()) {
                            return true;
                        }
                        if (isCurrentlyZooming && z) {
                            BasePreviewFragment.this.mZoomManager.setZoom(f);
                            BasePreviewFragment.this.mZoomManager.performZoom(BasePreviewFragment.this.mZoomWheel);
                            return true;
                        } else if (isCurrentlyZooming) {
                            return true;
                        } else {
                            BasePreviewFragment.this.showZoomWheelView(ZoomWheel.EventType.DISPLAY);
                            BasePreviewFragment.this.removeFocusCrossHair();
                            return true;
                        }
                    default:
                        return true;
                }
            }
            return false;
        }

        @Override // openlight.co.camera.listener.ScreenGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            if (BasePreviewFragment.this.isWithinPreview(motionEvent, true)) {
                BasePreviewFragment.this.mSmartAFTriggerMgr.processScreenLongPress((int) motionEvent.getX(), (int) motionEvent.getY());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addPrimaryControl() {
        this.mPrimaryControl.openLayoutAnimation();
        this.mPrimaryControl.setUpdateFocusViewListener(this);
        this.mPrimaryControl.updateControls(this.mIsPrimaryControlEnabled);
        updateBatteryInfo(this.mBatteryStatusMonitor.getBatteryLevel(), this.mBatteryStatusMonitor.getChargingStatus());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0070 A[Catch: all -> 0x0166, TryCatch #0 {, blocks: (B:4:0x0035, B:11:0x0062, B:13:0x0070, B:15:0x008b, B:17:0x00a5, B:19:0x00ba, B:24:0x00f8, B:26:0x0105, B:34:0x013a, B:35:0x0164, B:28:0x010d, B:30:0x0113, B:31:0x0118, B:33:0x0120, B:23:0x00db, B:18:0x00b0, B:14:0x007e), top: B:40:0x0035 }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x007e A[Catch: all -> 0x0166, TryCatch #0 {, blocks: (B:4:0x0035, B:11:0x0062, B:13:0x0070, B:15:0x008b, B:17:0x00a5, B:19:0x00ba, B:24:0x00f8, B:26:0x0105, B:34:0x013a, B:35:0x0164, B:28:0x010d, B:30:0x0113, B:31:0x0118, B:33:0x0120, B:23:0x00db, B:18:0x00b0, B:14:0x007e), top: B:40:0x0035 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00a5 A[Catch: all -> 0x0166, TryCatch #0 {, blocks: (B:4:0x0035, B:11:0x0062, B:13:0x0070, B:15:0x008b, B:17:0x00a5, B:19:0x00ba, B:24:0x00f8, B:26:0x0105, B:34:0x013a, B:35:0x0164, B:28:0x010d, B:30:0x0113, B:31:0x0118, B:33:0x0120, B:23:0x00db, B:18:0x00b0, B:14:0x007e), top: B:40:0x0035 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00b0 A[Catch: all -> 0x0166, TryCatch #0 {, blocks: (B:4:0x0035, B:11:0x0062, B:13:0x0070, B:15:0x008b, B:17:0x00a5, B:19:0x00ba, B:24:0x00f8, B:26:0x0105, B:34:0x013a, B:35:0x0164, B:28:0x010d, B:30:0x0113, B:31:0x0118, B:33:0x0120, B:23:0x00db, B:18:0x00b0, B:14:0x007e), top: B:40:0x0035 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0113 A[Catch: all -> 0x0166, TryCatch #0 {, blocks: (B:4:0x0035, B:11:0x0062, B:13:0x0070, B:15:0x008b, B:17:0x00a5, B:19:0x00ba, B:24:0x00f8, B:26:0x0105, B:34:0x013a, B:35:0x0164, B:28:0x010d, B:30:0x0113, B:31:0x0118, B:33:0x0120, B:23:0x00db, B:18:0x00b0, B:14:0x007e), top: B:40:0x0035 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0120 A[Catch: all -> 0x0166, TryCatch #0 {, blocks: (B:4:0x0035, B:11:0x0062, B:13:0x0070, B:15:0x008b, B:17:0x00a5, B:19:0x00ba, B:24:0x00f8, B:26:0x0105, B:34:0x013a, B:35:0x0164, B:28:0x010d, B:30:0x0113, B:31:0x0118, B:33:0x0120, B:23:0x00db, B:18:0x00b0, B:14:0x007e), top: B:40:0x0035 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void configureTransform(int r13, int r14) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: openlight.co.camera.BasePreviewFragment.configureTransform(int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void clear() {
        CameraManager cameraManager = this.mCameraManager.get();
        cameraManager.clearState();
        if (cameraManager.closeCamera()) {
            cameraManager.stopBackgroundThread();
        }
        cameraManager.setUpdatePreviewListener(null);
        removeTouchAndOrientationListener();
        OrientationsController.get().unregisterOrientationListenerWithTag(getListenerName());
        this.mBatteryStatusMonitor.unregister(getActivity());
        releaseFaceDetect();
        removeFocusCrossHair();
        removePrimaryControl();
        this.mSmartAFTriggerMgr.release();
        this.mSoundManager.releaseSoundResources();
        this.mHaptic.close();
        this.mAutoExposureManager.setAeUiUpdateListener(null);
        this.mFocusManager.resetFocusStateToIdle();
        this.mFocusManager.unregisterFocusListener();
        this.mCameraState.setDeviceState(CameraState.DeviceState.CLOSED);
        this.mCameraPref.unregisterChangeListener(this.mPrefListener);
        this.mTouchStrip.unregisterEventListener(this.mOnTouchStripEventListener);
        this.mLensObstructionDetector.setOnObstructionEventListener(null);
        this.mProximityNotification.closeAll();
        this.mHardKeyManager.unregisterKeyListener(this);
        this.mOverlayWarningView.clear();
        ThermalManager.get().unregisterThermalStateListener(this);
        if (this.mCrossHairView != null) {
            this.mCrossHairView.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: openlight.co.camera.BasePreviewFragment$8  reason: invalid class name */
    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public static /* synthetic */ class AnonymousClass8 {
        static final /* synthetic */ int[] $SwitchMap$light$co$camera$listener$HardKeyManager$KeyAction = new int[HardKeyManager.KeyAction.values().length];

        static {
            try {
                $SwitchMap$light$co$camera$listener$HardKeyManager$KeyAction[HardKeyManager.KeyAction.DOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$light$co$camera$listener$HardKeyManager$KeyAction[HardKeyManager.KeyAction.UP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$light$co$camera$listener$HardKeyManager$KeyAction[HardKeyManager.KeyAction.LONG_PRESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    protected boolean processHardKeyFocus(HardKeyManager.KeyAction keyAction) {
        switch (AnonymousClass8.$SwitchMap$light$co$camera$listener$HardKeyManager$KeyAction[keyAction.ordinal()]) {
            case 1:
                this.mTimingLoggerUtil.captureTiming(TimingLoggerUtil.TimeToAutoFocusSplits.HARD_KEY_PRESS_PROCESS);
                if (this.mCameraManager.get().isIdle()) {
                    LogUtil.i(TAG, "Processing Half Press HardKey Focus request");
                    this.mSmartAFTriggerMgr.processHardKeyFocus(keyAction);
                } else {
                    LogUtil.i(TAG, "Ignoring Half Press HardKey Focus request, camera is busy");
                }
                this.mCameraMetrics.add(CameraMetrics.EVENT_CAPTURE_HARD_KEY_HALF_PRESSED);
                return true;
            case 2:
                if (this.mPrimaryControl != null && !this.mSystemUiVisible) {
                    this.mPrimaryControl.restoreViewsOnCaptureRequestComplete();
                }
                this.mAutoExposureManager.setAeHwLock(HardKeyManager.KeyAction.UP);
                this.mSmartAFTriggerMgr.processHardKeyFocus(keyAction);
                return true;
            case 3:
                LogUtil.d(TAG, "Long Press of focus key, set AE Lock ");
                this.mAutoExposureManager.setAeHwLock(HardKeyManager.KeyAction.LONG_PRESS);
                this.mSmartAFTriggerMgr.processHardKeyFocus(keyAction);
                if (this.mCrossHairView != null) {
                    this.mCrossHairView.updateCoordinatesAndDraw(this.mFocusManager.getCurrentFocusPoint());
                    return true;
                }
                return true;
            default:
                return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkLowBattery(int i) {
        if (i < 11) {
            this.mHaptic.playHaptic(Immersion.LOW_BATTERY);
            Intent intent = new Intent(getContext(), AlertActivity.class);
            intent.putExtra(AlertActivity.EXTRAS_FRAGMENT_TAG, LowBatteryFragment.TAG);
            intent.setFlags(268435456);
            getActivity().startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBatteryInfo(int i, int i2) {
        if (this.mPrimaryControl != null) {
            this.mPrimaryControl.showAlertView(i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void showPrimaryControlWithDelay(long j) {
        this.mMainLooperHandler.removeMessages(MSG_ADD_PRIMARY_CONTROL);
        this.mMainLooperHandler.sendEmptyMessageDelayed(MSG_ADD_PRIMARY_CONTROL, j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void resetThumbNailPath() {
        this.mMainLooperHandler.removeMessages(MSG_RESET_THUMBNAIL_PATH);
        this.mMainLooperHandler.sendEmptyMessage(MSG_RESET_THUMBNAIL_PATH);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updatePrimaryControl() {
        this.mMainLooperHandler.removeMessages(200);
        this.mMainLooperHandler.sendEmptyMessage(200);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void hideSystemUIAfterADelay() {
        this.mMainLooperHandler.removeMessages(MSG_HIDE_SYSTEM_UI);
        this.mMainLooperHandler.sendEmptyMessageDelayed(MSG_HIDE_SYSTEM_UI, CamPrefsUtils.SYSTEM_UI_SHOW_TIME_PERIOD);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setZoomToNextPrimeLevel(boolean z) {
        if (this.mAutoExposureManager.isMetering() || this.mFocusManager.isFocusing()) {
            return;
        }
        removePrimaryControl();
        showZoomWheelView(ZoomWheel.EventType.TOUCHSTRIP);
        float calculatePrimeLevel = this.mZoomManager.calculatePrimeLevel(z);
        String str = TAG;
        LogUtil.d(str, "onFling current mZoomLevel " + this.mZoomManager.getZoomLevel() + " changing to: " + calculatePrimeLevel);
        if (calculatePrimeLevel != this.mZoomManager.getZoomLevel()) {
            removeFocusCrossHair();
            this.mZoomManager.zoomToNextPrime(calculatePrimeLevel, this.mZoomWheel);
        }
        this.mMainLooperHandler.removeMessages(MSG_HIDE_ZOOM_LAYOUT);
        this.mMainLooperHandler.sendEmptyMessageDelayed(MSG_HIDE_ZOOM_LAYOUT, ZOOM_WHEEL_DISAPPEARANCE_DELAY);
    }

    private void initFaceDetect() {
        if (FaceDetector.get().isFaceDetectionFeatureEnabled()) {
            this.mFaceViewHelper.init(this.mRootContainer, this.mPreviewSize);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onDelayedResume() {
        long currentTimeMillis = System.currentTimeMillis();
        CameraManager cameraManager = this.mCameraManager.get();
        cameraManager.setUpdatePreviewListener(this);
        cameraManager.startBackgroundThread();
        long currentTimeMillis2 = System.currentTimeMillis();
        String str = TAG;
        LogUtil.d(str, "Time to create background thread: " + (currentTimeMillis2 - currentTimeMillis));
        this.mSoundManager.checkAndEnableSound();
        cameraManager.openCamera();
        if (this.mTextureView.isAvailable()) {
            configureTransform(this.mTextureView.getWidth(), this.mTextureView.getHeight());
        } else {
            this.mTextureView.setSurfaceTextureListener(this.mSurfaceTextureListener);
        }
        addTouchAndOrientationListener();
        resetFocusAeParams();
        this.mZoomManager.setZoomUpdateOnUi(this);
        this.mZoomManager.initZoomValue(this.mZoomWheel);
        this.mAutoExposureManager.setAeUiUpdateListener(this);
        this.mFocusManager.resetFocusStateToIdle();
        this.mFocusManager.setFocusListener(this);
        this.mCameraPref.registerChangeListener(this.mPrefListener);
        this.mTouchStrip.registerEventListener(this.mOnTouchStripEventListener);
        this.mLensObstructionDetector.setOnObstructionEventListener(this.mOnObstructionEventListener);
        this.mHardKeyManager.registerKeyListener(this);
        this.mSmartAFTriggerMgr.init();
        hideSystemUI();
        ThermalManager.get().registerThermalStateListener(this);
        OrientationsController.get().registerOrientationListener(this);
        this.mBatteryStatusMonitor.register(getActivity());
    }
}