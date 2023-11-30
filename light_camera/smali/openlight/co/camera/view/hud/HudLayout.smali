.class public Lopenlight/co/camera/view/hud/HudLayout;
.super Lopenlight/co/camera/managers/controls/ControlManager;
.source "HudLayout.java"

# interfaces
.implements Lopenlight/co/camera/listener/OrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/view/hud/HudLayout$HudData;,
        Lopenlight/co/camera/view/hud/HudLayout$HudValue;,
        Lopenlight/co/camera/view/hud/HudLayout$HudColor;
    }
.end annotation


# static fields
.field private static final ENABLE_VERBOSE_LOGGING:Z

.field private static final EV_OFFSET_TO_VALUE_FACTOR:F = 6.0f

.field private static final HUD_OPEN_CLOSE_ANIMATION_DURATION:I = 0x64

.field private static final MIN_EXP_FOR_FACTOR_REPRESENTATION:J = 0x11e1a300L

.field private static final TAG:Ljava/lang/String; = "HudLayout"


# instance fields
.field private final mCamPref:Lopenlight/co/lib/content/Prefs;

.field private final mCameraInfo:Lopenlight/co/camera/CameraInfo;

.field private final mCloseOutAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private final mContext:Landroid/content/Context;

.field private final mDiffToolBar:I

.field private final mExposureItems:[Ljava/lang/String;

.field private mExposureValue:J

.field private final mHighResolutionImageValue:Ljava/lang/String;

.field private mHudColor:Lopenlight/co/camera/view/hud/HudLayout$HudColor;

.field private final mHudElementsMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lopenlight/co/camera/view/hud/HudLayout$HudValue;",
            "Lopenlight/co/camera/view/hud/HudLayout$HudData;",
            ">;"
        }
    .end annotation
.end field

.field private final mHudExposureTimeNumerator:Ljava/lang/String;

.field private final mHudLayout:Landroid/widget/RelativeLayout;

.field private final mHudLayoutView:Landroid/view/View;

.field private final mImageFragmentView:Landroid/view/ViewGroup;

.field private mIsAncillaryOpen:Z

.field private mIsoValue:I

.field private final mOnTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v0

    const-string v1, "hud.logging"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lopenlight/co/lib/utils/FeatureManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lopenlight/co/camera/view/hud/HudLayout;->ENABLE_VERBOSE_LOGGING:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 4

    .line 95
    invoke-direct {p0}, Lopenlight/co/camera/managers/controls/ControlManager;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mIsAncillaryOpen:Z

    .line 77
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v1

    iput-object v1, p0, Lopenlight/co/camera/view/hud/HudLayout;->mCamPref:Lopenlight/co/lib/content/Prefs;

    .line 78
    invoke-static {}, Lopenlight/co/camera/CameraInfo;->get()Lopenlight/co/camera/CameraInfo;

    move-result-object v1

    iput-object v1, p0, Lopenlight/co/camera/view/hud/HudLayout;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    .line 79
    sget-object v1, Lopenlight/co/camera/view/hud/HudLayout$HudColor;->TRANSPARENT:Lopenlight/co/camera/view/hud/HudLayout$HudColor;

    iput-object v1, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudColor:Lopenlight/co/camera/view/hud/HudLayout$HudColor;

    .line 80
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudElementsMap:Ljava/util/EnumMap;

    .line 84
    iput v0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mIsoValue:I

    const-wide/16 v1, 0x0

    .line 85
    iput-wide v1, p0, Lopenlight/co/camera/view/hud/HudLayout;->mExposureValue:J

    .line 379
    new-instance v1, Lopenlight/co/camera/view/hud/HudLayout$1;

    invoke-direct {v1, p0}, Lopenlight/co/camera/view/hud/HudLayout$1;-><init>(Lopenlight/co/camera/view/hud/HudLayout;)V

    iput-object v1, p0, Lopenlight/co/camera/view/hud/HudLayout;->mCloseOutAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 405
    new-instance v1, Lopenlight/co/camera/view/hud/HudLayout$2;

    invoke-direct {v1, p0}, Lopenlight/co/camera/view/hud/HudLayout$2;-><init>(Lopenlight/co/camera/view/hud/HudLayout;)V

    iput-object v1, p0, Lopenlight/co/camera/view/hud/HudLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 96
    iput-object p1, p0, Lopenlight/co/camera/view/hud/HudLayout;->mContext:Landroid/content/Context;

    .line 97
    iput-boolean p3, p0, Lopenlight/co/camera/view/hud/HudLayout;->mIsAncillaryOpen:Z

    .line 98
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/hud/HudLayout;->getPixelDiff(Landroid/content/Context;)I

    move-result p3

    iput p3, p0, Lopenlight/co/camera/view/hud/HudLayout;->mDiffToolBar:I

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f030005

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lopenlight/co/camera/view/hud/HudLayout;->mExposureItems:[Ljava/lang/String;

    .line 100
    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lopenlight/co/camera/view/hud/HudLayout;->mImageFragmentView:Landroid/view/ViewGroup;

    .line 101
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 102
    iget-object p3, p0, Lopenlight/co/camera/view/hud/HudLayout;->mImageFragmentView:Landroid/view/ViewGroup;

    const v1, 0x7f0b0045

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudLayoutView:Landroid/view/View;

    .line 103
    iget-object p2, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudLayoutView:Landroid/view/View;

    const p3, 0x7f0900bb

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudLayout:Landroid/widget/RelativeLayout;

    const p2, 0x7f0e00d2

    .line 104
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudExposureTimeNumerator:Ljava/lang/String;

    const p2, 0x7f0e00d4

    .line 105
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHighResolutionImageValue:Ljava/lang/String;

    .line 108
    invoke-static {}, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->values()[Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    move-result-object p2

    array-length p3, p2

    :goto_0
    if-ge v0, p3, :cond_0

    aget-object v1, p2, v0

    .line 109
    new-instance v2, Lopenlight/co/camera/view/hud/HudLayout$HudData;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lopenlight/co/camera/view/hud/HudLayout$HudData;-><init>(Lopenlight/co/camera/view/hud/HudLayout;Lopenlight/co/camera/view/hud/HudLayout$1;)V

    .line 110
    invoke-virtual {v1}, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->getHudUnitTextResourceId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lopenlight/co/camera/view/hud/HudLayout$HudData;->setHudUnitText(Ljava/lang/String;)V

    .line 111
    iget-object v3, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudElementsMap:Ljava/util/EnumMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lopenlight/co/camera/view/hud/HudLayout;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mIsAncillaryOpen:Z

    return p0
.end method

.method static synthetic access$200(Lopenlight/co/camera/view/hud/HudLayout;)I
    .locals 0

    .line 58
    iget p0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mDiffToolBar:I

    return p0
.end method

.method static synthetic access$300(Lopenlight/co/camera/view/hud/HudLayout;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lopenlight/co/camera/view/hud/HudLayout;->setHudColor()V

    return-void
.end method

.method static synthetic access$400(Lopenlight/co/camera/view/hud/HudLayout;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lopenlight/co/camera/view/hud/HudLayout;->setBackground()V

    return-void
.end method

.method private createDofValue()Ljava/lang/String;
    .locals 1

    .line 576
    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "dof_val"

    invoke-interface {p0, v0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createEvValue()Ljava/lang/String;
    .locals 4

    .line 538
    iget-object v0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "ex_index"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 539
    invoke-static {v0}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->forIndex(I)Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->getExposureCompensationVal()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    .line 541
    sget-object v1, Lopenlight/co/camera/view/hud/HudLayout;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "evValueNow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lopenlight/co/camera/utils/Util;->formatEvValue(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createIsoValue()Ljava/lang/String;
    .locals 1

    .line 517
    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "iso_index"

    invoke-interface {p0, v0}, Lopenlight/co/lib/content/Prefs;->getIntValue(Ljava/lang/String;)I

    move-result p0

    .line 518
    invoke-static {p0}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->forIndex(I)Lopenlight/co/camera/utils/Constants$SensitivityValues;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->getSensitivityVal()I

    move-result p0

    .line 519
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createResolutionValue()Ljava/lang/String;
    .locals 3

    .line 506
    iget-object v0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    iget-object v1, p0, Lopenlight/co/camera/view/hud/HudLayout;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v2, "zoom_value"

    .line 507
    invoke-interface {v1, v2}, Lopenlight/co/lib/content/Prefs;->getFloatValue(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lopenlight/co/camera/CameraInfo;->getFinalCaptureResolution(F)I

    move-result v0

    const/16 v1, 0x34

    if-le v0, v1, :cond_0

    .line 508
    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHighResolutionImageValue:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private createShutterValue()Ljava/lang/String;
    .locals 2

    .line 528
    iget-object v0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "shutter_index"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 529
    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mExposureItems:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0
.end method

.method private createZoomValue()Ljava/lang/String;
    .locals 1

    .line 495
    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "zoom_value"

    invoke-interface {p0, v0}, Lopenlight/co/lib/content/Prefs;->getFloatValue(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private disableHudElement(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lopenlight/co/camera/view/hud/HudLayout$HudValue;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lopenlight/co/camera/view/hud/HudLayout$HudValue;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lopenlight/co/camera/view/hud/HudLayout$HudValue;",
            ">;)V"
        }
    .end annotation

    .line 316
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 317
    iget-object v2, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudElementsMap:Ljava/util/EnumMap;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lopenlight/co/camera/view/hud/HudLayout$HudData;

    invoke-virtual {v2}, Lopenlight/co/camera/view/hud/HudLayout$HudData;->getHudElementLayout()Lopenlight/co/camera/view/rotate/RotateLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lopenlight/co/camera/view/rotate/RotateLayout;->setVisibility(I)V

    .line 318
    iget-object v1, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudElementsMap:Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/hud/HudLayout$HudData;

    invoke-virtual {v0}, Lopenlight/co/camera/view/hud/HudLayout$HudData;->getHudElementLayout()Lopenlight/co/camera/view/rotate/RotateLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/rotate/RotateLayout;->setAlpha(F)V

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 321
    iget-object v0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudElementsMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/hud/HudLayout$HudData;

    invoke-virtual {v0}, Lopenlight/co/camera/view/hud/HudLayout$HudData;->getHudElementLayout()Lopenlight/co/camera/view/rotate/RotateLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/rotate/RotateLayout;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudElementsMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lopenlight/co/camera/view/hud/HudLayout$HudData;

    invoke-virtual {p2}, Lopenlight/co/camera/view/hud/HudLayout$HudData;->getHudElementLayout()Lopenlight/co/camera/view/rotate/RotateLayout;

    move-result-object p2

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p2, v0}, Lopenlight/co/camera/view/rotate/RotateLayout;->setAlpha(F)V

    goto :goto_1

    .line 324
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 325
    iget-object p3, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudElementsMap:Ljava/util/EnumMap;

    invoke-virtual {p3, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lopenlight/co/camera/view/hud/HudLayout$HudData;

    invoke-virtual {p2}, Lopenlight/co/camera/view/hud/HudLayout$HudData;->getHudElementLayout()Lopenlight/co/camera/view/rotate/RotateLayout;

    move-result-object p2

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Lopenlight/co/camera/view/rotate/RotateLayout;->setVisibility(I)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private getExposureTime(J)Ljava/lang/String;
    .locals 7

    const-wide/32 v0, 0x11e1a300

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    if-gez v0, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v0, p1, v5

    if-lez v0, :cond_0

    long-to-double p1, p1

    div-double/2addr v3, p1

    .line 357
    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudExposureTimeNumerator:Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    long-to-double p1, p1

    div-double/2addr p1, v3

    const-string v0, "%s"

    .line 360
    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/hud/HudLayout;->round(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getHudElementCurrentValue(Lopenlight/co/camera/view/hud/HudLayout$HudValue;)Ljava/lang/String;
    .locals 1

    .line 553
    sget-object v0, Lopenlight/co/camera/view/hud/HudLayout$3;->$SwitchMap$light$co$camera$view$hud$HudLayout$HudValue:[I

    invoke-virtual {p1}, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 563
    :pswitch_0
    invoke-direct {p0}, Lopenlight/co/camera/view/hud/HudLayout;->createResolutionValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 561
    :pswitch_1
    invoke-direct {p0}, Lopenlight/co/camera/view/hud/HudLayout;->createShutterValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 559
    :pswitch_2
    invoke-direct {p0}, Lopenlight/co/camera/view/hud/HudLayout;->createZoomValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 557
    :pswitch_3
    invoke-direct {p0}, Lopenlight/co/camera/view/hud/HudLayout;->createIsoValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 555
    :pswitch_4
    invoke-direct {p0}, Lopenlight/co/camera/view/hud/HudLayout;->createEvValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPixelDiff(Landroid/content/Context;)I
    .locals 1

    .line 341
    invoke-static {p1}, Lopenlight/co/camera/utils/Util;->getHeightOfScreen(Landroid/content/Context;)I

    move-result p0

    const v0, 0x7f070136

    .line 342
    invoke-static {p1, v0}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private initSingleHudElement(Lopenlight/co/camera/view/hud/HudLayout$HudValue;)V
    .locals 3

    .line 266
    iget-object v0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudElementsMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/hud/HudLayout$HudData;

    .line 267
    iget-object v1, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudLayoutView:Landroid/view/View;

    .line 268
    invoke-virtual {p1}, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->getHudElementLayoutResourceId()I

    move-result v2

    .line 267
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lopenlight/co/camera/view/rotate/RotateLayout;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/hud/HudLayout$HudData;->setHudElementLayout(Lopenlight/co/camera/view/rotate/RotateLayout;)V

    .line 270
    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudLayoutView:Landroid/view/View;

    .line 271
    invoke-virtual {p1}, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->getHudElementValueResourceId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const p1, 0x7f0900bc

    .line 272
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lopenlight/co/camera/view/hud/HudLayout$HudData;->setHudMarker(Landroid/widget/ImageView;)V

    const p1, 0x7f0900c1

    .line 273
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Lopenlight/co/camera/view/hud/HudLayout$HudData;->setHudElementValue(Landroid/widget/TextView;)V

    const p1, 0x7f0900dc

    .line 274
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Lopenlight/co/camera/view/hud/HudLayout$HudData;->setHudElementUnitLeft(Landroid/widget/TextView;)V

    const p1, 0x7f0900d8

    .line 275
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/hud/HudLayout$HudData;->setHudElementUnitTop(Landroid/widget/TextView;)V

    return-void
.end method

.method private round(D)D
    .locals 4

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 372
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr p1, v0

    .line 373
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private setBackground()V
    .locals 2

    .line 435
    iget-object v0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudColor:Lopenlight/co/camera/view/hud/HudLayout$HudColor;

    sget-object v1, Lopenlight/co/camera/view/hud/HudLayout$HudColor;->COLORED:Lopenlight/co/camera/view/hud/HudLayout$HudColor;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/hud/HudLayout$HudColor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080105

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 437
    :goto_0
    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    return-void
.end method

.method private setHudColor()V
    .locals 2

    .line 444
    iget-object v0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudColor:Lopenlight/co/camera/view/hud/HudLayout$HudColor;

    sget-object v1, Lopenlight/co/camera/view/hud/HudLayout$HudColor;->COLORED:Lopenlight/co/camera/view/hud/HudLayout$HudColor;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/hud/HudLayout$HudColor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lopenlight/co/camera/view/hud/HudLayout$HudColor;->TRANSPARENT:Lopenlight/co/camera/view/hud/HudLayout$HudColor;

    goto :goto_0

    :cond_0
    sget-object v0, Lopenlight/co/camera/view/hud/HudLayout$HudColor;->COLORED:Lopenlight/co/camera/view/hud/HudLayout$HudColor;

    :goto_0
    iput-object v0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudColor:Lopenlight/co/camera/view/hud/HudLayout$HudColor;

    return-void
.end method

.method private setTextColor(Lopenlight/co/camera/view/hud/HudLayout$HudValue;Z)V
    .locals 3

    .line 454
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/CameraApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const v2, 0x7f060091

    .line 455
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_0

    :cond_0
    const v2, 0x7f06009b

    .line 457
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    :goto_0
    if-eqz p2, :cond_1

    const p2, 0x7f080106

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 459
    :goto_1
    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudElementsMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/view/hud/HudLayout$HudData;

    .line 460
    invoke-virtual {p0}, Lopenlight/co/camera/view/hud/HudLayout$HudData;->getHudElementValue()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 461
    invoke-virtual {p0}, Lopenlight/co/camera/view/hud/HudLayout$HudData;->getHudElementUnitLeft()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 462
    invoke-virtual {p0}, Lopenlight/co/camera/view/hud/HudLayout$HudData;->getHudElementUnitTop()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 463
    invoke-virtual {p0}, Lopenlight/co/camera/view/hud/HudLayout$HudData;->getHudMarker()Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private setValue(Lopenlight/co/camera/view/hud/HudLayout$HudValue;Ljava/lang/String;)V
    .locals 2

    .line 424
    iget-object v0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudElementsMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/hud/HudLayout$HudData;

    invoke-virtual {v0}, Lopenlight/co/camera/view/hud/HudLayout$HudData;->getHudElementValue()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudElementsMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/view/hud/HudLayout$HudData;

    invoke-virtual {p0}, Lopenlight/co/camera/view/hud/HudLayout$HudData;->getHudElementValue()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    sget-boolean p0, Lopenlight/co/camera/view/hud/HudLayout;->ENABLE_VERBOSE_LOGGING:Z

    if-eqz p0, :cond_0

    .line 427
    sget-object p0, Lopenlight/co/camera/view/hud/HudLayout;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HUD Update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setValues()V
    .locals 7

    .line 157
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/view/rotate/OrientationsController;->getConfig()Lopenlight/co/camera/enums/OrientationConfig;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/enums/OrientationConfig;->getAndroidOrientationConfiguration()I

    move-result v0

    .line 158
    invoke-virtual {p0}, Lopenlight/co/camera/view/hud/HudLayout;->checkAndUpdateMode()Z

    .line 159
    invoke-static {}, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->values()[Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 160
    invoke-direct {p0, v4, v0}, Lopenlight/co/camera/view/hud/HudLayout;->updateHudElementLabel(Lopenlight/co/camera/view/hud/HudLayout$HudValue;I)V

    .line 161
    invoke-virtual {p0}, Lopenlight/co/camera/view/hud/HudLayout;->updateHudValues()V

    .line 162
    iget-wide v4, p0, Lopenlight/co/camera/view/hud/HudLayout;->mExposureValue:J

    iget v6, p0, Lopenlight/co/camera/view/hud/HudLayout;->mIsoValue:I

    invoke-virtual {p0, v4, v5, v6}, Lopenlight/co/camera/view/hud/HudLayout;->updateRealTime(JI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    :cond_0
    invoke-direct {p0}, Lopenlight/co/camera/view/hud/HudLayout;->setBackground()V

    return-void
.end method

.method private updateHudElementLabel(Lopenlight/co/camera/view/hud/HudLayout$HudValue;I)V
    .locals 1

    .line 476
    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudElementsMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/view/hud/HudLayout$HudData;

    const/16 p1, 0x8

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lopenlight/co/camera/view/hud/HudLayout$HudData;->getHudElementUnitTop()Landroid/widget/TextView;

    move-result-object p2

    .line 480
    invoke-virtual {p0}, Lopenlight/co/camera/view/hud/HudLayout$HudData;->getHudElementUnitLeft()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 482
    :cond_0
    invoke-virtual {p0}, Lopenlight/co/camera/view/hud/HudLayout$HudData;->getHudElementUnitLeft()Landroid/widget/TextView;

    move-result-object p2

    .line 483
    invoke-virtual {p0}, Lopenlight/co/camera/view/hud/HudLayout$HudData;->getHudElementUnitTop()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const/4 p1, 0x0

    .line 485
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    invoke-virtual {p0}, Lopenlight/co/camera/view/hud/HudLayout$HudData;->getHudUnitText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateHudIndividualValue(Lopenlight/co/camera/view/hud/HudLayout$HudValue;)V
    .locals 1

    .line 330
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/hud/HudLayout;->getHudElementCurrentValue(Lopenlight/co/camera/view/hud/HudLayout$HudValue;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/view/hud/HudLayout;->setValue(Lopenlight/co/camera/view/hud/HudLayout$HudValue;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addViewToFragment()V
    .locals 2

    .line 117
    iget-object v0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mImageFragmentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudLayoutView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/rotate/OrientationsController;->registerOrientationListener(Lopenlight/co/camera/listener/OrientationListener;)V

    .line 119
    iget-object v0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lopenlight/co/camera/view/hud/HudLayout;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    invoke-virtual {p0}, Lopenlight/co/camera/view/hud/HudLayout;->initChildView()V

    return-void
.end method

.method public checkAndUpdateMode()Z
    .locals 5

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 284
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 285
    sget-object v3, Lopenlight/co/camera/view/hud/HudLayout$3;->$SwitchMap$light$co$camera$CameraMode:[I

    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v4

    invoke-virtual {v4}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object v4

    invoke-virtual {v4}, Lopenlight/co/camera/CameraMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 287
    :pswitch_0
    sget-object v3, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->EV:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object v3, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->ISO:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v3, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->SHUTTER_SPEED:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    :pswitch_1
    sget-object v3, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->EV:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    sget-object v3, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->SHUTTER_SPEED:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    sget-object v3, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->ISO:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    :pswitch_2
    sget-object v3, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->EV:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v3, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->ISO:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v3, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->SHUTTER_SPEED:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    :pswitch_3
    sget-object v3, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->EV:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object v3, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->ISO:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v3, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->SHUTTER_SPEED:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lopenlight/co/camera/view/hud/HudLayout;->disableHudElement(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public closeAll()V
    .locals 0

    .line 237
    invoke-virtual {p0}, Lopenlight/co/camera/view/hud/HudLayout;->removeModeSelection()V

    return-void
.end method

.method public closeLayoutAnimation()V
    .locals 3

    .line 213
    iget-object v0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudLayoutView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 214
    iget-object v0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudLayoutView:Landroid/view/View;

    const-string v1, "translationX"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 216
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 217
    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mCloseOutAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 218
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x3cb80000    # -200.0f
    .end array-data
.end method

.method public getListenerName()Ljava/lang/String;
    .locals 0

    .line 257
    const-class p0, Lopenlight/co/camera/view/hud/HudLayout;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initChildView()V
    .locals 4

    .line 125
    invoke-static {}, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->values()[Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 126
    invoke-direct {p0, v3}, Lopenlight/co/camera/view/hud/HudLayout;->initSingleHudElement(Lopenlight/co/camera/view/hud/HudLayout$HudValue;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_0
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/view/rotate/OrientationsController;->getConfig()Lopenlight/co/camera/enums/OrientationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/hud/HudLayout;->onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V

    .line 129
    invoke-virtual {p0}, Lopenlight/co/camera/view/hud/HudLayout;->checkAndUpdateMode()Z

    return-void
.end method

.method public onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V
    .locals 5

    .line 248
    invoke-static {}, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->values()[Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 249
    iget-object v4, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudElementsMap:Ljava/util/EnumMap;

    invoke-virtual {v4, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lopenlight/co/camera/view/hud/HudLayout$HudData;

    .line 250
    invoke-virtual {v3}, Lopenlight/co/camera/view/hud/HudLayout$HudData;->getHudElementLayout()Lopenlight/co/camera/view/rotate/RotateLayout;

    move-result-object v3

    invoke-virtual {p1}, Lopenlight/co/camera/enums/OrientationConfig;->getViewRotationAngle()I

    move-result v4

    invoke-virtual {v3, v4}, Lopenlight/co/camera/view/rotate/RotateLayout;->setAngle(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    :cond_0
    invoke-direct {p0}, Lopenlight/co/camera/view/hud/HudLayout;->setValues()V

    return-void
.end method

.method public openLayoutAnimation()V
    .locals 2

    .line 202
    iget-object v0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudLayoutView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 203
    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudLayoutView:Landroid/view/View;

    const-string v0, "translationX"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    .line 205
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 206
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        -0x3d380000    # -100.0f
        0x0
    .end array-data
.end method

.method public removeModeSelection()V
    .locals 1

    .line 223
    iget-object v0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mImageFragmentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mImageFragmentView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudLayoutView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeOrientationControllerInHud()V
    .locals 1

    .line 232
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    invoke-virtual {p0}, Lopenlight/co/camera/view/hud/HudLayout;->getListenerName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/rotate/OrientationsController;->unregisterOrientationListenerWithTag(Ljava/lang/String;)V

    return-void
.end method

.method public setAlpha(Z)V
    .locals 1

    .line 149
    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudLayout:Landroid/widget/RelativeLayout;

    const/high16 v0, 0x3e800000    # 0.25f

    invoke-static {p0, p1, v0}, Lopenlight/co/camera/utils/Util;->setAlpha(Landroid/view/View;ZF)V

    return-void
.end method

.method public setVisibility(Z)V
    .locals 0

    .line 242
    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout;->mHudLayoutView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateHudItems(Ljava/lang/String;)V
    .locals 7

    .line 190
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/CameraApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 191
    invoke-static {}, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->values()[Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {v5}, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->getHudElementTitle()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v3

    .line 194
    :goto_1
    invoke-direct {p0, v5, v6}, Lopenlight/co/camera/view/hud/HudLayout;->setTextColor(Lopenlight/co/camera/view/hud/HudLayout$HudValue;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateHudValues()V
    .locals 2

    .line 171
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object v0

    .line 172
    sget-object v1, Lopenlight/co/camera/view/hud/HudLayout$3;->$SwitchMap$light$co$camera$CameraMode:[I

    invoke-virtual {v0}, Lopenlight/co/camera/CameraMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 176
    :pswitch_0
    sget-object v0, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->EV:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-direct {p0, v0}, Lopenlight/co/camera/view/hud/HudLayout;->updateHudIndividualValue(Lopenlight/co/camera/view/hud/HudLayout$HudValue;)V

    .line 178
    :pswitch_1
    sget-object v0, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->ZOOM:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-direct {p0, v0}, Lopenlight/co/camera/view/hud/HudLayout;->updateHudIndividualValue(Lopenlight/co/camera/view/hud/HudLayout$HudValue;)V

    .line 179
    sget-object v0, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->RESOLUTION:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-direct {p0, v0}, Lopenlight/co/camera/view/hud/HudLayout;->updateHudIndividualValue(Lopenlight/co/camera/view/hud/HudLayout$HudValue;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateRealTime(JI)V
    .locals 1

    .line 142
    iput p3, p0, Lopenlight/co/camera/view/hud/HudLayout;->mIsoValue:I

    .line 143
    iput-wide p1, p0, Lopenlight/co/camera/view/hud/HudLayout;->mExposureValue:J

    .line 144
    sget-object v0, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->ISO:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, v0, p3}, Lopenlight/co/camera/view/hud/HudLayout;->setValue(Lopenlight/co/camera/view/hud/HudLayout$HudValue;Ljava/lang/String;)V

    .line 145
    sget-object p3, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->SHUTTER_SPEED:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/hud/HudLayout;->getExposureTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lopenlight/co/camera/view/hud/HudLayout;->setValue(Lopenlight/co/camera/view/hud/HudLayout$HudValue;Ljava/lang/String;)V

    return-void
.end method
