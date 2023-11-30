.class public abstract Lopenlight/co/camera/managers/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/managers/CameraManager$UpdatePreview;,
        Lopenlight/co/camera/managers/CameraManager$State;
    }
.end annotation


# static fields
.field private static final AB_HANDSHAKE_EXPOSURE_TIME_THRESHOLD:J = 0xdb19d8L

.field private static final BC_HANDSHAKE_EXPOSURE_TIME_THRESHOLD:J = 0x65c6b0L

.field private static final MSG_AE_WAITING_CONVERGENCE:I = 0x68

.field private static final MSG_CAPTURE_COMPLETE:I = 0x66

.field private static final MSG_CAPTURE_START:I = 0x64

.field private static final MSG_FOCUS_COMPLETE:I = 0x6c

.field private static final MSG_FOCUS_TRIGGERED:I = 0x6b

.field private static final MSG_LOCK_AE_FOR_FOCUS:I = 0x6a

.field private static final MSG_START_AE_METERING:I = 0x67

.field private static final MSG_START_FOCUS:I = 0x69

.field private static final MSG_TRIGGER_CAPTURE_TO_HAL:I = 0x65

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static final TIME_TO_FOCUS_THRESHOLD:J = 0x1388L

.field private static final VERBOSE_LOGGING:Z

.field private static sInstance:Lopenlight/co/camera/managers/CameraManager;


# instance fields
.field private final mAutoExposureManager:Lopenlight/co/camera/utils/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/camera/utils/Provider<",
            "Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;",
            ">;"
        }
    .end annotation
.end field

.field private mCamMode:Lopenlight/co/camera/CameraMode;

.field protected final mCamPref:Lopenlight/co/lib/content/Prefs;

.field private mCameraBackgroundHandler:Landroid/os/Handler;

.field private mCameraBackgroundThread:Landroid/os/HandlerThread;

.field protected mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private final mCameraInfo:Lopenlight/co/camera/CameraInfo;

.field private final mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;

.field protected final mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private final mCameraState:Lopenlight/co/camera/utils/CameraState;

.field private final mCameraStateLock:Ljava/lang/Object;

.field private final mCaptureManager:Lopenlight/co/camera/utils/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/camera/utils/Provider<",
            "Lopenlight/co/camera/managers/capture/CaptureManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mCaptureReqManager:Lopenlight/co/camera/utils/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/camera/utils/Provider<",
            "Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field protected volatile mCurrentState:Lopenlight/co/camera/managers/CameraManager$State;

.field private final mEventHandler:Landroid/os/Handler;

.field private final mFaceDetector:Lopenlight/co/camera/utils/FaceDetector;

.field private final mFocusManager:Lopenlight/co/camera/utils/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/camera/utils/Provider<",
            "Lopenlight/co/camera/managers/focus/FocusManager;",
            ">;"
        }
    .end annotation
.end field

.field private mFpsRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private final mPreviewRequestCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private final mSmartAFTriggerMgrProvider:Lopenlight/co/camera/utils/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/camera/utils/Provider<",
            "Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field protected mSurfaceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

.field protected mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

.field private final mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mSurfaceList:Ljava/util/List;

    .line 141
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    .line 146
    sget-object v0, Lopenlight/co/camera/managers/CameraManager$State;->CLOSED:Lopenlight/co/camera/managers/CameraManager$State;

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCurrentState:Lopenlight/co/camera/managers/CameraManager$State;

    .line 151
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 158
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "camera_mode_setting"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lopenlight/co/camera/CameraMode;->getMode(Ljava/lang/String;)Lopenlight/co/camera/CameraMode;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCamMode:Lopenlight/co/camera/CameraMode;

    .line 214
    invoke-static {}, Lopenlight/co/camera/CameraInfo;->get()Lopenlight/co/camera/CameraInfo;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    .line 216
    invoke-static {}, Lopenlight/co/camera/metrics/Metrics;->get()Lopenlight/co/camera/metrics/Metrics;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;

    .line 218
    invoke-static {}, Lopenlight/co/camera/utils/CameraState;->get()Lopenlight/co/camera/utils/CameraState;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;

    .line 220
    invoke-static {}, Lopenlight/co/camera/managers/zoom/ZoomManager;->get()Lopenlight/co/camera/managers/zoom/ZoomManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    .line 222
    invoke-static {}, Lopenlight/co/camera/utils/TimingLoggerUtil;->get()Lopenlight/co/camera/utils/TimingLoggerUtil;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

    .line 224
    invoke-static {}, Lopenlight/co/camera/utils/FaceDetector;->get()Lopenlight/co/camera/utils/FaceDetector;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mFaceDetector:Lopenlight/co/camera/utils/FaceDetector;

    .line 226
    sget-object v0, Lopenlight/co/camera/managers/-$$Lambda$8xABy20ZJhGBZPhsa6h4sT4lyEI;->INSTANCE:Lopenlight/co/camera/managers/-$$Lambda$8xABy20ZJhGBZPhsa6h4sT4lyEI;

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureReqManager:Lopenlight/co/camera/utils/Provider;

    .line 228
    sget-object v0, Lopenlight/co/camera/managers/-$$Lambda$eLtAqQ88bQVQFONk62sp-oLvSOQ;->INSTANCE:Lopenlight/co/camera/managers/-$$Lambda$eLtAqQ88bQVQFONk62sp-oLvSOQ;

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureManager:Lopenlight/co/camera/utils/Provider;

    .line 230
    sget-object v0, Lopenlight/co/camera/managers/-$$Lambda$4gGiBwFkHrBzteNWjdjz1tO0nzs;->INSTANCE:Lopenlight/co/camera/managers/-$$Lambda$4gGiBwFkHrBzteNWjdjz1tO0nzs;

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mAutoExposureManager:Lopenlight/co/camera/utils/Provider;

    .line 232
    sget-object v0, Lopenlight/co/camera/managers/-$$Lambda$awF8a8iz0l390QmOYtlAiBwV1CU;->INSTANCE:Lopenlight/co/camera/managers/-$$Lambda$awF8a8iz0l390QmOYtlAiBwV1CU;

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mFocusManager:Lopenlight/co/camera/utils/Provider;

    .line 234
    sget-object v0, Lopenlight/co/camera/managers/-$$Lambda$8KesIKqmEAdeGecQAoR_bykWKHM;->INSTANCE:Lopenlight/co/camera/managers/-$$Lambda$8KesIKqmEAdeGecQAoR_bykWKHM;

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mSmartAFTriggerMgrProvider:Lopenlight/co/camera/utils/Provider;

    .line 241
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraStateLock:Ljava/lang/Object;

    .line 252
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->getBackgroundThreadName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraBackgroundThread:Landroid/os/HandlerThread;

    .line 264
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mFpsRange:Landroid/util/Range;

    .line 276
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lopenlight/co/camera/managers/CameraManager$1;

    invoke-direct {v1, p0}, Lopenlight/co/camera/managers/CameraManager$1;-><init>(Lopenlight/co/camera/managers/CameraManager;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mEventHandler:Landroid/os/Handler;

    .line 388
    new-instance v0, Lopenlight/co/camera/managers/CameraManager$2;

    invoke-direct {v0, p0}, Lopenlight/co/camera/managers/CameraManager$2;-><init>(Lopenlight/co/camera/managers/CameraManager;)V

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 444
    new-instance v0, Lopenlight/co/camera/managers/CameraManager$3;

    invoke-direct {v0, p0}, Lopenlight/co/camera/managers/CameraManager$3;-><init>(Lopenlight/co/camera/managers/CameraManager;)V

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;
    .locals 0

    .line 74
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureManager:Lopenlight/co/camera/utils/Provider;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 74
    sget-object v0, Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/metrics/Metrics;
    .locals 0

    .line 74
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;

    return-object p0
.end method

.method static synthetic access$1102(Lopenlight/co/camera/managers/CameraManager;Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;
    .locals 0

    .line 74
    iput-object p1, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object p1
.end method

.method static synthetic access$1202(Lopenlight/co/camera/managers/CameraManager;Landroid/util/Range;)Landroid/util/Range;
    .locals 0

    .line 74
    iput-object p1, p0, Lopenlight/co/camera/managers/CameraManager;->mFpsRange:Landroid/util/Range;

    return-object p1
.end method

.method static synthetic access$1300(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;
    .locals 0

    .line 74
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mSmartAFTriggerMgrProvider:Lopenlight/co/camera/utils/Provider;

    return-object p0
.end method

.method static synthetic access$1400(Lopenlight/co/camera/managers/CameraManager;Landroid/hardware/camera2/CaptureResult;)I
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lopenlight/co/camera/managers/CameraManager;->getISO(Landroid/hardware/camera2/CaptureResult;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lopenlight/co/camera/managers/CameraManager;Landroid/hardware/camera2/CaptureResult;)J
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lopenlight/co/camera/managers/CameraManager;->getShutterSpeed(Landroid/hardware/camera2/CaptureResult;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$1600(Lopenlight/co/camera/managers/CameraManager;Landroid/hardware/camera2/CaptureResult;)Z
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lopenlight/co/camera/managers/CameraManager;->showHandshakeAssist(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lopenlight/co/camera/managers/CameraManager;)Z
    .locals 0

    .line 74
    invoke-direct {p0}, Lopenlight/co/camera/managers/CameraManager;->hasTimeToFocusThresholdPassed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/CameraInfo;
    .locals 0

    .line 74
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    return-object p0
.end method

.method static synthetic access$1902(Lopenlight/co/camera/managers/CameraManager;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 74
    iput-object p1, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;
    .locals 0

    .line 74
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;

    return-object p0
.end method

.method static synthetic access$2000(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/CameraMode;
    .locals 0

    .line 74
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mCamMode:Lopenlight/co/camera/CameraMode;

    return-object p0
.end method

.method static synthetic access$300(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/TimingLoggerUtil;
    .locals 0

    .line 74
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

    return-object p0
.end method

.method static synthetic access$400(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;
    .locals 0

    .line 74
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mAutoExposureManager:Lopenlight/co/camera/utils/Provider;

    return-object p0
.end method

.method static synthetic access$500(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/managers/zoom/ZoomManager;
    .locals 0

    .line 74
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    return-object p0
.end method

.method static synthetic access$600(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;
    .locals 0

    .line 74
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mFocusManager:Lopenlight/co/camera/utils/Provider;

    return-object p0
.end method

.method static synthetic access$700(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;
    .locals 0

    .line 74
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureReqManager:Lopenlight/co/camera/utils/Provider;

    return-object p0
.end method

.method static synthetic access$800(Lopenlight/co/camera/managers/CameraManager;)Ljava/lang/Object;
    .locals 0

    .line 74
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$900(Lopenlight/co/camera/managers/CameraManager;)Landroid/os/Handler;
    .locals 0

    .line 74
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private createMessage(I)Landroid/os/Message;
    .locals 0

    .line 1351
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method private createMessage(II)Landroid/os/Message;
    .locals 1

    .line 1355
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mEventHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public static get()Lopenlight/co/camera/managers/CameraManager;
    .locals 1

    .line 675
    sget-object v0, Lopenlight/co/camera/managers/CameraManager;->sInstance:Lopenlight/co/camera/managers/CameraManager;

    return-object v0
.end method

.method private getISO(Landroid/hardware/camera2/CaptureResult;)I
    .locals 0

    .line 1375
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 1376
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method private getShutterSpeed(Landroid/hardware/camera2/CaptureResult;)J
    .locals 0

    .line 1381
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_0

    const-wide/16 p0, -0x1

    goto :goto_0

    .line 1382
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method private hasTimeToFocusThresholdPassed()Z
    .locals 4

    .line 1340
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mFocusManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {p0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/focus/FocusManager;

    .line 1341
    invoke-virtual {p0}, Lopenlight/co/camera/managers/focus/FocusManager;->getFocusStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private manualModeFlashInFocus()Z
    .locals 1

    .line 1318
    invoke-static {}, Lopenlight/co/camera/utils/CamPrefsUtils;->getFlash()Ljava/lang/String;

    move-result-object v0

    .line 1319
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mCamMode:Lopenlight/co/camera/CameraMode;

    invoke-virtual {p0}, Lopenlight/co/camera/CameraMode;->isManual()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "flash_on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private sendMessage(Landroid/os/Message;)V
    .locals 2

    .line 1345
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCurrentState:Lopenlight/co/camera/managers/CameraManager$State;

    sget-object v1, Lopenlight/co/camera/managers/CameraManager$State;->OPEN:Lopenlight/co/camera/managers/CameraManager$State;

    if-ne v0, v1, :cond_0

    .line 1346
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public static set(Lopenlight/co/camera/managers/CameraManager;)V
    .locals 0
    .param p0    # Lopenlight/co/camera/managers/CameraManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 671
    sput-object p0, Lopenlight/co/camera/managers/CameraManager;->sInstance:Lopenlight/co/camera/managers/CameraManager;

    return-void
.end method

.method private setTorchForFocus(Z)V
    .locals 2

    .line 1329
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mFocusManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/focus/FocusManager;

    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0, v1, p1}, Lopenlight/co/camera/managers/focus/FocusManager;->setTorchForFlash(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 1331
    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->startRepeatingRequestInPreview()V

    return-void
.end method

.method private showHandshakeAssist(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 4

    .line 1391
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 1392
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x65c6b0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    .line 1393
    invoke-virtual {p0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->isInBCFocalLength()Z

    move-result p0

    if-nez p0, :cond_1

    .line 1394
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/32 v0, 0xdb19d8

    cmp-long p0, p0, v0

    if-lez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private startMeteringOrFocus()V
    .locals 3

    .line 1362
    sget-object v0, Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is Currently Running Zoom "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    .line 1363
    invoke-virtual {v2}, Lopenlight/co/camera/managers/zoom/ZoomManager;->isCurrentlyZooming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " or is Metering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager;->mAutoExposureManager:Lopenlight/co/camera/utils/Provider;

    .line 1364
    invoke-interface {v2}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    invoke-virtual {v2}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->isMetering()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " or is focusing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager;->mFocusManager:Lopenlight/co/camera/utils/Provider;

    .line 1365
    invoke-interface {v2}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-virtual {v2}, Lopenlight/co/camera/managers/focus/FocusManager;->isFocusing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1362
    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    .line 1367
    invoke-virtual {v0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->isCurrentlyZooming()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mAutoExposureManager:Lopenlight/co/camera/utils/Provider;

    .line 1368
    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->isMetering()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mFocusManager:Lopenlight/co/camera/utils/Provider;

    .line 1369
    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/focus/FocusManager;->isFocusing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1370
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureReqManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;

    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->startAeFocus(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_0
    return-void
.end method

.method private updateCameraModeOnChange()V
    .locals 2

    .line 1402
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureReqManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;

    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->createPreviewRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1403
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCamMode:Lopenlight/co/camera/CameraMode;

    invoke-virtual {v0}, Lopenlight/co/camera/CameraMode;->isManual()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1404
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;

    const-string v1, "event_manual_mode_selected"

    invoke-virtual {v0, v1}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;)V

    goto :goto_0

    .line 1406
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager;->mFpsRange:Landroid/util/Range;

    .line 1407
    invoke-static {v0, v1}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAeTargetFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/util/Range;)V

    .line 1408
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mAutoExposureManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->resetAeMetering()V

    .line 1409
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;

    const-string v1, "event_auto_mode_selected"

    invoke-virtual {v0, v1}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;)V

    .line 1411
    :goto_0
    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->startRepeatingRequestInPreview()V

    return-void
.end method


# virtual methods
.method public aeWaitingConvergence()V
    .locals 1

    const/16 v0, 0x68

    .line 865
    invoke-direct {p0, v0}, Lopenlight/co/camera/managers/CameraManager;->createMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lopenlight/co/camera/managers/CameraManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public abstract canGotoGallery()Z
.end method

.method public captureComplete()V
    .locals 1

    const/16 v0, 0x66

    .line 877
    invoke-direct {p0, v0}, Lopenlight/co/camera/managers/CameraManager;->createMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lopenlight/co/camera/managers/CameraManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public captureStart()V
    .locals 1

    const/16 v0, 0x64

    .line 873
    invoke-direct {p0, v0}, Lopenlight/co/camera/managers/CameraManager;->createMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lopenlight/co/camera/managers/CameraManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public checkForQueuedState()V
    .locals 0

    return-void
.end method

.method public clearState()V
    .locals 1

    .line 967
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mAutoExposureManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->resetAeMetering()V

    .line 968
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mFocusManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/focus/FocusManager;->resetFocusStateToIdle()V

    .line 969
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/capture/CaptureManager;->resetCapture()V

    .line 970
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->resetZoom()V

    return-void
.end method

.method public closeCamera()Z
    .locals 5

    .line 978
    sget-object v0, Lopenlight/co/camera/managers/CameraManager$State;->CLOSING:Lopenlight/co/camera/managers/CameraManager$State;

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCurrentState:Lopenlight/co/camera/managers/CameraManager$State;

    .line 979
    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->stopRepeating()V

    .line 984
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 986
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 990
    :try_start_0
    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v2}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-virtual {v2}, Lopenlight/co/camera/managers/capture/CaptureManager;->resetPendingUserCaptures()V

    .line 991
    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;

    sget-object v3, Lopenlight/co/camera/utils/CameraState$DeviceState;->CLOSED:Lopenlight/co/camera/utils/CameraState$DeviceState;

    invoke-virtual {v2, v3}, Lopenlight/co/camera/utils/CameraState;->setDeviceState(Lopenlight/co/camera/utils/CameraState$DeviceState;)V

    .line 992
    sget-object v2, Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inside closeCamera: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " and device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->closeCaptureSession()V

    .line 996
    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;

    invoke-virtual {v2}, Lopenlight/co/camera/utils/CameraState;->releaseSurface()V

    .line 1000
    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    if-eqz v2, :cond_0

    .line 1001
    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    invoke-interface {v2}, Lopenlight/co/camera/managers/CameraManager$UpdatePreview;->resetPreviewSizeOnClose()V

    .line 1007
    :cond_0
    sget-object v2, Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;

    const-string v3, "Closing Camera Device"

    invoke-static {v2, v3}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v2, :cond_1

    .line 1009
    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 1010
    iput-object v1, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 1012
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1013
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1014
    sget-object v0, Lopenlight/co/camera/managers/CameraManager$State;->CLOSED:Lopenlight/co/camera/managers/CameraManager$State;

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCurrentState:Lopenlight/co/camera/managers/CameraManager$State;

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 1012
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected closeCaptureSession()V
    .locals 1

    .line 1306
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 v0, 0x0

    .line 1308
    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_0
    return-void
.end method

.method protected createCameraPreviewSessionLocked(Landroid/graphics/SurfaceTexture;Landroid/util/Size;)V
    .locals 1

    .line 1127
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1130
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 1131
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;

    invoke-virtual {p1, p2}, Lopenlight/co/camera/utils/CameraState;->setSurface(Landroid/view/Surface;)V

    .line 1132
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager;->mSurfaceList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1133
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1137
    :try_start_0
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object p2, p0, Lopenlight/co/camera/managers/CameraManager;->mSurfaceList:Ljava/util/List;

    new-instance v0, Lopenlight/co/camera/managers/CameraManager$4;

    invoke-direct {v0, p0}, Lopenlight/co/camera/managers/CameraManager$4;-><init>(Lopenlight/co/camera/managers/CameraManager;)V

    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0, p0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1183
    sget-object p1, Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;

    const-string p2, "createCameraPreviewSessionLocked: Exception"

    invoke-static {p1, p2, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public abstract createCameraSession(Landroid/graphics/SurfaceTexture;Landroid/util/Size;)V
.end method

.method public decrementCapturesInFlight()V
    .locals 0

    return-void
.end method

.method public focusComplete()V
    .locals 1

    const/16 v0, 0x6c

    .line 857
    invoke-direct {p0, v0}, Lopenlight/co/camera/managers/CameraManager;->createMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lopenlight/co/camera/managers/CameraManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public focusTriggered()V
    .locals 1

    const/16 v0, 0x6b

    .line 853
    invoke-direct {p0, v0}, Lopenlight/co/camera/managers/CameraManager;->createMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lopenlight/co/camera/managers/CameraManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public abstract getBackgroundThreadName()Ljava/lang/String;
.end method

.method public getCameraBackgroundHandler()Landroid/os/Handler;
    .locals 0

    .line 684
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getCameraCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 702
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method public getCameraDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 693
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method public getCameraMode()Lopenlight/co/camera/CameraMode;
    .locals 0

    .line 732
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mCamMode:Lopenlight/co/camera/CameraMode;

    return-object p0
.end method

.method public getCameraStateLock()Ljava/lang/Object;
    .locals 0

    .line 775
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public getCaptureResultPerFrame()Landroid/hardware/camera2/CaptureResult;
    .locals 0

    .line 711
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object p0
.end method

.method public getCapturesInFlight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFrameNumber()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 720
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    if-eqz v0, :cond_0

    .line 723
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v0

    return-wide v0

    .line 721
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Capture Result is null, cannot get frame number"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPendingReaderReferences()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 771
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method public getPreviewRequestCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    .line 767
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p0
.end method

.method protected handleOnCaptureFailed()V
    .locals 0

    return-void
.end method

.method public incrementCapturesInFlight()V
    .locals 0

    return-void
.end method

.method protected initCapturesInFlight()V
    .locals 0

    return-void
.end method

.method public isCameraInOpenState()Z
    .locals 1

    .line 1277
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mCurrentState:Lopenlight/co/camera/managers/CameraManager$State;

    sget-object v0, Lopenlight/co/camera/managers/CameraManager$State;->OPEN:Lopenlight/co/camera/managers/CameraManager$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCameraOpeningOrClosing()Z
    .locals 0

    .line 1115
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isFocusingOrMetering()Z
    .locals 1

    .line 380
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mFocusManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/focus/FocusManager;->isFocusing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mAutoExposureManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {p0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->isMetering()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isIdle()Z
    .locals 6

    .line 1036
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/capture/CaptureManager;->isIdle()Z

    move-result v0

    .line 1037
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager;->mFocusManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-virtual {v1}, Lopenlight/co/camera/managers/focus/FocusManager;->isFocusing()Z

    move-result v1

    .line 1038
    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager;->mAutoExposureManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v2}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    invoke-virtual {v2}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->isMetering()Z

    move-result v2

    .line 1040
    sget-object v3, Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera Manager State in isIdle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lopenlight/co/camera/managers/CameraManager;->mCurrentState:Lopenlight/co/camera/managers/CameraManager$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " Capture Manager State "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " Currently Focusing: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " Currently Metering: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCurrentState:Lopenlight/co/camera/managers/CameraManager$State;

    sget-object v1, Lopenlight/co/camera/managers/CameraManager$State;->OPEN:Lopenlight/co/camera/managers/CameraManager$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureManager:Lopenlight/co/camera/utils/Provider;

    .line 1046
    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/capture/CaptureManager;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mFocusManager:Lopenlight/co/camera/utils/Provider;

    .line 1047
    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/focus/FocusManager;->isFocusing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mAutoExposureManager:Lopenlight/co/camera/utils/Provider;

    .line 1048
    invoke-interface {p0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->isMetering()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecording()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public openCamera()Z
    .locals 6

    .line 925
    sget-object v0, Lopenlight/co/camera/managers/CameraManager$State;->OPENING:Lopenlight/co/camera/managers/CameraManager$State;

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCurrentState:Lopenlight/co/camera/managers/CameraManager$State;

    .line 926
    sget-object v0, Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;

    const-string v1, "openCamera"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 933
    :cond_0
    invoke-static {}, Lopenlight/co/camera/utils/MediaFileManager;->get()Lopenlight/co/camera/utils/MediaFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/utils/MediaFileManager;->checkLastFileName()V

    .line 936
    :try_start_0
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    const-class v2, Landroid/hardware/camera2/CameraManager;

    .line 937
    invoke-virtual {v0, v2}, Lopenlight/co/camera/CameraApp;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 939
    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v3, 0x9c4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 945
    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    :try_start_1
    iget-object v3, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v3}, Lopenlight/co/camera/CameraInfo;->getCameraId()Ljava/lang/String;

    move-result-object v3

    .line 947
    iget-object v4, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraBackgroundHandler:Landroid/os/Handler;

    .line 948
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 949
    :try_start_2
    sget-object v2, Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;

    const-string v5, "Open Camera in Camera Controller"

    invoke-static {v2, v5}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v0, v3, v2, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 951
    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->reset()V

    .line 952
    sget-object v0, Lopenlight/co/camera/managers/CameraManager$State;->OPEN:Lopenlight/co/camera/managers/CameraManager$State;

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCurrentState:Lopenlight/co/camera/managers/CameraManager$State;
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    .line 948
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 940
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Time out waiting to lock camera opening."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 957
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Interrupted while trying to lock camera opening."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    .line 955
    sget-object v2, Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;

    const-string v3, "Camera Access Exception"

    invoke-static {v2, v3, v0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 959
    sget-object v0, Lopenlight/co/camera/managers/CameraManager$State;->CLOSED:Lopenlight/co/camera/managers/CameraManager$State;

    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCurrentState:Lopenlight/co/camera/managers/CameraManager$State;

    return v1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 763
    iput-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method

.method public setCameraMode(Lopenlight/co/camera/CameraMode;)V
    .locals 3

    .line 744
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCamMode:Lopenlight/co/camera/CameraMode;

    if-eq p1, v0, :cond_3

    .line 746
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCamMode:Lopenlight/co/camera/CameraMode;

    .line 747
    iput-object p1, p0, Lopenlight/co/camera/managers/CameraManager;->mCamMode:Lopenlight/co/camera/CameraMode;

    .line 748
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v2, "camera_mode_setting"

    invoke-virtual {p1}, Lopenlight/co/camera/CameraMode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-static {v0}, Lopenlight/co/camera/CameraMode;->isPictureMode(Lopenlight/co/camera/CameraMode;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager;->mCamMode:Lopenlight/co/camera/CameraMode;

    invoke-static {p1}, Lopenlight/co/camera/CameraMode;->isVideoMode(Lopenlight/co/camera/CameraMode;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 754
    :cond_0
    invoke-static {v0}, Lopenlight/co/camera/CameraMode;->isVideoMode(Lopenlight/co/camera/CameraMode;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager;->mCamMode:Lopenlight/co/camera/CameraMode;

    invoke-static {p1}, Lopenlight/co/camera/CameraMode;->isPictureMode(Lopenlight/co/camera/CameraMode;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 755
    :cond_1
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/zoom/ZoomManager;->resetTempZoomLevel()V

    .line 757
    :cond_2
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    invoke-interface {p1}, Lopenlight/co/camera/managers/CameraManager$UpdatePreview;->updateModeChange()V

    .line 758
    invoke-direct {p0}, Lopenlight/co/camera/managers/CameraManager;->updateCameraModeOnChange()V

    :cond_3
    return-void
.end method

.method public setCurrentCameraState(Lopenlight/co/camera/managers/CameraManager$State;)V
    .locals 0

    .line 1213
    iput-object p1, p0, Lopenlight/co/camera/managers/CameraManager;->mCurrentState:Lopenlight/co/camera/managers/CameraManager$State;

    return-void
.end method

.method public setUpdatePreviewListener(Lopenlight/co/camera/managers/CameraManager$UpdatePreview;)V
    .locals 1

    .line 1024
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1025
    :try_start_0
    iput-object p1, p0, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    .line 1026
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startAeMetering()V
    .locals 1

    const/16 v0, 0x67

    .line 861
    invoke-direct {p0, v0}, Lopenlight/co/camera/managers/CameraManager;->createMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lopenlight/co/camera/managers/CameraManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public startBackgroundThread()V
    .locals 4

    .line 884
    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->stopBackgroundThread()V

    .line 886
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 887
    :try_start_0
    new-instance v1, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->getBackgroundThreadName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraBackgroundThread:Landroid/os/HandlerThread;

    .line 889
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 891
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraBackgroundHandler:Landroid/os/Handler;

    .line 892
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startCaptureRequest()V
    .locals 3

    .line 827
    :try_start_0
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 829
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0

    .line 834
    :cond_0
    sget-object p0, Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;

    const-string v0, "No capture session available"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 839
    sget-object v0, Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;

    const-string v1, "Exception in capture in preview"

    invoke-static {v0, v1, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public startFocus()V
    .locals 1

    const/16 v0, 0x69

    .line 845
    invoke-direct {p0, v0}, Lopenlight/co/camera/managers/CameraManager;->createMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lopenlight/co/camera/managers/CameraManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public startFocus(I)V
    .locals 1

    const/16 v0, 0x69

    .line 849
    invoke-direct {p0, v0, p1}, Lopenlight/co/camera/managers/CameraManager;->createMessage(II)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lopenlight/co/camera/managers/CameraManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public startRepeatingRequestInPreview()V
    .locals 3

    .line 783
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCurrentState:Lopenlight/co/camera/managers/CameraManager$State;

    sget-object v1, Lopenlight/co/camera/managers/CameraManager$State;->OPEN:Lopenlight/co/camera/managers/CameraManager$State;

    if-eq v0, v1, :cond_0

    .line 784
    sget-object v0, Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set repeating request when camera is not open, current state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mCurrentState:Lopenlight/co/camera/managers/CameraManager$State;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 790
    :cond_0
    :try_start_0
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    if-eqz v0, :cond_1

    .line 791
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    invoke-interface {v0}, Lopenlight/co/camera/managers/CameraManager$UpdatePreview;->updateHistogram()V

    .line 793
    :cond_1
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_3

    .line 795
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mSmartAFTriggerMgrProvider:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->isAfModeSettingAfd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 796
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mFaceDetector:Lopenlight/co/camera/utils/FaceDetector;

    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/utils/FaceDetector;->enableFaceDetectionOnPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 798
    :cond_2
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mFaceDetector:Lopenlight/co/camera/utils/FaceDetector;

    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/utils/FaceDetector;->disableFaceDetectionOnPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 801
    :goto_0
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 802
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_1

    .line 808
    :cond_3
    sget-object p0, Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;

    const-string v0, "No capture session available"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 813
    sget-object v0, Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;

    const-string v1, "Exception in startRepeatRequestInPreview"

    invoke-static {v0, v1, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public stopBackgroundThread()V
    .locals 3

    .line 900
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraBackgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 901
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 902
    :try_start_0
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraBackgroundHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 903
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 904
    iput-object v2, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraBackgroundHandler:Landroid/os/Handler;

    .line 907
    :cond_0
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 908
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    :try_start_1
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 911
    iput-object v2, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraBackgroundThread:Landroid/os/HandlerThread;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 914
    :try_start_2
    sget-object v1, Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;

    const-string v2, "Exception stopping Camera BackgroundThread"

    invoke-static {v1, v2, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 917
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method protected stopRepeating()V
    .locals 2

    .line 1293
    :try_start_0
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 1294
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1297
    sget-object v0, Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;

    const-string v1, "Exception when calling stopRepeating on Camera Session during close"

    invoke-static {v0, v1, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public triggerAeFocusAtCenter()V
    .locals 2

    .line 1071
    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->isCurrentlyZooming()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1074
    :cond_0
    sget-object v0, Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;

    const-string v1, "Trigger AE and Focus to center"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mAutoExposureManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->setMeteringPointToCenter()V

    .line 1076
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mFocusManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/focus/FocusManager;->setFocusPointToCenter()V

    .line 1077
    invoke-direct {p0}, Lopenlight/co/camera/managers/CameraManager;->startMeteringOrFocus()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public triggerAeFocusAtLastPoint()V
    .locals 3

    .line 1085
    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->isCurrentlyZooming()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1088
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mAutoExposureManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    .line 1089
    invoke-virtual {v0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->isCenterWeighted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1090
    sget-object v1, Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;

    const-string v2, "Trigger AE at center and Focus at previous coordinate"

    invoke-static {v1, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    invoke-virtual {v0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->setMeteringPointToCenter()V

    goto :goto_0

    .line 1093
    :cond_1
    sget-object v0, Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;

    const-string v1, "Trigger AE and Focus at previous coordinate"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    :goto_0
    invoke-direct {p0}, Lopenlight/co/camera/managers/CameraManager;->startMeteringOrFocus()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public triggerAeFocusAtXY(II)V
    .locals 3

    .line 1058
    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->isCurrentlyZooming()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1061
    :cond_0
    sget-object v0, Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trigger AE and Focus to x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mAutoExposureManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    invoke-virtual {v0, p1, p2}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->updateMeteringPoint(II)V

    .line 1063
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mFocusManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-virtual {v0, p1, p2}, Lopenlight/co/camera/managers/focus/FocusManager;->updateFocusPoint(II)V

    .line 1064
    invoke-direct {p0}, Lopenlight/co/camera/managers/CameraManager;->startMeteringOrFocus()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public triggerAeFocusFirstTime()V
    .locals 1

    .line 1103
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;

    invoke-virtual {v0}, Lopenlight/co/camera/utils/CameraState;->getAutoFitTextureView()Lopenlight/co/camera/AutoFitTextureView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1106
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mFocusManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/focus/FocusManager;->startFirstTimeFocus()V

    .line 1107
    invoke-direct {p0}, Lopenlight/co/camera/managers/CameraManager;->startMeteringOrFocus()V

    return-void
.end method

.method public triggerCaptureToHal()V
    .locals 1

    const/16 v0, 0x65

    .line 869
    invoke-direct {p0, v0}, Lopenlight/co/camera/managers/CameraManager;->createMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lopenlight/co/camera/managers/CameraManager;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public updateAeMode(Lopenlight/co/camera/enums/FlashMode;)V
    .locals 1

    .line 1257
    invoke-virtual {p1}, Lopenlight/co/camera/enums/FlashMode;->getAeFlashMode()I

    move-result p1

    .line 1258
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, p1}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAeMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1260
    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->startRepeatingRequestInPreview()V

    :cond_0
    return-void
.end method

.method public updateAwb(Lopenlight/co/camera/enums/AwbMode;)V
    .locals 2

    .line 1243
    invoke-virtual {p1}, Lopenlight/co/camera/enums/AwbMode;->getCaptureRequestModeValue()I

    move-result p1

    .line 1244
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "wb_value"

    invoke-interface {v0, v1, p1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;I)V

    .line 1245
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, p1}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAwbMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 1247
    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->startRepeatingRequestInPreview()V

    :cond_0
    return-void
.end method

.method public updateCameraMode(Lopenlight/co/camera/CameraMode;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lopenlight/co/camera/managers/CameraManager;->mCamMode:Lopenlight/co/camera/CameraMode;

    return-void
.end method
