.class public Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;
.super Ljava/lang/Object;
.source "AutoExposureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$AeUiUpdate;,
        Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoExposureManager"

.field private static final TOTAL_FRAME_SKIP_ON_METERING:I = 0x7

.field private static final sInstance:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;


# instance fields
.field private final mAeMeteringPoint:Lopenlight/co/camera/models/MeteringPoint;

.field private mAeTriggerFrameNumber:J

.field private mAeUiUpdateListener:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$AeUiUpdate;

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

.field private final mCaptureRequestManager:Lopenlight/co/camera/utils/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/camera/utils/Provider<",
            "Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;",
            ">;"
        }
    .end annotation
.end field

.field private mCenterMeteringOnce:Z

.field private mCurrentState:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

.field private final mFocusManager:Lopenlight/co/camera/utils/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/camera/utils/Provider<",
            "Lopenlight/co/camera/managers/focus/FocusManager;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAeHwLock:Z

.field private mIsFlashReqOnAeLocked:Z

.field private final mPreCaptureAECallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mPreviousMeteringMode:Ljava/lang/String;

.field private final mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    invoke-direct {v0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;-><init>()V

    sput-object v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->sInstance:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lopenlight/co/camera/utils/CameraState;->get()Lopenlight/co/camera/utils/CameraState;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;

    .line 65
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    .line 67
    invoke-static {}, Lopenlight/co/camera/utils/TimingLoggerUtil;->get()Lopenlight/co/camera/utils/TimingLoggerUtil;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

    .line 69
    sget-object v0, Lopenlight/co/camera/managers/autoexposure/-$$Lambda$VHoBP3n01T-xYwXx8e0ZTKBHfkE;->INSTANCE:Lopenlight/co/camera/managers/autoexposure/-$$Lambda$VHoBP3n01T-xYwXx8e0ZTKBHfkE;

    iput-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    .line 71
    sget-object v0, Lopenlight/co/camera/managers/autoexposure/-$$Lambda$8xABy20ZJhGBZPhsa6h4sT4lyEI;->INSTANCE:Lopenlight/co/camera/managers/autoexposure/-$$Lambda$8xABy20ZJhGBZPhsa6h4sT4lyEI;

    iput-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCaptureRequestManager:Lopenlight/co/camera/utils/Provider;

    .line 74
    sget-object v0, Lopenlight/co/camera/managers/autoexposure/-$$Lambda$awF8a8iz0l390QmOYtlAiBwV1CU;->INSTANCE:Lopenlight/co/camera/managers/autoexposure/-$$Lambda$awF8a8iz0l390QmOYtlAiBwV1CU;

    iput-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mFocusManager:Lopenlight/co/camera/utils/Provider;

    .line 79
    new-instance v0, Lopenlight/co/camera/models/MeteringPoint;

    invoke-direct {v0}, Lopenlight/co/camera/models/MeteringPoint;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mAeMeteringPoint:Lopenlight/co/camera/models/MeteringPoint;

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCenterMeteringOnce:Z

    .line 84
    sget-object v1, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;->IDLE:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    iput-object v1, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCurrentState:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    const-wide/16 v1, 0x0

    .line 91
    iput-wide v1, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mAeTriggerFrameNumber:J

    .line 99
    iput-boolean v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mIsAeHwLock:Z

    .line 106
    iput-boolean v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mIsFlashReqOnAeLocked:Z

    .line 379
    new-instance v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$1;

    invoke-direct {v0, p0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$1;-><init>(Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;)V

    iput-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mPreCaptureAECallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 498
    iget-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "metering_setting"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mPreviousMeteringMode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mAeTriggerFrameNumber:J

    return-wide v0
.end method

.method static synthetic access$002(Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;J)J
    .locals 0

    .line 43
    iput-wide p1, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mAeTriggerFrameNumber:J

    return-wide p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 43
    sget-object v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;)Lopenlight/co/camera/utils/Provider;
    .locals 0

    .line 43
    iget-object p0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    return-object p0
.end method

.method public static get()Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;
    .locals 1

    .line 115
    sget-object v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->sInstance:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    return-object v0
.end method

.method private resetAeLockPostCapture()V
    .locals 2

    .line 422
    iget-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCaptureResultPerFrame()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    .line 423
    iget-boolean v1, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mIsAeHwLock:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 424
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 425
    invoke-static {v0}, Lopenlight/co/camera/utils/Util;->valueOf(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCaptureRequestManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;

    iget-object v1, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    .line 427
    invoke-interface {v1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {v1}, Lopenlight/co/camera/managers/CameraManager;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->resetPostCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 428
    iget-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->startRepeatingRequestInPreview()V

    .line 430
    :cond_0
    iget-object p0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mAeUiUpdateListener:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$AeUiUpdate;

    invoke-interface {p0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$AeUiUpdate;->updateFocusUI()V

    :cond_1
    return-void
.end method

.method private updateAeArea(Lopenlight/co/camera/models/MeteringPoint;Lopenlight/co/camera/AutoFitTextureView;)Z
    .locals 7

    .line 447
    invoke-virtual {p0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->isCenterWeighted()Z

    move-result v0

    .line 448
    sget-object v1, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AE] Is Center Weighted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsMeteringOnce: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCenterMeteringOnce:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v1, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    .line 452
    invoke-interface {v1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {v1}, Lopenlight/co/camera/managers/CameraManager;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 455
    iget-boolean v4, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCenterMeteringOnce:Z

    if-eqz v4, :cond_0

    .line 456
    sget-object p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->TAG:Ljava/lang/String;

    const-string p1, "[AE] No need to set AE ROI. Set the AE_REGION to null"

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-static {v1, v2}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAeRegions(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 458
    invoke-static {v1, v2}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAfRegions(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/hardware/camera2/params/MeteringRectangle;)V

    return v3

    .line 461
    :cond_0
    invoke-virtual {p1}, Lopenlight/co/camera/models/MeteringPoint;->resetToCenter()Lopenlight/co/camera/models/MeteringPoint;

    .line 464
    :cond_1
    iget-object v4, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mFocusManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v4}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lopenlight/co/camera/managers/focus/FocusManager;

    .line 470
    invoke-virtual {p1}, Lopenlight/co/camera/models/MeteringPoint;->isCenter()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lopenlight/co/camera/managers/focus/FocusManager;->hasInitialFocusCompleted()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    .line 471
    sget-object p1, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->TAG:Ljava/lang/String;

    const-string p2, "[AE] Touch-Weighted, setting ROI to same as focus tap"

    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->getROI()Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 478
    sget-object p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->TAG:Ljava/lang/String;

    const-string p1, "[AE] Center-Weighted, Init AE with 0 0 0 0 values"

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    new-instance p0, Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1, v6}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    goto :goto_0

    .line 481
    :cond_3
    invoke-static {}, Lopenlight/co/camera/utils/MeteringRect;->get()Lopenlight/co/camera/utils/MeteringRect;

    move-result-object p0

    .line 482
    invoke-virtual {p0, p1, p2, v3}, Lopenlight/co/camera/utils/MeteringRect;->getMeteringRectAndScreenPoint(Lopenlight/co/camera/models/MeteringPoint;Landroid/view/TextureView;Z)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/camera2/params/MeteringRectangle;

    .line 484
    :goto_0
    sget-object p1, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[AE] AE ROI: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_4

    if-eqz v1, :cond_4

    .line 486
    new-array p1, v3, [Landroid/hardware/camera2/params/MeteringRectangle;

    aput-object p0, p1, v6

    .line 488
    invoke-static {v1, p1}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAeRegions(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 489
    invoke-static {v1, v2}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAfRegions(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/hardware/camera2/params/MeteringRectangle;)V

    return v3

    :cond_4
    return v6
.end method


# virtual methods
.method public clearFlashRequestOnAeUnlock()V
    .locals 1

    .line 343
    iget-boolean v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mIsAeHwLock:Z

    if-nez v0, :cond_0

    invoke-static {}, Lopenlight/co/camera/managers/capture/CaptureManager;->get()Lopenlight/co/camera/managers/capture/CaptureManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/capture/CaptureManager;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 344
    iput-boolean v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mIsFlashReqOnAeLocked:Z

    :cond_0
    return-void
.end method

.method public getAeHwLock()Z
    .locals 0

    .line 268
    iget-boolean p0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mIsAeHwLock:Z

    return p0
.end method

.method public getAeTriggerFrameNumber()J
    .locals 2

    .line 264
    iget-wide v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mAeTriggerFrameNumber:J

    return-wide v0
.end method

.method public getCurrentState()Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;
    .locals 0

    .line 372
    iget-object p0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCurrentState:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    return-object p0
.end method

.method public getFlashOnAeLocked()Z
    .locals 0

    .line 354
    iget-boolean p0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mIsFlashReqOnAeLocked:Z

    return p0
.end method

.method public getROI()Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 3

    .line 307
    invoke-static {}, Lopenlight/co/camera/utils/MeteringRect;->get()Lopenlight/co/camera/utils/MeteringRect;

    move-result-object v0

    iget-object v1, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mAeMeteringPoint:Lopenlight/co/camera/models/MeteringPoint;

    iget-object p0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;

    .line 308
    invoke-virtual {p0}, Lopenlight/co/camera/utils/CameraState;->getAutoFitTextureView()Lopenlight/co/camera/AutoFitTextureView;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lopenlight/co/camera/utils/MeteringRect;->getMeteringRectAndScreenPoint(Lopenlight/co/camera/models/MeteringPoint;Landroid/view/TextureView;Z)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p0
.end method

.method public isCenterWeighted()Z
    .locals 1

    .line 210
    iget-object p0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "metering_setting"

    .line 211
    invoke-interface {p0, v0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "center-weighted"

    .line 212
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isLocked()Z
    .locals 1

    .line 325
    iget-object p0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCurrentState:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    sget-object v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;->LOCKED:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMetering()Z
    .locals 1

    .line 317
    iget-object p0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCurrentState:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    sget-object v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;->METERING:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lockAe(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    .line 255
    sget-object v1, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;->LOCKED:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    iput-object v1, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCurrentState:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    const/4 p0, 0x1

    .line 256
    invoke-static {p1, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 258
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->startCaptureRequest()V

    .line 260
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->startRepeatingRequestInPreview()V

    return-void
.end method

.method public onMeteringModeUpdate(Ljava/lang/String;)V
    .locals 0

    .line 245
    invoke-virtual {p0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->resetAeMetering()V

    return-void
.end method

.method public preCaptureTrigger(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 148
    :try_start_0
    sget-object v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->TAG:Ljava/lang/String;

    const-string v1, "Initiate Pre-capture Trigger"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    .line 150
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 149
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->AE_PRE_CAPTURE_TRIGGER:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/utils/TimingLoggerUtil;->captureTiming(Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;)V

    .line 155
    iget-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    .line 156
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    .line 157
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object p0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mPreCaptureAECallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 158
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    .line 157
    invoke-virtual {v1, p1, p0, v0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 161
    sget-object p1, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->TAG:Ljava/lang/String;

    const-string v0, "Exception trying to set precapture AE Metering trigger. Ignoring."

    invoke-static {p1, v0, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public resetAeMetering()V
    .locals 1

    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCenterMeteringOnce:Z

    .line 236
    sget-object v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;->IDLE:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    iput-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCurrentState:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    return-void
.end method

.method public resetPreCaptureTrigger(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 171
    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 171
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 173
    iget-object p0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {p0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->startRepeatingRequestInPreview()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 175
    sget-object p1, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->TAG:Ljava/lang/String;

    const-string v0, "Exception in resetPreCaptureTrigger"

    invoke-static {p1, v0, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public resetRoiInCenterWeighted(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 221
    iget-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "metering_setting"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "center-weighted"

    .line 222
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-boolean v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCenterMeteringOnce:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 224
    invoke-static {p1, v0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAeRegions(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 225
    iget-object p0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {p0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->startRepeatingRequestInPreview()V

    :cond_0
    return-void
.end method

.method public setAeHwLock(Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)V
    .locals 1

    .line 125
    sget-object v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$2;->$SwitchMap$light$co$camera$listener$HardKeyManager$KeyAction:[I

    invoke-virtual {p1}, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 131
    :pswitch_0
    iget-boolean p1, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mIsAeHwLock:Z

    if-eqz p1, :cond_0

    .line 132
    sget-object p1, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->TAG:Ljava/lang/String;

    const-string v0, "UP of capture hard key, releasing AE Lock that was locked by a long press of focus hard key"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 134
    iput-boolean p1, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mIsAeHwLock:Z

    .line 135
    invoke-virtual {p0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->clearFlashRequestOnAeUnlock()V

    .line 136
    invoke-direct {p0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->resetAeLockPostCapture()V

    goto :goto_0

    .line 127
    :pswitch_1
    sget-object p1, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->TAG:Ljava/lang/String;

    const-string v0, "FOCUS LONG_PRESS"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 128
    iput-boolean p1, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mIsAeHwLock:Z

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAeUiUpdateListener(Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$AeUiUpdate;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mAeUiUpdateListener:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$AeUiUpdate;

    return-void
.end method

.method public setFlashReqOnAeLocked()V
    .locals 1

    .line 334
    iget-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/CameraMode;->isAuto()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mIsFlashReqOnAeLocked:Z

    :cond_0
    return-void
.end method

.method public setMeteringCompleted()V
    .locals 1

    .line 321
    sget-object v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;->IDLE:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    iput-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCurrentState:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    return-void
.end method

.method public setMeteringPointToCenter()V
    .locals 0

    .line 276
    iget-object p0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mAeMeteringPoint:Lopenlight/co/camera/models/MeteringPoint;

    invoke-virtual {p0}, Lopenlight/co/camera/models/MeteringPoint;->resetToCenter()Lopenlight/co/camera/models/MeteringPoint;

    return-void
.end method

.method public shouldAutoMeteringBeTriggered()Z
    .locals 2

    .line 365
    iget-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "metering_setting"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mPreviousMeteringMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 367
    iput-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mPreviousMeteringMode:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string p0, "center-weighted"

    .line 368
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public startAeMetering()Z
    .locals 5

    .line 183
    sget-object v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;->METERING:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    iput-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCurrentState:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    .line 184
    iget-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;

    invoke-virtual {v0}, Lopenlight/co/camera/utils/CameraState;->getAutoFitTextureView()Lopenlight/co/camera/AutoFitTextureView;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lopenlight/co/camera/managers/CameraManager;

    .line 186
    invoke-virtual {v1}, Lopenlight/co/camera/managers/CameraManager;->getCameraCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 187
    iget-object v3, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mAeMeteringPoint:Lopenlight/co/camera/models/MeteringPoint;

    invoke-direct {p0, v3, v0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->updateAeArea(Lopenlight/co/camera/models/MeteringPoint;Lopenlight/co/camera/AutoFitTextureView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 189
    :try_start_0
    sget-object v3, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->TAG:Ljava/lang/String;

    const-string v4, "[AE] Start AE Metering"

    invoke-static {v3, v4}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1}, Lopenlight/co/camera/managers/CameraManager;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    .line 192
    invoke-virtual {v1}, Lopenlight/co/camera/managers/CameraManager;->getPreviewRequestCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v4

    .line 193
    invoke-virtual {v1}, Lopenlight/co/camera/managers/CameraManager;->getCameraBackgroundHandler()Landroid/os/Handler;

    move-result-object v1

    .line 191
    invoke-virtual {v2, v3, v4, v1}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 194
    iput-boolean v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mCenterMeteringOnce:Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 197
    sget-object v2, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception during start AE Metering, Reseting AE metering."

    invoke-static {v2, v3, v1}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 199
    invoke-virtual {p0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->resetAeMetering()V

    :goto_0
    return v0

    .line 203
    :cond_0
    sget-object v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to create AE ROI. Locking AE and going for Focus directly"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->resetAeMetering()V

    const/4 p0, 0x0

    return p0
.end method

.method public updateMeteringPoint(II)V
    .locals 1

    .line 295
    invoke-virtual {p0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->isCenterWeighted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object p0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mAeMeteringPoint:Lopenlight/co/camera/models/MeteringPoint;

    invoke-virtual {p0}, Lopenlight/co/camera/models/MeteringPoint;->resetToCenter()Lopenlight/co/camera/models/MeteringPoint;

    goto :goto_0

    .line 299
    :cond_0
    iget-object p0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->mAeMeteringPoint:Lopenlight/co/camera/models/MeteringPoint;

    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/models/MeteringPoint;->set(II)Lopenlight/co/camera/models/MeteringPoint;

    :goto_0
    return-void
.end method

.method public updateMeteringPoint(Landroid/view/MotionEvent;)V
    .locals 1

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->updateMeteringPoint(II)V

    return-void
.end method
