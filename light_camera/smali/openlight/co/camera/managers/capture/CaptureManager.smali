.class public Lopenlight/co/camera/managers/capture/CaptureManager;
.super Ljava/lang/Object;
.source "CaptureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;,
        Lopenlight/co/camera/managers/capture/CaptureManager$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CaptureManager"

.field private static final sInstance:Lopenlight/co/camera/managers/capture/CaptureManager;


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

.field private final mCamInfo:Lopenlight/co/camera/CameraInfo;

.field private final mCamPref:Lopenlight/co/lib/content/Prefs;

.field private final mCamReqManager:Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;

.field private final mCameraManager:Lopenlight/co/camera/utils/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/camera/utils/Provider<",
            "Lopenlight/co/camera/managers/CameraManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraState:Lopenlight/co/camera/utils/CameraState;

.field private final mCaptureBurst:Lopenlight/co/camera/managers/capture/CaptureBurstManager;

.field private final mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureInfo:Lopenlight/co/camera/proto/CameraCaptureRequestInfo;

.field private final mCaptureReqManager:Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;

.field private mCaptureUpdateListener:Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;

.field private mCurrentState:Lopenlight/co/camera/managers/capture/CaptureManager$State;

.field private final mFocusManager:Lopenlight/co/camera/utils/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/camera/utils/Provider<",
            "Lopenlight/co/camera/managers/focus/FocusManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

.field private mIsBurstCapture:Z

.field private final mMetrics:Lopenlight/co/camera/metrics/Metrics;

.field private mNativeAspectRatio:Z

.field private mPendingUserCaptures:I

.field private final mRequestCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mSmartAfTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

.field private final mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

.field private final mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-direct {v0}, Lopenlight/co/camera/managers/capture/CaptureManager;-><init>()V

    sput-object v0, Lopenlight/co/camera/managers/capture/CaptureManager;->sInstance:Lopenlight/co/camera/managers/capture/CaptureManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->get()Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCamReqManager:Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;

    .line 79
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    .line 81
    invoke-static {}, Lopenlight/co/camera/CameraInfo;->get()Lopenlight/co/camera/CameraInfo;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCamInfo:Lopenlight/co/camera/CameraInfo;

    .line 83
    invoke-static {}, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->get()Lopenlight/co/camera/managers/capture/CaptureBurstManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureBurst:Lopenlight/co/camera/managers/capture/CaptureBurstManager;

    .line 85
    invoke-static {}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->get()Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureReqManager:Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;

    .line 87
    invoke-static {}, Lopenlight/co/camera/utils/CameraState;->get()Lopenlight/co/camera/utils/CameraState;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;

    .line 89
    invoke-static {}, Lopenlight/co/camera/metrics/Metrics;->get()Lopenlight/co/camera/metrics/Metrics;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mMetrics:Lopenlight/co/camera/metrics/Metrics;

    .line 91
    invoke-static {}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->get()Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mSmartAfTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    .line 93
    sget-object v0, Lopenlight/co/camera/managers/capture/-$$Lambda$VHoBP3n01T-xYwXx8e0ZTKBHfkE;->INSTANCE:Lopenlight/co/camera/managers/capture/-$$Lambda$VHoBP3n01T-xYwXx8e0ZTKBHfkE;

    iput-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    .line 95
    sget-object v0, Lopenlight/co/camera/managers/capture/-$$Lambda$4gGiBwFkHrBzteNWjdjz1tO0nzs;->INSTANCE:Lopenlight/co/camera/managers/capture/-$$Lambda$4gGiBwFkHrBzteNWjdjz1tO0nzs;

    iput-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mAutoExposureManager:Lopenlight/co/camera/utils/Provider;

    .line 97
    sget-object v0, Lopenlight/co/camera/managers/capture/-$$Lambda$awF8a8iz0l390QmOYtlAiBwV1CU;->INSTANCE:Lopenlight/co/camera/managers/capture/-$$Lambda$awF8a8iz0l390QmOYtlAiBwV1CU;

    iput-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mFocusManager:Lopenlight/co/camera/utils/Provider;

    .line 99
    invoke-static {}, Lopenlight/co/camera/ImageReaderManager;->get()Lopenlight/co/camera/ImageReaderManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    .line 101
    invoke-static {}, Lopenlight/co/camera/utils/TimingLoggerUtil;->get()Lopenlight/co/camera/utils/TimingLoggerUtil;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

    .line 103
    invoke-static {}, Lopenlight/co/camera/managers/zoom/ZoomManager;->get()Lopenlight/co/camera/managers/zoom/ZoomManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mPendingUserCaptures:I

    const/4 v1, 0x1

    .line 119
    iput-boolean v1, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mNativeAspectRatio:Z

    .line 124
    sget-object v1, Lopenlight/co/camera/managers/capture/CaptureManager$State;->IDLE:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    iput-object v1, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCurrentState:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    .line 129
    iput-boolean v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mIsBurstCapture:Z

    .line 135
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 408
    new-instance v0, Lopenlight/co/camera/managers/capture/CaptureManager$1;

    invoke-direct {v0, p0}, Lopenlight/co/camera/managers/capture/CaptureManager$1;-><init>(Lopenlight/co/camera/managers/capture/CaptureManager;)V

    iput-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lopenlight/co/camera/managers/capture/CaptureManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lopenlight/co/camera/managers/capture/CaptureManager;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lopenlight/co/camera/managers/capture/CaptureManager;->setViewPrefHeader(Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method static synthetic access$200(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/camera/utils/Provider;
    .locals 0

    .line 64
    iget-object p0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    return-object p0
.end method

.method static synthetic access$300(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/camera/ImageReaderManager;
    .locals 0

    .line 64
    iget-object p0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    return-object p0
.end method

.method static synthetic access$400(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/camera/proto/CameraCaptureRequestInfo;
    .locals 0

    .line 64
    iget-object p0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureInfo:Lopenlight/co/camera/proto/CameraCaptureRequestInfo;

    return-object p0
.end method

.method static synthetic access$500(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/lib/exif/ExifInformation;
    .locals 0

    .line 64
    invoke-direct {p0}, Lopenlight/co/camera/managers/capture/CaptureManager;->createExifData()Lopenlight/co/lib/exif/ExifInformation;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/camera/utils/TimingLoggerUtil;
    .locals 0

    .line 64
    iget-object p0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

    return-object p0
.end method

.method static synthetic access$700(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;
    .locals 0

    .line 64
    iget-object p0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureUpdateListener:Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;

    return-object p0
.end method

.method private createExifData()Lopenlight/co/lib/exif/ExifInformation;
    .locals 2

    .line 594
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureInfo:Lopenlight/co/camera/proto/CameraCaptureRequestInfo;

    invoke-virtual {v0}, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->getEvOffset()F

    move-result v0

    .line 596
    iget-object p0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "zoom_value"

    invoke-interface {p0, v1}, Lopenlight/co/lib/content/Prefs;->getFloatValue(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    .line 597
    new-instance v1, Lopenlight/co/lib/exif/ExifInformation;

    invoke-direct {v1, v0, p0}, Lopenlight/co/lib/exif/ExifInformation;-><init>(FI)V

    return-object v1
.end method

.method private decrementPendingUserCapture()V
    .locals 1

    .line 518
    iget v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mPendingUserCaptures:I

    if-lez v0, :cond_0

    .line 519
    iget v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mPendingUserCaptures:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mPendingUserCaptures:I

    :cond_0
    return-void
.end method

.method public static get()Lopenlight/co/camera/managers/capture/CaptureManager;
    .locals 1

    .line 156
    sget-object v0, Lopenlight/co/camera/managers/capture/CaptureManager;->sInstance:Lopenlight/co/camera/managers/capture/CaptureManager;

    return-object v0
.end method

.method private getComputedExposureComp(I)F
    .locals 0

    int-to-float p1, p1

    .line 621
    iget-object p0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCamInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {p0}, Lopenlight/co/camera/CameraInfo;->getSupportedAeStep()Landroid/util/Rational;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    move-result p0

    mul-float/2addr p1, p0

    return p1
.end method

.method private isBurstOrStillCapture()V
    .locals 2

    .line 252
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;

    invoke-virtual {v0}, Lopenlight/co/camera/utils/CameraState;->getStillCaptureMode()Lopenlight/co/camera/utils/CameraState$StillCaptureMode;

    move-result-object v0

    sget-object v1, Lopenlight/co/camera/utils/CameraState$StillCaptureMode;->BURST:Lopenlight/co/camera/utils/CameraState$StillCaptureMode;

    .line 253
    invoke-virtual {v0, v1}, Lopenlight/co/camera/utils/CameraState$StillCaptureMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mIsBurstCapture:Z

    return-void
.end method

.method private resetCaptureParamsOnException()V
    .locals 2

    .line 625
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 626
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureUpdateListener:Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureUpdateListener:Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;->onUpdateCaptureImageVisiblity(I)V

    .line 628
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureUpdateListener:Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;

    invoke-interface {v0}, Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;->onCaptureComplete()V

    .line 630
    :cond_0
    sget-object v0, Lopenlight/co/camera/managers/capture/CaptureManager$State;->IDLE:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    iput-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCurrentState:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    return-void
.end method

.method private setViewPrefHeader(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 579
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 580
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 583
    new-instance v2, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;

    .line 584
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lopenlight/co/camera/managers/capture/CaptureManager;->getComputedExposureComp(I)F

    move-result v1

    invoke-direct {v2, v1}, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;-><init>(F)V

    iput-object v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureInfo:Lopenlight/co/camera/proto/CameraCaptureRequestInfo;

    .line 585
    iget-object v1, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureInfo:Lopenlight/co/camera/proto/CameraCaptureRequestInfo;

    iget-boolean v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mNativeAspectRatio:Z

    invoke-virtual {v1, v2}, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->setAspectRatio(Z)V

    .line 586
    iget-object v1, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureInfo:Lopenlight/co/camera/proto/CameraCaptureRequestInfo;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->setOrientationAngle(I)V

    .line 587
    iget-object p0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureInfo:Lopenlight/co/camera/proto/CameraCaptureRequestInfo;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->setAwbMode(I)V

    :cond_1
    return-void
.end method

.method private takePicture()V
    .locals 5

    .line 218
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    .line 219
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraStateLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 222
    :try_start_0
    iget-object v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;

    invoke-virtual {v2}, Lopenlight/co/camera/utils/CameraState;->getSessionState()Lopenlight/co/camera/utils/CameraState$SessionState;

    move-result-object v2

    sget-object v3, Lopenlight/co/camera/utils/CameraState$SessionState;->PREVIEW:Lopenlight/co/camera/utils/CameraState$SessionState;

    if-eq v2, v3, :cond_1

    .line 223
    sget-object v0, Lopenlight/co/camera/managers/capture/CaptureManager;->TAG:Ljava/lang/String;

    const-string v2, "Current session is not allowing Capture. Resetting capture request"

    invoke-static {v0, v2}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureUpdateListener:Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureUpdateListener:Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;

    const/16 v2, 0x8

    invoke-interface {v0, v2}, Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;->onUpdateCaptureImageVisiblity(I)V

    .line 227
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureUpdateListener:Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;

    invoke-interface {v0}, Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;->onCaptureComplete()V

    .line 229
    :cond_0
    sget-object v0, Lopenlight/co/camera/managers/capture/CaptureManager$State;->IDLE:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    iput-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCurrentState:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    .line 230
    monitor-exit v1

    return-void

    .line 233
    :cond_1
    invoke-virtual {p0}, Lopenlight/co/camera/managers/capture/CaptureManager;->getTotalCaptureForTypes()I

    move-result v2

    iput v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mPendingUserCaptures:I

    .line 234
    sget-object v2, Lopenlight/co/camera/managers/capture/CaptureManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get pending user Capture:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mPendingUserCaptures:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :try_start_1
    iget-object v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureReqManager:Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->startCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 239
    invoke-direct {p0}, Lopenlight/co/camera/managers/capture/CaptureManager;->isBurstOrStillCapture()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 242
    :try_start_2
    sget-object v3, Lopenlight/co/camera/managers/capture/CaptureManager;->TAG:Ljava/lang/String;

    const-string v4, "Exception in takePicture"

    invoke-static {v3, v4, v2}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 243
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->decrementCapturesInFlight()V

    .line 245
    iget v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mPendingUserCaptures:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mPendingUserCaptures:I

    .line 246
    sget-object p0, Lopenlight/co/camera/managers/capture/CaptureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capture In Flight count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCapturesInFlight()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public captureBurstPictureLocked(I)V
    .locals 6

    .line 342
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    .line 346
    :try_start_0
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const/4 v2, 0x2

    .line 347
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 348
    iget-object v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    .line 349
    invoke-virtual {v2}, Lopenlight/co/camera/ImageReaderManager;->getJpegImageReader()Landroid/media/ImageReader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 350
    iget-object v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    invoke-virtual {v2}, Lopenlight/co/camera/ImageReaderManager;->getRawImageReader()Landroid/media/ImageReader;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 352
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 354
    :cond_0
    iget-object v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureBurst:Lopenlight/co/camera/managers/capture/CaptureBurstManager;

    invoke-virtual {v2, v1, p1}, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->setCaptureRequestForBurst(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 356
    sget-object p1, Lopenlight/co/camera/managers/capture/CaptureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Burst fetch request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureBurst:Lopenlight/co/camera/managers/capture/CaptureBurstManager;

    invoke-virtual {v3}, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->getIfFetchRequest()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object p1, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCamReqManager:Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;

    invoke-virtual {p1, v1}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->createBurstCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 360
    iget-object p1, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 362
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    .line 365
    new-instance v1, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;

    .line 366
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v2

    invoke-direct {v1, v2}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;-><init>(Landroid/content/Context;)V

    .line 367
    iget-object v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lopenlight/co/camera/ImageReaderManager;->addJpegResultQueue(ILopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;)V

    .line 368
    invoke-static {}, Lopenlight/co/camera/CameraApp;->isLight()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    new-instance v1, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;

    .line 370
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v2

    invoke-direct {v1, v2}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;-><init>(Landroid/content/Context;)V

    .line 371
    iget-object v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lopenlight/co/camera/ImageReaderManager;->addRawResultQueue(ILopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;)V

    .line 374
    :cond_1
    iget-object v1, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v2, "aspect_ratio_setting"

    .line 375
    invoke-interface {v1, v2}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "4:3"

    .line 376
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mNativeAspectRatio:Z

    .line 378
    sget-object v1, Lopenlight/co/camera/managers/capture/CaptureManager;->TAG:Ljava/lang/String;

    const-string v2, "Issue burst Capture "

    invoke-static {v1, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->incrementCapturesInFlight()V

    .line 381
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    iget-object v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 383
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraBackgroundHandler()Landroid/os/Handler;

    move-result-object v3

    .line 382
    invoke-virtual {v1, p1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p1

    .line 384
    sget-object v1, Lopenlight/co/camera/managers/capture/CaptureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Burst Capture Request submitted, sequenceId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object p1, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureBurst:Lopenlight/co/camera/managers/capture/CaptureBurstManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->getIfFetchRequest()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureUpdateListener:Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;

    if-eqz p1, :cond_2

    .line 386
    iget-object p1, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureUpdateListener:Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;

    invoke-interface {p1}, Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;->onStartAnimationForBurstCapture()V

    .line 388
    :cond_2
    invoke-direct {p0}, Lopenlight/co/camera/managers/capture/CaptureManager;->decrementPendingUserCapture()V

    .line 391
    invoke-virtual {p0}, Lopenlight/co/camera/managers/capture/CaptureManager;->getPendingUserCaptures()I

    move-result p1

    if-nez p1, :cond_3

    .line 392
    iget-object p1, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mMetrics:Lopenlight/co/camera/metrics/Metrics;

    const-string v1, "event_capture_burst"

    iget-object v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureBurst:Lopenlight/co/camera/managers/capture/CaptureBurstManager;

    .line 394
    invoke-virtual {v2}, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->getPendingUserCaptureCount()I

    move-result v2

    .line 395
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object v3

    invoke-virtual {v3}, Lopenlight/co/camera/CameraMode;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mSmartAfTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    .line 396
    invoke-virtual {v4}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->getCurrentAfMode()Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;

    move-result-object v4

    iget-object v5, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    .line 397
    invoke-virtual {v5}, Lopenlight/co/camera/managers/zoom/ZoomManager;->getZoomLevel()F

    move-result v5

    .line 393
    invoke-static {v2, v3, v4, v5}, Lopenlight/co/camera/metrics/CameraMetrics;->createPropertiesForBurstCapture(ILjava/lang/String;Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;F)Ljava/util/HashMap;

    move-result-object v2

    .line 392
    invoke-virtual {p1, v1, v2}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 401
    sget-object v1, Lopenlight/co/camera/managers/capture/CaptureManager;->TAG:Ljava/lang/String;

    const-string v2, "Exception in captureBurstPictureLocked"

    invoke-static {v1, v2, p1}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 403
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->decrementCapturesInFlight()V

    .line 404
    invoke-direct {p0}, Lopenlight/co/camera/managers/capture/CaptureManager;->resetCaptureParamsOnException()V

    :cond_3
    :goto_0
    return-void
.end method

.method public captureStillPictureLocked()V
    .locals 6

    .line 271
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCurrentState:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    sget-object v1, Lopenlight/co/camera/managers/capture/CaptureManager$State;->CAPTURING:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    if-ne v0, v1, :cond_0

    .line 272
    sget-object p0, Lopenlight/co/camera/managers/capture/CaptureManager;->TAG:Ljava/lang/String;

    const-string v0, "Capturing has starting. Ignoring further request."

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 275
    :cond_0
    sget-object v0, Lopenlight/co/camera/managers/capture/CaptureManager$State;->CAPTURING:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    iput-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCurrentState:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    .line 276
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    .line 280
    :try_start_0
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const/4 v2, 0x2

    .line 281
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 283
    iget-object v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    .line 284
    invoke-virtual {v2}, Lopenlight/co/camera/ImageReaderManager;->getJpegImageReader()Landroid/media/ImageReader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 285
    iget-object v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    invoke-virtual {v2}, Lopenlight/co/camera/ImageReaderManager;->getRawImageReader()Landroid/media/ImageReader;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 287
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 289
    :cond_1
    iget-object v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCamReqManager:Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;

    invoke-virtual {v2, v1}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->createStillCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 291
    iget-object v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 293
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 297
    new-instance v2, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;

    .line 298
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v3

    invoke-direct {v2, v3}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;-><init>(Landroid/content/Context;)V

    .line 299
    iget-object v3, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lopenlight/co/camera/ImageReaderManager;->addJpegResultQueue(ILopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;)V

    .line 301
    invoke-static {}, Lopenlight/co/camera/CameraApp;->isLight()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 302
    new-instance v2, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;

    .line 303
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v3

    invoke-direct {v2, v3}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;-><init>(Landroid/content/Context;)V

    .line 304
    iget-object v3, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lopenlight/co/camera/ImageReaderManager;->addRawResultQueue(ILopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;)V

    .line 306
    :cond_2
    iget-object v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v3, "aspect_ratio_setting"

    .line 307
    invoke-interface {v2, v3}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "4:3"

    .line 308
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mNativeAspectRatio:Z

    .line 310
    sget-object v2, Lopenlight/co/camera/managers/capture/CaptureManager;->TAG:Ljava/lang/String;

    const-string v3, "Issue Capture Request"

    invoke-static {v2, v3}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->incrementCapturesInFlight()V

    .line 313
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    iget-object v3, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 315
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraBackgroundHandler()Landroid/os/Handler;

    move-result-object v4

    .line 314
    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v1

    .line 318
    invoke-direct {p0}, Lopenlight/co/camera/managers/capture/CaptureManager;->decrementPendingUserCapture()V

    .line 319
    iget-object v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

    sget-object v3, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->ISSUE_CAPTURE_REQUEST_TO_PLATFORM:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    invoke-virtual {v2, v3}, Lopenlight/co/camera/utils/TimingLoggerUtil;->captureTiming(Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;)V

    .line 320
    iget-object v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureUpdateListener:Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;

    if-eqz v2, :cond_3

    .line 321
    iget-object v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureUpdateListener:Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;

    invoke-interface {v2}, Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;->onStartAnimationForSingleCapture()V

    .line 323
    :cond_3
    sget-object v2, Lopenlight/co/camera/managers/capture/CaptureManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Capture Request submitted, sequenceId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and Number of captures in flight: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCapturesInFlight()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-static {v2, v1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mMetrics:Lopenlight/co/camera/metrics/Metrics;

    const-string v2, "event_capture_single"

    .line 329
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object v3

    invoke-virtual {v3}, Lopenlight/co/camera/CameraMode;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mSmartAfTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    .line 330
    invoke-virtual {v4}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->getCurrentAfMode()Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;

    move-result-object v4

    iget-object v5, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    .line 331
    invoke-virtual {v5}, Lopenlight/co/camera/managers/zoom/ZoomManager;->getZoomLevel()F

    move-result v5

    .line 328
    invoke-static {v3, v4, v5}, Lopenlight/co/camera/metrics/CameraMetrics;->createPropertiesForSingleCapture(Ljava/lang/String;Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;F)Ljava/util/HashMap;

    move-result-object v3

    .line 327
    invoke-virtual {v1, v2, v3}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 333
    sget-object v2, Lopenlight/co/camera/managers/capture/CaptureManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception in captureStillPictureLocked"

    invoke-static {v2, v3, v1}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 335
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->decrementCapturesInFlight()V

    .line 336
    invoke-direct {p0}, Lopenlight/co/camera/managers/capture/CaptureManager;->resetCaptureParamsOnException()V

    :goto_0
    return-void
.end method

.method public doCapture()V
    .locals 6

    .line 160
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->isCurrentlyZooming()Z

    move-result v0

    .line 161
    iget-object v1, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mFocusManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-virtual {v1}, Lopenlight/co/camera/managers/focus/FocusManager;->isFocusing()Z

    move-result v1

    .line 162
    iget-object v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mAutoExposureManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v2}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    invoke-virtual {v2}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->isMetering()Z

    move-result v2

    .line 163
    sget-object v3, Lopenlight/co/camera/managers/capture/CaptureManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CAPTURE] doCapture: Capture State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCurrentState:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "is metering: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "is focusing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "is zooming: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v3, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCurrentState:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    sget-object v4, Lopenlight/co/camera/managers/capture/CaptureManager$State;->IDLE:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    if-ne v3, v4, :cond_1

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    .line 168
    :cond_0
    sget-object v0, Lopenlight/co/camera/managers/capture/CaptureManager$State;->QUEUED_CAPTURE:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    iput-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCurrentState:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    .line 169
    sget-object p0, Lopenlight/co/camera/managers/capture/CaptureManager;->TAG:Ljava/lang/String;

    const-string v0, "Focus in progress. Queueing Capture"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 170
    :cond_1
    iget-object v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCurrentState:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    sget-object v3, Lopenlight/co/camera/managers/capture/CaptureManager$State;->PRE_CAPTURE_PROCESSING:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCurrentState:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    sget-object v3, Lopenlight/co/camera/managers/capture/CaptureManager$State;->CAPTURING:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    if-eq v2, v3, :cond_7

    if-eqz v0, :cond_2

    goto :goto_0

    .line 176
    :cond_2
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCurrentState:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    sget-object v2, Lopenlight/co/camera/managers/capture/CaptureManager$State;->QUEUED_CAPTURE:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    if-ne v0, v2, :cond_3

    if-eqz v1, :cond_3

    .line 177
    sget-object p0, Lopenlight/co/camera/managers/capture/CaptureManager;->TAG:Ljava/lang/String;

    const-string v0, "Capture queue already has a request, ignoring further queuing request. Currently Focusing"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 181
    :cond_3
    invoke-static {}, Lopenlight/co/camera/utils/Util;->isAvailableSpace()Z

    move-result v0

    if-nez v0, :cond_4

    .line 183
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object p0

    invoke-static {p0}, Lopenlight/co/camera/utils/Util;->showToastForLowMemory(Landroid/content/Context;)V

    return-void

    .line 187
    :cond_4
    sget-object v0, Lopenlight/co/camera/managers/capture/CaptureManager$State;->PRE_CAPTURE_PROCESSING:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    iput-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCurrentState:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    .line 190
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureUpdateListener:Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;

    if-eqz v0, :cond_5

    .line 191
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureUpdateListener:Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;

    invoke-interface {v0}, Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;->onUpdateUiForCapture()V

    .line 194
    :cond_5
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "timer_setting"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "timer_off"

    .line 195
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 196
    invoke-direct {p0}, Lopenlight/co/camera/managers/capture/CaptureManager;->takePicture()V

    goto :goto_1

    .line 198
    :cond_6
    iget-object v1, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureUpdateListener:Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;

    if-eqz v1, :cond_8

    .line 199
    iget-object p0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureUpdateListener:Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;

    invoke-interface {p0, v0}, Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;->onStartTimerForCapture(Ljava/lang/String;)V

    goto :goto_1

    .line 173
    :cond_7
    :goto_0
    sget-object p0, Lopenlight/co/camera/managers/capture/CaptureManager;->TAG:Ljava/lang/String;

    const-string v0, "Ignoring Capture Request. Processing a capture request, or in capture, or currently zooming"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public finishedCaptureLocked()V
    .locals 2

    .line 540
    :try_start_0
    sget-object v0, Lopenlight/co/camera/managers/capture/CaptureManager$State;->IDLE:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    iput-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCurrentState:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    .line 541
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    .line 542
    iget-object p0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureReqManager:Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->resetPostCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 543
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->startRepeatingRequestInPreview()V

    .line 544
    sget-object p0, Lopenlight/co/camera/managers/capture/CaptureManager;->TAG:Ljava/lang/String;

    const-string v0, "Capture Completed. Resetting to Preview"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 546
    sget-object v0, Lopenlight/co/camera/managers/capture/CaptureManager;->TAG:Ljava/lang/String;

    const-string v1, "Exception in finishCaptureLocked"

    invoke-static {v0, v1, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public getCurrentState()Lopenlight/co/camera/managers/capture/CaptureManager$State;
    .locals 0

    .line 639
    iget-object p0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCurrentState:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    return-object p0
.end method

.method public getPendingUserCaptures()I
    .locals 0

    .line 551
    iget p0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mPendingUserCaptures:I

    return p0
.end method

.method public getTotalCaptureForTypes()I
    .locals 3

    .line 258
    sget-object v0, Lopenlight/co/camera/managers/capture/CaptureManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Burst State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;

    invoke-virtual {v2}, Lopenlight/co/camera/utils/CameraState;->getStillCaptureMode()Lopenlight/co/camera/utils/CameraState$StillCaptureMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;

    invoke-virtual {v0}, Lopenlight/co/camera/utils/CameraState;->getStillCaptureMode()Lopenlight/co/camera/utils/CameraState$StillCaptureMode;

    move-result-object v0

    sget-object v1, Lopenlight/co/camera/utils/CameraState$StillCaptureMode;->BURST:Lopenlight/co/camera/utils/CameraState$StillCaptureMode;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/utils/CameraState$StillCaptureMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object p0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureBurst:Lopenlight/co/camera/managers/capture/CaptureBurstManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->getPendingUserCaptureCount()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isBurstCapture()Z
    .locals 0

    .line 559
    iget-boolean p0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mIsBurstCapture:Z

    return p0
.end method

.method public isCapturing()Z
    .locals 1

    .line 610
    iget-object p0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCurrentState:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    sget-object v0, Lopenlight/co/camera/managers/capture/CaptureManager$State;->CAPTURING:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIdle()Z
    .locals 1

    .line 563
    iget-object p0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCurrentState:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    sget-object v0, Lopenlight/co/camera/managers/capture/CaptureManager$State;->IDLE:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPendingCapturePostFocus()Z
    .locals 1

    .line 606
    iget-object p0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCurrentState:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    sget-object v0, Lopenlight/co/camera/managers/capture/CaptureManager$State;->QUEUED_CAPTURE:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQueued()Z
    .locals 1

    .line 567
    iget-object p0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCurrentState:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    sget-object v0, Lopenlight/co/camera/managers/capture/CaptureManager$State;->QUEUED_CAPTURE:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetCapture()V
    .locals 1

    .line 266
    sget-object v0, Lopenlight/co/camera/managers/capture/CaptureManager$State;->IDLE:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    iput-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCurrentState:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    return-void
.end method

.method public resetPendingUserCaptures()V
    .locals 1

    const/4 v0, 0x0

    .line 525
    iput v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mPendingUserCaptures:I

    return-void
.end method

.method public resetRequestCounterForCapture()V
    .locals 1

    .line 529
    iget-object p0, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mRequestCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public setUiUpdateListener(Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lopenlight/co/camera/managers/capture/CaptureManager;->mCaptureUpdateListener:Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;

    return-void
.end method

.method public takePictureOnTimerComplete()V
    .locals 0

    .line 206
    invoke-direct {p0}, Lopenlight/co/camera/managers/capture/CaptureManager;->takePicture()V

    return-void
.end method
