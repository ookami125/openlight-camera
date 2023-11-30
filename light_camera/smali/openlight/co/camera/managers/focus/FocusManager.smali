.class public Lopenlight/co/camera/managers/focus/FocusManager;
.super Ljava/lang/Object;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/managers/focus/FocusManager$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FocusManager"

.field private static final mSmartAfTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

.field private static final sInstance:Lopenlight/co/camera/managers/focus/FocusManager;


# instance fields
.field private final mCamPref:Lopenlight/co/lib/content/Prefs;

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

.field private volatile mCurrentState:Lopenlight/co/camera/managers/focus/FocusManager$State;

.field private mCurrentTorchState:Z

.field private final mFocusCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mFocusListener:Lopenlight/co/camera/listener/FocusListener;

.field private final mFocusPoint:Lopenlight/co/camera/models/MeteringPoint;

.field private mFocusRoi:Landroid/hardware/camera2/params/MeteringRectangle;

.field private mFocusStartTime:J

.field private final mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-direct {v0}, Lopenlight/co/camera/managers/focus/FocusManager;-><init>()V

    sput-object v0, Lopenlight/co/camera/managers/focus/FocusManager;->sInstance:Lopenlight/co/camera/managers/focus/FocusManager;

    .line 75
    invoke-static {}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->get()Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/managers/focus/FocusManager;->mSmartAfTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-object v0, Lopenlight/co/camera/managers/focus/-$$Lambda$VHoBP3n01T-xYwXx8e0ZTKBHfkE;->INSTANCE:Lopenlight/co/camera/managers/focus/-$$Lambda$VHoBP3n01T-xYwXx8e0ZTKBHfkE;

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    .line 77
    invoke-static {}, Lopenlight/co/camera/utils/CameraState;->get()Lopenlight/co/camera/utils/CameraState;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;

    .line 79
    invoke-static {}, Lopenlight/co/camera/utils/TimingLoggerUtil;->get()Lopenlight/co/camera/utils/TimingLoggerUtil;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

    .line 81
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    .line 88
    new-instance v0, Lopenlight/co/camera/models/MeteringPoint;

    invoke-direct {v0}, Lopenlight/co/camera/models/MeteringPoint;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mFocusPoint:Lopenlight/co/camera/models/MeteringPoint;

    .line 93
    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mFocusRoi:Landroid/hardware/camera2/params/MeteringRectangle;

    const-wide/16 v0, 0x0

    .line 100
    iput-wide v0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mFocusStartTime:J

    .line 102
    sget-object v0, Lopenlight/co/camera/managers/focus/FocusManager$State;->IDLE:Lopenlight/co/camera/managers/focus/FocusManager$State;

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mCurrentState:Lopenlight/co/camera/managers/focus/FocusManager$State;

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mCurrentTorchState:Z

    .line 177
    new-instance v0, Lopenlight/co/camera/managers/focus/FocusManager$1;

    invoke-direct {v0, p0}, Lopenlight/co/camera/managers/focus/FocusManager$1;-><init>(Lopenlight/co/camera/managers/focus/FocusManager;)V

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mFocusCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lopenlight/co/camera/managers/focus/FocusManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lopenlight/co/camera/managers/focus/FocusManager;)Lopenlight/co/camera/listener/FocusListener;
    .locals 0

    .line 58
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mFocusListener:Lopenlight/co/camera/listener/FocusListener;

    return-object p0
.end method

.method static synthetic access$200(Lopenlight/co/camera/managers/focus/FocusManager;)Lopenlight/co/camera/managers/focus/FocusManager$State;
    .locals 0

    .line 58
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mCurrentState:Lopenlight/co/camera/managers/focus/FocusManager$State;

    return-object p0
.end method

.method static synthetic access$202(Lopenlight/co/camera/managers/focus/FocusManager;Lopenlight/co/camera/managers/focus/FocusManager$State;)Lopenlight/co/camera/managers/focus/FocusManager$State;
    .locals 0

    .line 58
    iput-object p1, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mCurrentState:Lopenlight/co/camera/managers/focus/FocusManager$State;

    return-object p1
.end method

.method static synthetic access$300(Lopenlight/co/camera/managers/focus/FocusManager;)Lopenlight/co/camera/utils/Provider;
    .locals 0

    .line 58
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    return-object p0
.end method

.method static synthetic access$402(Lopenlight/co/camera/managers/focus/FocusManager;J)J
    .locals 0

    .line 58
    iput-wide p1, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mFocusStartTime:J

    return-wide p1
.end method

.method static synthetic access$500()Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;
    .locals 1

    .line 58
    sget-object v0, Lopenlight/co/camera/managers/focus/FocusManager;->mSmartAfTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    return-object v0
.end method

.method public static get()Lopenlight/co/camera/managers/focus/FocusManager;
    .locals 1

    .line 97
    sget-object v0, Lopenlight/co/camera/managers/focus/FocusManager;->sInstance:Lopenlight/co/camera/managers/focus/FocusManager;

    return-object v0
.end method

.method private getFocalLength()F
    .locals 1

    .line 364
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "focal_length"

    invoke-interface {p0, v0}, Lopenlight/co/lib/content/Prefs;->getFloatValue(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method private getTorchState()Z
    .locals 0

    .line 351
    iget-boolean p0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mCurrentTorchState:Z

    return p0
.end method


# virtual methods
.method public autoTriggerFocus()V
    .locals 7

    .line 130
    sget-object v0, Lopenlight/co/camera/managers/focus/FocusManager$State;->FOCUSING:Lopenlight/co/camera/managers/focus/FocusManager$State;

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mCurrentState:Lopenlight/co/camera/managers/focus/FocusManager$State;

    .line 131
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    .line 132
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->isCameraInOpenState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    iget-object v1, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;

    invoke-virtual {v1}, Lopenlight/co/camera/utils/CameraState;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 136
    invoke-static {}, Lopenlight/co/camera/utils/MeteringRect;->get()Lopenlight/co/camera/utils/MeteringRect;

    move-result-object v2

    iget-object v3, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mFocusPoint:Lopenlight/co/camera/models/MeteringPoint;

    iget-object v4, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;

    .line 137
    invoke-virtual {v4}, Lopenlight/co/camera/utils/CameraState;->getAutoFitTextureView()Lopenlight/co/camera/AutoFitTextureView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lopenlight/co/camera/utils/MeteringRect;->getMeteringRectAndScreenPoint(Lopenlight/co/camera/models/MeteringPoint;Landroid/view/TextureView;Z)Landroid/util/Pair;

    move-result-object v2

    .line 140
    :try_start_0
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v3, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mFocusRoi:Landroid/hardware/camera2/params/MeteringRectangle;

    .line 143
    iget-object v3, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mFocusPoint:Lopenlight/co/camera/models/MeteringPoint;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Point;

    invoke-virtual {v3, v2}, Lopenlight/co/camera/models/MeteringPoint;->set(Landroid/graphics/Point;)Lopenlight/co/camera/models/MeteringPoint;

    .line 145
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    const/4 v3, 0x1

    .line 146
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    .line 147
    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 149
    invoke-static {}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->get()Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->setFocusCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 150
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v4, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object v6, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mFocusRoi:Landroid/hardware/camera2/params/MeteringRectangle;

    aput-object v6, v4, v5

    invoke-virtual {v2, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 151
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 152
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 153
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 154
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0}, Lopenlight/co/camera/managers/focus/FocusManager;->getFocalLength()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 155
    invoke-direct {p0}, Lopenlight/co/camera/managers/focus/FocusManager;->getTorchState()Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    .line 156
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 158
    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 159
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 160
    sget-object v1, Lopenlight/co/camera/managers/focus/FocusManager;->TAG:Ljava/lang/String;

    const-string v3, "Issuing Focus Request to Platform"

    invoke-static {v1, v3}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

    sget-object v3, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->ISSUE_FOCUS_REQUEST_TO_PLATFORM:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {v1, v3}, Lopenlight/co/camera/utils/TimingLoggerUtil;->captureTiming(Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;)V

    .line 163
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object p0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mFocusCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 164
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    .line 163
    invoke-virtual {v1, v2, p0, v0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 166
    sget-object v0, Lopenlight/co/camera/managers/focus/FocusManager;->TAG:Ljava/lang/String;

    const-string v1, "Exception when triggering focus"

    invoke-static {v0, v1, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 169
    :cond_1
    sget-object p0, Lopenlight/co/camera/managers/focus/FocusManager;->TAG:Ljava/lang/String;

    const-string v0, "The camera device is either still not open or is closing, ignore focus request"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public cancelAfTrigger(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 116
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 117
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v0

    .line 119
    :try_start_0
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object p0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mFocusCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 120
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    .line 119
    invoke-virtual {v1, p1, p0, v0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 122
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getCurrentFocusPoint()Lopenlight/co/camera/models/MeteringPoint;
    .locals 0

    .line 355
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mFocusPoint:Lopenlight/co/camera/models/MeteringPoint;

    return-object p0
.end method

.method public getCurrentState()Lopenlight/co/camera/managers/focus/FocusManager$State;
    .locals 0

    .line 342
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mCurrentState:Lopenlight/co/camera/managers/focus/FocusManager$State;

    return-object p0
.end method

.method public getFocusRoi()Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0

    .line 283
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mFocusRoi:Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p0
.end method

.method public getFocusStartTime()J
    .locals 2

    .line 287
    iget-wide v0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mFocusStartTime:J

    return-wide v0
.end method

.method public hasInitialFocusCompleted()Z
    .locals 1

    .line 270
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mCurrentState:Lopenlight/co/camera/managers/focus/FocusManager$State;

    sget-object v0, Lopenlight/co/camera/managers/focus/FocusManager$State;->LOCKED:Lopenlight/co/camera/managers/focus/FocusManager$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFocusing()Z
    .locals 1

    .line 312
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mCurrentState:Lopenlight/co/camera/managers/focus/FocusManager$State;

    sget-object v0, Lopenlight/co/camera/managers/focus/FocusManager$State;->FOCUSING:Lopenlight/co/camera/managers/focus/FocusManager$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFocusingFirstTime()Z
    .locals 1

    .line 338
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mCurrentState:Lopenlight/co/camera/managers/focus/FocusManager$State;

    sget-object v0, Lopenlight/co/camera/managers/focus/FocusManager$State;->FOCUSING_FIRST_TIME:Lopenlight/co/camera/managers/focus/FocusManager$State;

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

    .line 321
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mCurrentState:Lopenlight/co/camera/managers/focus/FocusManager$State;

    sget-object v0, Lopenlight/co/camera/managers/focus/FocusManager$State;->IDLE:Lopenlight/co/camera/managers/focus/FocusManager$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetFocusStateToIdle()V
    .locals 1

    .line 278
    sget-object v0, Lopenlight/co/camera/managers/focus/FocusManager$State;->IDLE:Lopenlight/co/camera/managers/focus/FocusManager$State;

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mCurrentState:Lopenlight/co/camera/managers/focus/FocusManager$State;

    .line 279
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mFocusPoint:Lopenlight/co/camera/models/MeteringPoint;

    invoke-virtual {p0}, Lopenlight/co/camera/models/MeteringPoint;->resetToCenter()Lopenlight/co/camera/models/MeteringPoint;

    return-void
.end method

.method public setFocusCompleted()V
    .locals 1

    .line 316
    sget-object v0, Lopenlight/co/camera/managers/focus/FocusManager$State;->LOCKED:Lopenlight/co/camera/managers/focus/FocusManager$State;

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mCurrentState:Lopenlight/co/camera/managers/focus/FocusManager$State;

    .line 317
    sget-object p0, Lopenlight/co/camera/managers/focus/FocusManager;->mSmartAfTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->focusComplete()V

    return-void
.end method

.method public setFocusListener(Lopenlight/co/camera/listener/FocusListener;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mFocusListener:Lopenlight/co/camera/listener/FocusListener;

    return-void
.end method

.method public setFocusPointToCenter()V
    .locals 0

    .line 291
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mFocusPoint:Lopenlight/co/camera/models/MeteringPoint;

    invoke-virtual {p0}, Lopenlight/co/camera/models/MeteringPoint;->resetToCenter()Lopenlight/co/camera/models/MeteringPoint;

    return-void
.end method

.method public setTorchForFlash(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 2

    .line 256
    iput-boolean p2, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mCurrentTorchState:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 258
    :goto_0
    sget-object v0, Lopenlight/co/camera/managers/focus/FocusManager;->TAG:Ljava/lang/String;

    const-string v1, "Enable/Disable Torch"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {p1, p2}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 260
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {p0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->startCaptureRequest()V

    return-void
.end method

.method public startFirstTimeFocus()V
    .locals 1

    .line 329
    sget-object v0, Lopenlight/co/camera/managers/focus/FocusManager$State;->FOCUSING_FIRST_TIME:Lopenlight/co/camera/managers/focus/FocusManager$State;

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mCurrentState:Lopenlight/co/camera/managers/focus/FocusManager$State;

    return-void
.end method

.method public unregisterFocusListener()V
    .locals 1

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p0, v0}, Lopenlight/co/camera/managers/focus/FocusManager;->setFocusListener(Lopenlight/co/camera/listener/FocusListener;)V

    return-void
.end method

.method public updateFocusPoint(II)V
    .locals 0

    .line 308
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mFocusPoint:Lopenlight/co/camera/models/MeteringPoint;

    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/models/MeteringPoint;->set(II)Lopenlight/co/camera/models/MeteringPoint;

    return-void
.end method

.method public updateFocusPoint(Landroid/view/MotionEvent;)V
    .locals 1

    .line 299
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/FocusManager;->mFocusPoint:Lopenlight/co/camera/models/MeteringPoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lopenlight/co/camera/models/MeteringPoint;->set(II)Lopenlight/co/camera/models/MeteringPoint;

    return-void
.end method
