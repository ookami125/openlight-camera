.class public Lopenlight/co/camera/ImagePreviewFragment;
.super Lopenlight/co/camera/BasePreviewFragment;
.source "ImagePreviewFragment.java"

# interfaces
.implements Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$CaptureListener;
.implements Lopenlight/co/camera/view/timer/PictureTimer$OnTimerEventListener;
.implements Lopenlight/co/camera/ImageReaderManager$OnImageStatusListener;
.implements Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;
.implements Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$UpdatePreferenceListener;
.implements Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/ImagePreviewFragment$CompareSizesByArea;
    }
.end annotation


# static fields
.field private static final BURST_SOUND_DELAY:J = 0xfaL

.field private static final DELAYED_RESUME_RETRY_MS:I = 0xbb8

.field private static final HUD_UPDATE_REFRESH_RATE_AUTO_MODE:J = 0x1f4L

.field private static final HUD_UPDATE_REFRESH_RATE_OTHER_MODE:J = 0x12cL

.field private static final MAX_PREVIEW_WIDTH_4_3:I = 0x5a0

.field private static final MINIMUM_EXPOSURE_THRESHOLD:J = 0x64L

.field private static final MSG_BURST_ANIMATION:I = 0x64

.field private static final MSG_ON_DELAYED_RESUME:I = 0x68

.field private static final MSG_PLAY_BURST_SOUND:I = 0x65

.field private static final MSG_PLAY_CAPTURE_ANIMATION:I = 0x67

.field private static final MSG_UPDATE_HUD:I = 0x66

.field public static final TAG:Ljava/lang/String; = "ImagePreviewFragment"


# instance fields
.field private mAcceptStart:Z

.field private final mAncillaryCamToolBarListener:Lopenlight/co/camera/listener/AncillaryCamToolBarListener;

.field private mAssistController:Lopenlight/co/camera/view/assistance/AssistController;

.field private volatile mBurstCount:I

.field private mBurstView:Lopenlight/co/camera/view/burst/BurstView;

.field private volatile mCanUpdateHud:Z

.field private mCaptureAnim:Landroid/animation/Animator;

.field private mCaptureImage:Landroid/widget/ImageView;

.field private final mCaptureManager:Lopenlight/co/camera/managers/capture/CaptureManager;

.field private mCurrentIso:I

.field private mCurrentShutterSpeed:J

.field private mCurrentView:Lopenlight/co/camera/enums/FtuView;

.field private mFtuContainer:Landroid/view/ViewGroup;

.field private mFtuDimmer:Landroid/view/View;

.field private mHistogram:Lopenlight/co/lib/view/HistogramView;

.field private final mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

.field private mIsDisplayHistogram:Z

.field private mPicTimer:Lopenlight/co/camera/view/timer/PictureTimer;

.field private final mTestIntentListener:Lopenlight/co/camera/testintent/TestIntentListener;

.field private final mTestIntentReceiver:Lopenlight/co/camera/testintent/TestIntentReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Lopenlight/co/camera/BasePreviewFragment;-><init>()V

    .line 111
    invoke-static {}, Lopenlight/co/camera/managers/capture/CaptureManager;->get()Lopenlight/co/camera/managers/capture/CaptureManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCaptureManager:Lopenlight/co/camera/managers/capture/CaptureManager;

    .line 112
    invoke-static {}, Lopenlight/co/camera/ImageReaderManager;->get()Lopenlight/co/camera/ImageReaderManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    const/4 v0, 0x1

    .line 118
    iput v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mBurstCount:I

    .line 124
    iput-boolean v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mAcceptStart:Z

    .line 129
    iput-boolean v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCanUpdateHud:Z

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mIsDisplayHistogram:Z

    .line 146
    sget-object v0, Lopenlight/co/camera/enums/FtuView;->WELCOME_SCREEN:Lopenlight/co/camera/enums/FtuView;

    iput-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    .line 150
    new-instance v0, Lopenlight/co/camera/testintent/TestIntentReceiver;

    invoke-direct {v0}, Lopenlight/co/camera/testintent/TestIntentReceiver;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mTestIntentReceiver:Lopenlight/co/camera/testintent/TestIntentReceiver;

    .line 152
    new-instance v0, Lopenlight/co/camera/ImagePreviewFragment$1;

    invoke-direct {v0, p0}, Lopenlight/co/camera/ImagePreviewFragment$1;-><init>(Lopenlight/co/camera/ImagePreviewFragment;)V

    iput-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mTestIntentListener:Lopenlight/co/camera/testintent/TestIntentListener;

    .line 170
    new-instance v0, Lopenlight/co/camera/ImagePreviewFragment$2;

    invoke-direct {v0, p0}, Lopenlight/co/camera/ImagePreviewFragment$2;-><init>(Lopenlight/co/camera/ImagePreviewFragment;)V

    iput-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mAncillaryCamToolBarListener:Lopenlight/co/camera/listener/AncillaryCamToolBarListener;

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/camera/ImagePreviewFragment;Z)V
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lopenlight/co/camera/ImagePreviewFragment;->setHistogramEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lopenlight/co/camera/ImagePreviewFragment;)V
    .registers 1

    .line 78
    invoke-direct {p0}, Lopenlight/co/camera/ImagePreviewFragment;->removeCaptureAnimListenerAndUpdateControls()V

    return-void
.end method

.method private captureBurstStartAnimationAndSound()V
    .registers 4

    .line 939
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 940
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 941
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mSoundManager:Lopenlight/co/camera/utils/SoundManager;

    invoke-virtual {v0}, Lopenlight/co/camera/utils/SoundManager;->playCaptureStart()V

    .line 942
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 943
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private captureStartAnimationAndSound()V
    .registers 2

    .line 931
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mSoundManager:Lopenlight/co/camera/utils/SoundManager;

    invoke-virtual {v0}, Lopenlight/co/camera/utils/SoundManager;->playCaptureStart()V

    .line 932
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private static chooseOptimalSize([Landroid/util/Size;IIIILandroid/util/Size;)Landroid/util/Size;
    .registers 15

    .line 1058
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1060
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1061
    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 1062
    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result p5

    .line 1063
    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_15
    if-ge v5, v3, :cond_47

    aget-object v6, p0, v5

    .line 1064
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-gt v7, p3, :cond_44

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-gt v7, p4, :cond_44

    .line 1065
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    mul-int/2addr v8, p5

    div-int/2addr v8, v2

    if-ne v7, v8, :cond_44

    .line 1066
    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-lt v7, p1, :cond_41

    .line 1067
    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-lt v7, p2, :cond_41

    .line 1068
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 1070
    :cond_41
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_44
    :goto_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 1077
    :cond_47
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    if-lez p1, :cond_5a

    .line 1078
    new-instance p0, Lopenlight/co/camera/ImagePreviewFragment$CompareSizesByArea;

    invoke-direct {p0, p2}, Lopenlight/co/camera/ImagePreviewFragment$CompareSizesByArea;-><init>(Lopenlight/co/camera/ImagePreviewFragment$1;)V

    invoke-static {v0, p0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0

    .line 1079
    :cond_5a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6c

    .line 1080
    new-instance p0, Lopenlight/co/camera/ImagePreviewFragment$CompareSizesByArea;

    invoke-direct {p0, p2}, Lopenlight/co/camera/ImagePreviewFragment$CompareSizesByArea;-><init>(Lopenlight/co/camera/ImagePreviewFragment$1;)V

    invoke-static {v1, p0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0

    .line 1082
    :cond_6c
    sget-object p1, Lopenlight/co/camera/ImagePreviewFragment;->TAG:Ljava/lang/String;

    const-string p2, "Couldn\'t find any suitable preview size"

    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    aget-object p0, p0, v4

    return-object p0
.end method

.method private cleanFailedTimerCapture()V
    .registers 2

    .line 883
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->decrementCapturesInFlight()V

    .line 884
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCaptureManager:Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/capture/CaptureManager;->resetCapture()V

    const/4 v0, 0x1

    .line 885
    iput-boolean v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mIsPrimaryControlEnabled:Z

    .line 886
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->removePrimaryControl()V

    .line 887
    invoke-direct {p0}, Lopenlight/co/camera/ImagePreviewFragment;->resetTimer()V

    return-void
.end method

.method private closeCamera(Lopenlight/co/camera/managers/CameraManager;)V
    .registers 4

    .line 873
    sget-object v0, Lopenlight/co/camera/ImagePreviewFragment;->TAG:Ljava/lang/String;

    const-string v1, "mHistogramHelper.cancel()"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mHistogram:Lopenlight/co/lib/view/HistogramView;

    invoke-virtual {p0}, Lopenlight/co/lib/view/HistogramView;->cancelUpdate()V

    .line 875
    invoke-virtual {p1}, Lopenlight/co/camera/managers/CameraManager;->closeCamera()Z

    return-void
.end method

.method private closeFtu()V
    .registers 2

    .line 1165
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    if-eqz v0, :cond_9

    .line 1166
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/FtuHelper;->closeFtu()V

    :cond_9
    return-void
.end method

.method private getBurstAnimationDelay()J
    .registers 5

    .line 1000
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    .line 1002
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/camera/CameraMode;->isManual()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1003
    sget-object v0, Lopenlight/co/camera/ImagePreviewFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BURST index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string v3, "shutter_index"

    invoke-interface {v2, v3}, Lopenlight/co/lib/content/Prefs;->getIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    sget-object v0, Lopenlight/co/camera/utils/Constants;->exposureTimes:[J

    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "shutter_index"

    invoke-interface {p0, v1}, Lopenlight/co/lib/content/Prefs;->getIntValue(Ljava/lang/String;)I

    move-result p0

    aget-wide v1, v0, p0

    long-to-float p0, v1

    const v0, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p0, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p0, v0

    .line 1007
    sget-object v0, Lopenlight/co/camera/ImagePreviewFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BURST Manual Mode exposure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73

    .line 1009
    :cond_5b
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCaptureResultPerFrame()Landroid/hardware/camera2/CaptureResult;

    move-result-object p0

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    .line 1010
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    .line 1009
    invoke-static {p0}, Lopenlight/co/camera/utils/Util;->valueOf(Ljava/lang/Long;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    long-to-float p0, v0

    :goto_73
    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_7c

    const-wide/16 v0, 0x64

    goto :goto_7d

    :cond_7c
    float-to-long v0, p0

    :goto_7d
    return-wide v0
.end method

.method private getFocusKeepOutArea(ZF)I
    .registers 4

    const/high16 p0, 0x3fa00000    # 1.25f

    sub-float/2addr p2, p0

    .line 1026
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    if-eqz p1, :cond_11

    const/high16 p1, 0x44340000    # 720.0f

    mul-float/2addr p0, p1

    .line 1028
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_18

    :cond_11
    const/high16 p1, 0x44070000    # 540.0f

    mul-float/2addr p0, p1

    .line 1030
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 1032
    :goto_18
    sget-object p1, Lopenlight/co/camera/ImagePreviewFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[AF] Keep out: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static synthetic lambda$9b0MMcngQrvrCl3Qx1pJ036MgSc(Lopenlight/co/camera/ImagePreviewFragment;)V
    .registers 1

    invoke-direct {p0}, Lopenlight/co/camera/ImagePreviewFragment;->showFocusFailedFtu()V

    return-void
.end method

.method public static synthetic lambda$TxvjKQ2AiKYVCF8NvNHBPyY95YI(Lopenlight/co/camera/ImagePreviewFragment;)V
    .registers 1

    invoke-direct {p0}, Lopenlight/co/camera/ImagePreviewFragment;->updateRemainingImageCount()V

    return-void
.end method

.method public static synthetic lambda$onImageSaved$1(Lopenlight/co/camera/ImagePreviewFragment;)V
    .registers 2

    .line 288
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-eqz v0, :cond_9

    .line 289
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->stopAnimation()V

    :cond_9
    return-void
.end method

.method public static synthetic lambda$onYuvImageAvailable$0(Lopenlight/co/camera/ImagePreviewFragment;Z)V
    .registers 2

    const/4 p1, 0x1

    .line 281
    iput-boolean p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mAcceptStart:Z

    return-void
.end method

.method public static synthetic lambda$updateHandshakeAssist$4(Lopenlight/co/camera/ImagePreviewFragment;Z)V
    .registers 3

    int-to-byte p1, p1

    .line 412
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    sget-object v0, Lopenlight/co/camera/view/assistance/AssistController$AssistType;->HAND_SHAKE_ASSIST:Lopenlight/co/camera/view/assistance/AssistController$AssistType;

    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/ImagePreviewFragment;->showAssist(Ljava/lang/Byte;Lopenlight/co/camera/view/assistance/AssistController$AssistType;)V

    return-void
.end method

.method public static synthetic lambda$updateLowLightAssist$2(Lopenlight/co/camera/ImagePreviewFragment;Ljava/lang/Byte;)V
    .registers 3

    .line 401
    sget-object v0, Lopenlight/co/camera/view/assistance/AssistController$AssistType;->LOW_LIGHT:Lopenlight/co/camera/view/assistance/AssistController$AssistType;

    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/ImagePreviewFragment;->showAssist(Ljava/lang/Byte;Lopenlight/co/camera/view/assistance/AssistController$AssistType;)V

    return-void
.end method

.method public static synthetic lambda$updateTripodAssist$3(Lopenlight/co/camera/ImagePreviewFragment;Ljava/lang/Byte;)V
    .registers 3

    .line 407
    sget-object v0, Lopenlight/co/camera/view/assistance/AssistController$AssistType;->TRIPOD_DETECT:Lopenlight/co/camera/view/assistance/AssistController$AssistType;

    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/ImagePreviewFragment;->showAssist(Ljava/lang/Byte;Lopenlight/co/camera/view/assistance/AssistController$AssistType;)V

    return-void
.end method

.method private pillarBoxingLayoutPaddingChange(Ljava/lang/String;)V
    .registers 5

    .line 914
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mLayoutPaddingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 915
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0xca6d

    if-eq v1, v2, :cond_10

    goto :goto_1a

    :cond_10
    const-string v1, "4:3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 p1, -0x1

    :goto_1b
    if-eqz p1, :cond_1e

    goto :goto_2b

    .line 917
    :cond_1e
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v1, 0x7f070135

    invoke-static {p1, v1}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 924
    :goto_2b
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mLayoutPaddingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private registerTestListener()V
    .registers 3

    .line 861
    invoke-static {}, Lopenlight/co/camera/testintent/TestIntentManager;->get()Lopenlight/co/camera/testintent/TestIntentManager;

    move-result-object v0

    .line 862
    invoke-virtual {v0}, Lopenlight/co/camera/testintent/TestIntentManager;->isTestEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 863
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mTestIntentListener:Lopenlight/co/camera/testintent/TestIntentListener;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/testintent/TestIntentManager;->registerListener(Lopenlight/co/camera/testintent/TestIntentListener;)V

    :cond_f
    return-void
.end method

.method private registerTestReceiver()V
    .registers 3

    .line 848
    invoke-static {}, Lopenlight/co/camera/testintent/TestIntentManager;->get()Lopenlight/co/camera/testintent/TestIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/testintent/TestIntentManager;->isTestEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 849
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "openlight.co.intent.CITEST_INTENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mTestIntentReceiver:Lopenlight/co/camera/testintent/TestIntentReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1a
    return-void
.end method

.method private removeBurstView()V
    .registers 3

    .line 983
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mBurstView:Lopenlight/co/camera/view/burst/BurstView;

    if-eqz v0, :cond_1b

    .line 984
    sget-object v0, Lopenlight/co/camera/ImagePreviewFragment;->TAG:Ljava/lang/String;

    const-string v1, "Closing BurstView"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mBurstView:Lopenlight/co/camera/view/burst/BurstView;

    invoke-virtual {v0}, Lopenlight/co/camera/view/burst/BurstView;->closeAll()V

    const/4 v0, 0x0

    .line 986
    iput-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mBurstView:Lopenlight/co/camera/view/burst/BurstView;

    const/4 v0, 0x1

    .line 987
    iput v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mBurstCount:I

    .line 989
    iput-boolean v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mIsPrimaryControlEnabled:Z

    .line 990
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->addTouchAndOrientationListener()V

    :cond_1b
    return-void
.end method

.method private declared-synchronized removeCaptureAnimListenerAndUpdateControls()V
    .registers 2

    monitor-enter p0

    .line 966
    :try_start_1
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCaptureAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 968
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCaptureAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 970
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mSoundManager:Lopenlight/co/camera/utils/SoundManager;

    invoke-virtual {v0}, Lopenlight/co/camera/utils/SoundManager;->playCaptureEnd()V

    const/16 v0, 0x8

    .line 972
    invoke-virtual {p0, v0}, Lopenlight/co/camera/ImagePreviewFragment;->onUpdateCaptureImageVisiblity(I)V

    const/4 v0, 0x1

    .line 974
    iput-boolean v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mIsPrimaryControlEnabled:Z

    .line 975
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->updatePrimaryControl()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 977
    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    .line 965
    monitor-exit p0

    throw v0
.end method

.method private removeCaptureAnimMessage()V
    .registers 3

    .line 950
    invoke-direct {p0}, Lopenlight/co/camera/ImagePreviewFragment;->removeCaptureAnimListenerAndUpdateControls()V

    .line 951
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 952
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 953
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private removeHudMessage()V
    .registers 2

    const/4 v0, 0x0

    .line 1125
    iput-boolean v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCanUpdateHud:Z

    .line 1126
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private resetTimer()V
    .registers 2

    .line 894
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPicTimer:Lopenlight/co/camera/view/timer/PictureTimer;

    if-eqz v0, :cond_11

    .line 895
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPicTimer:Lopenlight/co/camera/view/timer/PictureTimer;

    invoke-virtual {v0}, Lopenlight/co/camera/view/timer/PictureTimer;->endTimer()V

    .line 896
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPicTimer:Lopenlight/co/camera/view/timer/PictureTimer;

    invoke-virtual {v0}, Lopenlight/co/camera/view/timer/PictureTimer;->closeAll()V

    const/4 v0, 0x0

    .line 897
    iput-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPicTimer:Lopenlight/co/camera/view/timer/PictureTimer;

    :cond_11
    return-void
.end method

.method private setHistogramEnabled(Z)V
    .registers 5

    .line 907
    sget-object v0, Lopenlight/co/camera/ImagePreviewFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HistogramView::enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    iput-boolean p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mIsDisplayHistogram:Z

    .line 909
    iput-boolean p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mAcceptStart:Z

    .line 910
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mHistogram:Lopenlight/co/lib/view/HistogramView;

    if-eqz p1, :cond_20

    const/4 p1, 0x0

    goto :goto_22

    :cond_20
    const/16 p1, 0x8

    :goto_22
    invoke-virtual {p0, p1}, Lopenlight/co/lib/view/HistogramView;->setVisibility(I)V

    return-void
.end method

.method private showAssist(Ljava/lang/Byte;Lopenlight/co/camera/view/assistance/AssistController$AssistType;)V
    .registers 5

    .line 1189
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    invoke-virtual {v0}, Lopenlight/co/camera/view/ftu/FtuHelper;->isFtuPlaying()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mAssistController:Lopenlight/co/camera/view/assistance/AssistController;

    if-eqz v0, :cond_36

    .line 1191
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/CameraMode;->isAuto()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_25

    .line 1192
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mAssistController:Lopenlight/co/camera/view/assistance/AssistController;

    invoke-virtual {p0, v1, p2}, Lopenlight/co/camera/view/assistance/AssistController;->show(ZLopenlight/co/camera/view/assistance/AssistController$AssistType;)V

    return-void

    :cond_25
    if-nez p1, :cond_28

    return-void

    .line 1199
    :cond_28
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    .line 1201
    :goto_31
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mAssistController:Lopenlight/co/camera/view/assistance/AssistController;

    invoke-virtual {p0, v0, p2}, Lopenlight/co/camera/view/assistance/AssistController;->show(ZLopenlight/co/camera/view/assistance/AssistController$AssistType;)V

    :cond_36
    return-void
.end method

.method private showFocusFailedFtu()V
    .registers 4

    .line 1171
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    if-eqz v0, :cond_12

    .line 1172
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    iget-object v1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mFtuContainer:Landroid/view/ViewGroup;

    sget-object v2, Lopenlight/co/camera/enums/FtuView;->FOCUS_FAILED:Lopenlight/co/camera/enums/FtuView;

    invoke-virtual {v0, v1, v2}, Lopenlight/co/camera/view/ftu/FtuHelper;->showFtuAlert(Landroid/view/ViewGroup;Lopenlight/co/camera/enums/FtuView;)V

    .line 1173
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/ftu/FtuHelper;->setFtuHelperListener(Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;)V

    :cond_12
    return-void
.end method

.method private showFtu()V
    .registers 8

    .line 1154
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    if-eqz v0, :cond_17

    .line 1155
    iget-object v1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    iget-object v2, p0, Lopenlight/co/camera/ImagePreviewFragment;->mFtuContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    iget-object v4, p0, Lopenlight/co/camera/ImagePreviewFragment;->mFtuDimmer:Landroid/view/View;

    iget-object v5, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    sget-object v6, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;->PLAY_ALL:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    invoke-virtual/range {v1 .. v6}, Lopenlight/co/camera/view/ftu/FtuHelper;->showImageFtu(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Lopenlight/co/camera/enums/FtuView;Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;)V

    .line 1157
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/ftu/FtuHelper;->setFtuHelperListener(Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;)V

    :cond_17
    return-void
.end method

.method private unregisterTestListener()V
    .registers 2

    .line 868
    invoke-static {}, Lopenlight/co/camera/testintent/TestIntentManager;->get()Lopenlight/co/camera/testintent/TestIntentManager;

    move-result-object v0

    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mTestIntentListener:Lopenlight/co/camera/testintent/TestIntentListener;

    invoke-interface {p0}, Lopenlight/co/camera/testintent/TestIntentListener;->getListenerName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lopenlight/co/camera/testintent/TestIntentManager;->unregisterListener(Ljava/lang/String;)V

    return-void
.end method

.method private unregisterTestReceiver()V
    .registers 2

    .line 855
    invoke-static {}, Lopenlight/co/camera/testintent/TestIntentManager;->get()Lopenlight/co/camera/testintent/TestIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/testintent/TestIntentManager;->isTestEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 856
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mTestIntentReceiver:Lopenlight/co/camera/testintent/TestIntentReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_13
    return-void
.end method

.method private updateHud(IJZ)V
    .registers 7

    .line 1094
    iget-boolean v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCanUpdateHud:Z

    if-eqz v0, :cond_38

    iget v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCurrentIso:I

    if-ne v0, p1, :cond_e

    iget-wide v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCurrentShutterSpeed:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_38

    .line 1095
    :cond_e
    iput-wide p2, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCurrentShutterSpeed:J

    .line 1096
    iput p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCurrentIso:I

    if-eqz p4, :cond_17

    const-wide/16 p1, 0x0

    goto :goto_2e

    .line 1101
    :cond_17
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {p1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/CameraMode;->isAuto()Z

    move-result p1

    if-eqz p1, :cond_2c

    const-wide/16 p1, 0x1f4

    goto :goto_2e

    :cond_2c
    const-wide/16 p1, 0x12c

    .line 1103
    :goto_2e
    iget-object p3, p0, Lopenlight/co/camera/ImagePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/16 p4, 0x66

    invoke-virtual {p3, p4, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p1, 0x0

    .line 1105
    iput-boolean p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCanUpdateHud:Z

    :cond_38
    return-void
.end method

.method private updateIsoShutterValueInPreference(IJ)V
    .registers 6

    .line 1116
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "iso_index"

    invoke-static {p1}, Lopenlight/co/camera/utils/Util;->getCurrentIso(I)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;I)V

    .line 1117
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string p1, "shutter_index"

    .line 1118
    invoke-static {p2, p3}, Lopenlight/co/camera/utils/Util;->shutterSpeedIndex(J)I

    move-result p2

    .line 1117
    invoke-interface {p0, p1, p2}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;I)V

    return-void
.end method

.method private updateRemainingImageCount()V
    .registers 2

    .line 1133
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-eqz v0, :cond_9

    .line 1134
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->updateRemainingImageCount()V

    :cond_9
    return-void
.end method


# virtual methods
.method protected addPrimaryControl()V
    .registers 4

    .line 569
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 571
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-nez v0, :cond_1c

    .line 572
    new-instance v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lopenlight/co/camera/ImagePreviewFragment;->mRootContainer:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, p0, v2}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;-><init>(Landroid/content/Context;Lopenlight/co/camera/ImagePreviewFragment;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    .line 573
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addViewToFragment()V

    .line 577
    :cond_1c
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    iget-object v1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mHistogram:Lopenlight/co/lib/view/HistogramView;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->setHistogramView(Lopenlight/co/lib/view/HistogramView;)V

    .line 578
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->setCaptureListener(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$CaptureListener;)V

    .line 579
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->setUpdatePreference(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$UpdatePreferenceListener;)V

    .line 580
    invoke-direct {p0}, Lopenlight/co/camera/ImagePreviewFragment;->updateRemainingImageCount()V

    const/4 v0, 0x1

    .line 581
    iput-boolean v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCanUpdateHud:Z

    .line 583
    invoke-super {p0}, Lopenlight/co/camera/BasePreviewFragment;->addPrimaryControl()V

    :cond_36
    return-void
.end method

.method public captureStillPicture()V
    .registers 3

    .line 249
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->SOFT_BUTTON_PRESS:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/utils/TimingLoggerUtil;->captureTiming(Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;)V

    .line 250
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {p0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->captureStart()V

    return-void
.end method

.method protected clear()V
    .registers 3

    .line 544
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    sget-object v1, Lopenlight/co/camera/managers/CameraManager$State;->CLOSING:Lopenlight/co/camera/managers/CameraManager$State;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/managers/CameraManager;->setCurrentCameraState(Lopenlight/co/camera/managers/CameraManager$State;)V

    .line 546
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 547
    invoke-direct {p0}, Lopenlight/co/camera/ImagePreviewFragment;->removeHudMessage()V

    .line 548
    invoke-direct {p0}, Lopenlight/co/camera/ImagePreviewFragment;->cleanFailedTimerCapture()V

    .line 549
    invoke-direct {p0}, Lopenlight/co/camera/ImagePreviewFragment;->removeCaptureAnimMessage()V

    .line 550
    invoke-direct {p0}, Lopenlight/co/camera/ImagePreviewFragment;->removeBurstView()V

    .line 552
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCaptureManager:Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/capture/CaptureManager;->resetRequestCounterForCapture()V

    .line 553
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCaptureManager:Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/managers/capture/CaptureManager;->setUiUpdateListener(Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;)V

    .line 554
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/ImageReaderManager;->setOnImageStatusListener(Lopenlight/co/camera/ImageReaderManager$OnImageStatusListener;)V

    .line 555
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mAssistController:Lopenlight/co/camera/view/assistance/AssistController;

    invoke-virtual {v0}, Lopenlight/co/camera/view/assistance/AssistController;->clear()V

    .line 557
    invoke-direct {p0}, Lopenlight/co/camera/ImagePreviewFragment;->unregisterTestListener()V

    .line 558
    invoke-direct {p0}, Lopenlight/co/camera/ImagePreviewFragment;->unregisterTestReceiver()V

    .line 559
    invoke-direct {p0}, Lopenlight/co/camera/ImagePreviewFragment;->closeFtu()V

    .line 562
    invoke-super {p0}, Lopenlight/co/camera/BasePreviewFragment;->clear()V

    return-void
.end method

.method public disableControls()V
    .registers 2

    const/4 v0, 0x0

    .line 387
    iput-boolean v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mIsPrimaryControlEnabled:Z

    .line 388
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->updatePrimaryControl()V

    return-void
.end method

.method public enableControls()V
    .registers 2

    const/4 v0, 0x1

    .line 377
    iput-boolean v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mIsPrimaryControlEnabled:Z

    .line 378
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-eqz v0, :cond_f

    .line 379
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->checkChangesFromToolbar()V

    .line 380
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->updatePrimaryControl()V

    :cond_f
    return-void
.end method

.method public focusFailedUpdateUi()V
    .registers 3

    .line 536
    invoke-super {p0}, Lopenlight/co/camera/BasePreviewFragment;->focusFailedUpdateUi()V

    .line 537
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$9b0MMcngQrvrCl3Qx1pJ036MgSc;

    invoke-direct {v1, p0}, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$9b0MMcngQrvrCl3Qx1pJ036MgSc;-><init>(Lopenlight/co/camera/ImagePreviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ftuRemovePrimaryControl()V
    .registers 2

    .line 485
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-eqz v0, :cond_a

    .line 486
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->manageControlViews(ZZ)V

    :cond_a
    return-void
.end method

.method public ftuRemoveZoomView()V
    .registers 1

    .line 477
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->removeZoomWheelView()V

    return-void
.end method

.method public ftuResetZoomOnComplete()V
    .registers 3

    .line 522
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->resetZoomAtStart()V

    .line 523
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->calculateZoomLevelFromPreference()V

    .line 524
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    iget-object v1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mZoomWheel:Lopenlight/co/camera/view/zoom/ZoomWheel;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/managers/zoom/ZoomManager;->performZoom(Lopenlight/co/camera/view/zoom/ZoomWheel;)V

    .line 525
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->doFocusPostZoom()V

    return-void
.end method

.method public ftuShowZoomView()V
    .registers 2

    .line 469
    sget-object v0, Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;->DISPLAY:Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;

    invoke-virtual {p0, v0}, Lopenlight/co/camera/ImagePreviewFragment;->showZoomWheelView(Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;)V

    return-void
.end method

.method public ftuUpdateCurrentView(Lopenlight/co/camera/enums/FtuView;)V
    .registers 4

    .line 530
    iput-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    .line 531
    sget-object p1, Lopenlight/co/camera/ImagePreviewFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current FTUView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ftuUpdatePrimaryControl()V
    .registers 3

    .line 495
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-nez v0, :cond_7

    .line 496
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->addPrimaryControl()V

    .line 498
    :cond_7
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->updateControlsForWheelFtu(Z)V

    .line 499
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->setVisibility(Z)V

    return-void
.end method

.method public ftuUpdatePrimaryControlOnComplete()V
    .registers 4

    .line 507
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-eqz v0, :cond_1c

    .line 508
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    iget-boolean v1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mIsPrimaryControlEnabled:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->manageControlViews(ZZ)V

    .line 509
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->updateDraggerModelHelper()V

    .line 510
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->updatePreviewPostFtuReset()V

    .line 511
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {p0, v2}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->updateControlsForWheelFtu(Z)V

    goto :goto_1f

    .line 513
    :cond_1c
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->addPrimaryControl()V

    :goto_1f
    return-void
.end method

.method public getListenerName()Ljava/lang/String;
    .registers 1

    .line 244
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getSizeForConfigureTransform(IIZLandroid/graphics/Point;)Landroid/util/Size;
    .registers 14

    .line 612
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v0}, Lopenlight/co/camera/CameraInfo;->getLargestJpegOutputSize()Landroid/util/Size;

    move-result-object v0

    .line 613
    iget-object v1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string v2, "aspect_ratio_setting"

    invoke-interface {v1, v2}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 615
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0xbf28

    const/4 v4, 0x0

    if-eq v2, v3, :cond_37

    const v3, 0xca6d

    if-eq v2, v3, :cond_2d

    const v3, 0x171824

    if-eq v2, v3, :cond_23

    goto :goto_41

    :cond_23
    const-string v2, "16:9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    move v1, v4

    goto :goto_42

    :cond_2d
    const-string v2, "4:3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x1

    goto :goto_42

    :cond_37
    const-string v2, "1:1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x2

    goto :goto_42

    :cond_41
    :goto_41
    const/4 v1, -0x1

    :goto_42
    packed-switch v1, :pswitch_data_a2

    :goto_45
    move-object v8, v0

    goto :goto_6a

    .line 621
    :pswitch_47
    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    const-string v1, "4:3"

    .line 622
    invoke-direct {p0, v1}, Lopenlight/co/camera/ImagePreviewFragment;->pillarBoxingLayoutPaddingChange(Ljava/lang/String;)V

    .line 623
    iget-object v1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mLayoutPaddingFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_45

    .line 617
    :pswitch_59
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x10

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 618
    iget-object v1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mLayoutPaddingFrame:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_45

    :goto_6a
    const/16 v0, 0x438

    const/16 v1, 0x780

    if-eqz p3, :cond_81

    .line 641
    iget p3, p4, Landroid/graphics/Point;->y:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 642
    iget p4, p4, Landroid/graphics/Point;->x:I

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    move v5, p1

    move v4, p2

    :goto_7e
    move v6, p3

    move v7, p4

    goto :goto_90

    .line 646
    :cond_81
    iget p3, p4, Landroid/graphics/Point;->x:I

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 647
    iget p4, p4, Landroid/graphics/Point;->y:I

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    move v4, p1

    move v5, p2

    goto :goto_7e

    .line 651
    :goto_90
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    .line 652
    invoke-virtual {p0}, Lopenlight/co/camera/CameraInfo;->getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    const-class p1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v3

    .line 651
    invoke-static/range {v3 .. v8}, Lopenlight/co/camera/ImagePreviewFragment;->chooseOptimalSize([Landroid/util/Size;IIIILandroid/util/Size;)Landroid/util/Size;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_59
        :pswitch_47
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1    # Landroid/os/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 749
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xca

    const/4 v1, 0x1

    if-eq p1, v0, :cond_be

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_ca

    goto/16 :goto_c9

    .line 817
    :pswitch_d
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->onDelayedResume()V

    goto/16 :goto_c9

    .line 794
    :pswitch_12
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCaptureImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 795
    iput-boolean v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mIsPrimaryControlEnabled:Z

    .line 796
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->updatePrimaryControl()V

    .line 797
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCaptureAnim:Landroid/animation/Animator;

    new-instance v0, Lopenlight/co/camera/ImagePreviewFragment$3;

    invoke-direct {v0, p0}, Lopenlight/co/camera/ImagePreviewFragment$3;-><init>(Lopenlight/co/camera/ImagePreviewFragment;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 803
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    .line 805
    invoke-interface {p1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/CameraManager;->getCaptureResultPerFrame()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    invoke-static {p1}, Lopenlight/co/camera/utils/Util;->getCaptureAnimationDuration(Landroid/hardware/camera2/CaptureResult;)J

    move-result-wide v0

    .line 806
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCaptureAnim:Landroid/animation/Animator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 807
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCaptureAnim:Landroid/animation/Animator;

    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 809
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCaptureAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto/16 :goto_c9

    .line 783
    :pswitch_4c
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-eqz p1, :cond_59

    .line 784
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    iget-wide v2, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCurrentShutterSpeed:J

    iget v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCurrentIso:I

    invoke-virtual {p1, v2, v3, v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->updateRealTimeHud(JI)V

    .line 791
    :cond_59
    iput-boolean v1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCanUpdateHud:Z

    goto :goto_c9

    .line 775
    :pswitch_5c
    iget p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mBurstCount:I

    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCaptureManager:Lopenlight/co/camera/managers/capture/CaptureManager;

    .line 776
    invoke-virtual {v0}, Lopenlight/co/camera/managers/capture/CaptureManager;->getTotalCaptureForTypes()I

    move-result v0

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_c9

    iget p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mBurstCount:I

    if-le p1, v1, :cond_c9

    .line 777
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mSoundManager:Lopenlight/co/camera/utils/SoundManager;

    invoke-virtual {p1}, Lopenlight/co/camera/utils/SoundManager;->playBurstSingle()V

    .line 778
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/16 p1, 0x65

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_c9

    .line 751
    :pswitch_7a
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mBurstView:Lopenlight/co/camera/view/burst/BurstView;

    if-nez p1, :cond_8f

    .line 752
    new-instance p1, Lopenlight/co/camera/view/burst/BurstView;

    iget-object v2, p0, Lopenlight/co/camera/ImagePreviewFragment;->mRootContainer:Landroid/view/ViewGroup;

    invoke-direct {p1, v2}, Lopenlight/co/camera/view/burst/BurstView;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mBurstView:Lopenlight/co/camera/view/burst/BurstView;

    .line 753
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mBurstView:Lopenlight/co/camera/view/burst/BurstView;

    invoke-virtual {p1}, Lopenlight/co/camera/view/burst/BurstView;->addViewToFragment()V

    .line 754
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->removeTouchAndOrientationListener()V

    .line 757
    :cond_8f
    invoke-direct {p0}, Lopenlight/co/camera/ImagePreviewFragment;->getBurstAnimationDelay()J

    move-result-wide v2

    .line 758
    iget p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mBurstCount:I

    iget-object v4, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCaptureManager:Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-virtual {v4}, Lopenlight/co/camera/managers/capture/CaptureManager;->getTotalCaptureForTypes()I

    move-result v4

    if-gt p1, v4, :cond_b1

    .line 759
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mBurstView:Lopenlight/co/camera/view/burst/BurstView;

    iget v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mBurstCount:I

    invoke-virtual {p1, v0}, Lopenlight/co/camera/view/burst/BurstView;->updateBurstView(I)V

    .line 760
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 761
    iget p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mBurstCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mBurstCount:I

    goto :goto_c9

    .line 763
    :cond_b1
    iput v1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mBurstCount:I

    .line 764
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mSoundManager:Lopenlight/co/camera/utils/SoundManager;

    invoke-virtual {p1}, Lopenlight/co/camera/utils/SoundManager;->playCaptureEnd()V

    .line 765
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mBurstView:Lopenlight/co/camera/view/burst/BurstView;

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/burst/BurstView;->updateBurstView(I)V

    goto :goto_c9

    .line 812
    :cond_be
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-eqz p1, :cond_c9

    .line 813
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    iget-boolean p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mIsPrimaryControlEnabled:Z

    invoke-virtual {p1, v1, p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->manageControlViews(ZZ)V

    :cond_c9
    :goto_c9
    return-void

    :pswitch_data_ca
    .packed-switch 0x64
        :pswitch_7a
        :pswitch_5c
        :pswitch_4c
        :pswitch_12
        :pswitch_d
    .end packed-switch
.end method

.method protected handleSystemUIChangeListener(Z)V
    .registers 4

    if-eqz p1, :cond_12

    .line 831
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-eqz p1, :cond_e

    .line 833
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    const/4 v0, 0x0

    iget-boolean v1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mIsPrimaryControlEnabled:Z

    invoke-virtual {p1, v0, v1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->manageControlViews(ZZ)V

    .line 837
    :cond_e
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->hideSystemUIAfterADelay()V

    goto :goto_23

    .line 841
    :cond_12
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    if-eqz p1, :cond_23

    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    invoke-virtual {p1}, Lopenlight/co/camera/view/ftu/FtuHelper;->isFtuPlaying()Z

    move-result p1

    if-nez p1, :cond_23

    const-wide/16 v0, 0x15e

    .line 842
    invoke-virtual {p0, v0, v1}, Lopenlight/co/camera/ImagePreviewFragment;->showPrimaryControlWithDelay(J)V

    :cond_23
    :goto_23
    return-void
.end method

.method protected isWithinPreview(Landroid/view/MotionEvent;Z)Z
    .registers 8

    .line 667
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "aspect_ratio_setting"

    .line 668
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "4:3"

    .line 669
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v2, 0x44d20000    # 1680.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_80

    .line 671
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->getZoomLevel()F

    move-result v0

    if-eqz p2, :cond_61

    const/high16 p2, 0x3fa00000    # 1.25f

    cmpg-float p2, v0, p2

    if-gez p2, :cond_61

    .line 673
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    .line 674
    invoke-direct {p0, v3, v0}, Lopenlight/co/camera/ImagePreviewFragment;->getFocusKeepOutArea(ZF)I

    move-result v1

    add-int/lit16 v1, v1, 0xf0

    int-to-float v1, v1

    cmpg-float p2, p2, v1

    if-ltz p2, :cond_5f

    .line 675
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    .line 677
    invoke-direct {p0, v3, v0}, Lopenlight/co/camera/ImagePreviewFragment;->getFocusKeepOutArea(ZF)I

    move-result v1

    add-int/lit16 v1, v1, 0xf0

    rsub-int v1, v1, 0x780

    int-to-float v1, v1

    cmpl-float p2, p2, v1

    if-gtz p2, :cond_5f

    .line 678
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {p0, v4, v0}, Lopenlight/co/camera/ImagePreviewFragment;->getFocusKeepOutArea(ZF)I

    move-result v1

    int-to-float v1, v1

    cmpg-float p2, p2, v1

    if-ltz p2, :cond_5f

    .line 679
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 680
    invoke-direct {p0, v4, v0}, Lopenlight/co/camera/ImagePreviewFragment;->getFocusKeepOutArea(ZF)I

    move-result p0

    rsub-int p0, p0, 0x438

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-gtz p0, :cond_5f

    goto :goto_60

    :cond_5f
    move v3, v4

    :goto_60
    return v3

    .line 682
    :cond_61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    const/high16 p2, 0x43700000    # 240.0f

    cmpg-float p0, p0, p2

    if-ltz p0, :cond_7e

    .line 683
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    cmpl-float p0, p0, v2

    if-gtz p0, :cond_7e

    .line 684
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    const/high16 p1, 0x43020000    # 130.0f

    cmpg-float p0, p0, p1

    if-ltz p0, :cond_7e

    goto :goto_7f

    :cond_7e
    move v3, v4

    :goto_7f
    return v3

    :cond_80
    const-string p0, "1:1"

    .line 686
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_89

    return v4

    :cond_89
    const-string p0, "16:9"

    .line 688
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9c

    .line 689
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    cmpl-float p0, p0, v2

    if-gtz p0, :cond_9a

    goto :goto_9b

    :cond_9a
    move v3, v4

    :goto_9b
    return v3

    :cond_9c
    return v3
.end method

.method public onCaptureComplete()V
    .registers 3

    .line 354
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 357
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->isScreenBasedFocusLocked()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCrossHairView:Lopenlight/co/camera/view/focus/CrossHair;

    if-eqz v0, :cond_1b

    .line 358
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->removeFocusCrossHair()V

    .line 360
    :cond_1b
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->stillCaptureCompleted()V

    return-void
.end method

.method public onCaptureFailure()V
    .registers 1

    .line 366
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->closeAllResourcesAndRestartApp()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    const p0, 0x7f0b0022

    const/4 p3, 0x0

    .line 193
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onDelayedResume()V
    .registers 4

    .line 1208
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->isCameraOpeningOrClosing()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1209
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e0104

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1210
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v0, 0x68

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_65

    .line 1212
    :cond_27
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->addTextureView()V

    .line 1214
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "camera_mode_setting"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1215
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v1

    invoke-static {v0}, Lopenlight/co/camera/CameraMode;->getMode(Ljava/lang/String;)Lopenlight/co/camera/CameraMode;

    move-result-object v0

    invoke-virtual {v1, v0}, Lopenlight/co/camera/managers/CameraManager;->updateCameraMode(Lopenlight/co/camera/CameraMode;)V

    .line 1216
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    invoke-virtual {v0}, Lopenlight/co/camera/view/ftu/FtuHelper;->isFirstTimeUser()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1217
    invoke-direct {p0}, Lopenlight/co/camera/ImagePreviewFragment;->showFtu()V

    goto :goto_4c

    .line 1219
    :cond_49
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->addPrimaryControl()V

    .line 1223
    :goto_4c
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->resetThumbNailPath()V

    const/4 v0, 0x1

    .line 1226
    iput-boolean v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCanUpdateHud:Z

    .line 1228
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/ImageReaderManager;->setOnImageStatusListener(Lopenlight/co/camera/ImageReaderManager$OnImageStatusListener;)V

    .line 1229
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCaptureManager:Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/managers/capture/CaptureManager;->setUiUpdateListener(Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;)V

    .line 1231
    invoke-direct {p0}, Lopenlight/co/camera/ImagePreviewFragment;->registerTestReceiver()V

    .line 1232
    invoke-direct {p0}, Lopenlight/co/camera/ImagePreviewFragment;->registerTestListener()V

    .line 1233
    invoke-super {p0}, Lopenlight/co/camera/BasePreviewFragment;->onDelayedResume()V

    :goto_65
    return-void
.end method

.method public onImageSaved(ILjava/lang/String;I)V
    .registers 5

    .line 286
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    if-eqz p3, :cond_12

    .line 287
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    new-instance v0, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$PGxUGoqSJ52iqEkPYfuimmLHQ08;

    invoke-direct {v0, p0}, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$PGxUGoqSJ52iqEkPYfuimmLHQ08;-><init>(Lopenlight/co/camera/ImagePreviewFragment;)V

    invoke-virtual {p3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_12
    const/16 p3, 0x100

    if-ne p1, p3, :cond_2d

    .line 295
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-eqz p1, :cond_1f

    .line 296
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {p1, p2}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->setThumbnailPath(Ljava/lang/String;)V

    .line 299
    :cond_1f
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    instance-of p1, p1, Lopenlight/co/camera/utils/CameraPreferences;

    if-eqz p1, :cond_43

    .line 300
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    check-cast p0, Lopenlight/co/camera/utils/CameraPreferences;

    invoke-virtual {p0, p2}, Lopenlight/co/camera/utils/CameraPreferences;->addLockedName(Ljava/lang/String;)V

    goto :goto_43

    :cond_2d
    const/16 p2, 0x23

    if-ne p1, p2, :cond_43

    .line 303
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 304
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$TxvjKQ2AiKYVCF8NvNHBPyY95YI;

    invoke-direct {p2, p0}, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$TxvjKQ2AiKYVCF8NvNHBPyY95YI;-><init>(Lopenlight/co/camera/ImagePreviewFragment;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_43
    :goto_43
    return-void
.end method

.method public onPause()V
    .registers 1

    .line 237
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->clear()V

    .line 238
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->releaseTextureView()V

    .line 239
    invoke-super {p0}, Lopenlight/co/camera/BasePreviewFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 229
    invoke-super {p0}, Lopenlight/co/camera/BasePreviewFragment;->onResume()V

    .line 231
    invoke-static {}, Lopenlight/co/camera/managers/image/ImageManager;->get()Lopenlight/co/camera/managers/image/ImageManager;

    move-result-object v0

    invoke-static {v0}, Lopenlight/co/camera/managers/CameraManager;->set(Lopenlight/co/camera/managers/CameraManager;)V

    .line 232
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->onDelayedResume()V

    return-void
.end method

.method public onStartAnimationForBurstCapture()V
    .registers 1

    .line 348
    invoke-direct {p0}, Lopenlight/co/camera/ImagePreviewFragment;->captureBurstStartAnimationAndSound()V

    return-void
.end method

.method public onStartAnimationForSingleCapture()V
    .registers 1

    .line 343
    invoke-direct {p0}, Lopenlight/co/camera/ImagePreviewFragment;->captureStartAnimationAndSound()V

    return-void
.end method

.method public onStartTimerForCapture(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    .line 320
    iput-boolean v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mIsPrimaryControlEnabled:Z

    .line 321
    iget-object v1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-eqz v1, :cond_f

    .line 322
    iget-object v1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {v1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->closeAncillaryToolbar()V

    .line 323
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->updatePrimaryControl()V

    .line 327
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 328
    new-instance v0, Lopenlight/co/camera/view/timer/PictureTimer;

    .line 329
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lopenlight/co/camera/ImagePreviewFragment;->mRootContainer:Landroid/view/ViewGroup;

    .line 330
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    .line 329
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lopenlight/co/camera/view/timer/PictureTimer;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;J)V

    iput-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPicTimer:Lopenlight/co/camera/view/timer/PictureTimer;

    .line 331
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPicTimer:Lopenlight/co/camera/view/timer/PictureTimer;

    invoke-virtual {p1}, Lopenlight/co/camera/view/timer/PictureTimer;->addViewToFragment()V

    .line 332
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPicTimer:Lopenlight/co/camera/view/timer/PictureTimer;

    invoke-virtual {p1, p0}, Lopenlight/co/camera/view/timer/PictureTimer;->setOnTimerEventListener(Lopenlight/co/camera/view/timer/PictureTimer$OnTimerEventListener;)V

    .line 333
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPicTimer:Lopenlight/co/camera/view/timer/PictureTimer;

    invoke-virtual {p0}, Lopenlight/co/camera/view/timer/PictureTimer;->startTimer()V

    return-void
.end method

.method public onTickListener()V
    .registers 1

    .line 264
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mSoundManager:Lopenlight/co/camera/utils/SoundManager;

    invoke-virtual {p0}, Lopenlight/co/camera/utils/SoundManager;->playCountDownTimer()V

    return-void
.end method

.method public onTimerComplete()V
    .registers 2

    .line 256
    invoke-direct {p0}, Lopenlight/co/camera/ImagePreviewFragment;->resetTimer()V

    .line 257
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCaptureManager:Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/capture/CaptureManager;->takePictureOnTimerComplete()V

    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mIsPrimaryControlEnabled:Z

    .line 259
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->updatePrimaryControl()V

    return-void
.end method

.method public onUpdateCaptureImageVisiblity(I)V
    .registers 2

    .line 338
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCaptureImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onUpdateUiForCapture()V
    .registers 3

    .line 312
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-eqz v0, :cond_f

    .line 313
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->setNeedAnimationAfterCapture(Z)V

    .line 314
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->hideWheelWhileCapture()V

    :cond_f
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    .line 198
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lopenlight/co/camera/ImagePreviewFragment;->mRootContainer:Landroid/view/ViewGroup;

    const p2, 0x7f090166

    .line 199
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lopenlight/co/camera/ImagePreviewFragment;->mTextureLayout:Landroid/widget/FrameLayout;

    const p2, 0x7f0900e1

    .line 201
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lopenlight/co/camera/ImagePreviewFragment;->mLayoutPaddingFrame:Landroid/widget/FrameLayout;

    const p2, 0x7f090056

    .line 202
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lopenlight/co/camera/view/focus/CrossHair;

    iput-object p2, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCrossHairView:Lopenlight/co/camera/view/focus/CrossHair;

    .line 204
    iget-object p2, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCrossHairView:Lopenlight/co/camera/view/focus/CrossHair;

    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070135

    invoke-static {v0, v1}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Lopenlight/co/camera/view/focus/CrossHair;->setLeft(I)V

    const p2, 0x7f0901a1

    .line 207
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lopenlight/co/camera/view/zoom/ZoomWheel;

    iput-object p2, p0, Lopenlight/co/camera/ImagePreviewFragment;->mZoomWheel:Lopenlight/co/camera/view/zoom/ZoomWheel;

    const p2, 0x7f0900b4

    .line 209
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lopenlight/co/lib/view/HistogramView;

    iput-object p2, p0, Lopenlight/co/camera/ImagePreviewFragment;->mHistogram:Lopenlight/co/lib/view/HistogramView;

    .line 210
    iget-object p2, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "histogram_setting"

    invoke-interface {p2, v0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "histogram_on"

    .line 211
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 212
    invoke-direct {p0, p2}, Lopenlight/co/camera/ImagePreviewFragment;->setHistogramEnabled(Z)V

    const p2, 0x7f090042

    .line 214
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCaptureImage:Landroid/widget/ImageView;

    const p2, 0x7f090105

    .line 215
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lopenlight/co/camera/view/alerts/OverlayWarningView;

    iput-object p2, p0, Lopenlight/co/camera/ImagePreviewFragment;->mOverlayWarningView:Lopenlight/co/camera/view/alerts/OverlayWarningView;

    .line 216
    iget-object p2, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCaptureImage:Landroid/widget/ImageView;

    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_a8

    invoke-static {p2, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCaptureAnim:Landroid/animation/Animator;

    const p2, 0x7f090090

    .line 219
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lopenlight/co/camera/ImagePreviewFragment;->mFtuContainer:Landroid/view/ViewGroup;

    const p2, 0x7f090091

    .line 220
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/ImagePreviewFragment;->mFtuDimmer:Landroid/view/View;

    const p2, 0x7f0900fa

    .line 223
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 224
    new-instance p2, Lopenlight/co/camera/view/assistance/AssistController;

    invoke-direct {p2, p1}, Lopenlight/co/camera/view/assistance/AssistController;-><init>(Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lopenlight/co/camera/ImagePreviewFragment;->mAssistController:Lopenlight/co/camera/view/assistance/AssistController;

    return-void

    :array_a8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onYuvImageAvailable(Landroid/media/ImageReader;)V
    .registers 4

    .line 269
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 273
    :cond_7
    iget-boolean v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mAcceptStart:Z

    if-nez v0, :cond_f

    .line 274
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void

    :cond_f
    const/4 v0, 0x0

    .line 277
    iput-boolean v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mAcceptStart:Z

    .line 281
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mHistogram:Lopenlight/co/lib/view/HistogramView;

    new-instance v1, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$XQNZZ4zYDXFWlcllbfF0Z1NfRcs;

    invoke-direct {v1, p0}, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$XQNZZ4zYDXFWlcllbfF0Z1NfRcs;-><init>(Lopenlight/co/camera/ImagePreviewFragment;)V

    invoke-virtual {v0, p1, v1}, Lopenlight/co/lib/view/HistogramView;->setImage(Landroid/media/Image;Lopenlight/co/lib/view/HistogramView$OnDrawListener;)V

    return-void
.end method

.method protected processHardKeyCapture(Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)Z
    .registers 5

    .line 704
    sget-object v0, Lopenlight/co/camera/ImagePreviewFragment$4;->$SwitchMap$light$co$camera$listener$HardKeyManager$KeyAction:[I

    invoke-virtual {p1}, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_62

    goto :goto_60

    .line 727
    :pswitch_e
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-eqz p1, :cond_61

    iget-boolean p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mSystemUiVisible:Z

    if-nez p1, :cond_61

    .line 728
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->restoreViewsOnCaptureRequestComplete()V

    goto :goto_61

    .line 706
    :pswitch_1c
    sget-object p1, Lopenlight/co/camera/ImagePreviewFragment$4;->$SwitchMap$light$co$camera$utils$CameraState$StillCaptureMode:[I

    iget-object v2, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraState:Lopenlight/co/camera/utils/CameraState;

    invoke-virtual {v2}, Lopenlight/co/camera/utils/CameraState;->getStillCaptureMode()Lopenlight/co/camera/utils/CameraState$StillCaptureMode;

    move-result-object v2

    invoke-virtual {v2}, Lopenlight/co/camera/utils/CameraState$StillCaptureMode;->ordinal()I

    move-result v2

    aget p1, p1, v2

    packed-switch p1, :pswitch_data_6c

    .line 717
    sget-object p1, Lopenlight/co/camera/ImagePreviewFragment;->TAG:Ljava/lang/String;

    const-string v0, "How did I get here?"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_56

    .line 709
    :pswitch_36
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->HARD_KEY_PRESS_PROCESS:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    invoke-virtual {p1, v1}, Lopenlight/co/camera/utils/TimingLoggerUtil;->captureTiming(Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;)V

    .line 710
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {p1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/camera/managers/CameraManager;

    .line 711
    sget-object v1, Lopenlight/co/camera/ImagePreviewFragment;->TAG:Ljava/lang/String;

    const-string v2, "Let\'s capture - Hard Key Full Press"

    invoke-static {v1, v2}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-virtual {p1}, Lopenlight/co/camera/managers/CameraManager;->captureStart()V

    .line 713
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;

    const-string v1, "event_capture_hard_key_pressed"

    invoke-virtual {p1, v1}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;)V

    .line 720
    :goto_56
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-eqz p1, :cond_61

    .line 721
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->hideViewsOnCaptureRequest()V

    goto :goto_61

    :goto_60
    :pswitch_60
    move v0, v1

    :cond_61
    :goto_61
    return v0

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_e
        :pswitch_60
    .end packed-switch

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_36
        :pswitch_36
    .end packed-switch
.end method

.method public updateAspectRatio(Z)V
    .registers 4

    .line 431
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    if-eqz p1, :cond_5b

    .line 434
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->removeFocusCrossHair()V

    .line 435
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mAutoExposureManager:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->setMeteringPointToCenter()V

    .line 436
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mFocusManager:Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/focus/FocusManager;->setFocusPointToCenter()V

    .line 437
    invoke-direct {p0, v0}, Lopenlight/co/camera/ImagePreviewFragment;->closeCamera(Lopenlight/co/camera/managers/CameraManager;)V

    .line 438
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->stopBackgroundThread()V

    .line 439
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->startBackgroundThread()V

    .line 440
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->openCamera()Z

    .line 441
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    invoke-virtual {p1}, Lopenlight/co/camera/AutoFitTextureView;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_54

    const/4 p1, 0x1

    .line 442
    iput-boolean p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mAspectRatioChange:Z

    .line 443
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "aspect_ratio_setting"

    .line 444
    invoke-interface {p1, v0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "16:9"

    .line 445
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x438

    if-eqz v0, :cond_46

    const/16 p1, 0x780

    .line 446
    invoke-virtual {p0, p1, v1}, Lopenlight/co/camera/ImagePreviewFragment;->configureTransform(II)V

    goto :goto_5b

    :cond_46
    const-string v0, "4:3"

    .line 447
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5b

    const/16 p1, 0x5a0

    .line 448
    invoke-virtual {p0, p1, v1}, Lopenlight/co/camera/ImagePreviewFragment;->configureTransform(II)V

    goto :goto_5b

    .line 451
    :cond_54
    iget-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p1, p0}, Lopenlight/co/camera/AutoFitTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_5b
    :goto_5b
    return-void
.end method

.method public updateHandshakeAssist(Z)V
    .registers 4

    .line 412
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$SCI7yWbH5Lp2rOdeGh9qeRlaLI8;

    invoke-direct {v1, p0, p1}, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$SCI7yWbH5Lp2rOdeGh9qeRlaLI8;-><init>(Lopenlight/co/camera/ImagePreviewFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateHistogram()V
    .registers 3

    .line 418
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    iget-boolean v1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mIsDisplayHistogram:Z

    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    .line 419
    invoke-interface {p0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    .line 418
    invoke-virtual {v0, v1, p0}, Lopenlight/co/camera/ImageReaderManager;->setYuvListenerForHistogram(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public updateHudInfo(IJZ)V
    .registers 7

    if-lez p1, :cond_b

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_b

    .line 394
    invoke-direct {p0, p1, p2, p3, p4}, Lopenlight/co/camera/ImagePreviewFragment;->updateHud(IJZ)V

    :cond_b
    return-void
.end method

.method public updateLowLightAssist(Ljava/lang/Byte;)V
    .registers 4

    .line 400
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$mGqQ6_oFciXqd2oIEziXqgo_1fA;

    invoke-direct {v1, p0, p1}, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$mGqQ6_oFciXqd2oIEziXqgo_1fA;-><init>(Lopenlight/co/camera/ImagePreviewFragment;Ljava/lang/Byte;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateModeChange()V
    .registers 2

    const/4 v0, 0x1

    .line 425
    iput-boolean v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCanUpdateHud:Z

    .line 426
    invoke-super {p0}, Lopenlight/co/camera/BasePreviewFragment;->updateModeChange()V

    return-void
.end method

.method public updatePreference()V
    .registers 4

    .line 461
    iget v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCurrentIso:I

    iget-wide v1, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCurrentShutterSpeed:J

    invoke-direct {p0, v0, v1, v2}, Lopenlight/co/camera/ImagePreviewFragment;->updateIsoShutterValueInPreference(IJ)V

    return-void
.end method

.method protected updateRotateHistogramView(Lopenlight/co/camera/enums/OrientationConfig;)V
    .registers 6

    .line 589
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mHistogram:Lopenlight/co/lib/view/HistogramView;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mHistogram:Lopenlight/co/lib/view/HistogramView;

    invoke-virtual {v0}, Lopenlight/co/lib/view/HistogramView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 590
    invoke-virtual {p1}, Lopenlight/co/camera/enums/OrientationConfig;->getViewRotationAngle()I

    move-result v0

    .line 591
    sget-object v1, Lopenlight/co/camera/ImagePreviewFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateHistogram: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mHistogram:Lopenlight/co/lib/view/HistogramView;

    const/16 p1, 0x64

    invoke-static {p0, v0, p1}, Lopenlight/co/lib/utils/AnimationUtils;->rotateOnOrientationChange(Landroid/view/View;II)V

    :cond_2d
    return-void
.end method

.method public updateTripodAssist(Ljava/lang/Byte;)V
    .registers 4

    .line 406
    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$G_xeveMcur0bFA1wLIuYsXvvuXI;

    invoke-direct {v1, p0, p1}, Lopenlight/co/camera/-$$Lambda$ImagePreviewFragment$G_xeveMcur0bFA1wLIuYsXvvuXI;-><init>(Lopenlight/co/camera/ImagePreviewFragment;Ljava/lang/Byte;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateUiOnCaptureComplete()V
    .registers 1

    .line 371
    invoke-direct {p0}, Lopenlight/co/camera/ImagePreviewFragment;->removeBurstView()V

    .line 372
    invoke-direct {p0}, Lopenlight/co/camera/ImagePreviewFragment;->removeCaptureAnimMessage()V

    return-void
.end method
