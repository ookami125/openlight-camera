.class public Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;
.super Ljava/lang/Object;
.source "SmartAFTriggerMgr.java"

# interfaces
.implements Lopenlight/co/camera/listener/SignificantMotionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;,
        Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;
    }
.end annotation


# static fields
.field private static final FOCUS_TRIGGER_OFFSET:I = 0xfa

.field private static final MAX_ALLOWED_INTER_FRAME_FACE_MOVEMENT:I

.field private static final MAX_FACES_BATCH_COUNT:I = 0x3

.field private static final MINIMUM_FACE_SCORE_FOR_FOCUS_TRIGGER:I

.field private static final MSG_ENABLE_SIGNIFICATION_MOTION_DETECTION:I = 0x2

.field private static final MSG_NO_MORE_FACES_IN_SCENE:I = 0x3

.field private static final MSG_RESUME_FACE_PROCESSING_FOR_FOCUS:I = 0x1

.field private static final NUM_FACES_REQUIRED_FOR_FOCUS_TRIGGER:I = 0x1

.field private static final PAUSE_FACE_PROCESSING_POST_FACE_FOCUS_TRIGGER_TIME:J

.field private static final PAUSE_MOTION_DETECT_POST_USER_TAP_TIME:J

.field private static final TAG:Ljava/lang/String;

.field private static final THRESHOLD_FACE_MOVED_DISTANCE:I

.field private static final THRESHOLD_PERCENT_CHANGE_IN_AREA_AT_MAX_ZOOM:I

.field private static final THRESHOLD_PERCENT_CHANGE_IN_AREA_AT_MIN_ZOOM:I

.field private static final sInstance:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;


# instance fields
.field private volatile mAfdModeEnabled:Z

.field private final mCameraManager:Lopenlight/co/camera/utils/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/camera/utils/Provider<",
            "Lopenlight/co/camera/managers/CameraManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mFaceAreaToZoomSlopeFactor:F

.field private mFacesBatchCount:I

.field private final mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

.field private volatile mLastFocusTriggeredFace:Landroid/hardware/camera2/params/Face;

.field private mLastQualifiedFace:Landroid/hardware/camera2/params/Face;

.field private final mMainLooperHandler:Landroid/os/Handler;

.field private final mMetrics:Lopenlight/co/camera/metrics/Metrics;

.field private volatile mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

.field private mNumberOfFacesSeenPreviously:I

.field private volatile mPauseFaceProcessingPostFaceFocusTrigger:Z

.field private final mSignificantMotionDetector:Lopenlight/co/camera/listener/SignificantMotionDetector;

.field private mSignificantMotionDetectorRegistered:Z

.field private final mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

.field private final mZoomManager:Lopenlight/co/camera/utils/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/camera/utils/Provider<",
            "Lopenlight/co/camera/managers/zoom/ZoomManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 102
    const-class v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->TAG:Ljava/lang/String;

    .line 114
    new-instance v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-direct {v0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;-><init>()V

    sput-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->sInstance:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    .line 146
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v0

    const-string v1, "min.face.score"

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Lopenlight/co/lib/utils/FeatureManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->MINIMUM_FACE_SCORE_FOR_FOCUS_TRIGGER:I

    .line 152
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v0

    const-string v1, "face.area.change.min.zoom"

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Lopenlight/co/lib/utils/FeatureManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->THRESHOLD_PERCENT_CHANGE_IN_AREA_AT_MIN_ZOOM:I

    .line 155
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v0

    const-string v1, "face.area.change.max.zoom"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lopenlight/co/lib/utils/FeatureManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->THRESHOLD_PERCENT_CHANGE_IN_AREA_AT_MAX_ZOOM:I

    .line 159
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v0

    const-string v1, "caf.disabled.post.tap"

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lopenlight/co/lib/utils/FeatureManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->PAUSE_MOTION_DETECT_POST_USER_TAP_TIME:J

    .line 163
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v0

    const-string v1, "pause.face.post.focus"

    const/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2}, Lopenlight/co/lib/utils/FeatureManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->PAUSE_FACE_PROCESSING_POST_FACE_FOCUS_TRIGGER_TIME:J

    .line 176
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v0

    const-string v1, "face.distance"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Lopenlight/co/lib/utils/FeatureManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->THRESHOLD_FACE_MOVED_DISTANCE:I

    .line 182
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v0

    const-string v1, "face.interframe.dist"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lopenlight/co/lib/utils/FeatureManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->MAX_ALLOWED_INTER_FRAME_FACE_MOVEMENT:I

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    sget-object v0, Lopenlight/co/camera/managers/focus/-$$Lambda$VHoBP3n01T-xYwXx8e0ZTKBHfkE;->INSTANCE:Lopenlight/co/camera/managers/focus/-$$Lambda$VHoBP3n01T-xYwXx8e0ZTKBHfkE;

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    .line 186
    sget-object v0, Lopenlight/co/camera/managers/focus/-$$Lambda$mbnAm2WSlqKYgn9TaOdlneQamQA;->INSTANCE:Lopenlight/co/camera/managers/focus/-$$Lambda$mbnAm2WSlqKYgn9TaOdlneQamQA;

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mZoomManager:Lopenlight/co/camera/utils/Provider;

    .line 188
    invoke-static {}, Lopenlight/co/camera/utils/TimingLoggerUtil;->get()Lopenlight/co/camera/utils/TimingLoggerUtil;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

    .line 190
    invoke-static {}, Lopenlight/co/camera/metrics/Metrics;->get()Lopenlight/co/camera/metrics/Metrics;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMetrics:Lopenlight/co/camera/metrics/Metrics;

    .line 192
    invoke-static {}, Lopenlight/co/camera/view/ftu/FtuHelper;->get()Lopenlight/co/camera/view/ftu/FtuHelper;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    .line 195
    invoke-static {}, Lopenlight/co/camera/listener/SignificantMotionDetector;->get()Lopenlight/co/camera/listener/SignificantMotionDetector;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mSignificantMotionDetector:Lopenlight/co/camera/listener/SignificantMotionDetector;

    .line 198
    new-instance v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$1;-><init>(Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;Landroid/os/Looper;)V

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMainLooperHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 220
    iput v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mNumberOfFacesSeenPreviously:I

    .line 230
    iput v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mFacesBatchCount:I

    .line 240
    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->SYSTEM:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    .line 815
    sget v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->THRESHOLD_PERCENT_CHANGE_IN_AREA_AT_MAX_ZOOM:I

    sget v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->THRESHOLD_PERCENT_CHANGE_IN_AREA_AT_MIN_ZOOM:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 818
    invoke-static {}, Lopenlight/co/camera/CameraInfo;->get()Lopenlight/co/camera/CameraInfo;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/camera/CameraInfo;->getMaxToMinZoomRatio()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mFaceAreaToZoomSlopeFactor:F

    return-void
.end method

.method static synthetic access$002(Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;Z)Z
    .registers 2

    .line 100
    iput-boolean p1, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mPauseFaceProcessingPostFaceFocusTrigger:Z

    return p1
.end method

.method static synthetic access$100(Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;)V
    .registers 1

    .line 100
    invoke-direct {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->initSignificantMotionDetector()V

    return-void
.end method

.method static synthetic access$200(Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;)V
    .registers 2

    .line 100
    invoke-direct {p0, p1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->triggerFocusAtCenter(Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;)V

    return-void
.end method

.method private changeInFaceCountBasedFocusTrigger(Landroid/hardware/camera2/params/Face;I)V
    .registers 5

    const/4 v0, 0x1

    if-lt p2, v0, :cond_47

    if-eqz p1, :cond_4f

    .line 658
    iget-object p2, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mLastFocusTriggeredFace:Landroid/hardware/camera2/params/Face;

    if-eqz p2, :cond_2d

    iget-object p2, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mLastFocusTriggeredFace:Landroid/hardware/camera2/params/Face;

    .line 659
    invoke-virtual {p2}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result p2

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v0

    if-eq p2, v0, :cond_16

    goto :goto_2d

    .line 663
    :cond_16
    sget-object p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number of faces changed, but the previous face is still in preview, not triggering focus"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    .line 660
    :cond_2d
    :goto_2d
    sget-object p2, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceDetector: triggering focus with face: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-direct {p0, p1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->triggerFocusWithFace(Landroid/hardware/camera2/params/Face;)V

    goto :goto_4f

    .line 673
    :cond_47
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMainLooperHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    sget-wide v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->PAUSE_FACE_PROCESSING_POST_FACE_FOCUS_TRIGGER_TIME:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4f
    :goto_4f
    return-void
.end method

.method private cleanupLocalState()V
    .registers 3

    .line 284
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMainLooperHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 285
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMainLooperHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 286
    iput v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mNumberOfFacesSeenPreviously:I

    const/4 v1, 0x0

    .line 288
    iput-object v1, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mLastFocusTriggeredFace:Landroid/hardware/camera2/params/Face;

    .line 289
    iput-boolean v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mPauseFaceProcessingPostFaceFocusTrigger:Z

    .line 290
    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->SYSTEM:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    return-void
.end method

.method private faceAreaOrPositionChangeFocusTrigger(Landroid/hardware/camera2/params/Face;)V
    .registers 9

    if-eqz p1, :cond_a2

    .line 609
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mLastFocusTriggeredFace:Landroid/hardware/camera2/params/Face;

    if-nez v0, :cond_9

    .line 610
    iput-object p1, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mLastFocusTriggeredFace:Landroid/hardware/camera2/params/Face;

    return-void

    .line 613
    :cond_9
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 614
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    .line 615
    iget-object v2, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mLastFocusTriggeredFace:Landroid/hardware/camera2/params/Face;

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 617
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    .line 624
    iget v4, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mFaceAreaToZoomSlopeFactor:F

    iget-object v5, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mZoomManager:Lopenlight/co/camera/utils/Provider;

    .line 625
    invoke-interface {v5}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {v5}, Lopenlight/co/camera/managers/zoom/ZoomManager;->getZoomLevel()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    sget v5, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->THRESHOLD_PERCENT_CHANGE_IN_AREA_AT_MIN_ZOOM:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    sub-float/2addr v1, v3

    mul-float/2addr v1, v5

    div-float/2addr v1, v3

    .line 629
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v3, v1, v4

    if-lez v3, :cond_6e

    .line 633
    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change in face area in percent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " Last Focus Triggered Face "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mLastFocusTriggeredFace:Landroid/hardware/camera2/params/Face;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-direct {p0, p1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->triggerFocusWithFace(Landroid/hardware/camera2/params/Face;)V

    goto :goto_a2

    .line 637
    :cond_6e
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    .line 638
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    mul-int/2addr v1, v1

    mul-int/2addr v0, v0

    add-int/2addr v1, v0

    int-to-double v0, v1

    .line 639
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 640
    sget v2, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->THRESHOLD_FACE_MOVED_DISTANCE:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_a2

    .line 641
    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Face moved in preview, last face : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mLastFocusTriggeredFace:Landroid/hardware/camera2/params/Face;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-direct {p0, p1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->triggerFocusWithFace(Landroid/hardware/camera2/params/Face;)V

    :cond_a2
    :goto_a2
    return-void
.end method

.method public static get()Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;
    .registers 1

    .line 251
    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->sInstance:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    return-object v0
.end method

.method private getQualifiedFace(Ljava/util/List;)Landroid/hardware/camera2/params/Face;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;)",
            "Landroid/hardware/camera2/params/Face;"
        }
    .end annotation

    .line 700
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x0

    .line 701
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/Face;

    .line 702
    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result p1

    sget v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->MINIMUM_FACE_SCORE_FOR_FOCUS_TRIGGER:I

    if-lt p1, v0, :cond_16

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method private initSignificantMotionDetector()V
    .registers 3

    .line 733
    iget-boolean v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mAfdModeEnabled:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mSignificantMotionDetectorRegistered:Z

    if-nez v0, :cond_17

    .line 734
    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->TAG:Ljava/lang/String;

    const-string v1, "Enable Motion Detector for focus triggers"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mSignificantMotionDetector:Lopenlight/co/camera/listener/SignificantMotionDetector;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/listener/SignificantMotionDetector;->registerListener(Lopenlight/co/camera/listener/SignificantMotionListener;)V

    const/4 v0, 0x1

    .line 736
    iput-boolean v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mSignificantMotionDetectorRegistered:Z

    :cond_17
    return-void
.end method

.method private isFaceStationary(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 4

    .line 547
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    sget v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->MAX_ALLOWED_INTER_FRAME_FACE_MOVEMENT:I

    if-ge p0, v0, :cond_1c

    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p1

    .line 549
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    sget p1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->MAX_ALLOWED_INTER_FRAME_FACE_MOVEMENT:I

    if-ge p0, p1, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method private releaseSignificantMotionDetector()V
    .registers 3

    .line 741
    iget-boolean v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mSignificantMotionDetectorRegistered:Z

    if-eqz v0, :cond_19

    .line 742
    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->TAG:Ljava/lang/String;

    const-string v1, "Release Motion Detector for focus triggers"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMainLooperHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 744
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mSignificantMotionDetector:Lopenlight/co/camera/listener/SignificantMotionDetector;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/listener/SignificantMotionDetector;->unregisterListener(Lopenlight/co/camera/listener/SignificantMotionListener;)V

    const/4 v0, 0x0

    .line 745
    iput-boolean v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mSignificantMotionDetectorRegistered:Z

    :cond_19
    return-void
.end method

.method private resetTriggerSourceAndEnableAfd()V
    .registers 6

    .line 803
    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->SYSTEM:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    const/4 v0, 0x1

    .line 804
    iput-boolean v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mPauseFaceProcessingPostFaceFocusTrigger:Z

    .line 805
    iget-object v1, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMainLooperHandler:Landroid/os/Handler;

    sget-wide v2, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->PAUSE_MOTION_DETECT_POST_USER_TAP_TIME:J

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 807
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMainLooperHandler:Landroid/os/Handler;

    sget-wide v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->PAUSE_MOTION_DETECT_POST_USER_TAP_TIME:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private triggerFocus(Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;II)V
    .registers 4

    .line 717
    iput-object p1, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    .line 718
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {p0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0, p2, p3}, Lopenlight/co/camera/managers/CameraManager;->triggerAeFocusAtXY(II)V

    return-void
.end method

.method private triggerFocusAtCenter(Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;)V
    .registers 2

    .line 726
    iput-object p1, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    .line 727
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {p0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->triggerAeFocusAtCenter()V

    return-void
.end method

.method private triggerFocusWithFace(Landroid/hardware/camera2/params/Face;)V
    .registers 5

    .line 679
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMainLooperHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 680
    iput-object p1, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mLastFocusTriggeredFace:Landroid/hardware/camera2/params/Face;

    .line 681
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    const/4 v0, 0x1

    .line 684
    iput-boolean v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mPauseFaceProcessingPostFaceFocusTrigger:Z

    .line 685
    iget-object v1, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

    sget-object v2, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->FACE_DETECTED:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {v1, v2}, Lopenlight/co/camera/utils/TimingLoggerUtil;->captureTiming(Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;)V

    .line 686
    sget-object v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->FACE_DETECTION:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    .line 687
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    add-int/lit16 v2, v2, 0xfa

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 688
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 686
    invoke-direct {p0, v1, v2, p1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->triggerFocus(Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;II)V

    .line 689
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMainLooperHandler:Landroid/os/Handler;

    sget-wide v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->PAUSE_FACE_PROCESSING_POST_FACE_FOCUS_TRIGGER_TIME:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public checkAndUpdateAfMode()Z
    .registers 2

    const-string p0, "cam_caf_mode_afd"

    .line 772
    invoke-static {}, Lopenlight/co/camera/utils/CamPrefsUtils;->getCafMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public focusComplete()V
    .registers 3

    .line 424
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    sget-object v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->USER_HW:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    if-ne v0, v1, :cond_9

    .line 425
    invoke-direct {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->resetTriggerSourceAndEnableAfd()V

    :cond_9
    return-void
.end method

.method public focusFailed()V
    .registers 3

    .line 584
    invoke-virtual {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->isAfModeSettingAfd()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    .line 586
    iput-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mLastFocusTriggeredFace:Landroid/hardware/camera2/params/Face;

    const/4 v0, 0x0

    .line 588
    iput-boolean v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mPauseFaceProcessingPostFaceFocusTrigger:Z

    .line 590
    invoke-direct {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->initSignificantMotionDetector()V

    .line 592
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMainLooperHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 593
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMainLooperHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 595
    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->SYSTEM:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    :cond_1f
    return-void
.end method

.method public getCurrentAfMode()Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;
    .registers 1

    .line 793
    invoke-virtual {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->isAfModeSettingAfd()Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;->AFD:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;

    goto :goto_b

    :cond_9
    sget-object p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;->AFS:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$AutoFocusMode;

    :goto_b
    return-object p0
.end method

.method public getFocusTriggerType()I
    .registers 1

    .line 414
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->getFocusTriggerId()I

    move-result p0

    return p0
.end method

.method public getLastFocusTriggeredFace()Landroid/hardware/camera2/params/Face;
    .registers 3

    .line 377
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    sget-object v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->FACE_DETECTION:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    if-ne v0, v1, :cond_9

    iget-object p0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mLastFocusTriggeredFace:Landroid/hardware/camera2/params/Face;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public init()V
    .registers 2

    .line 260
    invoke-virtual {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->checkAndUpdateAfMode()Z

    move-result v0

    iput-boolean v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mAfdModeEnabled:Z

    .line 262
    iget-boolean v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mAfdModeEnabled:Z

    if-eqz v0, :cond_11

    .line 263
    invoke-direct {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->cleanupLocalState()V

    .line 264
    invoke-direct {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->initSignificantMotionDetector()V

    goto :goto_14

    .line 266
    :cond_11
    invoke-direct {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->releaseSignificantMotionDetector()V

    :goto_14
    return-void
.end method

.method public isAfModeSettingAfd()Z
    .registers 1

    .line 780
    iget-boolean p0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mAfdModeEnabled:Z

    return p0
.end method

.method public isFaceBasedTriggerAppropriate()Z
    .registers 3

    .line 307
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    sget-object v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->USER:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    sget-object v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->USER_SCREEN_LOCK:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    if-eq v0, v1, :cond_14

    iget-object p0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->USER_HW_LOCK:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    if-eq p0, v0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public isFocusLocked()Z
    .registers 3

    .line 574
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    sget-object v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->USER_SCREEN_LOCK:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    if-eq v0, v1, :cond_f

    iget-object p0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->USER_HW_LOCK:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public isScreenBasedFocusLocked()Z
    .registers 2

    .line 789
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->USER_SCREEN_LOCK:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public onMotionDetected()V
    .registers 3

    .line 756
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->SIGNIFICANT_MOTION:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/utils/TimingLoggerUtil;->captureTiming(Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;)V

    .line 758
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    invoke-virtual {v0}, Lopenlight/co/camera/view/ftu/FtuHelper;->isFtuPlaying()Z

    move-result v0

    if-nez v0, :cond_17

    .line 759
    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->SIGNIFICATION_MOTION:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    invoke-direct {p0, v0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->triggerFocusAtCenter(Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;)V

    const/4 v0, 0x0

    .line 762
    iput v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mNumberOfFacesSeenPreviously:I

    :cond_17
    return-void
.end method

.method public processFaces(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;)V"
        }
    .end annotation

    .line 455
    iget-boolean v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mAfdModeEnabled:Z

    if-eqz v0, :cond_86

    invoke-virtual {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->isFaceBasedTriggerAppropriate()Z

    move-result v0

    if-eqz v0, :cond_86

    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    invoke-virtual {v0}, Lopenlight/co/camera/view/ftu/FtuHelper;->isFtuPlaying()Z

    move-result v0

    if-nez v0, :cond_86

    .line 457
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_20

    .line 461
    invoke-direct {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->initSignificantMotionDetector()V

    .line 465
    iget-object v1, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mLastFocusTriggeredFace:Landroid/hardware/camera2/params/Face;

    if-nez v1, :cond_23

    return-void

    .line 470
    :cond_20
    invoke-direct {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->releaseSignificantMotionDetector()V

    .line 475
    :cond_23
    iget-boolean v1, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mPauseFaceProcessingPostFaceFocusTrigger:Z

    if-nez v1, :cond_86

    invoke-virtual {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->isFaceBasedTriggerAppropriate()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 477
    invoke-direct {p0, p1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->getQualifiedFace(Ljava/util/List;)Landroid/hardware/camera2/params/Face;

    move-result-object p1

    .line 478
    iget v1, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mNumberOfFacesSeenPreviously:I

    const/4 v2, 0x0

    if-eq v1, v0, :cond_52

    .line 479
    iput v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mNumberOfFacesSeenPreviously:I

    .line 480
    iput v2, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mFacesBatchCount:I

    if-eqz p1, :cond_4c

    .line 486
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mLastFocusTriggeredFace:Landroid/hardware/camera2/params/Face;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mLastFocusTriggeredFace:Landroid/hardware/camera2/params/Face;

    .line 488
    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v1

    if-eq v0, v1, :cond_4f

    :cond_4c
    const/4 v0, 0x0

    .line 490
    iput-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mLastFocusTriggeredFace:Landroid/hardware/camera2/params/Face;

    .line 492
    :cond_4f
    iput-object p1, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mLastQualifiedFace:Landroid/hardware/camera2/params/Face;

    goto :goto_86

    :cond_52
    const/4 v1, 0x1

    if-eqz p1, :cond_68

    .line 495
    iget-object v3, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mLastQualifiedFace:Landroid/hardware/camera2/params/Face;

    if-eqz v3, :cond_68

    .line 496
    iget-object v2, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mLastQualifiedFace:Landroid/hardware/camera2/params/Face;

    .line 497
    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 498
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 496
    invoke-direct {p0, v2, v3}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->isFaceStationary(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    goto :goto_6b

    :cond_68
    if-nez v0, :cond_6b

    move v2, v1

    .line 507
    :cond_6b
    :goto_6b
    iput-object p1, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mLastQualifiedFace:Landroid/hardware/camera2/params/Face;

    if-eqz v2, :cond_86

    .line 510
    iget v2, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mFacesBatchCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mFacesBatchCount:I

    .line 511
    iget v1, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mFacesBatchCount:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7d

    .line 515
    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->changeInFaceCountBasedFocusTrigger(Landroid/hardware/camera2/params/Face;I)V

    goto :goto_86

    .line 517
    :cond_7d
    iget v1, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mFacesBatchCount:I

    if-le v1, v2, :cond_86

    if-lez v0, :cond_86

    .line 523
    invoke-direct {p0, p1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->faceAreaOrPositionChangeFocusTrigger(Landroid/hardware/camera2/params/Face;)V

    :cond_86
    :goto_86
    return-void
.end method

.method public processHardKeyFocus(Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)V
    .registers 5

    .line 385
    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HW key action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$2;->$SwitchMap$light$co$camera$listener$HardKeyManager$KeyAction:[I

    invoke-virtual {p1}, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_4c

    goto :goto_4a

    .line 401
    :pswitch_22
    invoke-direct {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->releaseSignificantMotionDetector()V

    .line 402
    sget-object p1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->USER_HW_LOCK:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    iput-object p1, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    .line 403
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMetrics:Lopenlight/co/camera/metrics/Metrics;

    const-string p1, "event_focus_locked_hw_key"

    invoke-virtual {p0, p1}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;)V

    goto :goto_4a

    .line 395
    :pswitch_31
    iget-object p1, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->USER_HW_LOCK:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    if-ne p1, v0, :cond_4a

    .line 396
    invoke-direct {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->resetTriggerSourceAndEnableAfd()V

    goto :goto_4a

    .line 390
    :pswitch_3b
    sget-object p1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->USER_HW:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    iput-object p1, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    .line 391
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {p0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->triggerAeFocusAtLastPoint()V

    :cond_4a
    :goto_4a
    return-void

    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_31
        :pswitch_22
    .end packed-switch
.end method

.method public processScreenLongPress(FF)V
    .registers 4

    .line 563
    invoke-direct {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->releaseSignificantMotionDetector()V

    .line 564
    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->USER_SCREEN_LOCK:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    .line 565
    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->USER_SCREEN_LOCK:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {p0, v0, p1, p2}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->triggerFocus(Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;II)V

    .line 566
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMetrics:Lopenlight/co/camera/metrics/Metrics;

    const-string p1, "event_focus_locked_hw_key"

    invoke-virtual {p0, p1}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;)V

    return-void
.end method

.method public processSystemTrigger()V
    .registers 3

    .line 316
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->INTERNAL_TRIGGER:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/utils/TimingLoggerUtil;->captureTiming(Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;)V

    .line 317
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->triggerAeFocusFirstTime()V

    .line 318
    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->SYSTEM:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    return-void
.end method

.method public processTest(II)V
    .registers 5

    .line 363
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->TEST:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/utils/TimingLoggerUtil;->captureTiming(Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;)V

    if-nez p1, :cond_11

    if-nez p2, :cond_11

    .line 365
    sget-object p1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->TEST:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    invoke-direct {p0, p1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->triggerFocusAtCenter(Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;)V

    goto :goto_16

    .line 367
    :cond_11
    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->TEST:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    invoke-direct {p0, v0, p1, p2}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->triggerFocus(Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;II)V

    :goto_16
    return-void
.end method

.method public processUserTap(FF)V
    .registers 5

    .line 347
    invoke-direct {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->releaseSignificantMotionDetector()V

    .line 348
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->SOFT_ROI_TAP:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/utils/TimingLoggerUtil;->captureTiming(Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;)V

    .line 350
    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->USER:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {p0, v0, p1, p2}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->triggerFocus(Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;II)V

    .line 352
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMainLooperHandler:Landroid/os/Handler;

    sget-wide p1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->PAUSE_MOTION_DETECT_POST_USER_TAP_TIME:J

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public processZoomTrigger()V
    .registers 3

    .line 328
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mLastFocusTriggeredFace:Landroid/hardware/camera2/params/Face;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    sget-object v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->FACE_DETECTION:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    if-ne v0, v1, :cond_12

    .line 330
    sget-object p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->TAG:Ljava/lang/String;

    const-string v0, "Ignoring focus trigger for this zoom since faces are in the scene, and face detect will trigger focus"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 333
    :cond_12
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->INTERNAL_TRIGGER:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/utils/TimingLoggerUtil;->captureTiming(Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;)V

    .line 334
    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->ZOOM:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    invoke-direct {p0, v0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->triggerFocusAtCenter(Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;)V

    :goto_1e
    return-void
.end method

.method public release()V
    .registers 2

    .line 275
    invoke-virtual {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->updateAndRelease()V

    const/4 v0, 0x0

    .line 276
    iput-boolean v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mAfdModeEnabled:Z

    .line 277
    invoke-direct {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->cleanupLocalState()V

    return-void
.end method

.method public stillCaptureCompleted()V
    .registers 3

    .line 435
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    sget-object v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->USER_SCREEN_LOCK:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    if-eq v0, v1, :cond_16

    .line 438
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    sget-object v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->FACE_DETECTION:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    if-eq v0, v1, :cond_10

    .line 439
    sget-object v0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;->SYSTEM:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    iput-object v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mMostRecentFocusTriggerSource:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr$FocusTriggerSource;

    :cond_10
    const/4 v0, 0x0

    .line 442
    iput-boolean v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mPauseFaceProcessingPostFaceFocusTrigger:Z

    .line 443
    invoke-direct {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->initSignificantMotionDetector()V

    :cond_16
    return-void
.end method

.method public updateAndRelease()V
    .registers 2

    .line 297
    invoke-virtual {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->checkAndUpdateAfMode()Z

    move-result v0

    iput-boolean v0, p0, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->mAfdModeEnabled:Z

    .line 298
    invoke-direct {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->releaseSignificantMotionDetector()V

    return-void
.end method
