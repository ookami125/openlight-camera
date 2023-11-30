.class public Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;
.super Lopenlight/co/camera/managers/controls/ControlManager;
.source "ImagePrimaryControl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lopenlight/co/camera/listener/OrientationListener;
.implements Lopenlight/co/camera/listener/ControlCompleteListener;
.implements Lopenlight/co/camera/view/timer/PictureTimer$OnTimerEventListener;
.implements Lopenlight/co/camera/view/depthoffield/DepthOfField$CompleteDepthListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$GestureListener;,
        Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$UpdatePreferenceListener;,
        Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$UpdateFocusViewListener;,
        Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$CaptureListener;,
        Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;,
        Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;
    }
.end annotation


# static fields
.field private static final MSG_HIDE_ANIMATION:I = 0x3

.field private static final MSG_HIDE_CONFIRMATION_MSG:I = 0x2

.field private static final MSG_LAUNCH_VIDEO_FRAGMENT:I = 0x0

.field private static final MSG_REMOVE_WHEEL_VIEW:I = 0x1

.field private static final SHOW_CONFIRMATION_MSG_DURATION:J = 0x1388L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlertView:Lopenlight/co/camera/view/notification/AlertView;

.field private mAncillaryToolbar:Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;

.field private mAspectRatioValue:Ljava/lang/String;

.field private mBottomControl:Landroid/widget/ImageView;

.field private final mCamPref:Lopenlight/co/lib/content/Prefs;

.field private final mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;

.field private mCapture:Landroid/widget/ImageView;

.field private mCaptureListener:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$CaptureListener;

.field private final mCaptureManager:Lopenlight/co/camera/managers/capture/CaptureManager;

.field private mConfirmationImageView:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private mCurrentWheelView:Landroid/view/View;

.field private mDefaultTypeFace:Landroid/graphics/Typeface;

.field private mDof:Lopenlight/co/camera/view/depthoffield/DepthOfField;

.field private mDofX:F

.field private mDofY:F

.field private mDragStart:F

.field private mDraggerModelHelper:Lopenlight/co/camera/models/DraggerModelHelper;

.field private mExposureWheel:Lopenlight/co/camera/view/wheel/FerrisWheel;

.field private mFerrisLayout:Landroid/widget/LinearLayout;

.field private mGalleryThumbContainer:Landroid/view/ViewGroup;

.field private final mGalleryThumbTouch:Lopenlight/co/camera/listener/OnSwipeTouchListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGridView:Lopenlight/co/camera/view/grid/GridView;

.field private final mHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

.field private mHistogramView:Landroid/view/View;

.field private mHudLayout:Lopenlight/co/camera/view/hud/HudLayout;

.field private final mImageFragment:Lopenlight/co/camera/ImagePreviewFragment;

.field private final mImageFragmentView:Landroid/view/ViewGroup;

.field private final mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

.field private mIsDofEnabled:Z

.field private mIsoWheel:Lopenlight/co/camera/view/wheel/FerrisWheel;

.field private mLevelView:Lopenlight/co/camera/view/level/Leveler;

.field private final mMainLooperHandler:Landroid/os/Handler;

.field private mModeSwitchParent:Landroid/widget/RelativeLayout;

.field private mModeText:Landroid/widget/TextView;

.field private mModeWheel:Lopenlight/co/camera/view/wheel/ModeWheel;

.field private mPictureControls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;",
            ">;"
        }
    .end annotation
.end field

.field private mPositionOfDrag:F

.field private final mPrefChangeListener:Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;

.field private mPrimaryControlView:Landroid/view/View;

.field private mShutterSpeedWheel:Lopenlight/co/camera/view/wheel/FerrisWheel;

.field private mStatusBar:Lopenlight/co/camera/view/statusbar/StatusBar;

.field private final mTestIntentListener:Lopenlight/co/camera/testintent/TestIntentListener;

.field private mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

.field private mToolBarLayout:Landroid/widget/RelativeLayout;

.field private mTopControl:Landroid/widget/ImageView;

.field private mTouchStart:F

.field private mUpdateFocusViewListener:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$UpdateFocusViewListener;

.field private mUpdatePreferenceListener:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$UpdatePreferenceListener;

.field private mWheelScrolled:Z

.field private mWheelState:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    const-class v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lopenlight/co/camera/ImagePreviewFragment;Landroid/view/ViewGroup;)V
    .locals 3

    .line 255
    invoke-direct {p0}, Lopenlight/co/camera/managers/controls/ControlManager;-><init>()V

    .line 146
    invoke-static {}, Lopenlight/co/camera/metrics/Metrics;->get()Lopenlight/co/camera/metrics/Metrics;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;

    .line 147
    invoke-static {}, Lopenlight/co/camera/managers/capture/CaptureManager;->get()Lopenlight/co/camera/managers/capture/CaptureManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCaptureManager:Lopenlight/co/camera/managers/capture/CaptureManager;

    .line 149
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCamPref:Lopenlight/co/lib/content/Prefs;

    .line 150
    invoke-static {}, Lopenlight/co/camera/haptic/PlayHaptic;->get()Lopenlight/co/camera/haptic/PlayHaptic;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

    const/4 v0, 0x0

    .line 162
    iput v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPositionOfDrag:F

    .line 164
    iput v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mTouchStart:F

    .line 166
    iput v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDragStart:F

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mWheelScrolled:Z

    .line 202
    iput-boolean v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mIsDofEnabled:Z

    const-string v1, "16:9"

    .line 206
    iput-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAspectRatioValue:Ljava/lang/String;

    .line 223
    sget-object v1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;->INVISIBLE:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    iput-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mWheelState:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPictureControls:Ljava/util/List;

    .line 230
    invoke-static {}, Lopenlight/co/camera/ImageReaderManager;->get()Lopenlight/co/camera/ImageReaderManager;

    move-result-object v1

    iput-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    .line 232
    new-instance v1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$1;-><init>(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Landroid/os/Looper;)V

    iput-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mMainLooperHandler:Landroid/os/Handler;

    .line 1069
    new-instance v1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$5;

    invoke-direct {v1, p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$5;-><init>(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V

    iput-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrefChangeListener:Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;

    .line 1676
    new-instance v1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$7;

    invoke-direct {v1, p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$7;-><init>(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V

    iput-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mTestIntentListener:Lopenlight/co/camera/testintent/TestIntentListener;

    .line 259
    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;

    .line 260
    iput-object p2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mImageFragment:Lopenlight/co/camera/ImagePreviewFragment;

    .line 261
    iput-object p3, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mImageFragmentView:Landroid/view/ViewGroup;

    .line 262
    iget-object p2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mImageFragmentView:Landroid/view/ViewGroup;

    const p3, 0x7f090072

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mFerrisLayout:Landroid/widget/LinearLayout;

    .line 263
    iget-object p2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 264
    iget-object p3, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrimaryControlView:Landroid/view/View;

    if-nez p3, :cond_0

    const p3, 0x7f0b005d

    .line 265
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mImageFragmentView:Landroid/view/ViewGroup;

    .line 266
    invoke-virtual {p2, p3, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrimaryControlView:Landroid/view/View;

    .line 268
    :cond_0
    new-instance p2, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$2;

    invoke-direct {p2, p0, p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$2;-><init>(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Landroid/content/Context;)V

    iput-object p2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGalleryThumbTouch:Lopenlight/co/camera/listener/OnSwipeTouchListener;

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->launchVideoFragment()V

    return-void
.end method

.method static synthetic access$100(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Landroid/view/View;
    .locals 0

    .line 94
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCurrentWheelView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$CaptureListener;
    .locals 0

    .line 94
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCaptureListener:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$CaptureListener;

    return-object p0
.end method

.method static synthetic access$102(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 94
    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCurrentWheelView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1100(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Lopenlight/co/camera/managers/capture/CaptureManager;
    .locals 0

    .line 94
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCaptureManager:Lopenlight/co/camera/managers/capture/CaptureManager;

    return-object p0
.end method

.method static synthetic access$1200(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Z)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->handleViewLeftControl(Z)V

    return-void
.end method

.method static synthetic access$1300(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeStatusBar()V

    return-void
.end method

.method static synthetic access$1400(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Ljava/lang/String;Z)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addOrShowAncillaryToolbar(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1500(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->disableWheelControl()V

    return-void
.end method

.method static synthetic access$1600(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeLevel()V

    return-void
.end method

.method static synthetic access$1700(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeDofView()V

    return-void
.end method

.method static synthetic access$1802(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mIsDofEnabled:Z

    return p1
.end method

.method static synthetic access$1900(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Landroid/view/ViewGroup;
    .locals 0

    .line 94
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGalleryThumbContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Landroid/view/View;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeWheelView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2000(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Z
    .locals 0

    .line 94
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isHudEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Lopenlight/co/camera/view/hud/HudLayout;
    .locals 0

    .line 94
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHudLayout:Lopenlight/co/camera/view/hud/HudLayout;

    return-object p0
.end method

.method static synthetic access$2200(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$UpdatePreferenceListener;
    .locals 0

    .line 94
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mUpdatePreferenceListener:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$UpdatePreferenceListener;

    return-object p0
.end method

.method static synthetic access$2300(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Lopenlight/co/camera/CameraActivity;
    .locals 0

    .line 94
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->getCameraActivity()Lopenlight/co/camera/CameraActivity;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Z)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->setAlphaInformationViews(Z)V

    return-void
.end method

.method static synthetic access$2500(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Lopenlight/co/camera/view/wheel/ModeWheel;
    .locals 0

    .line 94
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mModeWheel:Lopenlight/co/camera/view/wheel/ModeWheel;

    return-object p0
.end method

.method static synthetic access$2600(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->testUpdateOnUi()V

    return-void
.end method

.method static synthetic access$300(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeConfirmation()V

    return-void
.end method

.method static synthetic access$400(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->showGalleryThumbTimeout()V

    return-void
.end method

.method static synthetic access$500(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Lopenlight/co/camera/view/thumbnail/ThumbnailView;
    .locals 0

    .line 94
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    return-object p0
.end method

.method static synthetic access$600(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Lopenlight/co/camera/metrics/Metrics;
    .locals 0

    .line 94
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;

    return-object p0
.end method

.method static synthetic access$700(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Landroid/content/Context;
    .locals 0

    .line 94
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 94
    sget-object v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addDofView()V
    .locals 3

    .line 1573
    new-instance v0, Lopenlight/co/camera/view/depthoffield/DepthOfField;

    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lopenlight/co/camera/view/depthoffield/DepthOfField;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDof:Lopenlight/co/camera/view/depthoffield/DepthOfField;

    .line 1574
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDof:Lopenlight/co/camera/view/depthoffield/DepthOfField;

    iget v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDofX:F

    iget v2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDofY:F

    invoke-virtual {v0, v1, v2}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->setTappedPoint(FF)V

    .line 1575
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDof:Lopenlight/co/camera/view/depthoffield/DepthOfField;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->setCompleteDepthListener(Lopenlight/co/camera/view/depthoffield/DepthOfField$CompleteDepthListener;)V

    .line 1576
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mImageFragmentView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDof:Lopenlight/co/camera/view/depthoffield/DepthOfField;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addDragMovement(Landroid/view/View;)V
    .locals 1

    .line 1143
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mTopControl:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->getTopControlWheel()Lopenlight/co/camera/view/wheel/FerrisWheel;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mBottomControl:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 1144
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->getBottomControlWheel()Lopenlight/co/camera/view/wheel/FerrisWheel;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 1146
    iget p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPositionOfDrag:F

    invoke-virtual {p1, p0}, Lopenlight/co/camera/view/wheel/FerrisWheel;->updateDragPosition(F)V

    :cond_2
    return-void
.end method

.method private addHud()V
    .locals 4

    .line 1475
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isHudEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1476
    new-instance v0, Lopenlight/co/camera/view/hud/HudLayout;

    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mImageFragmentView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isAncillaryToolbarVisible()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lopenlight/co/camera/view/hud/HudLayout;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHudLayout:Lopenlight/co/camera/view/hud/HudLayout;

    .line 1477
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHudLayout:Lopenlight/co/camera/view/hud/HudLayout;

    invoke-virtual {v0}, Lopenlight/co/camera/view/hud/HudLayout;->addViewToFragment()V

    .line 1478
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHudLayout:Lopenlight/co/camera/view/hud/HudLayout;

    invoke-virtual {p0}, Lopenlight/co/camera/view/hud/HudLayout;->openLayoutAnimation()V

    :cond_0
    return-void
.end method

.method private addLevel()V
    .locals 2

    .line 1510
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mLevelView:Lopenlight/co/camera/view/level/Leveler;

    if-nez v0, :cond_0

    .line 1511
    new-instance v0, Lopenlight/co/camera/view/level/Leveler;

    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lopenlight/co/camera/view/level/Leveler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mLevelView:Lopenlight/co/camera/view/level/Leveler;

    .line 1512
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mLevelView:Lopenlight/co/camera/view/level/Leveler;

    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mImageFragmentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/level/Leveler;->setLayout(Landroid/view/ViewGroup;)V

    .line 1513
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mLevelView:Lopenlight/co/camera/view/level/Leveler;

    invoke-virtual {v0}, Lopenlight/co/camera/view/level/Leveler;->initView()V

    .line 1514
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mLevelView:Lopenlight/co/camera/view/level/Leveler;

    invoke-virtual {v0}, Lopenlight/co/camera/view/level/Leveler;->registerListener()V

    .line 1515
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mLevelView:Lopenlight/co/camera/view/level/Leveler;

    invoke-virtual {p0}, Lopenlight/co/camera/view/level/Leveler;->addLevelView()V

    :cond_0
    return-void
.end method

.method private addModeWheelControl()V
    .locals 4

    .line 1359
    new-instance v0, Lopenlight/co/camera/view/wheel/ModeWheel;

    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDraggerModelHelper:Lopenlight/co/camera/models/DraggerModelHelper;

    iget-object v2, v2, Lopenlight/co/camera/models/DraggerModelHelper;->mModeDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    iget-object v3, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDefaultTypeFace:Landroid/graphics/Typeface;

    invoke-direct {v0, v1, v2, v3}, Lopenlight/co/camera/view/wheel/ModeWheel;-><init>(Landroid/content/Context;Lopenlight/co/camera/view/dragger/DraggerModel;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mModeWheel:Lopenlight/co/camera/view/wheel/ModeWheel;

    return-void
.end method

.method private addModeWheelView()V
    .locals 2

    .line 1364
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mModeSwitchParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1365
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mModeSwitchParent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mModeWheel:Lopenlight/co/camera/view/wheel/ModeWheel;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1366
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mModeSwitchParent:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private addOrRemoveAlertView()V
    .locals 3

    .line 1638
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "device_status_setting"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 1640
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1641
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAlertView:Lopenlight/co/camera/view/notification/AlertView;

    if-nez v0, :cond_0

    .line 1642
    new-instance v0, Lopenlight/co/camera/view/notification/AlertView;

    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mImageFragmentView:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/view/notification/AlertView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAlertView:Lopenlight/co/camera/view/notification/AlertView;

    .line 1643
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAlertView:Lopenlight/co/camera/view/notification/AlertView;

    invoke-virtual {p0}, Lopenlight/co/camera/view/notification/AlertView;->addViewToFragment()V

    goto :goto_0

    .line 1645
    :cond_0
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAlertView:Lopenlight/co/camera/view/notification/AlertView;

    invoke-virtual {p0}, Lopenlight/co/camera/view/notification/AlertView;->show()V

    goto :goto_0

    .line 1648
    :cond_1
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeAlertView()V

    :goto_0
    return-void
.end method

.method private addOrRemoveModeWheel(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 929
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addModeWheelView()V

    goto :goto_0

    .line 931
    :cond_0
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeModeWheelView()V

    .line 933
    :goto_0
    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isAncillaryToolbarVisible()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->setAlphaInformationViews(Z)V

    return-void
.end method

.method private addOrShowAncillaryToolbar(Ljava/lang/String;Z)V
    .locals 7

    .line 1293
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAncillaryToolbar:Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;

    if-nez v0, :cond_0

    .line 1294
    new-instance v0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;

    iget-object v2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0020

    iget-object v4, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mImageFragmentView:Landroid/view/ViewGroup;

    move-object v1, v0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;Ljava/lang/String;Z)V

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAncillaryToolbar:Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;

    .line 1296
    iget-object p2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAncillaryToolbar:Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;

    invoke-virtual {p2, p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1298
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAncillaryToolbar:Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;

    invoke-virtual {v0, p1, p2}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->updateToolbar(Ljava/lang/String;Z)V

    .line 1300
    :goto_0
    iget-object p2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAncillaryToolbar:Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->setVisibility(Z)V

    .line 1301
    iget-object p2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    invoke-virtual {p2, v0}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->setAncillaryToolbarShown(Z)V

    const/4 p2, 0x0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, p2

    .line 1302
    :goto_1
    invoke-direct {p0, v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addOrRemoveModeWheel(Z)V

    .line 1304
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHistogramView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 1305
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHistogramView:Landroid/view/View;

    .line 1306
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1307
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;

    const v1, 0x7f0700e7

    invoke-static {v0, v1}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;

    const v2, 0x7f070136

    .line 1308
    invoke-static {v1, v2}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result v1

    .line 1307
    invoke-virtual {p1, v0, p2, p2, v1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->setMargins(IIII)V

    .line 1309
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHistogramView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private addOrShowGridView()V
    .locals 4

    .line 1535
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1536
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "grid_setting"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1537
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGridView:Lopenlight/co/camera/view/grid/GridView;

    if-nez v1, :cond_0

    .line 1538
    new-instance v1, Lopenlight/co/camera/view/grid/GridView;

    iget-object v2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mImageFragmentView:Landroid/view/ViewGroup;

    invoke-direct {v1, v2, v0, v3}, Lopenlight/co/camera/view/grid/GridView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGridView:Lopenlight/co/camera/view/grid/GridView;

    goto :goto_0

    .line 1540
    :cond_0
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGridView:Lopenlight/co/camera/view/grid/GridView;

    invoke-virtual {v1, v0}, Lopenlight/co/camera/view/grid/GridView;->updateGridType(Ljava/lang/String;)V

    .line 1542
    :goto_0
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGridView:Lopenlight/co/camera/view/grid/GridView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/grid/GridView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private addStatusBar()V
    .locals 3

    .line 1393
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mStatusBar:Lopenlight/co/camera/view/statusbar/StatusBar;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1394
    new-instance v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$6;

    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mImageFragmentView:Landroid/view/ViewGroup;

    invoke-direct {v0, p0, v1, v2}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$6;-><init>(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mStatusBar:Lopenlight/co/camera/view/statusbar/StatusBar;

    .line 1423
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mStatusBar:Lopenlight/co/camera/view/statusbar/StatusBar;

    invoke-virtual {v0}, Lopenlight/co/camera/view/statusbar/StatusBar;->addViewToFragment()V

    .line 1424
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mStatusBar:Lopenlight/co/camera/view/statusbar/StatusBar;

    invoke-virtual {p0}, Lopenlight/co/camera/view/statusbar/StatusBar;->openLayoutAnimation()V

    :cond_0
    return-void
.end method

.method private addUiElement()V
    .locals 2

    .line 937
    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isAncillaryToolbarVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGalleryThumbContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 939
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mToolBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 940
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCapture:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 941
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->disableWheelControl()V

    .line 942
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAncillaryToolbar:Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;

    invoke-virtual {v0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->resetItems()V

    goto :goto_0

    .line 944
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGalleryThumbContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 945
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->showGalleryThumb()V

    .line 947
    :cond_1
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGalleryThumbContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 948
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mToolBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 949
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCapture:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 950
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->enableWheelControl()V

    .line 951
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeStatusBar()V

    .line 952
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addStatusBar()V

    .line 954
    :goto_0
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->updateControlUiOnModeChange()V

    .line 955
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAlertView:Lopenlight/co/camera/view/notification/AlertView;

    if-nez v0, :cond_2

    .line 956
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addOrRemoveAlertView()V

    :cond_2
    return-void
.end method

.method private addWheelControl()V
    .locals 4

    .line 920
    new-instance v0, Lopenlight/co/camera/view/wheel/FerrisWheel;

    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDraggerModelHelper:Lopenlight/co/camera/models/DraggerModelHelper;

    iget-object v2, v2, Lopenlight/co/camera/models/DraggerModelHelper;->mExposureCompensationDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    iget-object v3, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDefaultTypeFace:Landroid/graphics/Typeface;

    invoke-direct {v0, v1, v2, v3}, Lopenlight/co/camera/view/wheel/FerrisWheel;-><init>(Landroid/content/Context;Lopenlight/co/camera/view/dragger/DraggerModel;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mExposureWheel:Lopenlight/co/camera/view/wheel/FerrisWheel;

    .line 922
    new-instance v0, Lopenlight/co/camera/view/wheel/FerrisWheel;

    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDraggerModelHelper:Lopenlight/co/camera/models/DraggerModelHelper;

    iget-object v2, v2, Lopenlight/co/camera/models/DraggerModelHelper;->mShutterSpeedDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    iget-object v3, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDefaultTypeFace:Landroid/graphics/Typeface;

    invoke-direct {v0, v1, v2, v3}, Lopenlight/co/camera/view/wheel/FerrisWheel;-><init>(Landroid/content/Context;Lopenlight/co/camera/view/dragger/DraggerModel;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mShutterSpeedWheel:Lopenlight/co/camera/view/wheel/FerrisWheel;

    .line 924
    new-instance v0, Lopenlight/co/camera/view/wheel/FerrisWheel;

    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDraggerModelHelper:Lopenlight/co/camera/models/DraggerModelHelper;

    iget-object v2, v2, Lopenlight/co/camera/models/DraggerModelHelper;->mSensitivityDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    iget-object v3, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDefaultTypeFace:Landroid/graphics/Typeface;

    invoke-direct {v0, v1, v2, v3}, Lopenlight/co/camera/view/wheel/FerrisWheel;-><init>(Landroid/content/Context;Lopenlight/co/camera/view/dragger/DraggerModel;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mIsoWheel:Lopenlight/co/camera/view/wheel/FerrisWheel;

    return-void
.end method

.method private addWheelView(Landroid/view/View;)V
    .locals 4

    .line 1186
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 1188
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 1189
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 1190
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 1191
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 1192
    iget-object v2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mFerrisLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1193
    iget-object v2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mFerrisLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1195
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

    sget-object v2, Lopenlight/co/camera/haptic/Immersion;->BRIGHTNESS_BEGIN:Lopenlight/co/camera/haptic/Immersion;

    invoke-virtual {v1, v2}, Lopenlight/co/camera/haptic/PlayHaptic;->playHaptic(Lopenlight/co/camera/haptic/Immersion;)V

    .line 1196
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mTopControl:Landroid/widget/ImageView;

    const/4 v2, 0x4

    if-ne p1, v1, :cond_0

    .line 1197
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mFerrisLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->getTopControlWheel()Lopenlight/co/camera/view/wheel/FerrisWheel;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1198
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mBottomControl:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1199
    :cond_0
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mBottomControl:Landroid/widget/ImageView;

    if-ne p1, v1, :cond_2

    .line 1200
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mFerrisLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->getBottomControlWheel()Lopenlight/co/camera/view/wheel/FerrisWheel;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1205
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPictureControls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 v2, 0x8

    .line 1206
    :cond_1
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mTopControl:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1208
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeUiElementOnTap(Landroid/view/View;)V

    .line 1210
    sget-object p1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;->VISIBLE:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mWheelState:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    return-void
.end method

.method private checkAndEnableDof()V
    .locals 2

    .line 1386
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "dof"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dof_on"

    .line 1387
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isAncillaryToolbarVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1388
    iput-boolean v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mIsDofEnabled:Z

    :cond_0
    return-void
.end method

.method private disableStatusBar()V
    .locals 1

    .line 1436
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mStatusBar:Lopenlight/co/camera/view/statusbar/StatusBar;

    if-eqz v0, :cond_0

    .line 1437
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mStatusBar:Lopenlight/co/camera/view/statusbar/StatusBar;

    invoke-virtual {p0}, Lopenlight/co/camera/view/statusbar/StatusBar;->disableStatusBar()V

    :cond_0
    return-void
.end method

.method private disableWheelControl()V
    .locals 2

    .line 1013
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mTopControl:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1014
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mBottomControl:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1015
    invoke-direct {p0, v1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->setResource(Z)V

    return-void
.end method

.method private enableStatusBar()V
    .locals 1

    .line 1441
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mStatusBar:Lopenlight/co/camera/view/statusbar/StatusBar;

    if-eqz v0, :cond_0

    .line 1442
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mStatusBar:Lopenlight/co/camera/view/statusbar/StatusBar;

    invoke-virtual {p0}, Lopenlight/co/camera/view/statusbar/StatusBar;->enableStatusBar()V

    :cond_0
    return-void
.end method

.method private enableWheelControl()V
    .locals 2

    .line 1019
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mTopControl:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1020
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mBottomControl:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1021
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->updateControlUiOnModeChange()V

    return-void
.end method

.method private getAdjustableAttributes(Lopenlight/co/camera/CameraMode;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lopenlight/co/camera/CameraMode;",
            ")",
            "Ljava/util/List<",
            "Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;",
            ">;"
        }
    .end annotation

    .line 1046
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1047
    invoke-virtual {p1}, Lopenlight/co/camera/CameraMode;->isShutter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1048
    invoke-virtual {p1}, Lopenlight/co/camera/CameraMode;->isEvAdjustable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1049
    sget-object v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;->EV:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    :cond_0
    invoke-virtual {p1}, Lopenlight/co/camera/CameraMode;->isSsAdjustable()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1053
    sget-object p1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;->SHUTTER_SPEED:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1056
    :cond_1
    invoke-virtual {p1}, Lopenlight/co/camera/CameraMode;->isIsoAdjustable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1057
    sget-object v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;->ISO:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    :cond_2
    invoke-virtual {p1}, Lopenlight/co/camera/CameraMode;->isSsAdjustable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1060
    sget-object v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;->SHUTTER_SPEED:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1062
    :cond_3
    invoke-virtual {p1}, Lopenlight/co/camera/CameraMode;->isEvAdjustable()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1063
    sget-object p1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;->EV:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-object p0
.end method

.method private getBottomControlWheel()Lopenlight/co/camera/view/wheel/FerrisWheel;
    .locals 2

    .line 1115
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object v0

    .line 1117
    sget-object v1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$8;->$SwitchMap$light$co$camera$CameraMode:[I

    invoke-virtual {v0}, Lopenlight/co/camera/CameraMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1120
    :pswitch_0
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mExposureWheel:Lopenlight/co/camera/view/wheel/FerrisWheel;

    goto :goto_0

    .line 1124
    :pswitch_1
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mShutterSpeedWheel:Lopenlight/co/camera/view/wheel/FerrisWheel;

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCameraActivity()Lopenlight/co/camera/CameraActivity;
    .locals 1

    .line 913
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mImageFragment:Lopenlight/co/camera/ImagePreviewFragment;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mImageFragment:Lopenlight/co/camera/ImagePreviewFragment;

    invoke-virtual {p0}, Lopenlight/co/camera/ImagePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/CameraActivity;

    :goto_0
    return-object p0
.end method

.method private getDraggerModel(Lopenlight/co/camera/view/wheel/FerrisWheel;)Lopenlight/co/camera/view/dragger/DraggerModel;
    .locals 1

    .line 1132
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mExposureWheel:Lopenlight/co/camera/view/wheel/FerrisWheel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDraggerModelHelper:Lopenlight/co/camera/models/DraggerModelHelper;

    iget-object p0, p0, Lopenlight/co/camera/models/DraggerModelHelper;->mExposureCompensationDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    goto :goto_0

    .line 1134
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mIsoWheel:Lopenlight/co/camera/view/wheel/FerrisWheel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1135
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDraggerModelHelper:Lopenlight/co/camera/models/DraggerModelHelper;

    iget-object p0, p0, Lopenlight/co/camera/models/DraggerModelHelper;->mSensitivityDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    goto :goto_0

    .line 1136
    :cond_1
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mShutterSpeedWheel:Lopenlight/co/camera/view/wheel/FerrisWheel;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1137
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDraggerModelHelper:Lopenlight/co/camera/models/DraggerModelHelper;

    iget-object p0, p0, Lopenlight/co/camera/models/DraggerModelHelper;->mShutterSpeedDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getTopControlWheel()Lopenlight/co/camera/view/wheel/FerrisWheel;
    .locals 2

    .line 1100
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object v0

    .line 1102
    sget-object v1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$8;->$SwitchMap$light$co$camera$CameraMode:[I

    invoke-virtual {v0}, Lopenlight/co/camera/CameraMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1108
    :pswitch_0
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mExposureWheel:Lopenlight/co/camera/view/wheel/FerrisWheel;

    goto :goto_0

    .line 1105
    :pswitch_1
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mIsoWheel:Lopenlight/co/camera/view/wheel/FerrisWheel;

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleAncillaryListItem(Landroid/view/View;)V
    .locals 5

    .line 1713
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;

    if-eqz p1, :cond_1

    .line 1715
    invoke-virtual {p1}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 1716
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "cam_video_mode_caf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "white_balance_setting"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "flash_setting_manual"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v4

    goto :goto_0

    :sswitch_3
    const-string v2, "cam_manual_mode_caf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_4
    const-string v2, "burst_mode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "grid_off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_6
    const-string v2, "timer_setting"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_7
    const-string v2, "golden_ratio"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    :sswitch_8
    const-string v2, "3x3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :sswitch_9
    const-string v2, "cam_auto_mode_caf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_a
    const-string v2, "flash_setting"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_b
    const-string v2, "grid_setting"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1736
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mMainLooperHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1737
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mConfirmationImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->getConfirmationResId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1738
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mConfirmationImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1739
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mMainLooperHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1732
    :pswitch_0
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addOrShowGridView()V

    goto :goto_1

    .line 1727
    :pswitch_1
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeModeWheelView()V

    :cond_1
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79e565a9 -> :sswitch_b
        -0x52784aff -> :sswitch_a
        -0x1a875cb4 -> :sswitch_9
        0xce2e -> :sswitch_8
        0xaefd55 -> :sswitch_7
        0xafda756 -> :sswitch_6
        0x12fa54f6 -> :sswitch_5
        0x1876bd62 -> :sswitch_4
        0x43af5f15 -> :sswitch_3
        0x5a2ebcc4 -> :sswitch_2
        0x633437d7 -> :sswitch_1
        0x7438cce0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleView(Landroid/view/View;Z)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 1349
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 1350
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private handleViewLeftControl(Z)V
    .locals 1

    .line 1339
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGalleryThumbContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->handleView(Landroid/view/View;Z)V

    .line 1340
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mToolBarLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->handleView(Landroid/view/View;Z)V

    .line 1341
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCapture:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->handleView(Landroid/view/View;Z)V

    .line 1342
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mTopControl:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->handleView(Landroid/view/View;Z)V

    .line 1343
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mBottomControl:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->handleView(Landroid/view/View;Z)V

    return-void
.end method

.method private hideAncillaryToolbar()V
    .locals 5

    .line 1318
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAncillaryToolbar:Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;

    if-eqz v0, :cond_1

    .line 1319
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAncillaryToolbar:Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->setVisibility(Z)V

    .line 1320
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHistogramView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1321
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHistogramView:Landroid/view/View;

    .line 1322
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 1323
    iget-object v2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;

    const v3, 0x7f0700e7

    invoke-static {v2, v3}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;

    const v4, 0x7f0700e6

    .line 1324
    invoke-static {v3, v4}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result v3

    .line 1323
    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/support/constraint/ConstraintLayout$LayoutParams;->setMargins(IIII)V

    .line 1325
    iget-object v2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHistogramView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1327
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->setAncillaryToolbarShown(Z)V

    .line 1328
    invoke-direct {p0, v1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addOrRemoveModeWheel(Z)V

    :cond_1
    return-void
.end method

.method private hideGridView()V
    .locals 1

    .line 1550
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGridView:Lopenlight/co/camera/view/grid/GridView;

    if-eqz v0, :cond_0

    .line 1551
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGridView:Lopenlight/co/camera/view/grid/GridView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/grid/GridView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private isHudEnabled()Z
    .locals 0

    .line 1490
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHudLayout:Lopenlight/co/camera/view/hud/HudLayout;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isVisible()Z
    .locals 0

    .line 1702
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrimaryControlView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$onTouch$1(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Lopenlight/co/camera/managers/CameraManager;)V
    .locals 1

    .line 758
    invoke-virtual {p1}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/CameraMode;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 759
    sget-object p1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->TAG:Ljava/lang/String;

    const-string v0, "Launching video fragment"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mMainLooperHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$openLayoutAnimation$0(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V
    .locals 4

    .line 550
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrimaryControlView:Landroid/view/View;

    const-string v0, "alpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    .line 551
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x96

    .line 552
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 553
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private launchVideoFragment()V
    .locals 2

    .line 1750
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->getCameraActivity()Lopenlight/co/camera/CameraActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1752
    invoke-static {}, Lopenlight/co/camera/managers/zoom/ZoomManager;->get()Lopenlight/co/camera/managers/zoom/ZoomManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->setZoomToDefault()V

    .line 1753
    invoke-virtual {p0}, Lopenlight/co/camera/CameraActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x1020002

    new-instance v1, Lopenlight/co/camera/VideoFragment;

    invoke-direct {v1}, Lopenlight/co/camera/VideoFragment;-><init>()V

    .line 1754
    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method private registerTestIntentListener()V
    .locals 2

    .line 1670
    invoke-static {}, Lopenlight/co/camera/testintent/TestIntentManager;->get()Lopenlight/co/camera/testintent/TestIntentManager;

    move-result-object v0

    .line 1671
    invoke-virtual {v0}, Lopenlight/co/camera/testintent/TestIntentManager;->isTestEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1672
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mTestIntentListener:Lopenlight/co/camera/testintent/TestIntentListener;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/testintent/TestIntentManager;->registerListener(Lopenlight/co/camera/testintent/TestIntentListener;)V

    :cond_0
    return-void
.end method

.method private releaseDraggerModelHelper()V
    .locals 1

    .line 1587
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDraggerModelHelper:Lopenlight/co/camera/models/DraggerModelHelper;

    if-eqz v0, :cond_0

    .line 1588
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDraggerModelHelper:Lopenlight/co/camera/models/DraggerModelHelper;

    invoke-virtual {p0}, Lopenlight/co/camera/models/DraggerModelHelper;->releaseModels()V

    :cond_0
    return-void
.end method

.method private removeAlertView()V
    .locals 1

    .line 1653
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAlertView:Lopenlight/co/camera/view/notification/AlertView;

    if-eqz v0, :cond_0

    .line 1654
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAlertView:Lopenlight/co/camera/view/notification/AlertView;

    invoke-virtual {p0}, Lopenlight/co/camera/view/notification/AlertView;->closeAll()V

    :cond_0
    return-void
.end method

.method private removeConfirmation()V
    .locals 1

    .line 1355
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mConfirmationImageView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private removeDofView()V
    .locals 2

    .line 1580
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDof:Lopenlight/co/camera/view/depthoffield/DepthOfField;

    if-eqz v0, :cond_0

    .line 1581
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mImageFragmentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDof:Lopenlight/co/camera/view/depthoffield/DepthOfField;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1582
    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDof:Lopenlight/co/camera/view/depthoffield/DepthOfField;

    :cond_0
    return-void
.end method

.method private removeHud()V
    .locals 1

    .line 1483
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isHudEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1484
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHudLayout:Lopenlight/co/camera/view/hud/HudLayout;

    invoke-virtual {v0}, Lopenlight/co/camera/view/hud/HudLayout;->closeLayoutAnimation()V

    const/4 v0, 0x0

    .line 1485
    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHudLayout:Lopenlight/co/camera/view/hud/HudLayout;

    :cond_0
    return-void
.end method

.method private removeLevel()V
    .locals 1

    .line 1523
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mLevelView:Lopenlight/co/camera/view/level/Leveler;

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mLevelView:Lopenlight/co/camera/view/level/Leveler;

    invoke-virtual {v0}, Lopenlight/co/camera/view/level/Leveler;->unregisterListener()V

    .line 1525
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mLevelView:Lopenlight/co/camera/view/level/Leveler;

    invoke-virtual {v0}, Lopenlight/co/camera/view/level/Leveler;->removeView()V

    const/4 v0, 0x0

    .line 1526
    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mLevelView:Lopenlight/co/camera/view/level/Leveler;

    :cond_0
    return-void
.end method

.method private removeModeWheelView()V
    .locals 2

    .line 1370
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mModeWheel:Lopenlight/co/camera/view/wheel/ModeWheel;

    if-eqz v0, :cond_0

    .line 1371
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mModeSwitchParent:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1372
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mModeSwitchParent:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mModeWheel:Lopenlight/co/camera/view/wheel/ModeWheel;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private removeStatusBar()V
    .locals 1

    .line 1429
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mStatusBar:Lopenlight/co/camera/view/statusbar/StatusBar;

    if-eqz v0, :cond_0

    .line 1430
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mStatusBar:Lopenlight/co/camera/view/statusbar/StatusBar;

    invoke-virtual {v0}, Lopenlight/co/camera/view/statusbar/StatusBar;->closeAll()V

    const/4 v0, 0x0

    .line 1431
    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mStatusBar:Lopenlight/co/camera/view/statusbar/StatusBar;

    :cond_0
    return-void
.end method

.method private removeUiElementOnTap(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 985
    :cond_0
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGalleryThumbContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 986
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mToolBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 987
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCapture:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 988
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeViewsFromUi()V

    return-void
.end method

.method private removeViewsFromUi()V
    .locals 0

    .line 992
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeStatusBar()V

    .line 993
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeLevel()V

    .line 994
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->hideGridView()V

    .line 995
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeDofView()V

    return-void
.end method

.method private removeWheelLayout()V
    .locals 2

    .line 1220
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mWheelState:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    sget-object v1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;->VISIBLE:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    if-ne v0, v1, :cond_2

    .line 1221
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mExposureWheel:Lopenlight/co/camera/view/wheel/FerrisWheel;

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mExposureWheel:Lopenlight/co/camera/view/wheel/FerrisWheel;

    invoke-virtual {v0}, Lopenlight/co/camera/view/wheel/FerrisWheel;->updatePreviousIndexValue()V

    .line 1224
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mShutterSpeedWheel:Lopenlight/co/camera/view/wheel/FerrisWheel;

    if-eqz v0, :cond_1

    .line 1225
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mShutterSpeedWheel:Lopenlight/co/camera/view/wheel/FerrisWheel;

    invoke-virtual {v0}, Lopenlight/co/camera/view/wheel/FerrisWheel;->updatePreviousIndexValue()V

    .line 1227
    :cond_1
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mIsoWheel:Lopenlight/co/camera/view/wheel/FerrisWheel;

    if-eqz v0, :cond_2

    .line 1228
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mIsoWheel:Lopenlight/co/camera/view/wheel/FerrisWheel;

    invoke-virtual {v0}, Lopenlight/co/camera/view/wheel/FerrisWheel;->updatePreviousIndexValue()V

    .line 1232
    :cond_2
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mFerrisLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1233
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mFerrisLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private removeWheelView(Landroid/view/View;)V
    .locals 2

    .line 1271
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mFerrisLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    return-void

    .line 1273
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mTopControl:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->getTopControlWheel()Lopenlight/co/camera/view/wheel/FerrisWheel;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mBottomControl:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 1274
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->getBottomControlWheel()Lopenlight/co/camera/view/wheel/FerrisWheel;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1276
    invoke-virtual {p1, v0, v0}, Lopenlight/co/camera/view/wheel/FerrisWheel;->setDragComplete(FF)V

    .line 1277
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mFerrisLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1279
    :cond_3
    sget-object p1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->TAG:Ljava/lang/String;

    const-string v0, "Remove Wheel view"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    sget-object p1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;->INVISIBLE:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mWheelState:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    return-void
.end method

.method private setAlphaInformationViews(Z)V
    .locals 1

    .line 1377
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isHudEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHudLayout:Lopenlight/co/camera/view/hud/HudLayout;

    invoke-virtual {v0, p1}, Lopenlight/co/camera/view/hud/HudLayout;->setAlpha(Z)V

    .line 1380
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAlertView:Lopenlight/co/camera/view/notification/AlertView;

    if-eqz v0, :cond_1

    .line 1381
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAlertView:Lopenlight/co/camera/view/notification/AlertView;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/notification/AlertView;->setAlpha(Z)V

    :cond_1
    return-void
.end method

.method private setModeText(Lopenlight/co/camera/CameraMode;)V
    .locals 0

    .line 980
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mModeText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lopenlight/co/camera/CameraMode;->getShortLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPositionOfDrag(FZ)V
    .locals 3

    if-eqz p2, :cond_0

    const v0, 0x3b03126f    # 0.002f

    goto :goto_0

    :cond_0
    const v0, 0x3a83126f    # 0.001f

    .line 1154
    :goto_0
    iget v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDragStart:F

    iget v2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mTouchStart:F

    sub-float/2addr p1, v2

    mul-float/2addr p1, v0

    add-float/2addr v1, p1

    iput v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPositionOfDrag:F

    if-eqz p2, :cond_1

    .line 1155
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mModeWheel:Lopenlight/co/camera/view/wheel/ModeWheel;

    if-eqz p1, :cond_1

    .line 1156
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mModeWheel:Lopenlight/co/camera/view/wheel/ModeWheel;

    iget p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPositionOfDrag:F

    invoke-virtual {p1, p0}, Lopenlight/co/camera/view/wheel/ModeWheel;->updateDragPosition(F)V

    :cond_1
    return-void
.end method

.method private setResource(Z)V
    .locals 3

    .line 1026
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPictureControls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1027
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPictureControls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

    invoke-virtual {v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;->getResId()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPictureControls:Ljava/util/List;

    .line 1028
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

    invoke-virtual {v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;->getFadedResId()I

    move-result v0

    .line 1029
    :goto_0
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPictureControls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 1030
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mTopControl:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_1

    .line 1031
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPictureControls:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

    invoke-virtual {p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;->getResId()I

    move-result p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPictureControls:Ljava/util/List;

    .line 1032
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

    invoke-virtual {p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;->getFadedResId()I

    move-result p1

    .line 1033
    :goto_1
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mBottomControl:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1035
    :cond_2
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mBottomControl:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private setUpFerrisWheelView(Landroid/view/View;)V
    .locals 3

    .line 1161
    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->updateDraggerModelHelper()V

    .line 1163
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mTopControl:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->getTopControlWheel()Lopenlight/co/camera/view/wheel/FerrisWheel;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mBottomControl:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 1164
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->getBottomControlWheel()Lopenlight/co/camera/view/wheel/FerrisWheel;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 1166
    invoke-direct {p0, v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->getDraggerModel(Lopenlight/co/camera/view/wheel/FerrisWheel;)Lopenlight/co/camera/view/dragger/DraggerModel;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1168
    invoke-virtual {v2}, Lopenlight/co/camera/view/dragger/DraggerModel;->initialPositionFromSubject()F

    move-result v1

    iput v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPositionOfDrag:F

    .line 1169
    check-cast p1, Landroid/widget/ImageView;

    iget v1, v2, Lopenlight/co/camera/view/dragger/DraggerModel;->mDownIcon:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1170
    invoke-virtual {v0, p1, p1}, Lopenlight/co/camera/view/wheel/FerrisWheel;->setDragComplete(FF)V

    .line 1171
    iget-object p1, v2, Lopenlight/co/camera/view/dragger/DraggerModel;->mName:Ljava/lang/String;

    move-object v1, p1

    .line 1173
    :cond_2
    iget p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPositionOfDrag:F

    iput p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDragStart:F

    .line 1175
    :cond_3
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isHudEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1176
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHudLayout:Lopenlight/co/camera/view/hud/HudLayout;

    invoke-virtual {p0, v1}, Lopenlight/co/camera/view/hud/HudLayout;->updateHudItems(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private setUpModeWheel()V
    .locals 1

    .line 999
    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->updateDraggerModelHelper()V

    .line 1000
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDraggerModelHelper:Lopenlight/co/camera/models/DraggerModelHelper;

    iget-object v0, v0, Lopenlight/co/camera/models/DraggerModelHelper;->mModeDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    .line 1001
    invoke-virtual {v0}, Lopenlight/co/camera/view/dragger/DraggerModel;->initialPositionFromSubject()F

    move-result v0

    iput v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPositionOfDrag:F

    .line 1002
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDraggerModelHelper:Lopenlight/co/camera/models/DraggerModelHelper;

    iget-object v0, v0, Lopenlight/co/camera/models/DraggerModelHelper;->mModeDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/dragger/DraggerModel;->setOnControlCompleteListener(Lopenlight/co/camera/listener/ControlCompleteListener;)V

    .line 1003
    iget v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPositionOfDrag:F

    iput v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDragStart:F

    return-void
.end method

.method private setupTimer()V
    .locals 4

    .line 901
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mMainLooperHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 902
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mMainLooperHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2904

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private showGalleryThumb()V
    .locals 1

    .line 1594
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGalleryThumbContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isAncillaryToolbarVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1595
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGalleryThumbContainer:Landroid/view/ViewGroup;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private showGalleryThumbTimeout()V
    .locals 1

    .line 907
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    if-eqz v0, :cond_0

    .line 908
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->setIconAlpha(F)V

    :cond_0
    return-void
.end method

.method private tearDownFerrisWheelView(Landroid/view/View;I)V
    .locals 4

    .line 1243
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

    sget-object v1, Lopenlight/co/camera/haptic/Immersion;->BRIGHTNESS_END:Lopenlight/co/camera/haptic/Immersion;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/haptic/PlayHaptic;->playHaptic(Lopenlight/co/camera/haptic/Immersion;)V

    .line 1244
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mTopControl:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->getTopControlWheel()Lopenlight/co/camera/view/wheel/FerrisWheel;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mBottomControl:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 1245
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->getBottomControlWheel()Lopenlight/co/camera/view/wheel/FerrisWheel;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 1247
    invoke-direct {p0, v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->getDraggerModel(Lopenlight/co/camera/view/wheel/FerrisWheel;)Lopenlight/co/camera/view/dragger/DraggerModel;

    move-result-object v2

    .line 1248
    move-object v3, p1

    check-cast v3, Landroid/widget/ImageView;

    iget v2, v2, Lopenlight/co/camera/view/dragger/DraggerModel;->mUpIcon:I

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1249
    invoke-virtual {v0}, Lopenlight/co/camera/view/wheel/FerrisWheel;->updatePreviousIndexValue()V

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 1250
    invoke-virtual {v0, v2, v3}, Lopenlight/co/camera/view/wheel/FerrisWheel;->setDragComplete(FF)V

    .line 1252
    :cond_2
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isHudEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1253
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHudLayout:Lopenlight/co/camera/view/hud/HudLayout;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/hud/HudLayout;->updateHudItems(Ljava/lang/String;)V

    :cond_3
    if-nez p2, :cond_4

    .line 1258
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeWheelView(Landroid/view/View;)V

    goto :goto_1

    .line 1260
    :cond_4
    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCurrentWheelView:Landroid/view/View;

    .line 1261
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mMainLooperHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void
.end method

.method private tearDownModeWheelView()V
    .locals 1

    .line 1007
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mModeWheel:Lopenlight/co/camera/view/wheel/ModeWheel;

    if-eqz v0, :cond_0

    .line 1008
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mModeWheel:Lopenlight/co/camera/view/wheel/ModeWheel;

    invoke-virtual {p0}, Lopenlight/co/camera/view/wheel/ModeWheel;->setDragComplete()V

    :cond_0
    return-void
.end method

.method private testUpdateOnUi()V
    .locals 1

    .line 1659
    invoke-static {}, Lopenlight/co/camera/testintent/TestIntentManager;->get()Lopenlight/co/camera/testintent/TestIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/testintent/TestIntentManager;->isTestEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isAncillaryToolbarVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1660
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->updateControlUiOnModeChange()V

    .line 1661
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeStatusBar()V

    .line 1662
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addStatusBar()V

    :cond_0
    return-void
.end method

.method private unregisterTestIntentListener()V
    .locals 1

    .line 1694
    invoke-static {}, Lopenlight/co/camera/testintent/TestIntentManager;->get()Lopenlight/co/camera/testintent/TestIntentManager;

    move-result-object v0

    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mTestIntentListener:Lopenlight/co/camera/testintent/TestIntentListener;

    invoke-interface {p0}, Lopenlight/co/camera/testintent/TestIntentListener;->getListenerName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lopenlight/co/camera/testintent/TestIntentManager;->unregisterListener(Ljava/lang/String;)V

    return-void
.end method

.method private updateAspectRatio()V
    .locals 3

    .line 1449
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "aspect_ratio_setting"

    .line 1450
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1451
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAspectRatioValue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1452
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeStatusBar()V

    .line 1453
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeAlertView()V

    .line 1454
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCaptureListener:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$CaptureListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$CaptureListener;->updateAspectRatio(Z)V

    .line 1455
    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAspectRatioValue:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private updateControlUiOnModeChange()V
    .locals 4

    .line 961
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object v0

    .line 962
    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isAncillaryToolbarVisible()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 963
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mTopControl:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 964
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCapture:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 965
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mBottomControl:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 966
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPictureControls:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 968
    :cond_0
    invoke-virtual {v0}, Lopenlight/co/camera/CameraMode;->isAuto()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 969
    :goto_0
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mTopControl:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 970
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCapture:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 971
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mBottomControl:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 973
    invoke-direct {p0, v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->getAdjustableAttributes(Lopenlight/co/camera/CameraMode;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPictureControls:Ljava/util/List;

    .line 974
    invoke-direct {p0, v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->setModeText(Lopenlight/co/camera/CameraMode;)V

    const/4 v0, 0x1

    .line 975
    invoke-direct {p0, v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->setResource(Z)V

    :goto_1
    return-void
.end method

.method private updateDofInfo()V
    .locals 2

    .line 1559
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "dof"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dof_off"

    .line 1560
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1561
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeDofView()V

    const/4 v0, 0x0

    .line 1562
    iput-boolean v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mIsDofEnabled:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1564
    iput-boolean v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mIsDofEnabled:Z

    .line 1565
    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isAncillaryToolbarVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1566
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeDofView()V

    .line 1567
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addDofView()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateHudInfo()V
    .locals 2

    .line 1463
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "hud_setting"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 1464
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1465
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isHudEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1466
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHudLayout:Lopenlight/co/camera/view/hud/HudLayout;

    invoke-virtual {v0}, Lopenlight/co/camera/view/hud/HudLayout;->removeOrientationControllerInHud()V

    .line 1468
    :cond_0
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeHud()V

    goto :goto_0

    .line 1470
    :cond_1
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addHud()V

    :goto_0
    return-void
.end method

.method private updateLevelInfo()V
    .locals 2

    .line 1497
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "level_setting"

    .line 1498
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "level_off"

    .line 1499
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1500
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeLevel()V

    goto :goto_0

    .line 1502
    :cond_0
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addLevel()V

    :goto_0
    return-void
.end method


# virtual methods
.method public addViewToFragment()V
    .locals 5

    .line 335
    new-instance v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/ConstraintLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 338
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 339
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 340
    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 341
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;

    new-instance v3, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$GestureListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$GestureListener;-><init>(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGestureDetector:Landroid/view/GestureDetector;

    .line 342
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrimaryControlView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mImageFragmentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrimaryControlView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 345
    :cond_0
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lopenlight/co/camera/view/rotate/OrientationsController;->registerOrientationListener(Lopenlight/co/camera/listener/OrientationListener;)V

    .line 346
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mImageFragmentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrimaryControlView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCamPref:Lopenlight/co/lib/content/Prefs;

    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrefChangeListener:Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->registerChangeListener(Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;)V

    .line 348
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->registerTestIntentListener()V

    .line 349
    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->initChildView()V

    return-void
.end method

.method public checkChangesFromToolbar()V
    .locals 0

    .line 591
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->updateHudInfo()V

    .line 593
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->updateLevelInfo()V

    .line 595
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addOrShowGridView()V

    .line 597
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->updateDofInfo()V

    .line 599
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->updateAspectRatio()V

    return-void
.end method

.method public closeAll()V
    .locals 3

    .line 776
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mImageFragmentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mMainLooperHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 778
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeConfirmation()V

    .line 779
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->hideAncillaryToolbar()V

    .line 780
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeStatusBar()V

    .line 781
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeAlertView()V

    .line 782
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeWheelLayout()V

    .line 783
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeViewsFromUi()V

    .line 784
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeHud()V

    .line 785
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCamPref:Lopenlight/co/lib/content/Prefs;

    iget-object v2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrefChangeListener:Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;

    invoke-interface {v0, v2}, Lopenlight/co/lib/content/Prefs;->unregisterChangeListener(Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;)V

    .line 786
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->unregisterTestIntentListener()V

    .line 787
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->getListenerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lopenlight/co/camera/view/rotate/OrientationsController;->unregisterOrientationListenerWithTag(Ljava/lang/String;)V

    .line 788
    iput-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mFerrisLayout:Landroid/widget/LinearLayout;

    .line 789
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPictureControls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 790
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->releaseDraggerModelHelper()V

    .line 791
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mImageFragmentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrimaryControlView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 792
    iput-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrimaryControlView:Landroid/view/View;

    .line 793
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    invoke-virtual {p0, v1}, Lopenlight/co/camera/ImageReaderManager;->setPendingCapturesCompleteListener(Lopenlight/co/camera/ImageReaderManager$PendingCapturesCompleteListener;)V

    :cond_0
    return-void
.end method

.method public closeAncillaryToolbar()V
    .locals 0

    .line 528
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->hideAncillaryToolbar()V

    return-void
.end method

.method public getListenerName()Ljava/lang/String;
    .locals 0

    .line 614
    const-class p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideViewsOnCaptureRequest()V
    .locals 1

    .line 561
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrimaryControlView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideWheelWhileCapture()V
    .locals 2

    .line 495
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mWheelState:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    sget-object v1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;->VISIBLE:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    if-ne v0, v1, :cond_0

    .line 496
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mTopControl:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->tearDownFerrisWheelView(Landroid/view/View;I)V

    .line 497
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mBottomControl:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->tearDownFerrisWheelView(Landroid/view/View;I)V

    .line 498
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addUiElement()V

    .line 499
    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->checkChangesFromToolbar()V

    :cond_0
    return-void
.end method

.method public initChildView()V
    .locals 4

    .line 354
    invoke-static {}, Lopenlight/co/camera/view/cache/FontCache;->get()Lopenlight/co/camera/view/cache/FontCache;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/view/cache/FontCache;->getHarmoniaRegular()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDefaultTypeFace:Landroid/graphics/Typeface;

    .line 355
    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->updateDraggerModelHelper()V

    .line 356
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrimaryControlView:Landroid/view/View;

    const v1, 0x7f0900f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mModeSwitchParent:Landroid/widget/RelativeLayout;

    .line 357
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mModeSwitchParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 358
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addModeWheelControl()V

    .line 361
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrimaryControlView:Landroid/view/View;

    const v1, 0x7f0900ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGalleryThumbContainer:Landroid/view/ViewGroup;

    .line 362
    new-instance v0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGalleryThumbContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGalleryThumbTouch:Lopenlight/co/camera/listener/OnSwipeTouchListener;

    invoke-direct {v0, v1, v2, v3}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;-><init>(Landroid/content/Context;Landroid/view/View;Lopenlight/co/camera/listener/OnSwipeTouchListener;)V

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    .line 363
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    invoke-virtual {v0}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->loadAndAnimateGalleryThumbnail()V

    .line 365
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrimaryControlView:Landroid/view/View;

    const v1, 0x7f09017a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mTopControl:Landroid/widget/ImageView;

    .line 366
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mTopControl:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 367
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrimaryControlView:Landroid/view/View;

    const v1, 0x7f09013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCapture:Landroid/widget/ImageView;

    .line 368
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCapture:Landroid/widget/ImageView;

    new-instance v1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$3;

    iget-object v2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$3;-><init>(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 384
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrimaryControlView:Landroid/view/View;

    const v1, 0x7f09002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mBottomControl:Landroid/widget/ImageView;

    .line 385
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mBottomControl:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 386
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrimaryControlView:Landroid/view/View;

    const v1, 0x7f090176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mModeText:Landroid/widget/TextView;

    .line 387
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrimaryControlView:Landroid/view/View;

    const v1, 0x7f090175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mToolBarLayout:Landroid/widget/RelativeLayout;

    .line 388
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mToolBarLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$4;

    iget-object v2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$4;-><init>(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 417
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addUiElement()V

    .line 418
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addWheelControl()V

    .line 419
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "aspect_ratio_setting"

    .line 420
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAspectRatioValue:Ljava/lang/String;

    .line 421
    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->checkChangesFromToolbar()V

    .line 422
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/view/rotate/OrientationsController;->getConfig()Lopenlight/co/camera/enums/OrientationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V

    .line 423
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "dof"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dof_off"

    .line 424
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mIsDofEnabled:Z

    .line 425
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mImageFragmentView:Landroid/view/ViewGroup;

    const v1, 0x7f09004f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mConfirmationImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public isAncillaryToolbarVisible()Z
    .locals 1

    .line 883
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAncillaryToolbar:Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAncillaryToolbar:Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;

    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public manageControlViews(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 812
    :goto_0
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrimaryControlView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 813
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrimaryControlView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 815
    :cond_1
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mStatusBar:Lopenlight/co/camera/view/statusbar/StatusBar;

    if-eqz v1, :cond_2

    .line 816
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mStatusBar:Lopenlight/co/camera/view/statusbar/StatusBar;

    invoke-virtual {v1, p1}, Lopenlight/co/camera/view/statusbar/StatusBar;->setVisibility(Z)V

    .line 818
    :cond_2
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAlertView:Lopenlight/co/camera/view/notification/AlertView;

    if-eqz v1, :cond_3

    .line 819
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAlertView:Lopenlight/co/camera/view/notification/AlertView;

    invoke-virtual {v1, p1}, Lopenlight/co/camera/view/notification/AlertView;->setVisibility(Z)V

    .line 821
    :cond_3
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isHudEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 822
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHudLayout:Lopenlight/co/camera/view/hud/HudLayout;

    invoke-virtual {v1, p1}, Lopenlight/co/camera/view/hud/HudLayout;->setVisibility(Z)V

    .line 824
    :cond_4
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGridView:Lopenlight/co/camera/view/grid/GridView;

    if-eqz v1, :cond_5

    .line 825
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGridView:Lopenlight/co/camera/view/grid/GridView;

    invoke-virtual {v1, v0}, Lopenlight/co/camera/view/grid/GridView;->setVisibility(I)V

    :cond_5
    if-eqz p1, :cond_6

    .line 830
    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->openLayoutAnimation()V

    .line 831
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addUiElement()V

    .line 832
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->checkAndEnableDof()V

    .line 833
    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->checkChangesFromToolbar()V

    .line 834
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->enableWheelControl()V

    .line 835
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mToolBarLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->handleView(Landroid/view/View;Z)V

    .line 836
    invoke-virtual {p0, p2}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->updateControls(Z)V

    .line 837
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCamPref:Lopenlight/co/lib/content/Prefs;

    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrefChangeListener:Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;

    invoke-interface {p1, p0}, Lopenlight/co/lib/content/Prefs;->registerChangeListener(Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;)V

    goto :goto_1

    .line 840
    :cond_6
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mModeSwitchParent:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 841
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->hideAncillaryToolbar()V

    .line 842
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeWheelLayout()V

    .line 843
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeLevel()V

    .line 844
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeDofView()V

    .line 845
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCamPref:Lopenlight/co/lib/content/Prefs;

    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrefChangeListener:Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;

    invoke-interface {p1, p0}, Lopenlight/co/lib/content/Prefs;->unregisterChangeListener(Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;)V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 852
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090022

    if-eq v0, v1, :cond_2

    const p1, 0x7f09004b

    if-eq v0, p1, :cond_0

    const p1, 0x7f090172

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 856
    :cond_0
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAncillaryToolbar:Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;

    invoke-virtual {p1}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->isFromFirstLevel()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 857
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addModeWheelView()V

    goto :goto_0

    .line 861
    :cond_1
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeConfirmation()V

    .line 862
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lopenlight/co/camera/view/rotate/OrientationsController;->registerOrientationListener(Lopenlight/co/camera/listener/OrientationListener;)V

    .line 863
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->hideAncillaryToolbar()V

    .line 864
    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->openLayoutAnimation()V

    .line 865
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addUiElement()V

    .line 866
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->checkAndEnableDof()V

    .line 867
    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->checkChangesFromToolbar()V

    .line 868
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->enableWheelControl()V

    .line 869
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mToolBarLayout:Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->handleView(Landroid/view/View;Z)V

    .line 870
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->updateControls(Z)V

    goto :goto_0

    .line 873
    :cond_2
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->handleAncillaryListItem(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V
    .locals 2

    .line 649
    invoke-virtual {p1}, Lopenlight/co/camera/enums/OrientationConfig;->getViewRotationAngle()I

    move-result p1

    .line 650
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGalleryThumbContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x32

    .line 651
    invoke-static {v0, p1, v1}, Lopenlight/co/lib/utils/AnimationUtils;->rotateOnOrientationChange(Landroid/view/View;II)V

    .line 652
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mTopControl:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lopenlight/co/lib/utils/AnimationUtils;->rotateOnOrientationChange(Landroid/view/View;II)V

    .line 653
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mBottomControl:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lopenlight/co/lib/utils/AnimationUtils;->rotateOnOrientationChange(Landroid/view/View;II)V

    .line 654
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mFerrisLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, p1, v1}, Lopenlight/co/lib/utils/AnimationUtils;->rotateOnOrientationChange(Landroid/view/View;II)V

    .line 655
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCapture:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lopenlight/co/lib/utils/AnimationUtils;->rotateOnOrientationChange(Landroid/view/View;II)V

    .line 656
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mToolBarLayout:Landroid/widget/RelativeLayout;

    invoke-static {p0, p1, v1}, Lopenlight/co/lib/utils/AnimationUtils;->rotateOnOrientationChange(Landroid/view/View;II)V

    return-void
.end method

.method public onSelectionComplete()V
    .locals 0

    return-void
.end method

.method public onTickListener()V
    .locals 0

    return-void
.end method

.method public onTimerComplete()V
    .locals 1

    .line 292
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCaptureListener:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$CaptureListener;

    invoke-interface {v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$CaptureListener;->captureStillPicture()V

    .line 293
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;

    const-string v0, "event_capture_timer_used"

    invoke-virtual {p0, v0}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 691
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 692
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 715
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 716
    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isAncillaryToolbarVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1, v2}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->setPositionOfDrag(FZ)V

    goto/16 :goto_1

    .line 719
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mWheelState:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    sget-object v3, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;->VISIBLE:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    if-ne v0, v3, :cond_7

    .line 721
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {p0, p2, v1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->setPositionOfDrag(FZ)V

    .line 722
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addDragMovement(Landroid/view/View;)V

    .line 723
    iput-boolean v2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mWheelScrolled:Z

    goto/16 :goto_1

    .line 728
    :pswitch_1
    sget-object p2, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->TAG:Ljava/lang/String;

    const-string v0, "onTouch ACTION_UP"

    invoke-static {p2, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isAncillaryToolbarVisible()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 730
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->tearDownModeWheelView()V

    goto :goto_0

    .line 731
    :cond_1
    iget-object p2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mWheelState:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    sget-object v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;->VISIBLE:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    if-ne p2, v0, :cond_2

    .line 736
    sget-object p2, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;->CLOSING:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    iput-object p2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mWheelState:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    const/16 p2, 0x258

    .line 737
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->tearDownFerrisWheelView(Landroid/view/View;I)V

    .line 738
    invoke-static {}, Lopenlight/co/camera/view/ftu/FtuHelper;->get()Lopenlight/co/camera/view/ftu/FtuHelper;

    move-result-object p1

    .line 739
    invoke-virtual {p1}, Lopenlight/co/camera/view/ftu/FtuHelper;->isFtuPlaying()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mWheelScrolled:Z

    if-eqz p2, :cond_2

    .line 742
    sget-object p2, Lopenlight/co/camera/enums/FtuView;->WHEEL_SCREEN:Lopenlight/co/camera/enums/FtuView;

    invoke-virtual {p1, p2}, Lopenlight/co/camera/view/ftu/FtuHelper;->onUserActionComplete(Lopenlight/co/camera/enums/FtuView;)V

    .line 743
    invoke-virtual {p0, v1, v1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->manageControlViews(ZZ)V

    .line 746
    :cond_2
    :goto_0
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object p1

    .line 747
    invoke-virtual {p1}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object p2

    invoke-virtual {p2}, Lopenlight/co/camera/CameraMode;->isVideo()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 748
    invoke-virtual {p1}, Lopenlight/co/camera/managers/CameraManager;->getPendingReaderReferences()I

    move-result p2

    if-gtz p2, :cond_3

    .line 749
    sget-object p1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->TAG:Ljava/lang/String;

    const-string p2, "No pending captures, launch video fragment"

    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mMainLooperHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 752
    :cond_3
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->getApp()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0104

    .line 753
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 752
    invoke-static {p2, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    .line 754
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 755
    sget-object p2, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->TAG:Ljava/lang/String;

    const-string v0, "Waiting for captures to save"

    invoke-static {p2, v0}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    iget-object p2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    new-instance v0, Lopenlight/co/camera/view/primarycontrol/-$$Lambda$ImagePrimaryControl$7uEyQ68mjjWXTRIYpPGnWNRvVbU;

    invoke-direct {v0, p0, p1}, Lopenlight/co/camera/view/primarycontrol/-$$Lambda$ImagePrimaryControl$7uEyQ68mjjWXTRIYpPGnWNRvVbU;-><init>(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Lopenlight/co/camera/managers/CameraManager;)V

    invoke-virtual {p2, v0}, Lopenlight/co/camera/ImageReaderManager;->setPendingCapturesCompleteListener(Lopenlight/co/camera/ImageReaderManager$PendingCapturesCompleteListener;)V

    goto :goto_1

    .line 764
    :cond_4
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 766
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addUiElement()V

    .line 767
    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->checkChangesFromToolbar()V

    goto :goto_1

    .line 694
    :pswitch_2
    sget-object v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->TAG:Ljava/lang/String;

    const-string v1, "onTouch ACTION_DOWN"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iput p2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mTouchStart:F

    .line 697
    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isAncillaryToolbarVisible()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 698
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->setUpModeWheel()V

    goto :goto_1

    .line 700
    :cond_5
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->setUpFerrisWheelView(Landroid/view/View;)V

    .line 701
    iget-object p2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mWheelState:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    sget-object v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;->INVISIBLE:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    if-ne p2, v0, :cond_7

    .line 703
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addWheelView(Landroid/view/View;)V

    .line 705
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mUpdateFocusViewListener:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$UpdateFocusViewListener;

    if-eqz p1, :cond_6

    invoke-static {}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->get()Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    move-result-object p1

    .line 706
    invoke-virtual {p1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->isFocusLocked()Z

    move-result p1

    if-nez p1, :cond_6

    .line 707
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mUpdateFocusViewListener:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$UpdateFocusViewListener;

    invoke-interface {p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$UpdateFocusViewListener;->updateFocusView()V

    .line 710
    :cond_6
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/view/rotate/OrientationsController;->getConfig()Lopenlight/co/camera/enums/OrientationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V

    :cond_7
    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onUpdateHudLayout()V
    .locals 0

    return-void
.end method

.method public onUpdateLevelMeter()V
    .locals 0

    return-void
.end method

.method public onUpdateUi(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUpdateZoom(I)V
    .locals 0

    return-void
.end method

.method public onWheelItemSelected(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public openLayoutAnimation()V
    .locals 1

    .line 549
    new-instance v0, Lopenlight/co/camera/view/primarycontrol/-$$Lambda$ImagePrimaryControl$0fafEPntU8S3U1HlME5tpbzzTAo;

    invoke-direct {v0, p0}, Lopenlight/co/camera/view/primarycontrol/-$$Lambda$ImagePrimaryControl$0fafEPntU8S3U1HlME5tpbzzTAo;-><init>(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V

    .line 555
    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isAncillaryToolbarVisible()Z

    move-result p0

    if-nez p0, :cond_0

    .line 556
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public removeModeSelection()V
    .locals 0

    return-void
.end method

.method public resetThumbnailPath()V
    .locals 0

    .line 668
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    invoke-virtual {p0}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->resetPath()V

    return-void
.end method

.method public restoreViewsOnCaptureRequestComplete()V
    .locals 1

    .line 568
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrimaryControlView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setCaptureListener(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$CaptureListener;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCaptureListener:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$CaptureListener;

    return-void
.end method

.method public setHistogramView(Lopenlight/co/lib/view/HistogramView;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHistogramView:Landroid/view/View;

    return-void
.end method

.method public setNeedAnimationAfterCapture(Z)V
    .locals 0

    .line 609
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->setNeedAnimationAfterCapture(Z)V

    return-void
.end method

.method public setScrollDistance(F)V
    .locals 1

    .line 532
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDof:Lopenlight/co/camera/view/depthoffield/DepthOfField;

    if-eqz v0, :cond_0

    .line 533
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDof:Lopenlight/co/camera/view/depthoffield/DepthOfField;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->setScrollDistance(F)V

    :cond_0
    return-void
.end method

.method public setTappedPoint(FF)V
    .locals 0

    .line 519
    iput p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDofX:F

    .line 520
    iput p2, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDofY:F

    .line 521
    iget-boolean p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mIsDofEnabled:Z

    if-eqz p1, :cond_0

    .line 522
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeDofView()V

    .line 523
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addDofView()V

    :cond_0
    return-void
.end method

.method public setThumbnailPath(Ljava/lang/String;)V
    .locals 0

    .line 677
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->setPath(Ljava/lang/String;)V

    return-void
.end method

.method public setUpdateFocusViewListener(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$UpdateFocusViewListener;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mUpdateFocusViewListener:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$UpdateFocusViewListener;

    return-void
.end method

.method public setUpdatePreference(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$UpdatePreferenceListener;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mUpdatePreferenceListener:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$UpdatePreferenceListener;

    return-void
.end method

.method public setVisibility(Z)V
    .locals 2

    .line 799
    sget-object v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->TAG:Ljava/lang/String;

    const-string v1, "set primary control visibility to VISIBLE"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mPrimaryControlView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showAlertView(II)V
    .locals 1

    .line 572
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAlertView:Lopenlight/co/camera/view/notification/AlertView;

    if-nez v0, :cond_0

    .line 573
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addOrRemoveAlertView()V

    .line 575
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAlertView:Lopenlight/co/camera/view/notification/AlertView;

    if-eqz v0, :cond_1

    .line 576
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAlertView:Lopenlight/co/camera/view/notification/AlertView;

    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/view/notification/AlertView;->updateBatteryStatus(II)V

    :cond_1
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .line 478
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->setIconAlpha(F)V

    .line 479
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGalleryThumbContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 480
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->showThumbnailLoading(Z)V

    .line 481
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->setupTimer()V

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .line 488
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->showThumbnailLoading(Z)V

    .line 489
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->showGalleryThumb()V

    .line 490
    sget-object v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->TAG:Ljava/lang/String;

    const-string v1, "Added Gallery Thumbnail View Touch Listener"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGalleryThumbContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGalleryThumbTouch:Lopenlight/co/camera/listener/OnSwipeTouchListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public touchUp()V
    .locals 1

    .line 538
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDof:Lopenlight/co/camera/view/depthoffield/DepthOfField;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDof:Lopenlight/co/camera/view/depthoffield/DepthOfField;

    invoke-virtual {v0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->touchUp()V

    .line 540
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

    invoke-virtual {p0}, Lopenlight/co/camera/haptic/PlayHaptic;->stopAllHaptic()V

    :cond_0
    return-void
.end method

.method public updateControls(Z)V
    .locals 4

    .line 430
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    invoke-virtual {v0, p1}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->enableIcon(Z)V

    .line 431
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCapture:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCapture:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 434
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGalleryThumbContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-eqz p1, :cond_5

    .line 436
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCapture:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    .line 437
    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isAncillaryToolbarVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mWheelState:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    sget-object v3, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;->INVISIBLE:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    if-ne v0, v3, :cond_1

    .line 438
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCapture:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 440
    :cond_1
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCapture:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 442
    :cond_2
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    invoke-virtual {v0, v2}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->setIconAlpha(F)V

    .line 443
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mToolBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 445
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAncillaryToolbar:Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAncillaryToolbar:Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;

    invoke-virtual {v0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->isVisible()Z

    move-result v0

    if-nez v0, :cond_4

    .line 446
    :cond_3
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mToolBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 448
    :cond_4
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->enableWheelControl()V

    .line 449
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->enableStatusBar()V

    goto :goto_0

    .line 451
    :cond_5
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->disableWheelControl()V

    .line 452
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->disableStatusBar()V

    .line 453
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCapture:Landroid/widget/ImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 454
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->setIconAlpha(F)V

    .line 455
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mToolBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 457
    :goto_0
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mToolBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method

.method public updateControlsForWheelFtu(Z)V
    .locals 1

    .line 468
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mToolBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 469
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mStatusBar:Lopenlight/co/camera/view/statusbar/StatusBar;

    if-eqz v0, :cond_0

    .line 470
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mStatusBar:Lopenlight/co/camera/view/statusbar/StatusBar;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/statusbar/StatusBar;->setVisibility(Z)V

    :cond_0
    return-void
.end method

.method public updateDepth()V
    .locals 0

    .line 303
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->updateHudInfo()V

    return-void
.end method

.method public updateDraggerModelHelper()V
    .locals 2

    .line 887
    new-instance v0, Lopenlight/co/camera/models/DraggerModelHelper;

    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lopenlight/co/camera/models/DraggerModelHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDraggerModelHelper:Lopenlight/co/camera/models/DraggerModelHelper;

    return-void
.end method

.method public updateGridView()V
    .locals 1

    .line 513
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGridView:Lopenlight/co/camera/view/grid/GridView;

    if-eqz v0, :cond_0

    .line 514
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addOrShowGridView()V

    :cond_0
    return-void
.end method

.method public updateHudTextOnZoomWheelView(Ljava/lang/String;)V
    .locals 1

    .line 603
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isHudEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHudLayout:Lopenlight/co/camera/view/hud/HudLayout;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/hud/HudLayout;->updateHudItems(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updatePreviewPostFtuReset()V
    .locals 1

    .line 895
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDraggerModelHelper:Lopenlight/co/camera/models/DraggerModelHelper;

    iget-object v0, v0, Lopenlight/co/camera/models/DraggerModelHelper;->mExposureCompensationDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    invoke-virtual {v0}, Lopenlight/co/camera/view/dragger/DraggerModel;->updateHudInfoInPreview()V

    .line 896
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDraggerModelHelper:Lopenlight/co/camera/models/DraggerModelHelper;

    iget-object v0, v0, Lopenlight/co/camera/models/DraggerModelHelper;->mSensitivityDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    invoke-virtual {v0}, Lopenlight/co/camera/view/dragger/DraggerModel;->updateHudInfoInPreview()V

    .line 897
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mDraggerModelHelper:Lopenlight/co/camera/models/DraggerModelHelper;

    iget-object p0, p0, Lopenlight/co/camera/models/DraggerModelHelper;->mShutterSpeedDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    invoke-virtual {p0}, Lopenlight/co/camera/view/dragger/DraggerModel;->updateHudInfoInPreview()V

    return-void
.end method

.method public updateRealTimeHud(JI)V
    .locals 1

    .line 504
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isHudEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mHudLayout:Lopenlight/co/camera/view/hud/HudLayout;

    invoke-virtual {p0, p1, p2, p3}, Lopenlight/co/camera/view/hud/HudLayout;->updateRealTime(JI)V

    :cond_0
    return-void
.end method

.method public updateRemainingImageCount()V
    .locals 1

    .line 581
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAlertView:Lopenlight/co/camera/view/notification/AlertView;

    if-nez v0, :cond_0

    .line 582
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addOrRemoveAlertView()V

    .line 584
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAlertView:Lopenlight/co/camera/view/notification/AlertView;

    if-eqz v0, :cond_1

    .line 585
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mAlertView:Lopenlight/co/camera/view/notification/AlertView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/notification/AlertView;->updateStorageAndImageCountNotification(Z)V

    :cond_1
    return-void
.end method
