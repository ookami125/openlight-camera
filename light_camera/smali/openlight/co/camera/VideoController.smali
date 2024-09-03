.class public Lopenlight/co/camera/VideoController;
.super Ljava/lang/Object;
.source "VideoController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lopenlight/co/camera/managers/video/VideoManager$OnStatusListener;
.implements Lopenlight/co/camera/listener/OrientationListener;
.implements Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/VideoController$OnStatusListener;
    }
.end annotation


# static fields
.field private static final ENABLE_PRIMARY_CONTROL_DELAY_MS:I = 0x3e8

.field private static final MODE_DRAG_SENSITIVITY:F = 0.002f

.field private static final MSG_ENABLE_PRIMARY_CONTROL:I = 0x12d

.field private static final MSG_RECORDING_MAX_DURATION_REACHED:I = 0x12e

.field private static final MSG_UPDATE_RECORD_TIMER:I = 0x12c

.field private static final RECORDING_MAX_DURATION_MS:J

.field private static final TAG:Ljava/lang/String; = "VideoController"

.field private static final TIMER_UPDATE_DELAY_MS:I = 0x3e8

.field private static final TIMER_VIEW_ORIENTATION_ANIMATION_MS:I = 0xa


# instance fields
.field private mAncillaryToolbar:Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;

.field private final mContext:Landroid/content/Context;

.field private mDefaultTypeFace:Landroid/graphics/Typeface;

.field private mDragStart:F

.field private mDraggerModelHelper:Lopenlight/co/camera/models/DraggerModelHelper;

.field private final mFtuContainer:Landroid/view/ViewGroup;

.field private final mFtuDimmer:Landroid/view/View;

.field private final mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

.field private mGridView:Lopenlight/co/camera/view/grid/GridView;

.field private final mHandler:Landroid/os/Handler;

.field private mModeDragLayout:Landroid/view/ViewGroup;

.field private mModeWheel:Lopenlight/co/camera/view/wheel/ModeWheel;

.field private final mOrientationController:Lopenlight/co/camera/view/rotate/OrientationsController;

.field private final mOverlayWarningView:Lopenlight/co/camera/view/alerts/OverlayWarningView;

.field private mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;

.field private mRecordingStartMills:J

.field private final mRootContainer:Landroid/view/ViewGroup;

.field private mStatusListener:Lopenlight/co/camera/VideoController$OnStatusListener;

.field private final mTimerDate:Ljava/util/Date;

.field private final mTimerDateFormat:Ljava/text/SimpleDateFormat;

.field private final mTimerView:Landroid/widget/TextView;

.field private mTouchStart:F

.field private final mVideoManager:Lopenlight/co/camera/managers/video/VideoManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 71
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 72
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v1

    const-string v2, "video.length.max"

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Lopenlight/co/lib/utils/FeatureManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lopenlight/co/camera/VideoController;->RECORDING_MAX_DURATION_MS:J

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 7

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/VideoController;->mOrientationController:Lopenlight/co/camera/view/rotate/OrientationsController;

    .line 80
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lopenlight/co/camera/VideoController;->mTimerDateFormat:Ljava/text/SimpleDateFormat;

    .line 82
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/VideoController;->mTimerDate:Ljava/util/Date;

    .line 83
    invoke-static {}, Lopenlight/co/camera/managers/video/VideoManager;->get()Lopenlight/co/camera/managers/video/VideoManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/VideoController;->mVideoManager:Lopenlight/co/camera/managers/video/VideoManager;

    .line 105
    invoke-static {}, Lopenlight/co/camera/view/ftu/FtuHelper;->get()Lopenlight/co/camera/view/ftu/FtuHelper;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/VideoController;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    .line 109
    new-instance v0, Lopenlight/co/camera/VideoController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lopenlight/co/camera/VideoController$1;-><init>(Lopenlight/co/camera/VideoController;Landroid/os/Looper;)V

    iput-object v0, p0, Lopenlight/co/camera/VideoController;->mHandler:Landroid/os/Handler;

    .line 175
    iput-object p1, p0, Lopenlight/co/camera/VideoController;->mContext:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Lopenlight/co/camera/VideoController;->mRootContainer:Landroid/view/ViewGroup;

    .line 178
    iput-object p3, p0, Lopenlight/co/camera/VideoController;->mFtuContainer:Landroid/view/ViewGroup;

    .line 179
    iput-object p4, p0, Lopenlight/co/camera/VideoController;->mFtuDimmer:Landroid/view/View;

    .line 180
    iget-object p1, p0, Lopenlight/co/camera/VideoController;->mRootContainer:Landroid/view/ViewGroup;

    const p2, 0x7f09016b

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lopenlight/co/camera/VideoController;->mTimerView:Landroid/widget/TextView;

    .line 181
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/view/rotate/OrientationsController;->getConfig()Lopenlight/co/camera/enums/OrientationConfig;

    move-result-object p1

    invoke-direct {p0, p1}, Lopenlight/co/camera/VideoController;->updateTimerViewOrientation(Lopenlight/co/camera/enums/OrientationConfig;)V

    .line 182
    iget-object p1, p0, Lopenlight/co/camera/VideoController;->mRootContainer:Landroid/view/ViewGroup;

    const p2, 0x7f090105

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lopenlight/co/camera/view/alerts/OverlayWarningView;

    iput-object p1, p0, Lopenlight/co/camera/VideoController;->mOverlayWarningView:Lopenlight/co/camera/view/alerts/OverlayWarningView;

    .line 185
    iget-object p0, p0, Lopenlight/co/camera/VideoController;->mTimerDateFormat:Ljava/text/SimpleDateFormat;

    const-string p1, "GMT"

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/camera/VideoController;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lopenlight/co/camera/VideoController;->updateTimerSeconds()V

    return-void
.end method

.method static synthetic access$100(Lopenlight/co/camera/VideoController;)Landroid/os/Handler;
    .registers 1

    .line 56
    iget-object p0, p0, Lopenlight/co/camera/VideoController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lopenlight/co/camera/VideoController;)Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;
    .registers 1

    .line 56
    iget-object p0, p0, Lopenlight/co/camera/VideoController;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;

    return-object p0
.end method

.method static synthetic access$300(Lopenlight/co/camera/VideoController;)Lopenlight/co/camera/managers/video/VideoManager;
    .registers 1

    .line 56
    iget-object p0, p0, Lopenlight/co/camera/VideoController;->mVideoManager:Lopenlight/co/camera/managers/video/VideoManager;

    return-object p0
.end method

.method static synthetic access$400(Lopenlight/co/camera/VideoController;)Landroid/content/Context;
    .registers 1

    .line 56
    iget-object p0, p0, Lopenlight/co/camera/VideoController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500()J
    .registers 2

    .line 56
    sget-wide v0, Lopenlight/co/camera/VideoController;->RECORDING_MAX_DURATION_MS:J

    return-wide v0
.end method

.method private addOrShowAncillaryToolbar()V
    .registers 5

    .line 503
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mAncillaryToolbar:Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;

    if-nez v0, :cond_18

    .line 504
    new-instance v0, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;

    iget-object v1, p0, Lopenlight/co/camera/VideoController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0020

    iget-object v3, p0, Lopenlight/co/camera/VideoController;->mRootContainer:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2, v3}, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V

    iput-object v0, p0, Lopenlight/co/camera/VideoController;->mAncillaryToolbar:Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;

    .line 506
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mAncillaryToolbar:Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1d

    .line 508
    :cond_18
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mAncillaryToolbar:Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;

    invoke-virtual {v0}, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->resetItemsToFirstLevel()V

    :goto_1d
    const/4 v0, 0x1

    .line 510
    invoke-direct {p0, v0}, Lopenlight/co/camera/VideoController;->setAncillaryToolbarVisibility(Z)V

    return-void
.end method

.method private addOrShowGridView()V
    .registers 5

    .line 468
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    const-string v1, "grid_setting"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    iget-object v1, p0, Lopenlight/co/camera/VideoController;->mGridView:Lopenlight/co/camera/view/grid/GridView;

    if-nez v1, :cond_1a

    .line 470
    new-instance v1, Lopenlight/co/camera/view/grid/GridView;

    iget-object v2, p0, Lopenlight/co/camera/VideoController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lopenlight/co/camera/VideoController;->mRootContainer:Landroid/view/ViewGroup;

    invoke-direct {v1, v2, v0, v3}, Lopenlight/co/camera/view/grid/GridView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lopenlight/co/camera/VideoController;->mGridView:Lopenlight/co/camera/view/grid/GridView;

    goto :goto_1f

    .line 472
    :cond_1a
    iget-object v1, p0, Lopenlight/co/camera/VideoController;->mGridView:Lopenlight/co/camera/view/grid/GridView;

    invoke-virtual {v1, v0}, Lopenlight/co/camera/view/grid/GridView;->updateGridType(Ljava/lang/String;)V

    .line 474
    :goto_1f
    iget-object p0, p0, Lopenlight/co/camera/VideoController;->mGridView:Lopenlight/co/camera/view/grid/GridView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/grid/GridView;->setVisibility(I)V

    return-void
.end method

.method private addOrShowModeDragView()V
    .registers 5

    .line 528
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mModeDragLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_24

    .line 529
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mRootContainer:Landroid/view/ViewGroup;

    const v1, 0x7f090068

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lopenlight/co/camera/VideoController;->mModeDragLayout:Landroid/view/ViewGroup;

    .line 531
    invoke-static {}, Lopenlight/co/camera/view/cache/FontCache;->get()Lopenlight/co/camera/view/cache/FontCache;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/view/cache/FontCache;->getHarmoniaRegular()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/VideoController;->mDefaultTypeFace:Landroid/graphics/Typeface;

    .line 532
    new-instance v0, Lopenlight/co/camera/models/DraggerModelHelper;

    iget-object v1, p0, Lopenlight/co/camera/VideoController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lopenlight/co/camera/models/DraggerModelHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lopenlight/co/camera/VideoController;->mDraggerModelHelper:Lopenlight/co/camera/models/DraggerModelHelper;

    .line 534
    :cond_24
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mModeWheel:Lopenlight/co/camera/view/wheel/ModeWheel;

    if-nez v0, :cond_4a

    .line 535
    new-instance v0, Lopenlight/co/camera/view/wheel/ModeWheel;

    iget-object v1, p0, Lopenlight/co/camera/VideoController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lopenlight/co/camera/VideoController;->mDraggerModelHelper:Lopenlight/co/camera/models/DraggerModelHelper;

    iget-object v2, v2, Lopenlight/co/camera/models/DraggerModelHelper;->mModeDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    iget-object v3, p0, Lopenlight/co/camera/VideoController;->mDefaultTypeFace:Landroid/graphics/Typeface;

    invoke-direct {v0, v1, v2, v3}, Lopenlight/co/camera/view/wheel/ModeWheel;-><init>(Landroid/content/Context;Lopenlight/co/camera/view/dragger/DraggerModel;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lopenlight/co/camera/VideoController;->mModeWheel:Lopenlight/co/camera/view/wheel/ModeWheel;

    .line 537
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mModeDragLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lopenlight/co/camera/VideoController;->mModeWheel:Lopenlight/co/camera/view/wheel/ModeWheel;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 538
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mModeDragLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lopenlight/co/camera/VideoController;->mModeWheel:Lopenlight/co/camera/view/wheel/ModeWheel;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 539
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mModeWheel:Lopenlight/co/camera/view/wheel/ModeWheel;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/wheel/ModeWheel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 541
    :cond_4a
    iget-object p0, p0, Lopenlight/co/camera/VideoController;->mModeDragLayout:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private setAncillaryToolbarVisibility(Z)V
    .registers 3

    .line 518
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mAncillaryToolbar:Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;

    if-eqz v0, :cond_9

    .line 519
    iget-object p0, p0, Lopenlight/co/camera/VideoController;->mAncillaryToolbar:Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->setVisibility(Z)V

    :cond_9
    return-void
.end method

.method private setModeDragViewVisibility(I)V
    .registers 3

    .line 549
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mModeDragLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 550
    iget-object p0, p0, Lopenlight/co/camera/VideoController;->mModeDragLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private setModeWheelDragPosition(F)V
    .registers 4

    .line 559
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mModeWheel:Lopenlight/co/camera/view/wheel/ModeWheel;

    iget v1, p0, Lopenlight/co/camera/VideoController;->mDragStart:F

    iget p0, p0, Lopenlight/co/camera/VideoController;->mTouchStart:F

    sub-float/2addr p1, p0

    const p0, 0x3b03126f    # 0.002f

    mul-float/2addr p1, p0

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/wheel/ModeWheel;->updateDragPosition(F)V

    return-void
.end method

.method private setPrimaryControlVisibility(Z)V
    .registers 3

    .line 494
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;

    if-eqz v0, :cond_9

    .line 495
    iget-object p0, p0, Lopenlight/co/camera/VideoController;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->setVisibility(Z)V

    :cond_9
    return-void
.end method

.method private setUpModeWheel()V
    .registers 3

    .line 478
    new-instance v0, Lopenlight/co/camera/models/DraggerModelHelper;

    iget-object v1, p0, Lopenlight/co/camera/VideoController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lopenlight/co/camera/models/DraggerModelHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lopenlight/co/camera/VideoController;->mDraggerModelHelper:Lopenlight/co/camera/models/DraggerModelHelper;

    .line 479
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mDraggerModelHelper:Lopenlight/co/camera/models/DraggerModelHelper;

    iget-object v0, v0, Lopenlight/co/camera/models/DraggerModelHelper;->mModeDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    .line 480
    invoke-virtual {v0}, Lopenlight/co/camera/view/dragger/DraggerModel;->initialPositionFromSubject()F

    move-result v0

    iput v0, p0, Lopenlight/co/camera/VideoController;->mDragStart:F

    return-void
.end method

.method private tearDownModeWheelView()V
    .registers 2

    .line 484
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mModeWheel:Lopenlight/co/camera/view/wheel/ModeWheel;

    if-eqz v0, :cond_9

    .line 485
    iget-object p0, p0, Lopenlight/co/camera/VideoController;->mModeWheel:Lopenlight/co/camera/view/wheel/ModeWheel;

    invoke-virtual {p0}, Lopenlight/co/camera/view/wheel/ModeWheel;->setDragComplete()V

    :cond_9
    return-void
.end method

.method private updateTimerSeconds()V
    .registers 6

    .line 567
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mTimerDate:Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lopenlight/co/camera/VideoController;->mRecordingStartMills:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 568
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mTimerDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lopenlight/co/camera/VideoController;->mTimerDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 569
    iget-object p0, p0, Lopenlight/co/camera/VideoController;->mTimerView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateTimerViewOrientation(Lopenlight/co/camera/enums/OrientationConfig;)V
    .registers 7

    .line 578
    invoke-virtual {p1}, Lopenlight/co/camera/enums/OrientationConfig;->getViewRotationAngle()I

    move-result v0

    .line 579
    iget-object v1, p0, Lopenlight/co/camera/VideoController;->mTimerView:Landroid/widget/TextView;

    .line 580
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 582
    sget-object v2, Lopenlight/co/camera/enums/OrientationConfig;->LANDSCAPE:Lopenlight/co/camera/enums/OrientationConfig;

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq p1, v2, :cond_2f

    sget-object v2, Lopenlight/co/camera/enums/OrientationConfig;->LANDSCAPE_REVERSE:Lopenlight/co/camera/enums/OrientationConfig;

    if-ne p1, v2, :cond_17

    goto :goto_2f

    .line 589
    :cond_17
    iget-object p1, p0, Lopenlight/co/camera/VideoController;->mRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    iput p1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 590
    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 591
    iget-object p1, p0, Lopenlight/co/camera/VideoController;->mContext:Landroid/content/Context;

    const v2, 0x7f070180

    invoke-static {p1, v2}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result p1

    iput p1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 592
    iput v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->rightMargin:I

    goto :goto_46

    .line 584
    :cond_2f
    :goto_2f
    iget-object p1, p0, Lopenlight/co/camera/VideoController;->mRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    iput p1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 585
    iput v4, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 586
    iget-object p1, p0, Lopenlight/co/camera/VideoController;->mContext:Landroid/content/Context;

    const v2, 0x7f070181

    invoke-static {p1, v2}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result p1

    iput p1, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    .line 587
    iput v3, v1, Landroid/support/constraint/ConstraintLayout$LayoutParams;->leftMargin:I

    .line 594
    :goto_46
    iget-object p1, p0, Lopenlight/co/camera/VideoController;->mTimerView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    iget-object p0, p0, Lopenlight/co/camera/VideoController;->mTimerView:Landroid/widget/TextView;

    const/16 p1, 0xa

    invoke-static {p0, v0, p1}, Lopenlight/co/lib/utils/AnimationUtils;->rotateOnOrientationChange(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method addOrShowPrimaryControl()V
    .registers 5

    .line 453
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;

    if-nez v0, :cond_17

    .line 455
    new-instance v0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;

    iget-object v1, p0, Lopenlight/co/camera/VideoController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b006e

    iget-object v3, p0, Lopenlight/co/camera/VideoController;->mRootContainer:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2, v3}, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V

    iput-object v0, p0, Lopenlight/co/camera/VideoController;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;

    .line 457
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    :cond_17
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;

    invoke-virtual {v0}, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->resetThumbnailPath()V

    .line 460
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    invoke-virtual {v0}, Lopenlight/co/camera/view/ftu/FtuHelper;->isFirstTimeVideoUser()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lopenlight/co/camera/VideoController;->setPrimaryControlVisibility(Z)V

    return-void
.end method

.method public clear()V
    .registers 4

    .line 367
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mVideoManager:Lopenlight/co/camera/managers/video/VideoManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lopenlight/co/camera/managers/video/VideoManager;->setStatusListener(Lopenlight/co/camera/managers/video/VideoManager$OnStatusListener;)V

    .line 368
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mOrientationController:Lopenlight/co/camera/view/rotate/OrientationsController;

    invoke-virtual {p0}, Lopenlight/co/camera/VideoController;->getListenerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lopenlight/co/camera/view/rotate/OrientationsController;->unregisterOrientationListenerWithTag(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 370
    invoke-virtual {p0}, Lopenlight/co/camera/VideoController;->hideAllControlViews()V

    return-void
.end method

.method public ftuRemovePrimaryControl()V
    .registers 1

    return-void
.end method

.method public ftuRemoveZoomView()V
    .registers 1

    return-void
.end method

.method public ftuResetZoomOnComplete()V
    .registers 1

    return-void
.end method

.method public ftuShowZoomView()V
    .registers 1

    return-void
.end method

.method public ftuUpdateCurrentView(Lopenlight/co/camera/enums/FtuView;)V
    .registers 2

    return-void
.end method

.method public ftuUpdatePrimaryControl()V
    .registers 2

    .line 152
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;

    if-eqz v0, :cond_a

    .line 153
    iget-object p0, p0, Lopenlight/co/camera/VideoController;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->setVisibility(Z)V

    :cond_a
    return-void
.end method

.method public ftuUpdatePrimaryControlOnComplete()V
    .registers 1

    return-void
.end method

.method public getListenerName()Ljava/lang/String;
    .registers 1

    .line 381
    sget-object p0, Lopenlight/co/camera/VideoController;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method hideAllControlViews()V
    .registers 2

    const/4 v0, 0x0

    .line 443
    invoke-direct {p0, v0}, Lopenlight/co/camera/VideoController;->setPrimaryControlVisibility(Z)V

    .line 444
    invoke-direct {p0, v0}, Lopenlight/co/camera/VideoController;->setAncillaryToolbarVisibility(Z)V

    const/16 v0, 0x8

    .line 445
    invoke-direct {p0, v0}, Lopenlight/co/camera/VideoController;->setModeDragViewVisibility(I)V

    return-void
.end method

.method isAncillaryToolbarVisible()Z
    .registers 2

    .line 411
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mAncillaryToolbar:Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lopenlight/co/camera/VideoController;->mAncillaryToolbar:Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;

    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method isModeWheelVisible()Z
    .registers 2

    .line 407
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mModeDragLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lopenlight/co/camera/VideoController;->mModeDragLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method onCaptureSessionConfigured()V
    .registers 3

    .line 390
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 391
    iget-object p0, p0, Lopenlight/co/camera/VideoController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_f
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090022

    if-eq p1, v0, :cond_1e

    const v0, 0x7f090172

    if-eq p1, v0, :cond_19

    const v0, 0x7f090175

    if-eq p1, v0, :cond_14

    goto :goto_21

    :cond_14
    const/4 p1, 0x0

    .line 197
    invoke-virtual {p0, p1}, Lopenlight/co/camera/VideoController;->updateToolbarsVisibility(Z)V

    goto :goto_21

    :cond_19
    const/4 p1, 0x1

    .line 200
    invoke-virtual {p0, p1}, Lopenlight/co/camera/VideoController;->updateToolbarsVisibility(Z)V

    goto :goto_21

    .line 206
    :cond_1e
    invoke-direct {p0}, Lopenlight/co/camera/VideoController;->addOrShowGridView()V

    :goto_21
    return-void
.end method

.method public onError(Lopenlight/co/camera/managers/video/VideoManager$ErrorType;)V
    .registers 4

    .line 313
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mTimerView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    sget-object v0, Lopenlight/co/camera/VideoController$2;->$SwitchMap$light$co$camera$managers$video$VideoManager$ErrorType:[I

    invoke-virtual {p1}, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_2e

    const p1, 0x7f0e0135

    goto :goto_21

    :pswitch_16
    const p1, 0x7f0e0134

    goto :goto_21

    :pswitch_1a
    const p1, 0x7f0e0136

    goto :goto_21

    :pswitch_1e
    const p1, 0x7f0e00fe

    .line 331
    :goto_21
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mOverlayWarningView:Lopenlight/co/camera/view/alerts/OverlayWarningView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->setContent(II)V

    .line 332
    iget-object p0, p0, Lopenlight/co/camera/VideoController;->mOverlayWarningView:Lopenlight/co/camera/view/alerts/OverlayWarningView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->setVisibility(Z)V

    return-void

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
    .end packed-switch
.end method

.method public onMediaSaveComplete(Ljava/lang/String;)V
    .registers 5

    .line 252
    sget-object v0, Lopenlight/co/camera/VideoController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Media save complete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;

    invoke-virtual {v0, p1}, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->updateThumbnailPath(Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    .line 256
    instance-of v1, v0, Lopenlight/co/camera/utils/CameraPreferences;

    if-eqz v1, :cond_28

    .line 257
    check-cast v0, Lopenlight/co/camera/utils/CameraPreferences;

    invoke-virtual {v0, p1}, Lopenlight/co/camera/utils/CameraPreferences;->addLockedName(Ljava/lang/String;)V

    .line 260
    :cond_28
    iget-object p1, p0, Lopenlight/co/camera/VideoController;->mStatusListener:Lopenlight/co/camera/VideoController$OnStatusListener;

    if-eqz p1, :cond_31

    .line 262
    iget-object p1, p0, Lopenlight/co/camera/VideoController;->mStatusListener:Lopenlight/co/camera/VideoController$OnStatusListener;

    invoke-interface {p1}, Lopenlight/co/camera/VideoController$OnStatusListener;->onMediaSaveComplete()V

    .line 264
    :cond_31
    iget-object p0, p0, Lopenlight/co/camera/VideoController;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x12d

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V
    .registers 3

    .line 375
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;

    invoke-virtual {v0, p1}, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->onOrientationChanged(Lopenlight/co/camera/enums/OrientationConfig;)V

    .line 376
    invoke-direct {p0, p1}, Lopenlight/co/camera/VideoController;->updateTimerViewOrientation(Lopenlight/co/camera/enums/OrientationConfig;)V

    return-void
.end method

.method public onRecordStatusChange(Lopenlight/co/camera/managers/video/VideoManager$State;)V
    .registers 11

    .line 275
    sget-object v0, Lopenlight/co/camera/VideoController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record status change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/video/VideoManager$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 278
    sget-object v1, Lopenlight/co/camera/managers/video/VideoManager$State;->RECORDING:Lopenlight/co/camera/managers/video/VideoManager$State;

    const/4 v2, 0x1

    const/16 v3, 0x80

    const/16 v4, 0x12c

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-ne p1, v1, :cond_59

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lopenlight/co/camera/VideoController;->mRecordingStartMills:J

    .line 280
    iget-object v1, p0, Lopenlight/co/camera/VideoController;->mOverlayWarningView:Lopenlight/co/camera/view/alerts/OverlayWarningView;

    invoke-virtual {v1, v5}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->setVisibility(I)V

    .line 281
    iget-object v1, p0, Lopenlight/co/camera/VideoController;->mTimerView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    iget-object v1, p0, Lopenlight/co/camera/VideoController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x12e

    sget-wide v7, Lopenlight/co/camera/VideoController;->RECORDING_MAX_DURATION_MS:J

    invoke-virtual {v1, v5, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 286
    iget-object v1, p0, Lopenlight/co/camera/VideoController;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v1, v4, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 287
    iget-object v1, p0, Lopenlight/co/camera/VideoController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x12d

    invoke-virtual {v1, v4, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 289
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_7d

    .line 291
    :cond_59
    iget-object v1, p0, Lopenlight/co/camera/VideoController;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;

    invoke-virtual {v1, v2}, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->setThumbnailSpinnerVisibility(Z)V

    .line 293
    iget-object v1, p0, Lopenlight/co/camera/VideoController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v7, 0x0

    .line 294
    iput-wide v7, p0, Lopenlight/co/camera/VideoController;->mRecordingStartMills:J

    .line 295
    iget-object v1, p0, Lopenlight/co/camera/VideoController;->mTimerView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 296
    iget-object v1, p0, Lopenlight/co/camera/VideoController;->mTimerView:Landroid/widget/TextView;

    iget-object v4, p0, Lopenlight/co/camera/VideoController;->mContext:Landroid/content/Context;

    const v5, 0x7f0e0137

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 301
    :goto_7d
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;

    invoke-virtual {v0, v6}, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->enableControls(Z)V

    .line 302
    iget-object p0, p0, Lopenlight/co/camera/VideoController;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;

    sget-object v0, Lopenlight/co/camera/managers/video/VideoManager$State;->RECORDING:Lopenlight/co/camera/managers/video/VideoManager$State;

    if-ne p1, v0, :cond_89

    goto :goto_8a

    :cond_89
    move v2, v6

    :goto_8a
    invoke-virtual {p0, v2}, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->updateRecordControlDrawable(Z)V

    return-void
.end method

.method public onResume()V
    .registers 8

    .line 344
    invoke-virtual {p0}, Lopenlight/co/camera/VideoController;->addOrShowPrimaryControl()V

    .line 345
    invoke-direct {p0}, Lopenlight/co/camera/VideoController;->addOrShowGridView()V

    .line 346
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mVideoManager:Lopenlight/co/camera/managers/video/VideoManager;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/managers/video/VideoManager;->setStatusListener(Lopenlight/co/camera/managers/video/VideoManager$OnStatusListener;)V

    .line 347
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->enableControls(Z)V

    const/4 v0, 0x0

    .line 349
    invoke-virtual {p0, v0}, Lopenlight/co/camera/VideoController;->setStatusListener(Lopenlight/co/camera/VideoController$OnStatusListener;)V

    .line 350
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mOrientationController:Lopenlight/co/camera/view/rotate/OrientationsController;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/rotate/OrientationsController;->registerOrientationListener(Lopenlight/co/camera/listener/OrientationListener;)V

    .line 352
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;

    iget-object v1, p0, Lopenlight/co/camera/VideoController;->mOrientationController:Lopenlight/co/camera/view/rotate/OrientationsController;

    invoke-virtual {v1}, Lopenlight/co/camera/view/rotate/OrientationsController;->getConfig()Lopenlight/co/camera/enums/OrientationConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->onOrientationChanged(Lopenlight/co/camera/enums/OrientationConfig;)V

    .line 355
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    invoke-virtual {v0}, Lopenlight/co/camera/view/ftu/FtuHelper;->isFirstTimeVideoUser()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 356
    iget-object v0, p0, Lopenlight/co/camera/VideoController;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/ftu/FtuHelper;->setFtuHelperListener(Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;)V

    .line 357
    iget-object v1, p0, Lopenlight/co/camera/VideoController;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    iget-object v2, p0, Lopenlight/co/camera/VideoController;->mFtuContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    iget-object v4, p0, Lopenlight/co/camera/VideoController;->mFtuDimmer:Landroid/view/View;

    sget-object v5, Lopenlight/co/camera/enums/FtuView;->VIDEO_SCREEN:Lopenlight/co/camera/enums/FtuView;

    sget-object v6, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;->SINGLE_RUN:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    invoke-virtual/range {v1 .. v6}, Lopenlight/co/camera/view/ftu/FtuHelper;->showImageFtu(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Lopenlight/co/camera/enums/FtuView;Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;)V

    const/4 v0, 0x1

    .line 359
    invoke-virtual {p0, v0}, Lopenlight/co/camera/VideoController;->updateToolbarsVisibility(Z)V

    :cond_44
    return-void
.end method

.method public onStopRecording()V
    .registers 2

    .line 337
    iget-object p0, p0, Lopenlight/co/camera/VideoController;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 214
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_7a

    goto :goto_79

    .line 224
    :pswitch_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v0, :cond_79

    invoke-virtual {p0}, Lopenlight/co/camera/VideoController;->isModeWheelVisible()Z

    move-result p1

    if-eqz p1, :cond_79

    .line 225
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lopenlight/co/camera/VideoController;->setModeWheelDragPosition(F)V

    goto :goto_79

    .line 229
    :pswitch_1d
    sget-object p1, Lopenlight/co/camera/VideoController;->TAG:Ljava/lang/String;

    const-string p2, "onTouch UP"

    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lopenlight/co/camera/VideoController;->isModeWheelVisible()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 231
    invoke-direct {p0}, Lopenlight/co/camera/VideoController;->tearDownModeWheelView()V

    .line 234
    :cond_2d
    iget-object p1, p0, Lopenlight/co/camera/VideoController;->mVideoManager:Lopenlight/co/camera/managers/video/VideoManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/video/VideoManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/CameraMode;->isVideo()Z

    move-result p1

    if-nez p1, :cond_79

    .line 235
    sget-object p1, Lopenlight/co/camera/VideoController;->TAG:Ljava/lang/String;

    const-string p2, "Launching image fragment"

    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lopenlight/co/camera/managers/zoom/ZoomManager;->get()Lopenlight/co/camera/managers/zoom/ZoomManager;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/managers/zoom/ZoomManager;->setZoomToDefault()V

    .line 237
    iget-object p0, p0, Lopenlight/co/camera/VideoController;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const p1, 0x1020002

    new-instance p2, Lopenlight/co/camera/ImagePreviewFragment;

    invoke-direct {p2}, Lopenlight/co/camera/ImagePreviewFragment;-><init>()V

    .line 238
    invoke-virtual {p0, p1, p2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_79

    .line 216
    :pswitch_63
    sget-object p1, Lopenlight/co/camera/VideoController;->TAG:Ljava/lang/String;

    const-string v1, "onTouch Down"

    invoke-static {p1, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lopenlight/co/camera/VideoController;->isModeWheelVisible()Z

    move-result p1

    if-eqz p1, :cond_79

    .line 218
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lopenlight/co/camera/VideoController;->mTouchStart:F

    .line 219
    invoke-direct {p0}, Lopenlight/co/camera/VideoController;->setUpModeWheel()V

    :cond_79
    :goto_79
    return v0

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_63
        :pswitch_1d
        :pswitch_9
    .end packed-switch
.end method

.method setStatusListener(Lopenlight/co/camera/VideoController$OnStatusListener;)V
    .registers 2

    .line 399
    iput-object p1, p0, Lopenlight/co/camera/VideoController;->mStatusListener:Lopenlight/co/camera/VideoController$OnStatusListener;

    return-void
.end method

.method updateToolbarsVisibility(Z)V
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1a

    .line 421
    iget-object p1, p0, Lopenlight/co/camera/VideoController;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    invoke-virtual {p1}, Lopenlight/co/camera/view/ftu/FtuHelper;->isFirstTimeVideoUser()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 422
    invoke-direct {p0, v0}, Lopenlight/co/camera/VideoController;->setAncillaryToolbarVisibility(Z)V

    const/16 p1, 0x8

    .line 423
    invoke-direct {p0, p1}, Lopenlight/co/camera/VideoController;->setModeDragViewVisibility(I)V

    .line 424
    iget-object p0, p0, Lopenlight/co/camera/VideoController;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->setVisibility(Z)V

    goto :goto_35

    .line 426
    :cond_1a
    iget-object p1, p0, Lopenlight/co/camera/VideoController;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;

    invoke-virtual {p1, v0}, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->setVisibility(Z)V

    .line 429
    iget-object p1, p0, Lopenlight/co/camera/VideoController;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    invoke-virtual {p1}, Lopenlight/co/camera/view/ftu/FtuHelper;->isFirstTimeVideoUser()Z

    move-result p1

    if-nez p1, :cond_35

    .line 430
    invoke-direct {p0}, Lopenlight/co/camera/VideoController;->addOrShowAncillaryToolbar()V

    .line 432
    iget-object p1, p0, Lopenlight/co/camera/VideoController;->mVideoManager:Lopenlight/co/camera/managers/video/VideoManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/video/VideoManager;->isRecording()Z

    move-result p1

    if-nez p1, :cond_35

    .line 433
    invoke-direct {p0}, Lopenlight/co/camera/VideoController;->addOrShowModeDragView()V

    :cond_35
    :goto_35
    return-void
.end method
