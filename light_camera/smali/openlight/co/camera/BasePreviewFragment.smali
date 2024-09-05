.class public abstract Lopenlight/co/camera/BasePreviewFragment;
.super Lopenlight/co/lib/view/LightFragment;
.source "BasePreviewFragment.java"

# interfaces
.implements Lopenlight/co/camera/managers/CameraManager$UpdatePreview;
.implements Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$AeUiUpdate;
.implements Lopenlight/co/camera/listener/FocusListener;
.implements Lopenlight/co/camera/listener/OrientationListener;
.implements Lopenlight/co/lib/thermal/ThermalManager$ThermalStateListener;
.implements Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomUpdateOnUi;
.implements Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$UpdateFocusViewListener;
.implements Lopenlight/co/camera/listener/HardKeyManager$OnKeyListener;
.implements Landroid/support/v13/app/FragmentCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;
    }
.end annotation


# static fields
.field protected static final DEFAULT_ORIENTATIONS:Landroid/util/SparseIntArray;

.field protected static final INVERSE_ORIENTATIONS:Landroid/util/SparseIntArray;

.field protected static final MAX_PREVIEW_HEIGHT:I = 0x438

.field protected static final MAX_PREVIEW_WIDTH:I = 0x780

.field protected static final MSG_ADD_PRIMARY_CONTROL:I = 0xca

.field private static final MSG_CLOSE_ALL_RES_AND_RESTART:I = 0xcf

.field private static final MSG_FOCUS_POST_ZOOM:I = 0xcd

.field private static final MSG_HIDE_AND_RESET_ZOOM:I = 0xd0

.field private static final MSG_HIDE_SYSTEM_UI:I = 0xcb

.field private static final MSG_HIDE_ZOOM_LAYOUT:I = 0xcc

.field protected static final MSG_MANAGE_PRIMARY_CONTROL:I = 0xc8

.field private static final MSG_RESET_THUMBNAIL_PATH:I = 0xd1

.field private static final MSG_SHOW_CROSS_HAIR_AND_ANIMATE:I = 0xce

.field protected static final MSG_START_PRIMARY_CONTROL_ANIMATION:I = 0xc9

.field protected static final ORIENTATIONS:Landroid/util/SparseIntArray;

.field private static final POST_ZOOM_FOCUS_DELAY_MS:I = 0xfa

.field protected static final PRIMARY_CONTROL_SHOW_DELAY:I = 0x15e

.field protected static final SCROLL_FACTOR_CONSTANT:F = 0.412f

.field private static final TAG:Ljava/lang/String; = "BasePreviewFragment"

.field private static final ZOOM_WHEEL_DISAPPEARANCE_DELAY:J = 0x1f4L


# instance fields
.field protected mAspectRatioChange:Z

.field protected final mAutoExposureManager:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

.field private final mBatteryStatusMonitor:Lopenlight/co/camera/view/notification/BatteryStatusMonitor;

.field protected final mCameraInfo:Lopenlight/co/camera/CameraInfo;

.field protected final mCameraManager:Lopenlight/co/camera/utils/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/camera/utils/Provider<",
            "Lopenlight/co/camera/managers/CameraManager;",
            ">;"
        }
    .end annotation
.end field

.field protected final mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;

.field protected final mCameraPref:Lopenlight/co/lib/content/Prefs;

.field protected final mCameraState:Lopenlight/co/camera/utils/CameraState;

.field protected final mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field protected mCrossHairView:Lopenlight/co/camera/view/focus/CrossHair;

.field private mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

.field private final mFaceViewHelper:Lopenlight/co/camera/view/face/FaceViewHelper;

.field protected final mFocusManager:Lopenlight/co/camera/managers/focus/FocusManager;

.field protected final mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

.field protected final mHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

.field protected final mHardKeyManager:Lopenlight/co/camera/listener/HardKeyManager;

.field protected mIsPrimaryControlEnabled:Z

.field protected mLayoutPaddingFrame:Landroid/widget/FrameLayout;

.field protected final mLensObstructionDetector:Lopenlight/co/camera/utils/LensObstructionDetector;

.field protected final mMainLooperHandler:Landroid/os/Handler;

.field protected final mOnObstructionEventListener:Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;

.field protected final mOnTouchStripEventListener:Lopenlight/co/touchstrip/TouchStrip$OnTouchStripEventListener;

.field protected mOverlayWarningView:Lopenlight/co/camera/view/alerts/OverlayWarningView;

.field protected final mPrefListener:Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;

.field protected mPreviewSize:Landroid/util/Size;

.field protected mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

.field private final mProximityNotification:Lopenlight/co/camera/view/proximity/ProximitySensorNotification;

.field private final mResources:Landroid/content/res/Resources;

.field protected mRootContainer:Landroid/view/ViewGroup;

.field protected mScreenGestureListener:Lopenlight/co/camera/listener/ScreenGestureListener;

.field protected final mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

.field protected final mSoundManager:Lopenlight/co/camera/utils/SoundManager;

.field protected final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private final mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

.field protected mSystemUiVisible:Z

.field protected mTextureLayout:Landroid/widget/FrameLayout;

.field protected mTextureView:Lopenlight/co/camera/AutoFitTextureView;

.field protected final mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

.field protected final mTouchStrip:Lopenlight/co/touchstrip/TouchStrip;

.field protected mVideoController:Lopenlight/co/camera/VideoController;

.field protected final mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

.field protected volatile mZoomTriggersFocus:Z

.field protected mZoomWheel:Lopenlight/co/camera/view/zoom/ZoomWheel;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 120
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lopenlight/co/camera/BasePreviewFragment;->ORIENTATIONS:Landroid/util/SparseIntArray;

    .line 124
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lopenlight/co/camera/BasePreviewFragment;->DEFAULT_ORIENTATIONS:Landroid/util/SparseIntArray;

    .line 125
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lopenlight/co/camera/BasePreviewFragment;->INVERSE_ORIENTATIONS:Landroid/util/SparseIntArray;

    .line 145
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->ORIENTATIONS:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 146
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->ORIENTATIONS:Landroid/util/SparseIntArray;

    const/16 v2, 0x5a

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 147
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->ORIENTATIONS:Landroid/util/SparseIntArray;

    const/16 v4, 0xb4

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 148
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->ORIENTATIONS:Landroid/util/SparseIntArray;

    const/16 v6, 0x10e

    const/4 v7, 0x3

    invoke-virtual {v0, v7, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 152
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->DEFAULT_ORIENTATIONS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 153
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->DEFAULT_ORIENTATIONS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 154
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->DEFAULT_ORIENTATIONS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 155
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->DEFAULT_ORIENTATIONS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 159
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->INVERSE_ORIENTATIONS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 160
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->INVERSE_ORIENTATIONS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 161
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->INVERSE_ORIENTATIONS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 162
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->INVERSE_ORIENTATIONS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 100
    invoke-direct {p0}, Lopenlight/co/lib/view/LightFragment;-><init>()V

    .line 165
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    invoke-static {v0}, Lopenlight/co/touchstrip/TouchStrip;->get(Landroid/app/Application;)Lopenlight/co/touchstrip/TouchStrip;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mTouchStrip:Lopenlight/co/touchstrip/TouchStrip;

    .line 167
    invoke-static {}, Lopenlight/co/camera/metrics/Metrics;->get()Lopenlight/co/camera/metrics/Metrics;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;

    .line 169
    invoke-static {}, Lopenlight/co/camera/CameraInfo;->get()Lopenlight/co/camera/CameraInfo;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    .line 171
    invoke-static {}, Lopenlight/co/camera/utils/SoundManager;->get()Lopenlight/co/camera/utils/SoundManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mSoundManager:Lopenlight/co/camera/utils/SoundManager;

    .line 173
    invoke-static {}, Lopenlight/co/camera/managers/zoom/ZoomManager;->get()Lopenlight/co/camera/managers/zoom/ZoomManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    .line 175
    invoke-static {}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->get()Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mAutoExposureManager:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    .line 177
    invoke-static {}, Lopenlight/co/camera/utils/TimingLoggerUtil;->get()Lopenlight/co/camera/utils/TimingLoggerUtil;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

    .line 179
    invoke-static {}, Lopenlight/co/camera/managers/focus/FocusManager;->get()Lopenlight/co/camera/managers/focus/FocusManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mFocusManager:Lopenlight/co/camera/managers/focus/FocusManager;

    .line 181
    invoke-static {}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->get()Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    .line 183
    invoke-static {}, Lopenlight/co/camera/utils/LensObstructionDetector;->get()Lopenlight/co/camera/utils/LensObstructionDetector;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mLensObstructionDetector:Lopenlight/co/camera/utils/LensObstructionDetector;

    .line 187
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v0}, Lopenlight/co/camera/CameraInfo;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 189
    sget-object v0, Lopenlight/co/camera/-$$Lambda$VHoBP3n01T-xYwXx8e0ZTKBHfkE;->INSTANCE:Lopenlight/co/camera/-$$Lambda$VHoBP3n01T-xYwXx8e0ZTKBHfkE;

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    .line 194
    invoke-static {}, Lopenlight/co/camera/haptic/PlayHaptic;->get()Lopenlight/co/camera/haptic/PlayHaptic;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

    .line 199
    invoke-static {}, Lopenlight/co/camera/listener/HardKeyManager;->get()Lopenlight/co/camera/listener/HardKeyManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mHardKeyManager:Lopenlight/co/camera/listener/HardKeyManager;

    .line 204
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    .line 209
    invoke-static {}, Lopenlight/co/camera/utils/CameraState;->get()Lopenlight/co/camera/utils/CameraState;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCameraState:Lopenlight/co/camera/utils/CameraState;

    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomTriggersFocus:Z

    const/4 v1, 0x1

    .line 252
    iput-boolean v1, p0, Lopenlight/co/camera/BasePreviewFragment;->mIsPrimaryControlEnabled:Z

    .line 257
    iput-boolean v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mAspectRatioChange:Z

    .line 266
    invoke-static {}, Lopenlight/co/camera/view/ftu/FtuHelper;->get()Lopenlight/co/camera/view/ftu/FtuHelper;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    .line 268
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/CameraApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mResources:Landroid/content/res/Resources;

    .line 270
    invoke-static {}, Lopenlight/co/camera/view/face/FaceViewHelper;->get()Lopenlight/co/camera/view/face/FaceViewHelper;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mFaceViewHelper:Lopenlight/co/camera/view/face/FaceViewHelper;

    .line 280
    new-instance v0, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;

    invoke-direct {v0}, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mProximityNotification:Lopenlight/co/camera/view/proximity/ProximitySensorNotification;

    .line 287
    new-instance v0, Lopenlight/co/camera/BasePreviewFragment$1;

    invoke-direct {v0, p0}, Lopenlight/co/camera/BasePreviewFragment$1;-><init>(Lopenlight/co/camera/BasePreviewFragment;)V

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 324
    new-instance v0, Lopenlight/co/camera/BasePreviewFragment$2;

    invoke-direct {v0, p0}, Lopenlight/co/camera/BasePreviewFragment$2;-><init>(Lopenlight/co/camera/BasePreviewFragment;)V

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mOnObstructionEventListener:Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;

    .line 360
    new-instance v0, Lopenlight/co/camera/BasePreviewFragment$3;

    invoke-direct {v0, p0}, Lopenlight/co/camera/BasePreviewFragment$3;-><init>(Lopenlight/co/camera/BasePreviewFragment;)V

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mPrefListener:Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;

    .line 374
    new-instance v0, Lopenlight/co/camera/BasePreviewFragment$4;

    invoke-direct {v0, p0}, Lopenlight/co/camera/BasePreviewFragment$4;-><init>(Lopenlight/co/camera/BasePreviewFragment;)V

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 387
    new-instance v0, Lopenlight/co/camera/BasePreviewFragment$5;

    invoke-direct {v0, p0}, Lopenlight/co/camera/BasePreviewFragment$5;-><init>(Lopenlight/co/camera/BasePreviewFragment;)V

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mBatteryStatusMonitor:Lopenlight/co/camera/view/notification/BatteryStatusMonitor;

    .line 723
    new-instance v0, Lopenlight/co/camera/BasePreviewFragment$6;

    invoke-direct {v0, p0}, Lopenlight/co/camera/BasePreviewFragment$6;-><init>(Lopenlight/co/camera/BasePreviewFragment;)V

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mOnTouchStripEventListener:Lopenlight/co/touchstrip/TouchStrip$OnTouchStripEventListener;

    .line 1164
    new-instance v0, Lopenlight/co/camera/BasePreviewFragment$7;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lopenlight/co/camera/BasePreviewFragment$7;-><init>(Lopenlight/co/camera/BasePreviewFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 100
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lopenlight/co/camera/BasePreviewFragment;)Lopenlight/co/camera/view/proximity/ProximitySensorNotification;
    .registers 1

    .line 100
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mProximityNotification:Lopenlight/co/camera/view/proximity/ProximitySensorNotification;

    return-object p0
.end method

.method static synthetic access$200(Lopenlight/co/camera/BasePreviewFragment;I)V
    .registers 2

    .line 100
    invoke-direct {p0, p1}, Lopenlight/co/camera/BasePreviewFragment;->checkLowBattery(I)V

    return-void
.end method

.method static synthetic access$300(Lopenlight/co/camera/BasePreviewFragment;II)V
    .registers 3

    .line 100
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/BasePreviewFragment;->updateBatteryInfo(II)V

    return-void
.end method

.method static synthetic access$400(Lopenlight/co/camera/BasePreviewFragment;Z)V
    .registers 2

    .line 100
    invoke-direct {p0, p1}, Lopenlight/co/camera/BasePreviewFragment;->setZoomToNextPrimeLevel(Z)V

    return-void
.end method

.method protected static checkAspectsEqual(Landroid/util/Size;Landroid/util/Size;)Z
    .registers 4

    .line 753
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    mul-int/2addr p0, p1

    if-ne v0, p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private checkLowBattery(I)V
    .registers 4

    const/16 v0, 0xb

    if-ge p1, v0, :cond_29

    .line 1269
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment;->mHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

    sget-object v0, Lopenlight/co/camera/haptic/Immersion;->LOW_BATTERY:Lopenlight/co/camera/haptic/Immersion;

    invoke-virtual {p1, v0}, Lopenlight/co/camera/haptic/PlayHaptic;->playHaptic(Lopenlight/co/camera/haptic/Immersion;)V

    .line 1270
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lopenlight/co/camera/view/alerts/AlertActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "fragment_tag"

    .line 1271
    sget-object v1, Lopenlight/co/camera/view/alerts/LowBatteryFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 1272
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1273
    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_29
    return-void
.end method

.method private initFaceDetect()V
    .registers 3

    .line 1341
    invoke-static {}, Lopenlight/co/camera/utils/FaceDetector;->get()Lopenlight/co/camera/utils/FaceDetector;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/utils/FaceDetector;->isFaceDetectionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1342
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mFaceViewHelper:Lopenlight/co/camera/view/face/FaceViewHelper;

    iget-object v1, p0, Lopenlight/co/camera/BasePreviewFragment;->mRootContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v1, p0}, Lopenlight/co/camera/view/face/FaceViewHelper;->init(Landroid/view/ViewGroup;Landroid/util/Size;)V

    :cond_13
    return-void
.end method

.method protected static sensorToDeviceRotation(Landroid/hardware/camera2/CameraCharacteristics;I)I
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_5

    move v1, v0

    goto :goto_11

    .line 769
    :cond_5
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Lopenlight/co/camera/utils/Util;->valueOf(Ljava/lang/Integer;)I

    move-result v1

    .line 772
    :goto_11
    sget-object v2, Lopenlight/co/camera/BasePreviewFragment;->ORIENTATIONS:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-nez p0, :cond_1a

    goto :goto_26

    .line 775
    :cond_1a
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-static {p0}, Lopenlight/co/camera/utils/Util;->valueOf(Ljava/lang/Integer;)I

    move-result v0

    :goto_26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 776
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_31

    neg-int p1, p1

    :cond_31
    add-int/2addr v1, p1

    add-int/lit16 v1, v1, 0x168

    .line 782
    rem-int/lit16 v1, v1, 0x168

    return v1
.end method

.method private setZoomToNextPrimeLevel(Z)V
    .registers 5

    .line 1319
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mAutoExposureManager:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->isMetering()Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mFocusManager:Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/focus/FocusManager;->isFocusing()Z

    move-result v0

    if-nez v0, :cond_64

    # .line 1320
    # invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->removePrimaryControl()V

    .line 1321
    sget-object v0, Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;->TOUCHSTRIP:Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;

    invoke-virtual {p0, v0}, Lopenlight/co/camera/BasePreviewFragment;->showZoomWheelView(Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;)V

    .line 1322
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {v0, p1}, Lopenlight/co/camera/managers/zoom/ZoomManager;->calculatePrimeLevel(Z)F

    move-result p1

    .line 1323
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFling current mZoomLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {v2}, Lopenlight/co/camera/managers/zoom/ZoomManager;->getZoomLevel()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " changing to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->getZoomLevel()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_56

    .line 1326
    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->removeFocusCrossHair()V

    .line 1327
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    iget-object v1, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomWheel:Lopenlight/co/camera/view/zoom/ZoomWheel;

    invoke-virtual {v0, p1, v1}, Lopenlight/co/camera/managers/zoom/ZoomManager;->zoomToNextPrime(FLopenlight/co/camera/view/zoom/ZoomWheel;)V

    .line 1330
    :cond_56
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v0, 0xcc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1331
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_64
    return-void
.end method

.method private updateBatteryInfo(II)V
    .registers 4

    .line 1281
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-eqz v0, :cond_9

    .line 1282
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->showAlertView(II)V

    :cond_9
    return-void
.end method


# virtual methods
.method protected addPrimaryControl()V
    .registers 3

    .line 982
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->openLayoutAnimation()V

    .line 983
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->setUpdateFocusViewListener(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$UpdateFocusViewListener;)V

    .line 984
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    iget-boolean v1, p0, Lopenlight/co/camera/BasePreviewFragment;->mIsPrimaryControlEnabled:Z

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->updateControls(Z)V

    .line 985
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mBatteryStatusMonitor:Lopenlight/co/camera/view/notification/BatteryStatusMonitor;

    invoke-virtual {v0}, Lopenlight/co/camera/view/notification/BatteryStatusMonitor;->getBatteryLevel()I

    move-result v0

    iget-object v1, p0, Lopenlight/co/camera/BasePreviewFragment;->mBatteryStatusMonitor:Lopenlight/co/camera/view/notification/BatteryStatusMonitor;

    .line 986
    invoke-virtual {v1}, Lopenlight/co/camera/view/notification/BatteryStatusMonitor;->getChargingStatus()I

    move-result v1

    .line 985
    invoke-direct {p0, v0, v1}, Lopenlight/co/camera/BasePreviewFragment;->updateBatteryInfo(II)V

    return-void
.end method

.method protected addTextureView()V
    .registers 4

    .line 627
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TextureView in addTextureView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    const/4 v1, 0x0

    if-nez v0, :cond_30

    .line 630
    new-instance v0, Lopenlight/co/camera/AutoFitTextureView;

    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lopenlight/co/camera/AutoFitTextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    .line 631
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCameraState:Lopenlight/co/camera/utils/CameraState;

    iget-object v1, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/utils/CameraState;->setTextureView(Lopenlight/co/camera/AutoFitTextureView;)V

    goto :goto_42

    .line 634
    :cond_30
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 636
    instance-of v2, v0, Lopenlight/co/camera/AutoFitTextureView;

    if-eqz v2, :cond_3d

    goto :goto_43

    .line 639
    :cond_3d
    iget-object v1, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_42
    :goto_42
    const/4 v1, 0x1

    :goto_43
    if-eqz v1, :cond_4c

    .line 645
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureLayout:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_4c
    return-void
.end method

.method protected addTouchAndOrientationListener()V
    .registers 2

    .line 803
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mRootContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_b

    .line 804
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mRootContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mScreenGestureListener:Lopenlight/co/camera/listener/ScreenGestureListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_b
    return-void
.end method

.method public cameraDeviceError()V
    .registers 1

    .line 521
    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lopenlight/co/camera/utils/Util;->restartAppWithDelay(Landroid/app/Activity;)V

    return-void
.end method

.method public cameraDeviceOpen()V
    .registers 3

    .line 506
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mPreviewSize:Landroid/util/Size;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    invoke-virtual {v0}, Lopenlight/co/camera/AutoFitTextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 507
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;

    const-string v1, "Starting preview"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    iget-object v1, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    invoke-virtual {v1}, Lopenlight/co/camera/AutoFitTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v1, p0}, Lopenlight/co/camera/managers/CameraManager;->createCameraSession(Landroid/graphics/SurfaceTexture;Landroid/util/Size;)V

    :cond_26
    return-void
.end method

.method protected clear()V
    .registers 4

    .line 1109
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    .line 1110
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->clearState()V

    .line 1114
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->closeCamera()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1115
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->stopBackgroundThread()V

    :cond_14
    const/4 v1, 0x0

    .line 1117
    invoke-virtual {v0, v1}, Lopenlight/co/camera/managers/CameraManager;->setUpdatePreviewListener(Lopenlight/co/camera/managers/CameraManager$UpdatePreview;)V

    .line 1119
    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->removeTouchAndOrientationListener()V

    .line 1120
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->getListenerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lopenlight/co/camera/view/rotate/OrientationsController;->unregisterOrientationListenerWithTag(Ljava/lang/String;)V

    .line 1121
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mBatteryStatusMonitor:Lopenlight/co/camera/view/notification/BatteryStatusMonitor;

    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lopenlight/co/camera/view/notification/BatteryStatusMonitor;->unregister(Landroid/content/Context;)V

    .line 1122
    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->releaseFaceDetect()V

    .line 1123
    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->removeFocusCrossHair()V

    .line 1125
    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->removePrimaryControl()V

    .line 1127
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->release()V

    .line 1128
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mSoundManager:Lopenlight/co/camera/utils/SoundManager;

    invoke-virtual {v0}, Lopenlight/co/camera/utils/SoundManager;->releaseSoundResources()V

    .line 1129
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

    invoke-virtual {v0}, Lopenlight/co/camera/haptic/PlayHaptic;->close()V

    .line 1131
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mAutoExposureManager:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->setAeUiUpdateListener(Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$AeUiUpdate;)V

    .line 1132
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mFocusManager:Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/focus/FocusManager;->resetFocusStateToIdle()V

    .line 1133
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mFocusManager:Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/focus/FocusManager;->unregisterFocusListener()V

    .line 1135
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCameraState:Lopenlight/co/camera/utils/CameraState;

    sget-object v2, Lopenlight/co/camera/utils/CameraState$DeviceState;->CLOSED:Lopenlight/co/camera/utils/CameraState$DeviceState;

    invoke-virtual {v0, v2}, Lopenlight/co/camera/utils/CameraState;->setDeviceState(Lopenlight/co/camera/utils/CameraState$DeviceState;)V

    .line 1136
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    iget-object v2, p0, Lopenlight/co/camera/BasePreviewFragment;->mPrefListener:Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;

    invoke-interface {v0, v2}, Lopenlight/co/lib/content/Prefs;->unregisterChangeListener(Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;)V

    .line 1137
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mTouchStrip:Lopenlight/co/touchstrip/TouchStrip;

    iget-object v2, p0, Lopenlight/co/camera/BasePreviewFragment;->mOnTouchStripEventListener:Lopenlight/co/touchstrip/TouchStrip$OnTouchStripEventListener;

    invoke-virtual {v0, v2}, Lopenlight/co/touchstrip/TouchStrip;->unregisterEventListener(Lopenlight/co/touchstrip/TouchStrip$OnTouchStripEventListener;)V

    .line 1138
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mLensObstructionDetector:Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/utils/LensObstructionDetector;->setOnObstructionEventListener(Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;)V

    .line 1139
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mProximityNotification:Lopenlight/co/camera/view/proximity/ProximitySensorNotification;

    invoke-virtual {v0}, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->closeAll()V

    .line 1140
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mHardKeyManager:Lopenlight/co/camera/listener/HardKeyManager;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/listener/HardKeyManager;->unregisterKeyListener(Lopenlight/co/camera/listener/HardKeyManager$OnKeyListener;)V

    .line 1143
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mOverlayWarningView:Lopenlight/co/camera/view/alerts/OverlayWarningView;

    invoke-virtual {v0}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->clear()V

    .line 1144
    invoke-static {}, Lopenlight/co/lib/thermal/ThermalManager;->get()Lopenlight/co/lib/thermal/ThermalManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lopenlight/co/lib/thermal/ThermalManager;->unregisterThermalStateListener(Lopenlight/co/lib/thermal/ThermalManager$ThermalStateListener;)V

    .line 1145
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCrossHairView:Lopenlight/co/camera/view/focus/CrossHair;

    if-eqz v0, :cond_8f

    .line 1146
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCrossHairView:Lopenlight/co/camera/view/focus/CrossHair;

    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->clear()V

    :cond_8f
    return-void
.end method

.method protected closeAllResourcesAndRestartApp()V
    .registers 3

    .line 789
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 790
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v0, 0xcf

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected configureTransform(II)V
    .registers 15

    .line 1006
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configure transform view W: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " H: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1010
    iget-object v1, p0, Lopenlight/co/camera/BasePreviewFragment;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v1}, Lopenlight/co/camera/CameraInfo;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 1012
    iget-object v2, p0, Lopenlight/co/camera/BasePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v2}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {v2}, Lopenlight/co/camera/managers/CameraManager;->getCameraStateLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1016
    :try_start_35
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 1017
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1018
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1021
    invoke-static {v1, v3}, Lopenlight/co/camera/BasePreviewFragment;->sensorToDeviceRotation(Landroid/hardware/camera2/CameraCharacteristics;I)I

    move-result v0

    const/16 v1, 0x5a

    const/4 v5, 0x1

    if-eq v0, v1, :cond_61

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_5f

    goto :goto_61

    :cond_5f
    const/4 v0, 0x0

    goto :goto_62

    :cond_61
    :goto_61
    move v0, v5

    .line 1026
    :goto_62
    invoke-virtual {p0, p1, p2, v0, v4}, Lopenlight/co/camera/BasePreviewFragment;->getSizeForConfigureTransform(IIZLandroid/graphics/Point;)Landroid/util/Size;

    move-result-object v1

    .line 1029
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    .line 1030
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-eqz v0, :cond_7e

    .line 1033
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lopenlight/co/camera/AutoFitTextureView;->setAspectRatio(II)V

    goto :goto_8b

    .line 1035
    :cond_7e
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lopenlight/co/camera/AutoFitTextureView;->setAspectRatio(II)V

    .line 1038
    :goto_8b
    invoke-static {}, Lopenlight/co/camera/view/grid/GridViewModel;->getInstance()Lopenlight/co/camera/view/grid/GridViewModel;

    move-result-object v0

    .line 1039
    invoke-virtual {v0, v4}, Lopenlight/co/camera/view/grid/GridViewModel;->setPreviewWidth(I)V

    .line 1040
    invoke-virtual {v0, v6}, Lopenlight/co/camera/view/grid/GridViewModel;->setPreviewHeight(I)V

    .line 1044
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1045
    invoke-static {v0}, Lopenlight/co/camera/utils/Util;->valueOf(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_b0

    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->ORIENTATIONS:Landroid/util/SparseIntArray;

    .line 1047
    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_ba

    :cond_b0
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->ORIENTATIONS:Landroid/util/SparseIntArray;

    .line 1048
    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 1050
    :goto_ba
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 1051
    new-instance v8, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v9, 0x0

    invoke-direct {v8, v9, v9, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1052
    new-instance v10, Landroid/graphics/RectF;

    int-to-float v6, v6

    int-to-float v4, v4

    invoke-direct {v10, v9, v9, v6, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1053
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    .line 1054
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    if-eq v5, v3, :cond_db

    const/4 v5, 0x3

    if-ne v5, v3, :cond_f8

    .line 1074
    :cond_db
    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float v3, v9, v3

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float v5, v11, v5

    invoke-virtual {v10, v3, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 1075
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v7, v8, v10, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    div-float/2addr p2, v6

    div-float/2addr p1, v4

    .line 1076
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1079
    invoke-virtual {v7, p1, p1, v9, v11}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_f8
    int-to-float p1, v0

    .line 1082
    invoke-virtual {v7, p1, v9, v11}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1083
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    invoke-virtual {p1, v7}, Lopenlight/co/camera/AutoFitTextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 1086
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment;->mPreviewSize:Landroid/util/Size;

    if-eqz p1, :cond_10d

    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment;->mPreviewSize:Landroid/util/Size;

    invoke-static {v1, p1}, Lopenlight/co/camera/BasePreviewFragment;->checkAspectsEqual(Landroid/util/Size;Landroid/util/Size;)Z

    move-result p1

    if-nez p1, :cond_13a

    .line 1087
    :cond_10d
    iput-object v1, p0, Lopenlight/co/camera/BasePreviewFragment;->mPreviewSize:Landroid/util/Size;

    .line 1088
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-eqz p1, :cond_118

    .line 1089
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->updateGridView()V

    .line 1091
    :cond_118
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment;->mCameraState:Lopenlight/co/camera/utils/CameraState;

    invoke-virtual {p1}, Lopenlight/co/camera/utils/CameraState;->isCameraOpen()Z

    move-result p1

    if-eqz p1, :cond_13a

    .line 1092
    sget-object p1, Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;

    const-string p2, "[CONFIGURE] Start creating preview session"

    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {p1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/camera/managers/CameraManager;

    iget-object p2, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    .line 1094
    invoke-virtual {p2}, Lopenlight/co/camera/AutoFitTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mPreviewSize:Landroid/util/Size;

    .line 1093
    invoke-virtual {p1, p2, v0}, Lopenlight/co/camera/managers/CameraManager;->createCameraSession(Landroid/graphics/SurfaceTexture;Landroid/util/Size;)V

    .line 1098
    :cond_13a
    sget-object p1, Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[CONFIGURE]: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    invoke-virtual {v0}, Lopenlight/co/camera/AutoFitTextureView;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " x "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    .line 1099
    invoke-virtual {p0}, Lopenlight/co/camera/AutoFitTextureView;->getHeight()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1098
    invoke-static {p1, p0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    monitor-exit v2

    return-void

    :catchall_166
    move-exception p0

    monitor-exit v2
    :try_end_168
    .catchall {:try_start_35 .. :try_end_168} :catchall_166

    throw p0
.end method

.method public disableControls()V
    .registers 1

    return-void
.end method

.method protected doFocusPostZoom()V
    .registers 5

    .line 815
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;

    const-string v1, "Focus post Focal length change"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-boolean v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomTriggersFocus:Z

    if-eqz v0, :cond_19

    .line 818
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 819
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_19
    return-void
.end method

.method public enableControls()V
    .registers 1

    return-void
.end method

.method public focusCompleted()V
    .registers 3

    .line 606
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;

    const-string v1, "[AF] Focus Completed: adding Focus View"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v0, 0xce

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public focusFailed()V
    .registers 2

    .line 612
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCrossHairView:Lopenlight/co/camera/view/focus/CrossHair;

    if-eqz v0, :cond_9

    .line 613
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCrossHairView:Lopenlight/co/camera/view/focus/CrossHair;

    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->showFocusFailed()V

    :cond_9
    return-void
.end method

.method public focusFailedUpdateUi()V
    .registers 2

    .line 554
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCrossHairView:Lopenlight/co/camera/view/focus/CrossHair;

    if-eqz v0, :cond_9

    .line 555
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCrossHairView:Lopenlight/co/camera/view/focus/CrossHair;

    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->showFocusFailed()V

    :cond_9
    return-void
.end method

.method public focusStarted()V
    .registers 1

    return-void
.end method

.method public focusSuccessUpdateUi()V
    .registers 3

    .line 546
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCrossHairView:Lopenlight/co/camera/view/focus/CrossHair;

    if-eqz v0, :cond_10

    .line 547
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;

    const-string v1, "focusSuccessUpdateUi"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCrossHairView:Lopenlight/co/camera/view/focus/CrossHair;

    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->showFocusAchieved()V

    :cond_10
    return-void
.end method

.method protected abstract getSizeForConfigureTransform(IIZLandroid/graphics/Point;)Landroid/util/Size;
.end method

.method protected abstract handleMessage(Landroid/os/Message;)V
    .param p1    # Landroid/os/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected abstract handleSystemUIChangeListener(Z)V
.end method

.method protected hideSystemUI()V
    .registers 2

    .line 824
    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 826
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 827
    invoke-static {v0}, Lopenlight/co/camera/utils/Util;->hideSystemUI(Landroid/view/View;)V

    .line 828
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_16
    return-void
.end method

.method protected hideSystemUIAfterADelay()V
    .registers 5

    .line 1310
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1311
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbea

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected isWithinPreview(Landroid/view/MotionEvent;Z)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public onCaptureSessionConfigured()V
    .registers 1

    .line 516
    invoke-direct {p0}, Lopenlight/co/camera/BasePreviewFragment;->initFaceDetect()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 415
    invoke-super {p0, p1}, Lopenlight/co/lib/view/LightFragment;->onCreate(Landroid/os/Bundle;)V

    .line 416
    invoke-static {}, Lopenlight/co/camera/utils/PermissionsManager;->get()Lopenlight/co/camera/utils/PermissionsManager;

    move-result-object p1

    .line 417
    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lopenlight/co/camera/utils/PermissionsManager;->hasAllPermissionsGranted(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 418
    sget-object p1, Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;

    const-string v0, "Permissions not granted"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_18
    new-instance p1, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;

    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;-><init>(Lopenlight/co/camera/BasePreviewFragment;Landroid/content/Context;)V

    iput-object p1, p0, Lopenlight/co/camera/BasePreviewFragment;->mScreenGestureListener:Lopenlight/co/camera/listener/ScreenGestureListener;

    .line 421
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {p1}, Lopenlight/co/camera/CameraInfo;->isCapableCameraAvailable()Z

    move-result p1

    if-nez p1, :cond_48

    .line 422
    sget-object p1, Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;

    const-string v0, "No compatible camera found"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0e0040

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/design/widget/Snackbar;->show()V

    .line 424
    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_48
    return-void
.end method

.method protected onDelayedResume()V
    .registers 9

    .line 1352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1354
    iget-object v2, p0, Lopenlight/co/camera/BasePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v2}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lopenlight/co/camera/managers/CameraManager;

    .line 1355
    invoke-virtual {v2, p0}, Lopenlight/co/camera/managers/CameraManager;->setUpdatePreviewListener(Lopenlight/co/camera/managers/CameraManager$UpdatePreview;)V

    .line 1356
    invoke-virtual {v2}, Lopenlight/co/camera/managers/CameraManager;->startBackgroundThread()V

    .line 1357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1358
    sget-object v5, Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Time to create background thread: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v0

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mSoundManager:Lopenlight/co/camera/utils/SoundManager;

    invoke-virtual {v0}, Lopenlight/co/camera/utils/SoundManager;->checkAndEnableSound()V

    .line 1363
    invoke-virtual {v2}, Lopenlight/co/camera/managers/CameraManager;->openCamera()Z

    .line 1369
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    invoke-virtual {v0}, Lopenlight/co/camera/AutoFitTextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1370
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    invoke-virtual {v0}, Lopenlight/co/camera/AutoFitTextureView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    invoke-virtual {v1}, Lopenlight/co/camera/AutoFitTextureView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lopenlight/co/camera/BasePreviewFragment;->configureTransform(II)V

    goto :goto_54

    .line 1372
    :cond_4d
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    iget-object v1, p0, Lopenlight/co/camera/BasePreviewFragment;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/AutoFitTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1375
    :goto_54
    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->addTouchAndOrientationListener()V

    .line 1378
    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->resetFocusAeParams()V

    .line 1379
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->setZoomUpdateOnUi(Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomUpdateOnUi;)V

    .line 1380
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    iget-object v1, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomWheel:Lopenlight/co/camera/view/zoom/ZoomWheel;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/managers/zoom/ZoomManager;->initZoomValue(Lopenlight/co/camera/view/zoom/ZoomWheel;)V

    .line 1382
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mAutoExposureManager:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->setAeUiUpdateListener(Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$AeUiUpdate;)V

    .line 1383
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mFocusManager:Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/focus/FocusManager;->resetFocusStateToIdle()V

    .line 1384
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mFocusManager:Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/managers/focus/FocusManager;->setFocusListener(Lopenlight/co/camera/listener/FocusListener;)V

    .line 1385
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    iget-object v1, p0, Lopenlight/co/camera/BasePreviewFragment;->mPrefListener:Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->registerChangeListener(Lopenlight/co/lib/content/Prefs$OnPreferenceChangeListener;)V

    .line 1386
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mTouchStrip:Lopenlight/co/touchstrip/TouchStrip;

    iget-object v1, p0, Lopenlight/co/camera/BasePreviewFragment;->mOnTouchStripEventListener:Lopenlight/co/touchstrip/TouchStrip$OnTouchStripEventListener;

    invoke-virtual {v0, v1}, Lopenlight/co/touchstrip/TouchStrip;->registerEventListener(Lopenlight/co/touchstrip/TouchStrip$OnTouchStripEventListener;)V

    .line 1387
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mLensObstructionDetector:Lopenlight/co/camera/utils/LensObstructionDetector;

    iget-object v1, p0, Lopenlight/co/camera/BasePreviewFragment;->mOnObstructionEventListener:Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/utils/LensObstructionDetector;->setOnObstructionEventListener(Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;)V

    .line 1388
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mHardKeyManager:Lopenlight/co/camera/listener/HardKeyManager;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/listener/HardKeyManager;->registerKeyListener(Lopenlight/co/camera/listener/HardKeyManager$OnKeyListener;)V

    .line 1389
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->init()V

    .line 1392
    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->hideSystemUI()V

    .line 1395
    invoke-static {}, Lopenlight/co/lib/thermal/ThermalManager;->get()Lopenlight/co/lib/thermal/ThermalManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lopenlight/co/lib/thermal/ThermalManager;->registerThermalStateListener(Lopenlight/co/lib/thermal/ThermalManager$ThermalStateListener;)V

    .line 1397
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/rotate/OrientationsController;->registerOrientationListener(Lopenlight/co/camera/listener/OrientationListener;)V

    .line 1398
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mBatteryStatusMonitor:Lopenlight/co/camera/view/notification/BatteryStatusMonitor;

    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/notification/BatteryStatusMonitor;->register(Landroid/content/Context;)V

    return-void
.end method

.method public onHardKeyEvent(Lopenlight/co/camera/listener/HardKeyManager$KeyType;Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)Z
    .registers 4

    .line 482
    sget-object v0, Lopenlight/co/camera/listener/HardKeyManager$KeyType;->FULL_KEY:Lopenlight/co/camera/listener/HardKeyManager$KeyType;

    if-ne p1, v0, :cond_9

    .line 483
    invoke-virtual {p0, p2}, Lopenlight/co/camera/BasePreviewFragment;->processHardKeyCapture(Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)Z

    move-result p0

    goto :goto_13

    .line 484
    :cond_9
    sget-object v0, Lopenlight/co/camera/listener/HardKeyManager$KeyType;->HALF_KEY:Lopenlight/co/camera/listener/HardKeyManager$KeyType;

    if-ne p1, v0, :cond_12

    .line 485
    invoke-virtual {p0, p2}, Lopenlight/co/camera/BasePreviewFragment;->processHardKeyFocus(Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)Z

    move-result p0

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public onNoFacesInPreview()V
    .registers 1

    .line 497
    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->removeFocusCrossHair()V

    return-void
.end method

.method public onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V
    .registers 5

    .line 430
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    if-eq v0, p1, :cond_44

    .line 431
    iput-object p1, p0, Lopenlight/co/camera/BasePreviewFragment;->mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    .line 432
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    invoke-virtual {v0}, Lopenlight/co/camera/AutoFitTextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 433
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    invoke-virtual {v0}, Lopenlight/co/camera/AutoFitTextureView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    invoke-virtual {v1}, Lopenlight/co/camera/AutoFitTextureView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lopenlight/co/camera/BasePreviewFragment;->configureTransform(II)V

    .line 436
    :cond_37
    invoke-virtual {p0, p1}, Lopenlight/co/camera/BasePreviewFragment;->updateRotateHistogramView(Lopenlight/co/camera/enums/OrientationConfig;)V

    .line 437
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mOverlayWarningView:Lopenlight/co/camera/view/alerts/OverlayWarningView;

    invoke-virtual {v0, p1}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V

    .line 438
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCrossHairView:Lopenlight/co/camera/view/focus/CrossHair;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/focus/CrossHair;->onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V

    :cond_44
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2a

    .line 400
    array-length p1, p2

    :cond_4
    :goto_4
    const/4 v0, -0x1

    add-int/2addr p1, v0

    if-ltz p1, :cond_2d

    .line 401
    aget v1, p3, p1

    if-ne v1, v0, :cond_18

    .line 402
    invoke-static {}, Lopenlight/co/camera/utils/PermissionsManager;->get()Lopenlight/co/camera/utils/PermissionsManager;

    move-result-object p1

    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lopenlight/co/camera/utils/PermissionsManager;->showMissingPermissionError(Landroid/app/Activity;)V

    return-void

    :cond_18
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 404
    aget-object v1, p2, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 405
    invoke-static {}, Lopenlight/co/camera/utils/LocationManager;->get()Lopenlight/co/camera/utils/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/utils/LocationManager;->startListening()V

    goto :goto_4

    .line 409
    :cond_2a
    invoke-super {p0, p1, p2, p3}, Lopenlight/co/lib/view/LightFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_2d
    return-void
.end method

.method public onTemperatureChange(Lopenlight/co/thermalmonitor/ThermalIntent$Level;)V
    .registers 5

    .line 448
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Temperature Change Event, Current level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    sget-object v0, Lopenlight/co/thermalmonitor/ThermalIntent$Level;->HOT:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    if-ne p1, v0, :cond_3b

    .line 452
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lopenlight/co/camera/view/alerts/AlertActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "fragment_tag"

    .line 453
    sget-object v1, Lopenlight/co/camera/view/alerts/ThermalShutdownFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 455
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;

    const-string p1, "event_modules_temp_hot"

    invoke-virtual {p0, p1}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;)V

    goto :goto_65

    .line 456
    :cond_3b
    sget-object v0, Lopenlight/co/thermalmonitor/ThermalIntent$Level;->WARMER:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    if-ne p1, v0, :cond_5f

    .line 457
    sget-object p1, Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;

    const-string v0, "Showing Warm temp warning"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment;->mOverlayWarningView:Lopenlight/co/camera/view/alerts/OverlayWarningView;

    const v0, 0x7f0e00ed

    const v1, 0x7f08010a

    invoke-virtual {p1, v0, v1}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->setContent(II)V

    .line 461
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment;->mOverlayWarningView:Lopenlight/co/camera/view/alerts/OverlayWarningView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->setVisibility(Z)V

    .line 462
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;

    const-string p1, "event_modules_temp_warm"

    invoke-virtual {p0, p1}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;)V

    goto :goto_65

    .line 466
    :cond_5f
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mOverlayWarningView:Lopenlight/co/camera/view/alerts/OverlayWarningView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->setVisibility(Z)V

    :goto_65
    return-void
.end method

.method protected abstract processHardKeyCapture(Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)Z
.end method

.method protected processHardKeyFocus(Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)Z
    .registers 4

    .line 1228
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment$8;->$SwitchMap$light$co$camera$listener$HardKeyManager$KeyAction:[I

    invoke-virtual {p1}, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7c

    goto :goto_79

    .line 1248
    :pswitch_c
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;

    const-string v1, "Long Press of focus key, set AE Lock "

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mAutoExposureManager:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    sget-object v1, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->LONG_PRESS:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->setAeHwLock(Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)V

    .line 1251
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-virtual {v0, p1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->processHardKeyFocus(Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)V

    .line 1255
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment;->mCrossHairView:Lopenlight/co/camera/view/focus/CrossHair;

    if-eqz p1, :cond_79

    .line 1256
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment;->mCrossHairView:Lopenlight/co/camera/view/focus/CrossHair;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mFocusManager:Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/focus/FocusManager;->getCurrentFocusPoint()Lopenlight/co/camera/models/MeteringPoint;

    move-result-object p0

    invoke-virtual {p1, p0}, Lopenlight/co/camera/view/focus/CrossHair;->updateCoordinatesAndDraw(Lopenlight/co/camera/models/MeteringPoint;)V

    goto :goto_79

    .line 1241
    :pswitch_2f
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mSystemUiVisible:Z

    if-nez v0, :cond_3c

    .line 1242
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->restoreViewsOnCaptureRequestComplete()V

    .line 1244
    :cond_3c
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mAutoExposureManager:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    sget-object v1, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->UP:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->setAeHwLock(Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)V

    .line 1245
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->processHardKeyFocus(Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)V

    goto :goto_79

    .line 1230
    :pswitch_49
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->HARD_KEY_PRESS_PROCESS:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/utils/TimingLoggerUtil;->captureTiming(Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;)V

    .line 1231
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 1232
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;

    const-string v1, "Processing Half Press HardKey Focus request"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-virtual {v0, p1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->processHardKeyFocus(Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)V

    goto :goto_72

    .line 1235
    :cond_6b
    sget-object p1, Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;

    const-string v0, "Ignoring Half Press HardKey Focus request, camera is busy"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    :goto_72
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;

    const-string p1, "event_capture_hard_key_half_pressed"

    invoke-virtual {p0, p1}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;)V

    :cond_79
    :goto_79
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_49
        :pswitch_2f
        :pswitch_c
    .end packed-switch
.end method

.method protected releaseFaceDetect()V
    .registers 2

    .line 664
    invoke-static {}, Lopenlight/co/camera/utils/FaceDetector;->get()Lopenlight/co/camera/utils/FaceDetector;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/utils/FaceDetector;->isFaceDetectionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 665
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mFaceViewHelper:Lopenlight/co/camera/view/face/FaceViewHelper;

    invoke-virtual {p0}, Lopenlight/co/camera/view/face/FaceViewHelper;->release()V

    :cond_f
    return-void
.end method

.method protected releaseTextureView()V
    .registers 3

    .line 654
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_e

    .line 655
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 656
    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mTextureView:Lopenlight/co/camera/AutoFitTextureView;

    :cond_e
    return-void
.end method

.method protected removeFocusCrossHair()V
    .registers 3

    .line 673
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;

    const-string v1, "Removing all Focus Ring related views"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCrossHairView:Lopenlight/co/camera/view/focus/CrossHair;

    if-eqz v0, :cond_10

    .line 675
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCrossHairView:Lopenlight/co/camera/view/focus/CrossHair;

    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->remove()V

    :cond_10
    return-void
.end method

.method public removePendingPostZoomCallbacks()V
    .registers 3

    .line 586
    sget-object v0, Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;

    const-string v1, "Release runnable"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v0, 0xd0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected removePrimaryControl()V
    .registers 3

    .line 680
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-eqz v0, :cond_11

    .line 681
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->setHistogramView(Lopenlight/co/lib/view/HistogramView;)V

    .line 682
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->closeAll()V

    .line 683
    iput-object v1, p0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    :cond_11
    return-void
.end method

.method protected removeTouchAndOrientationListener()V
    .registers 2

    .line 794
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mRootContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    .line 795
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mRootContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_a
    return-void
.end method

.method protected removeZoomWheelView()V
    .registers 5

    .line 709
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomWheel:Lopenlight/co/camera/view/zoom/ZoomWheel;

    if-eqz v0, :cond_9

    .line 710
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomWheel:Lopenlight/co/camera/view/zoom/ZoomWheel;

    invoke-virtual {v0}, Lopenlight/co/camera/view/zoom/ZoomWheel;->setZoomLevel()V

    .line 712
    :cond_9
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->resetZoom()V

    .line 714
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-eqz v0, :cond_18

    .line 715
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->updateHudTextOnZoomWheelView(Ljava/lang/String;)V

    .line 717
    :cond_18
    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->removePendingPostZoomCallbacks()V

    .line 718
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v1, 0xd0

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 720
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

    invoke-virtual {p0}, Lopenlight/co/camera/haptic/PlayHaptic;->stopAllHaptic()V

    return-void
.end method

.method protected resetFocusAeParams()V
    .registers 2

    .line 833
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mAutoExposureManager:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->setMeteringPointToCenter()V

    .line 834
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mFocusManager:Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/focus/FocusManager;->setFocusPointToCenter()V

    return-void
.end method

.method public resetPreviewSizeOnClose()V
    .registers 2

    .line 532
    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->releaseFaceDetect()V

    const/4 v0, 0x0

    .line 533
    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mPreviewSize:Landroid/util/Size;

    return-void
.end method

.method protected resetThumbNailPath()V
    .registers 3

    .line 1296
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v1, 0xd1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1297
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected showPrimaryControlWithDelay(J)V
    .registers 5

    .line 1291
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1292
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected showZoomWheelView(Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;)V
    .registers 5

    .line 688
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    .line 689
    iget-object v1, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {v1}, Lopenlight/co/camera/managers/zoom/ZoomManager;->startZoom()V

    .line 690
    iget-object v1, p0, Lopenlight/co/camera/BasePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v2, 0xcd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 691
    iget-object v1, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomWheel:Lopenlight/co/camera/view/zoom/ZoomWheel;

    invoke-virtual {v1, p1}, Lopenlight/co/camera/view/zoom/ZoomWheel;->setCurrentEventType(Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;)V

    .line 693
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment;->mScreenGestureListener:Lopenlight/co/camera/listener/ScreenGestureListener;

    invoke-virtual {p1}, Lopenlight/co/camera/listener/ScreenGestureListener;->getZoomPointerCount()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_27

    .line 694
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/zoom/ZoomManager;->setPinchZoomType()V

    .line 696
    :cond_27
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomWheel:Lopenlight/co/camera/view/zoom/ZoomWheel;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lopenlight/co/camera/view/zoom/ZoomWheel;->setVisibility(I)V

    .line 698
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-eqz p1, :cond_3f

    .line 699
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0e013f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->updateHudTextOnZoomWheelView(Ljava/lang/String;)V

    .line 701
    :cond_3f
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 702
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 701
    invoke-static {p0}, Lopenlight/co/camera/utils/Util;->valueOf(Ljava/lang/Integer;)I

    move-result p0

    if-eqz p0, :cond_63

    .line 703
    sget-object p0, Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;

    const-string p1, "Focus showZoomWheelView Idle"

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-static {}, Lopenlight/co/camera/managers/focus/FocusManager;->get()Lopenlight/co/camera/managers/focus/FocusManager;

    move-result-object p0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/focus/FocusManager;->cancelAfTrigger(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_63
    return-void
.end method

.method public triggerFocusPostZoom()V
    .registers 2

    const/4 v0, 0x1

    .line 597
    iput-boolean v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomTriggersFocus:Z

    return-void
.end method

.method public updateFocusUI()V
    .registers 2

    .line 577
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCrossHairView:Lopenlight/co/camera/view/focus/CrossHair;

    if-eqz v0, :cond_9

    .line 579
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mCrossHairView:Lopenlight/co/camera/view/focus/CrossHair;

    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->remove()V

    :cond_9
    return-void
.end method

.method public updateFocusView()V
    .registers 1

    .line 619
    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->removeFocusCrossHair()V

    return-void
.end method

.method public updateHistogram()V
    .registers 1

    return-void
.end method

.method public updateHudInfo(IJZ)V
    .registers 5

    return-void
.end method

.method public updateModeChange()V
    .registers 2

    .line 571
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->init()V

    .line 572
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomWheel:Lopenlight/co/camera/view/zoom/ZoomWheel;

    invoke-virtual {p0}, Lopenlight/co/camera/view/zoom/ZoomWheel;->setZoomLevel()V

    return-void
.end method

.method protected updatePrimaryControl()V
    .registers 3

    .line 1301
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1302
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mMainLooperHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected updateRotateHistogramView(Lopenlight/co/camera/enums/OrientationConfig;)V
    .registers 2

    return-void
.end method

.method public updateUiOnCaptureComplete()V
    .registers 1

    return-void
.end method

.method public updateVideoPreview()V
    .registers 1

    return-void
.end method

.method public updateZoomWheelLayout(I)V
    .registers 2

    .line 592
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomWheel:Lopenlight/co/camera/view/zoom/ZoomWheel;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/zoom/ZoomWheel;->setVisibility(I)V

    return-void
.end method
