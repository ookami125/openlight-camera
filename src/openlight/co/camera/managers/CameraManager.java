package openlight.co.camera.managers;

import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureFailure;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.support.v4.content.ContextCompat;
import android.util.Range;
import android.util.Size;
import android.view.Surface;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import openlight.co.camera.CameraApp;
import openlight.co.camera.CameraInfo;
import openlight.co.camera.CameraMode;
import openlight.co.camera.enums.AwbMode;
import openlight.co.camera.enums.FlashMode;
import openlight.co.camera.managers.autoexposure.AutoExposureManager;
import openlight.co.camera.managers.capture.CaptureManager;
import openlight.co.camera.managers.capturerequest.CaptureRequestBuilder;
import openlight.co.camera.managers.capturerequest.CaptureRequestManager;
import openlight.co.camera.managers.focus.FocusManager;
import openlight.co.camera.managers.focus.SmartAFTriggerMgr;
import openlight.co.camera.managers.zoom.ZoomManager;
import openlight.co.camera.metrics.Metrics;
import openlight.co.camera.utils.CameraState;
import openlight.co.camera.utils.CamPrefsUtils;
import openlight.co.camera.utils.FaceDetector;
import openlight.co.camera.utils.MediaFileManager;
import openlight.co.camera.utils.Provider;
import openlight.co.camera.utils.TimingLoggerUtil;
import openlight.co.lib.content.CamPrefsFactory;
import openlight.co.lib.content.Prefs;
import openlight.co.lib.utils.LogUtil;

public abstract class CameraManager {
    private static final String TAG = "CameraManager";
    private static final int MSG_CAPTURE_START = 0x64;
    private static final int MSG_TRIGGER_CAPTURE_TO_HAL = 0x65;
    private static final int MSG_CAPTURE_COMPLETE = 0x66;
    private static final int MSG_START_AE_METERING = 0x67;
    private static final int MSG_AE_WAITING_CONVERGENCE = 0x68;
    private static final int MSG_START_FOCUS = 0x69;
    private static final int MSG_LOCK_AE_FOR_FOCUS = 0x6a;
    private static final int MSG_FOCUS_TRIGGERED = 0x6b;
    private static final int MSG_FOCUS_COMPLETE = 0x6c;
    private static final long TIME_TO_FOCUS_THRESHOLD = 0x1388L;
    private static final long AB_HANDSHAKE_EXPOSURE_TIME_THRESHOLD = 0xdb19d8L;
    private static final long BC_HANDSHAKE_EXPOSURE_TIME_THRESHOLD = 0x65c6b0L;
    private static final boolean VERBOSE_LOGGING = false;

    private static CameraManager sInstance;

    private final Provider<AutoExposureManager> mAutoExposureManager;
    private CameraMode mCamMode;
    protected final Prefs mCamPref;
    private Handler mCameraBackgroundHandler;
    private HandlerThread mCameraBackgroundThread;
    protected CameraDevice mCameraDevice;
    private final CameraInfo mCameraInfo;
    private final Metrics mCameraMetrics;
    protected final Semaphore mCameraOpenCloseLock;
    private final CameraState mCameraState;
    private final Object mCameraStateLock;
    private final Provider<CaptureManager> mCaptureManager;
    private final Provider<CaptureRequestManager> mCaptureReqManager;
    private CaptureResult mCaptureResult;
    private CameraCaptureSession mCaptureSession;
    protected volatile State mCurrentState;
    private final Handler mEventHandler;
    private final FaceDetector mFaceDetector;
    private final Provider<FocusManager> mFocusManager;
    private Range<Integer> mFpsRange;
    protected CaptureRequest.Builder mPreviewRequestBuilder;
    private final CameraCaptureSession.CaptureCallback mPreviewRequestCallback;
    private final Provider<SmartAFTriggerMgr> mSmartAFTriggerMgrProvider;
    private final CameraDevice.StateCallback mStateCallback;
    protected List<Surface> mSurfaceList;
    private final TimingLoggerUtil mTimingLoggerUtil;
    protected UpdatePreview mUpdatePreviewListener;
    private final ZoomManager mZoomManager;

    public CameraManager() {
        mSurfaceList = new ArrayList<>();
        mCamPref = CamPrefsFactory.get();
        mCurrentState = State.CLOSED;
        mCameraOpenCloseLock = new Semaphore(1);
        mCamMode = CameraMode.getMode(mCamPref.getStringValue("camera_mode_setting"));
        mCameraInfo = CameraInfo.get();
        mCameraMetrics = Metrics.get();
        mCameraState = CameraState.get();
        mZoomManager = ZoomManager.get();
        mTimingLoggerUtil = TimingLoggerUtil.get();
        mFaceDetector = FaceDetector.get();
        mCaptureReqManager = CaptureRequestManager::get;
        mCaptureManager = CaptureManager::get;
        mAutoExposureManager = AutoExposureManager::get;
        mFocusManager = FocusManager::get;
        mSmartAFTriggerMgrProvider = SmartAFTriggerMgr::get;
        mCameraStateLock = new Object();
        mCameraBackgroundThread = new HandlerThread(getBackgroundThreadName(), 10);
        mFpsRange = new Range<>(7, 30);
        mEventHandler = new Handler(new Handler.Callback() {
            @Override
            public boolean handleMessage(Message msg) {
                CaptureManager captureManager = (CaptureManager) mCaptureManager.get();
                switch (msg.what) {
                    case MSG_CAPTURE_START:
                        LogUtil.d(TAG, "MSG_CAPTURE_START");
                        captureManager.doCapture();
                        break;
                    case MSG_TRIGGER_CAPTURE_TO_HAL:
                        LogUtil.d(TAG, "MSG_TRIGGER_CAPTURE_TO_HAL");
                        CameraState.SessionState triggerState = captureManager.isBurstCapture()
                                ? CameraState.SessionState.WAITING_FOR_BURST_CAPTURE_COMPLETION
                                : CameraState.SessionState.WAITING_FOR_STILL_CAPTURE_COMPLETION;
                        mCameraState.setSessionState(triggerState);
                        break;
                    case MSG_CAPTURE_COMPLETE:
                        LogUtil.d(TAG, "MSG_CAPTURE_COMPLETE");
                        if (captureManager.getPendingUserCaptures() > 0 && captureManager.isBurstCapture()) {
                            mCameraState.setSessionState(CameraState.SessionState.WAITING_FOR_BURST_CAPTURE_COMPLETION);
                        } else {
                            if (mUpdatePreviewListener != null) {
                                mUpdatePreviewListener.updateUiOnCaptureComplete();
                            }
                            captureManager.finishedCaptureLocked();
                            mCameraState.setSessionState(CameraState.SessionState.PREVIEW);
                        }
                        break;
                    case MSG_START_AE_METERING:
                        LogUtil.d(TAG, "MSG_START_AE_METERING");
                        if (mUpdatePreviewListener != null) {
                            mUpdatePreviewListener.disableControls();
                        }
                        mTimingLoggerUtil.captureTiming(TimingLoggerUtil.TimeToAutoFocusSplits.START_AE_METERING);
                        AutoExposureManager aeMeterMgr = (AutoExposureManager) mAutoExposureManager.get();
                        if (aeMeterMgr.startAeMetering()) {
                            aeWaitingConvergence();
                        } else {
                            startFocus();
                        }
                        break;
                    case MSG_AE_WAITING_CONVERGENCE:
                        LogUtil.d(TAG, "MSG_AE_WAITING_CONVERGENCE");
                        mCameraState.setSessionState(CameraState.SessionState.WAITING_FOR_3A_CONVERGENCE);
                        break;
                    case MSG_START_FOCUS: {
                        LogUtil.d(TAG, "MSG_START_FOCUS");
                        AutoExposureManager aeFocusMgr = (AutoExposureManager) mAutoExposureManager.get();
                        LogUtil.d(TAG, "AE Manager State Locked: " + aeFocusMgr.isLocked());
                        if (!aeFocusMgr.isLocked()) {
                            boolean isZooming = mZoomManager.isCurrentlyZooming();
                            boolean captureIdle = ((CaptureManager) mCaptureManager.get()).isIdle();
                            boolean captureQueued = captureIdle ? false : ((CaptureManager) mCaptureManager.get()).isQueued();
                            boolean readyForFocus = captureIdle || captureQueued;
                            if (!isZooming && readyForFocus) {
                                mCameraState.setSessionState(CameraState.SessionState.WAITING_FOR_FOCUS_TRIGGER);
                                mTimingLoggerUtil.captureTiming(TimingLoggerUtil.TimeToAutoFocusSplits.START_FOCUS);
                                ((FocusManager) mFocusManager.get()).autoTriggerFocus();
                                aeFocusMgr.lockAe(mPreviewRequestBuilder);
                            } else if (isZooming
                                    && mCameraState.getSessionState() == CameraState.SessionState.WAITING_FOR_3A_CONVERGENCE) {
                                LogUtil.w(TAG, "Zooming while waiting for convergence. Skipping AE Lock and aborting focus.");
                                focusComplete();
                            }
                        }
                        break;
                    }
                    case MSG_LOCK_AE_FOR_FOCUS:
                        break;
                    case MSG_FOCUS_TRIGGERED:
                        LogUtil.d(TAG, "MSG_FOCUS_TRIGGERED");
                        mCameraState.setSessionState(CameraState.SessionState.WAITING_FOR_FOCUS_ACHIEVED);
                        break;
                    case MSG_FOCUS_COMPLETE:
                        LogUtil.d(TAG, "MSG_FOCUS_COMPLETE");
                        ((AutoExposureManager) mAutoExposureManager.get()).setMeteringCompleted();
                        ((FocusManager) mFocusManager.get()).setFocusCompleted();
                        if (mUpdatePreviewListener != null) {
                            mUpdatePreviewListener.enableControls();
                        }
                        mCameraState.setSessionState(CameraState.SessionState.PREVIEW);
                        LogUtil.d(TAG, "MSG_RESET_POST_FOCUS");
                        if (!((AutoExposureManager) mAutoExposureManager.get()).getAeHwLock()) {
                            ((CaptureRequestManager) mCaptureReqManager.get()).resetPostCapture(mPreviewRequestBuilder);
                            startRepeatingRequestInPreview();
                        }
                        checkForQueuedState();
                        break;
                }
                return true;
            }
        });

        mStateCallback = new CameraDevice.StateCallback() {
            @Override
            public void onClosed(CameraDevice camera) {
                LogUtil.i(TAG, "CameraDevice onClosed");
                mCameraState.setDeviceState(CameraState.DeviceState.CLOSED);
            }

            @Override
            public void onDisconnected(CameraDevice camera) {
                LogUtil.i(TAG, "CameraDevice onDisconnected - id: " + camera.getId());
                synchronized (mCameraStateLock) {
                    mEventHandler.removeCallbacksAndMessages(null);
                    mCameraState.setDeviceState(CameraState.DeviceState.CLOSED);
                    mCameraOpenCloseLock.release();
                    camera.close();
                    mCameraDevice = null;
                }
                mCameraMetrics.add("event_camera_device_error");
                if (mUpdatePreviewListener != null) {
                    mUpdatePreviewListener.cameraDeviceError();
                }
            }

            @Override
            public void onError(CameraDevice camera, int error) {
                LogUtil.e(TAG, "CameraDevice onError: " + error);
                synchronized (mCameraStateLock) {
                    mEventHandler.removeCallbacksAndMessages(null);
                    mCameraState.setDeviceState(CameraState.DeviceState.CLOSED);
                    mCameraOpenCloseLock.release();
                    camera.close();
                    mCameraDevice = null;
                }
                mCameraMetrics.add("event_camera_device_error");
                mUpdatePreviewListener.cameraDeviceError();
            }

            @Override
            public void onOpened(CameraDevice camera) {
                LogUtil.i(TAG, "CameraDevice onOpened");
                synchronized (mCameraStateLock) {
                    mCameraOpenCloseLock.release();
                    mCameraDevice = camera;
                    mCameraState.setDeviceState(CameraState.DeviceState.OPEN);
                    mUpdatePreviewListener.cameraDeviceOpen();
                }
            }
        };

        mPreviewRequestCallback = new CameraCaptureSession.CaptureCallback() {
            private long mLastFrameTime = 0L;

            private void process(CaptureResult result) {
                if (mCurrentState != State.OPEN) {
                    LogUtil.e(TAG, "Camera not in open state to process preview capture result, state: " + mCurrentState);
                    return;
                }
                synchronized (mCameraStateLock) {
                    mCaptureResult = result;
                    switch (mCameraState.getSessionState()) {
                        case PREVIEW: {
                            long frameNumber = result.getFrameNumber();
                            if (frameNumber < 2) {
                                Range<Integer> fpsRange = (Range<Integer>) result.get(CaptureResult.CONTROL_AE_TARGET_FPS_RANGE);
                                mFpsRange = fpsRange;
                                CaptureRequestBuilder.setAeTargetFpsRange(mPreviewRequestBuilder, null);
                                ((CaptureRequestManager) mCaptureReqManager.get()).resetZoom(mPreviewRequestBuilder);
                                startRepeatingRequestInPreview();
                            }
                            FocusManager fmgr = (FocusManager) mFocusManager.get();
                            if (fmgr.isIdle()) {
                                LogUtil.i(TAG, "Initial focus in module");
                                ((SmartAFTriggerMgr) mSmartAFTriggerMgrProvider.get()).processSystemTrigger();
                            }
                            List<?> faces = FaceDetector.get().processCaptureResult(result);
                            boolean noFaces;
                            if (faces == null || faces.isEmpty()) {
                                noFaces = ((SmartAFTriggerMgr) mSmartAFTriggerMgrProvider.get()).getLastFocusTriggeredFace() != null;
                            } else {
                                noFaces = false;
                            }
                            if (mCurrentState == State.OPEN) {
                                int iso = getISO(result);
                                long shutterSpeed = getShutterSpeed(result);
                                boolean isFirstFrame = (frameNumber < 1);
                                mUpdatePreviewListener.updateHudInfo(iso, shutterSpeed, isFirstFrame);
                                if (noFaces) {
                                    mUpdatePreviewListener.onNoFacesInPreview();
                                }
                                openlight.co.lightsdk.camera2.CaptureResult.Parser p1 = openlight.co.lightsdk.camera2.CaptureResult.Parser.get(result);
                                mUpdatePreviewListener.updateLowLightAssist(p1.isCaptureStacked());
                                openlight.co.lightsdk.camera2.CaptureResult.Parser p2 = openlight.co.lightsdk.camera2.CaptureResult.Parser.get(result);
                                mUpdatePreviewListener.updateTripodAssist(p2.isOnTripod());
                                mUpdatePreviewListener.updateHandshakeAssist(showHandshakeAssist(result));
                            }
                            break;
                        }
                        case WAITING_FOR_FOCUS_ACHIEVED: {
                            Integer afStateObj = (Integer) result.get(CaptureResult.CONTROL_AF_STATE);
                            if (afStateObj == null) break;
                            int afState = afStateObj;
                            if (ZoomManager.get().isCurrentlyZooming()) {
                                LogUtil.w(TAG, "Zoom in progress. Cannot Focus!");
                                mUpdatePreviewListener.focusFailedUpdateUi();
                                focusComplete();
                                return;
                            }
                            if (afState == 4) {
                                LogUtil.i(TAG, "Focus Achieved in frame: " + result.getFrameNumber());
                                mTimingLoggerUtil.captureTiming(TimingLoggerUtil.TimeToAutoFocusSplits.FOCUS_ACHIEVED);
                                mUpdatePreviewListener.focusSuccessUpdateUi();
                                focusComplete();
                                mCameraState.setSessionState(CameraState.SessionState.PREVIEW);
                            } else if (afState == 5) {
                                LogUtil.i(TAG, "Focus Failed in frame: " + result.getFrameNumber());
                                if (mUpdatePreviewListener != null) {
                                    mUpdatePreviewListener.focusFailedUpdateUi();
                                }
                                focusComplete();
                                mCameraState.setSessionState(CameraState.SessionState.PREVIEW);
                            }
                            if (hasTimeToFocusThresholdPassed()) {
                                LogUtil.i(TAG, "Focus Timeout");
                                mUpdatePreviewListener.focusFailedUpdateUi();
                                focusComplete();
                            }
                            break;
                        }
                        case WAITING_FOR_STILL_CAPTURE_COMPLETION: {
                            ((AutoExposureManager) mAutoExposureManager.get()).resetPreCaptureTrigger(mPreviewRequestBuilder);
                            LogUtil.i(TAG, "Capture initiation in frameNumber " + result.getFrameNumber());
                            mTimingLoggerUtil.captureTiming(TimingLoggerUtil.TimeToCaptureSplits.IN_STATE_STILL_CAPTURE);
                            ((CaptureManager) mCaptureManager.get()).captureStillPictureLocked();
                            mCameraState.setSessionState(CameraState.SessionState.PREVIEW);
                            break;
                        }
                        case WAITING_FOR_BURST_CAPTURE_COMPLETION: {
                            CaptureManager burstCapMgr = (CaptureManager) mCaptureManager.get();
                            LogUtil.i(TAG, "Burst Capture initiation in frameNumber " + result.getFrameNumber());
                            burstCapMgr.captureBurstPictureLocked(burstCapMgr.getPendingUserCaptures());
                            mCameraState.setSessionState(CameraState.SessionState.PREVIEW);
                            break;
                        }
                        case WAITING_FOR_3A_CONVERGENCE: {
                            CaptureManager convCapMgr = (CaptureManager) mCaptureManager.get();
                            AutoExposureManager aeConvMgr = (AutoExposureManager) mAutoExposureManager.get();
                            boolean isAeMeteringOn = aeConvMgr.isMetering();
                            LogUtil.d(TAG, "3A convergence in frame: " + result.getFrameNumber());
                            LogUtil.d(TAG, "[AE] Is AE metering on: " + isAeMeteringOn);
                            boolean afDone;
                            if (!mCameraInfo.isAutoFocusSupported()) {
                                Integer afStateObj = (Integer) result.get(CaptureResult.CONTROL_AF_STATE);
                                if (afStateObj == null) break;
                                int afState = afStateObj;
                                afDone = (afState == 4 || afState == 5);
                            } else {
                                afDone = false;
                            }
                            Integer aeStateObj = (Integer) result.get(CaptureResult.CONTROL_AE_STATE);
                            Integer awbStateObj = (Integer) result.get(CaptureResult.CONTROL_AWB_STATE);
                            LogUtil.d(TAG, "[AE] AE State: " + aeStateObj);
                            LogUtil.d(TAG, "[AE] AWB State: " + awbStateObj);
                            if (aeStateObj == null || awbStateObj == null) {
                                convCapMgr.resetCapture();
                                mCameraState.setSessionState(CameraState.SessionState.PREVIEW);
                                break;
                            }
                            int aeState = aeStateObj;
                            if (aeState == 2 || aeState == 4 || aeState == 3) {
                                boolean aeIsLocked = (aeState == 4);
                                aeConvMgr.resetRoiInCenterWeighted(mPreviewRequestBuilder);
                                boolean readyToCapture = true;
                                LogUtil.d(TAG, "[CAPTURE] PendingCaptureIntent: " + convCapMgr.getPendingUserCaptures());
                                LogUtil.d(TAG, "[CAPTURE] readyToCaptures: " + readyToCapture);
                                if (readyToCapture && convCapMgr.getPendingUserCaptures() > 0) {
                                    triggerCaptureToHal();
                                } else if (readyToCapture && convCapMgr.getPendingUserCaptures() == 0) {
                                    LogUtil.d(TAG, "[AF] Starting Focus post Metering complete");
                                    if (aeIsLocked) {
                                        startFocus(4);
                                    } else {
                                        startFocus();
                                    }
                                }
                            }
                            break;
                        }
                        default:
                            break;
                    }
                }
            }

            @Override
            public void onCaptureCompleted(CameraCaptureSession session, CaptureRequest request,
                    TotalCaptureResult result) {
                process(result);
            }

            @Override
            public void onCaptureFailed(CameraCaptureSession session, CaptureRequest request,
                    CaptureFailure failure) {
                LogUtil.e(TAG, "Preview Capture Failed : Reason: " + failure.getReason()
                        + " Sequence Id " + failure.getSequenceId()
                        + " frameNumber " + failure.getFrameNumber());
                handleOnCaptureFailed();
            }

            @Override
            public void onCaptureProgressed(CameraCaptureSession session, CaptureRequest request,
                    CaptureResult partialResult) {
                process(partialResult);
            }
        };
    }

    public static CameraManager get() {
        return sInstance;
    }

    public static void set(CameraManager manager) {
        sInstance = manager;
    }

    public abstract String getBackgroundThreadName();
    public abstract boolean canGotoGallery();
    public abstract void createCameraSession(SurfaceTexture surfaceTexture, Size size);

    private Message createMessage(int what) {
        return mEventHandler.obtainMessage(what);
    }

    private Message createMessage(int what, int arg1) {
        return mEventHandler.obtainMessage(what, arg1, 0);
    }

    private void sendMessage(Message msg) {
        if (mCurrentState == State.OPEN) {
            mEventHandler.sendMessage(msg);
        }
    }

    private int getISO(CaptureResult result) {
        Integer iso = (Integer) result.get(CaptureResult.SENSOR_SENSITIVITY);
        if (iso == null) return -1;
        return iso;
    }

    private long getShutterSpeed(CaptureResult result) {
        Long exposure = (Long) result.get(CaptureResult.SENSOR_EXPOSURE_TIME);
        if (exposure == null) return -1L;
        return exposure;
    }

    private boolean hasTimeToFocusThresholdPassed() {
        long elapsed = SystemClock.elapsedRealtime() - ((FocusManager) mFocusManager.get()).getFocusStartTime();
        return elapsed > TIME_TO_FOCUS_THRESHOLD;
    }

    private boolean manualModeFlashInFocus() {
        String flash = CamPrefsUtils.getFlash();
        return mCamMode.isManual() && "flash_on".equals(flash);
    }

    private void setTorchForFocus(boolean enabled) {
        ((FocusManager) mFocusManager.get()).setTorchForFlash(mPreviewRequestBuilder, enabled);
        startRepeatingRequestInPreview();
    }

    private boolean showHandshakeAssist(CaptureResult result) {
        Long exposureTime = (Long) result.get(CaptureResult.SENSOR_EXPOSURE_TIME);
        long exposure = exposureTime.longValue();
        if (exposure > BC_HANDSHAKE_EXPOSURE_TIME_THRESHOLD && mZoomManager.isInBCFocalLength()) {
            return true;
        }
        return exposure > AB_HANDSHAKE_EXPOSURE_TIME_THRESHOLD;
    }

    private void startMeteringOrFocus() {
        LogUtil.i(TAG, "Is Currently Running Zoom " + mZoomManager.isCurrentlyZooming()
                + " or is Metering " + ((AutoExposureManager) mAutoExposureManager.get()).isMetering()
                + " or is focusing " + ((FocusManager) mFocusManager.get()).isFocusing());
        if (mPreviewRequestBuilder == null) return;
        if (mZoomManager.isCurrentlyZooming()) return;
        if (((AutoExposureManager) mAutoExposureManager.get()).isMetering()) return;
        if (((FocusManager) mFocusManager.get()).isFocusing()) return;
        ((CaptureRequestManager) mCaptureReqManager.get()).startAeFocus(mPreviewRequestBuilder);
    }

    private void updateCameraModeOnChange() {
        ((CaptureRequestManager) mCaptureReqManager.get()).createPreviewRequest(mPreviewRequestBuilder);
        if (mCamMode.isManual()) {
            mCameraMetrics.add("event_manual_mode_selected");
        } else {
            CaptureRequestBuilder.setAeTargetFpsRange(mPreviewRequestBuilder, mFpsRange);
            ((AutoExposureManager) mAutoExposureManager.get()).resetAeMetering();
            mCameraMetrics.add("event_auto_mode_selected");
        }
        startRepeatingRequestInPreview();
    }

    protected void closeCaptureSession() {
        if (mCaptureSession != null) {
            mCaptureSession.close();
            mCaptureSession = null;
        }
    }

    protected void createCameraPreviewSessionLocked(SurfaceTexture surfaceTexture, Size size) {
        surfaceTexture.setDefaultBufferSize(size.getWidth(), size.getHeight());
        Surface surface = new Surface(surfaceTexture);
        mCameraState.setSurface(surface);
        mSurfaceList.add(surface);
        mPreviewRequestBuilder.addTarget(surface);
        try {
            mCameraDevice.createCaptureSession(mSurfaceList, new CameraCaptureSession.StateCallback() {
                @Override
                public void onClosed(CameraCaptureSession session) {
                    LogUtil.i(TAG, "[CONFIG] session: onClosed");
                }

                @Override
                public void onConfigureFailed(CameraCaptureSession session) {
                    LogUtil.i(TAG, "[CONFIG] session: onConfigureFailed");
                    mCameraState.releaseSurface();
                }

                @Override
                public void onConfigured(CameraCaptureSession session) {
                    LogUtil.i(TAG, "[CONFIG] session: onConfigured");
                    synchronized (mCameraStateLock) {
                        if (mCameraDevice == null) {
                            mCameraState.releaseSurface();
                            return;
                        }
                        mCaptureSession = session;
                        try {
                            ((CaptureRequestManager) mCaptureReqManager.get()).createPreviewRequest(mPreviewRequestBuilder);
                            mCameraState.setSessionState(CameraState.SessionState.PREVIEW);
                        } catch (IllegalStateException e) {
                            LogUtil.e(TAG, "Error building preview", e);
                            return;
                        }
                        startRepeatingRequestInPreview();
                        if (mCamMode.isManual()) {
                            CaptureRequestBuilder.setAwbLock(mPreviewRequestBuilder, false);
                        }
                        mUpdatePreviewListener.onCaptureSessionConfigured();
                    }
                }
            }, mCameraBackgroundHandler);
        } catch (Exception e) {
            LogUtil.e(TAG, "createCameraPreviewSessionLocked: Exception", e);
        }
    }

    protected void handleOnCaptureFailed() {
    }

    protected boolean isFocusingOrMetering() {
        if (((FocusManager) mFocusManager.get()).isFocusing()) return true;
        return ((AutoExposureManager) mAutoExposureManager.get()).isMetering();
    }

    protected void initCapturesInFlight() {
    }

    protected void stopRepeating() {
        try {
            if (mCaptureSession != null) {
                mCaptureSession.stopRepeating();
            }
        } catch (CameraAccessException | IllegalStateException e) {
            LogUtil.e(TAG, "Exception when calling stopRepeating on Camera Session during close", e);
        }
    }

    public void aeWaitingConvergence() {
        sendMessage(createMessage(MSG_AE_WAITING_CONVERGENCE));
    }

    public void captureComplete() {
        sendMessage(createMessage(MSG_CAPTURE_COMPLETE));
    }

    public void captureStart() {
        sendMessage(createMessage(MSG_CAPTURE_START));
    }

    public void checkForQueuedState() {
    }

    public void clearState() {
        ((AutoExposureManager) mAutoExposureManager.get()).resetAeMetering();
        ((FocusManager) mFocusManager.get()).resetFocusStateToIdle();
        ((CaptureManager) mCaptureManager.get()).resetCapture();
        mZoomManager.resetZoom();
    }

    public boolean closeCamera() {
        mCurrentState = State.CLOSING;
        stopRepeating();
        mEventHandler.removeCallbacksAndMessages(null);
        synchronized (mCameraStateLock) {
            ((CaptureManager) mCaptureManager.get()).resetPendingUserCaptures();
            mCameraState.setDeviceState(CameraState.DeviceState.CLOSED);
            LogUtil.d(TAG, "Inside closeCamera: " + mCaptureSession + " and device: " + mCameraDevice);
            closeCaptureSession();
            mCameraState.releaseSurface();
            if (mUpdatePreviewListener != null) {
                mUpdatePreviewListener.resetPreviewSizeOnClose();
            }
            LogUtil.i(TAG, "Closing Camera Device");
            if (mCameraDevice != null) {
                mCameraDevice.close();
                mCameraDevice = null;
            }
        }
        mCameraOpenCloseLock.release();
        mCurrentState = State.CLOSED;
        return true;
    }

    public void decrementCapturesInFlight() {
    }

    public void focusComplete() {
        sendMessage(createMessage(MSG_FOCUS_COMPLETE));
    }

    public void focusTriggered() {
        sendMessage(createMessage(MSG_FOCUS_TRIGGERED));
    }

    public Handler getCameraBackgroundHandler() {
        return mCameraBackgroundHandler;
    }

    public CameraCaptureSession getCameraCaptureSession() {
        return mCaptureSession;
    }

    public CameraDevice getCameraDevice() {
        return mCameraDevice;
    }

    public CameraMode getCameraMode() {
        return mCamMode;
    }

    public Object getCameraStateLock() {
        return mCameraStateLock;
    }

    public CaptureResult getCaptureResultPerFrame() {
        return mCaptureResult;
    }

    public int getCapturesInFlight() {
        return 0;
    }

    public long getFrameNumber() throws IllegalStateException {
        if (mCaptureResult == null) {
            throw new IllegalStateException("Capture Result is null, cannot get frame number");
        }
        return mCaptureResult.getFrameNumber();
    }

    public int getPendingReaderReferences() {
        return 0;
    }

    public CaptureRequest.Builder getPreviewRequestBuilder() {
        return mPreviewRequestBuilder;
    }

    public CameraCaptureSession.CaptureCallback getPreviewRequestCallback() {
        return mPreviewRequestCallback;
    }

    public void incrementCapturesInFlight() {
    }

    public boolean isCameraInOpenState() {
        return mCurrentState == State.OPEN;
    }

    public boolean isCameraOpeningOrClosing() {
        return mCameraOpenCloseLock.availablePermits() == 0;
    }

    public boolean isIdle() {
        boolean captureIdle = ((CaptureManager) mCaptureManager.get()).isIdle();
        boolean isFocusing = ((FocusManager) mFocusManager.get()).isFocusing();
        boolean isMetering = ((AutoExposureManager) mAutoExposureManager.get()).isMetering();
        LogUtil.i(TAG, "Camera Manager State in isIdle : " + mCurrentState
                + " Capture Manager State " + captureIdle
                + " Currently Focusing: " + isFocusing
                + " Currently Metering: " + isMetering);
        return mCurrentState == State.OPEN
                && ((CaptureManager) mCaptureManager.get()).isIdle()
                && !((FocusManager) mFocusManager.get()).isFocusing()
                && !((AutoExposureManager) mAutoExposureManager.get()).isMetering();
    }

    public boolean isRecording() {
        return false;
    }

    public boolean openCamera() {
        mCurrentState = State.OPENING;
        LogUtil.d(TAG, "openCamera");
        if (ContextCompat.checkSelfPermission(CameraApp.get(), "android.permission.CAMERA") != 0) {
            return false;
        }
        MediaFileManager.get().checkLastFileName();
        try {
            android.hardware.camera2.CameraManager manager =
                    (android.hardware.camera2.CameraManager) CameraApp.get().getSystemService(
                            android.hardware.camera2.CameraManager.class);
            if (!mCameraOpenCloseLock.tryAcquire(0x9c4L, TimeUnit.MILLISECONDS)) {
                throw new RuntimeException("Time out waiting to lock camera opening.");
            }
            String cameraId;
            synchronized (mCameraStateLock) {
                cameraId = mCameraInfo.getCameraId();
            }
            LogUtil.d(TAG, "Open Camera in Camera Controller");
            manager.openCamera(cameraId, mStateCallback, mCameraBackgroundHandler);
            reset();
            mCurrentState = State.OPEN;
            return true;
        } catch (InterruptedException e) {
            throw new RuntimeException("Interrupted while trying to lock camera opening.", e);
        } catch (CameraAccessException e) {
            LogUtil.e(TAG, "Camera Access Exception", e);
            mCurrentState = State.CLOSED;
            return false;
        }
    }

    public void reset() {
        mCaptureResult = null;
    }

    public void setCameraMode(CameraMode mode) {
        if (mode == mCamMode) return;
        CameraMode oldMode = mCamMode;
        mCamMode = mode;
        mCamPref.putValue("camera_mode_setting", mode.toString());
        if ((CameraMode.isPictureMode(oldMode) && CameraMode.isVideoMode(mCamMode))
                || (CameraMode.isVideoMode(oldMode) && CameraMode.isPictureMode(mCamMode))) {
            mZoomManager.resetTempZoomLevel();
        }
        mUpdatePreviewListener.updateModeChange();
        updateCameraModeOnChange();
    }

    public void setCurrentCameraState(State state) {
        mCurrentState = state;
    }

    public void setUpdatePreviewListener(UpdatePreview listener) {
        synchronized (mCameraStateLock) {
            mUpdatePreviewListener = listener;
        }
    }

    public void startAeMetering() {
        sendMessage(createMessage(MSG_START_AE_METERING));
    }

    public void startBackgroundThread() {
        stopBackgroundThread();
        synchronized (mCameraStateLock) {
            mCameraBackgroundThread = new HandlerThread(getBackgroundThreadName(), 10);
            mCameraBackgroundThread.start();
            mCameraBackgroundHandler = new Handler(mCameraBackgroundThread.getLooper());
        }
    }

    public void startCaptureRequest() {
        try {
            if (mCaptureSession != null) {
                mCaptureSession.capture(mPreviewRequestBuilder.build(), mPreviewRequestCallback,
                        mCameraBackgroundHandler);
            } else {
                LogUtil.w(TAG, "No capture session available");
            }
        } catch (CameraAccessException | IllegalStateException | IllegalArgumentException e) {
            LogUtil.e(TAG, "Exception in capture in preview", e);
        }
    }

    public void startFocus() {
        sendMessage(createMessage(MSG_START_FOCUS));
    }

    public void startFocus(int arg) {
        sendMessage(createMessage(MSG_START_FOCUS, arg));
    }

    public void startRepeatingRequestInPreview() {
        if (mCurrentState != State.OPEN) {
            LogUtil.e(TAG, "Cannot set repeating request when camera is not open, current state :" + mCurrentState);
            return;
        }
        try {
            if (mUpdatePreviewListener != null) {
                mUpdatePreviewListener.updateHistogram();
            }
            if (mCaptureSession != null) {
                if (((SmartAFTriggerMgr) mSmartAFTriggerMgrProvider.get()).isAfModeSettingAfd()) {
                    mFaceDetector.enableFaceDetectionOnPreview(mPreviewRequestBuilder);
                } else {
                    mFaceDetector.disableFaceDetectionOnPreview(mPreviewRequestBuilder);
                }
                mCaptureSession.setRepeatingRequest(mPreviewRequestBuilder.build(),
                        mPreviewRequestCallback, mCameraBackgroundHandler);
            } else {
                LogUtil.w(TAG, "No capture session available");
            }
        } catch (CameraAccessException | IllegalStateException | IllegalArgumentException e) {
            LogUtil.e(TAG, "Exception in startRepeatRequestInPreview", e);
        }
    }

    public void stopBackgroundThread() {
        if (mCameraBackgroundHandler == null) return;
        synchronized (mCameraStateLock) {
            if (mCameraBackgroundHandler != null) {
                mCameraBackgroundHandler.removeCallbacksAndMessages(null);
                mCameraBackgroundHandler = null;
            }
            if (mCameraBackgroundThread != null) {
                mCameraBackgroundThread.quitSafely();
                try {
                    mCameraBackgroundThread.join();
                    mCameraBackgroundThread = null;
                } catch (InterruptedException e) {
                    LogUtil.e(TAG, "Exception stopping Camera BackgroundThread", e);
                }
            }
        }
    }

    public void triggerAeFocusAtCenter() {
        if (!isIdle() || mZoomManager.isCurrentlyZooming()) return;
        LogUtil.d(TAG, "Trigger AE and Focus to center");
        ((AutoExposureManager) mAutoExposureManager.get()).setMeteringPointToCenter();
        ((FocusManager) mFocusManager.get()).setFocusPointToCenter();
        startMeteringOrFocus();
    }

    public void triggerAeFocusAtLastPoint() {
        if (!isIdle() || mZoomManager.isCurrentlyZooming()) return;
        AutoExposureManager aeMgr = (AutoExposureManager) mAutoExposureManager.get();
        if (aeMgr.isCenterWeighted()) {
            LogUtil.d(TAG, "Trigger AE at center and Focus at previous coordinate");
            aeMgr.setMeteringPointToCenter();
        } else {
            LogUtil.d(TAG, "Trigger AE and Focus at previous coordinate");
        }
        startMeteringOrFocus();
    }

    public void triggerAeFocusAtXY(int x, int y) {
        if (!isIdle() || mZoomManager.isCurrentlyZooming()) return;
        LogUtil.d(TAG, "Trigger AE and Focus to x: " + x + " y: " + y);
        ((AutoExposureManager) mAutoExposureManager.get()).updateMeteringPoint(x, y);
        ((FocusManager) mFocusManager.get()).updateFocusPoint(x, y);
        startMeteringOrFocus();
    }

    public void triggerAeFocusFirstTime() {
        if (mCameraState.getAutoFitTextureView() == null) return;
        ((FocusManager) mFocusManager.get()).startFirstTimeFocus();
        startMeteringOrFocus();
    }

    public void triggerCaptureToHal() {
        sendMessage(createMessage(MSG_TRIGGER_CAPTURE_TO_HAL));
    }

    public void updateAeMode(FlashMode mode) {
        int aeFlashMode = mode.getAeFlashMode();
        if (mPreviewRequestBuilder != null) {
            CaptureRequestBuilder.setAeMode(mPreviewRequestBuilder, aeFlashMode);
            startRepeatingRequestInPreview();
        }
    }

    public void updateAwb(AwbMode mode) {
        int modeValue = mode.getCaptureRequestModeValue();
        mCamPref.putValue("wb_value", modeValue);
        if (mPreviewRequestBuilder != null) {
            CaptureRequestBuilder.setAwbMode(mPreviewRequestBuilder, modeValue);
            startRepeatingRequestInPreview();
        }
    }

    public void updateCameraMode(CameraMode mode) {
        mCamMode = mode;
    }

    public interface UpdatePreview {
        void cameraDeviceError();
        void cameraDeviceOpen();
        void disableControls();
        void enableControls();
        void focusFailedUpdateUi();
        void focusSuccessUpdateUi();
        void onCaptureSessionConfigured();
        void onNoFacesInPreview();
        void resetPreviewSizeOnClose();
        void updateHandshakeAssist(boolean show);
        void updateHistogram();
        void updateHudInfo(int iso, long shutterSpeed, boolean isFirstFrame);
        void updateLowLightAssist(Byte isCaptureStacked);
        void updateModeChange();
        void updateTripodAssist(Byte isOnTripod);
        void updateUiOnCaptureComplete();
        void updateVideoPreview();
    }

    public enum State {
        OPENING(0),
        OPEN(1),
        CLOSING(2),
        CLOSED(3);

        private final int mValue;

        State(int value) {
            mValue = value;
        }
    }
}
