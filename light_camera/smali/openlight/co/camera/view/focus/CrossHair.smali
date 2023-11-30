.class public Lopenlight/co/camera/view/focus/CrossHair;
.super Landroid/view/View;
.source "CrossHair.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;
    }
.end annotation


# static fields
.field private static final ANIMATION_TRANSLATE_VALUE:F = 25.0f

.field private static final COLOR_FADE_ALPHA:F = 90.0f

.field private static final COLOR_STANDARD_ALPHA:F = 255.0f

.field private static final FADE_ANIMATION_DURATION:I = 0x64

.field private static final FOCUS_ACHIEVED_ANIM_DURATION:I = 0x64

.field private static final FOCUS_START_ANIM_DURATION:I = 0x3e8

.field private static final MSG_FOCUS_ACHIEVED:I = 0x1

.field private static final MSG_FOCUS_FAILED:I = 0x2

.field private static final MSG_REMOVE_CROSS_HAIR:I = 0x3

.field private static final MSG_START_CROSS_HAIR_FADE:I = 0x4

.field private static final MSG_START_FOCUSING:I = 0x0

.field private static final MSG_UPDATE_CROSS_HAIR_ON_UP:I = 0x5

.field private static final REMOVE_CROSS_HAIR_DELAY_MILLS:I = 0x1388

.field private static final SHAKE_ANIMATION_DURATION:I = 0x384

.field private static final SHAKE_ANIMATION_VALUES:[F

.field private static final START_FADE_ANIM_DELAY_MILLS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "CrossHair"


# instance fields
.field private final mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

.field private final mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mCrossHairAnimator:Landroid/animation/AnimatorSet;

.field private final mCrossHairAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mCrossHairDrawable:Landroid/graphics/drawable/Drawable;

.field private final mCrossHairHeight:I

.field private final mCrossHairPaint:Landroid/graphics/Paint;

.field private final mCrossHairStatusHandler:Landroid/os/Handler;

.field private final mCrossHairWidth:I

.field private final mFadeAnimator:Landroid/animation/ValueAnimator;

.field private final mFadeAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private final mFadeAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mFocusAchieved:Z

.field private mOrientationAngle:F

.field private final mOriginalRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

.field private final mPlayHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

.field private final mRectangleCornerRadius:I

.field private final mShakeAnimator:Landroid/animation/AnimatorSet;

.field private final mShakeAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private final mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    .line 54
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lopenlight/co/camera/view/focus/CrossHair;->SHAKE_ANIMATION_VALUES:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x42200000    # 40.0f
        -0x3de00000    # -40.0f
        0x42200000    # 40.0f
        -0x3de00000    # -40.0f
        0x41c80000    # 25.0f
        -0x3e380000    # -25.0f
        0x41400000    # 12.0f
        -0x3ec00000    # -12.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 247
    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/view/focus/CrossHair;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 251
    invoke-direct {p0, p1, p2, v0}, Lopenlight/co/camera/view/focus/CrossHair;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 256
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    invoke-static {}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->get()Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    .line 83
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairAnimator:Landroid/animation/AnimatorSet;

    .line 84
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mShakeAnimator:Landroid/animation/AnimatorSet;

    const/4 p1, 0x2

    .line 86
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 90
    new-instance p1, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;-><init>(Lopenlight/co/camera/view/focus/CrossHair;Lopenlight/co/camera/view/focus/CrossHair$1;)V

    iput-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mOriginalRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    .line 92
    new-instance p1, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    invoke-direct {p1, p0, p2}, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;-><init>(Lopenlight/co/camera/view/focus/CrossHair;Lopenlight/co/camera/view/focus/CrossHair$1;)V

    iput-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    .line 98
    invoke-static {}, Lopenlight/co/camera/haptic/PlayHaptic;->get()Lopenlight/co/camera/haptic/PlayHaptic;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mPlayHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mOrientationAngle:F

    const/4 p1, 0x0

    .line 103
    iput-boolean p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mFocusAchieved:Z

    .line 110
    new-instance p1, Lopenlight/co/camera/view/focus/CrossHair$1;

    invoke-direct {p1, p0}, Lopenlight/co/camera/view/focus/CrossHair$1;-><init>(Lopenlight/co/camera/view/focus/CrossHair;)V

    iput-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 137
    new-instance p1, Lopenlight/co/camera/view/focus/CrossHair$2;

    invoke-direct {p1, p0}, Lopenlight/co/camera/view/focus/CrossHair$2;-><init>(Lopenlight/co/camera/view/focus/CrossHair;)V

    iput-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mShakeAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 160
    new-instance p1, Lopenlight/co/camera/view/focus/CrossHair$3;

    invoke-direct {p1, p0}, Lopenlight/co/camera/view/focus/CrossHair$3;-><init>(Lopenlight/co/camera/view/focus/CrossHair;)V

    iput-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mFadeAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 187
    new-instance p1, Lopenlight/co/camera/view/focus/CrossHair$4;

    invoke-direct {p1, p0}, Lopenlight/co/camera/view/focus/CrossHair$4;-><init>(Lopenlight/co/camera/view/focus/CrossHair;)V

    iput-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 199
    new-instance p1, Lopenlight/co/camera/view/focus/CrossHair$5;

    invoke-direct {p1, p0}, Lopenlight/co/camera/view/focus/CrossHair$5;-><init>(Lopenlight/co/camera/view/focus/CrossHair;)V

    iput-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mFadeAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 216
    new-instance p1, Lopenlight/co/camera/view/focus/CrossHair$6;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lopenlight/co/camera/view/focus/CrossHair$6;-><init>(Lopenlight/co/camera/view/focus/CrossHair;Landroid/os/Looper;)V

    iput-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairStatusHandler:Landroid/os/Handler;

    .line 258
    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700c4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mRectangleCornerRadius:I

    .line 260
    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070092

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairWidth:I

    .line 262
    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070091

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairHeight:I

    .line 265
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairPaint:Landroid/graphics/Paint;

    .line 266
    iget-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 267
    iget-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 268
    iget-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0700c5

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :array_0
    .array-data 4
        0x437f0000    # 255.0f
        0x42b40000    # 90.0f
    .end array-data
.end method

.method static synthetic access$100(Lopenlight/co/camera/view/focus/CrossHair;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mFocusAchieved:Z

    return p0
.end method

.method static synthetic access$1000(Lopenlight/co/camera/view/focus/CrossHair;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lopenlight/co/camera/view/focus/CrossHair;->startFadeAnimation()V

    return-void
.end method

.method static synthetic access$102(Lopenlight/co/camera/view/focus/CrossHair;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mFocusAchieved:Z

    return p1
.end method

.method static synthetic access$200(Lopenlight/co/camera/view/focus/CrossHair;)Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;
    .locals 0

    .line 41
    iget-object p0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    return-object p0
.end method

.method static synthetic access$300(Lopenlight/co/camera/view/focus/CrossHair;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairStatusHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lopenlight/co/camera/view/focus/CrossHair;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lopenlight/co/camera/view/focus/CrossHair;->removeCrossHair()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lopenlight/co/camera/view/focus/CrossHair;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lopenlight/co/camera/view/focus/CrossHair;)Landroid/graphics/Paint;
    .locals 0

    .line 41
    iget-object p0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$700(Lopenlight/co/camera/view/focus/CrossHair;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 41
    iget-object p0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$800(Lopenlight/co/camera/view/focus/CrossHair;Lopenlight/co/camera/models/MeteringPoint;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/focus/CrossHair;->startCrossHairAnimations(Lopenlight/co/camera/models/MeteringPoint;)V

    return-void
.end method

.method static synthetic access$900(Lopenlight/co/camera/view/focus/CrossHair;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lopenlight/co/camera/view/focus/CrossHair;->startShakeAnimation()V

    return-void
.end method

.method private convertTouchPointToRectF(Lopenlight/co/camera/models/MeteringPoint;)V
    .locals 4

    .line 400
    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mOriginalRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    invoke-virtual {p1}, Lopenlight/co/camera/models/MeteringPoint;->getX()I

    move-result v1

    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->getLeft()I

    move-result v2

    iget v3, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->left:F

    .line 401
    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mOriginalRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    invoke-virtual {p1}, Lopenlight/co/camera/models/MeteringPoint;->getY()I

    move-result p1

    iget v1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, v0, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->top:F

    .line 402
    iget-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mOriginalRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mOriginalRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v0, v0, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->left:F

    iget v1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p1, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->right:F

    .line 403
    iget-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mOriginalRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mOriginalRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v0, v0, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->top:F

    iget p0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairHeight:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    iput v0, p1, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->bottom:F

    return-void
.end method

.method private getShakeAnimationCoordinates(F)[F
    .locals 3

    .line 533
    sget-object p0, Lopenlight/co/camera/view/focus/CrossHair;->SHAKE_ANIMATION_VALUES:[F

    array-length p0, p0

    .line 534
    new-array v0, p0, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 537
    sget-object v2, Lopenlight/co/camera/view/focus/CrossHair;->SHAKE_ANIMATION_VALUES:[F

    aget v2, v2, v1

    sub-float v2, p1, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private removeCrossHair()V
    .locals 1

    const/16 v0, 0x8

    .line 386
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/focus/CrossHair;->setVisibility(I)V

    const/4 v0, 0x0

    .line 387
    iput-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairDrawable:Landroid/graphics/drawable/Drawable;

    .line 388
    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mOriginalRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    invoke-virtual {v0}, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->setEmpty()V

    .line 389
    iget-object p0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->setEmpty()V

    .line 390
    sget-object p0, Lopenlight/co/camera/view/focus/CrossHair;->TAG:Ljava/lang/String;

    const-string v0, "removeCrossHair"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startCrossHairAnimations(Lopenlight/co/camera/models/MeteringPoint;)V
    .locals 11

    .line 418
    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->clear()V

    const/4 v0, 0x0

    .line 421
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/focus/CrossHair;->setVisibility(I)V

    .line 424
    iget-boolean v1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mFocusAchieved:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_2

    .line 425
    iget-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    const-string v1, "left"

    new-array v5, v4, [F

    iget-object v6, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v6, v6, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->left:F

    aput v6, v5, v0

    iget-object v6, p0, Lopenlight/co/camera/view/focus/CrossHair;->mOriginalRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v6, v6, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->left:F

    aput v6, v5, v3

    invoke-static {p1, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 427
    iget-object v1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    const-string v5, "top"

    new-array v6, v4, [F

    iget-object v7, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v7, v7, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->top:F

    aput v7, v6, v0

    iget-object v7, p0, Lopenlight/co/camera/view/focus/CrossHair;->mOriginalRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v7, v7, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->top:F

    aput v7, v6, v3

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 429
    iget-object v5, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    const-string v6, "right"

    new-array v7, v4, [F

    iget-object v8, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v8, v8, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->right:F

    aput v8, v7, v0

    iget-object v8, p0, Lopenlight/co/camera/view/focus/CrossHair;->mOriginalRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v8, v8, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->right:F

    aput v8, v7, v3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 431
    iget-object v6, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    const-string v7, "bottom"

    new-array v8, v4, [F

    iget-object v9, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v9, v9, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->bottom:F

    aput v9, v8, v0

    iget-object v9, p0, Lopenlight/co/camera/view/focus/CrossHair;->mOriginalRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v9, v9, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->bottom:F

    aput v9, v8, v3

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 434
    iget-object v7, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060052

    invoke-virtual {v8, v9, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 437
    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lopenlight/co/camera/view/focus/CrossHair;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    .line 438
    invoke-virtual {v8}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->isFocusLocked()Z

    move-result v8

    if-eqz v8, :cond_0

    const v8, 0x7f0800f6

    goto :goto_0

    :cond_0
    const v8, 0x7f0800f5

    .line 437
    :goto_0
    invoke-virtual {v7, v8, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairDrawable:Landroid/graphics/drawable/Drawable;

    .line 440
    iget-object v2, p0, Lopenlight/co/camera/view/focus/CrossHair;->mPlayHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

    iget-object v7, p0, Lopenlight/co/camera/view/focus/CrossHair;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-virtual {v7}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->isFocusLocked()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lopenlight/co/camera/haptic/Immersion;->FOCUS_LOCK:Lopenlight/co/camera/haptic/Immersion;

    goto :goto_1

    :cond_1
    sget-object v7, Lopenlight/co/camera/haptic/Immersion;->FOCUS_ACHIEVED:Lopenlight/co/camera/haptic/Immersion;

    :goto_1
    invoke-virtual {v2, v7}, Lopenlight/co/camera/haptic/PlayHaptic;->playHaptic(Lopenlight/co/camera/haptic/Immersion;)V

    goto/16 :goto_4

    .line 444
    :cond_2
    iget-object v1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-virtual {v1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->getLastFocusTriggeredFace()Landroid/hardware/camera2/params/Face;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 446
    iget-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mOriginalRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget-object v1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-virtual {v1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->getLastFocusTriggeredFace()Landroid/hardware/camera2/params/Face;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {p1, v1}, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->access$1100(Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;Landroid/graphics/Rect;)V

    goto :goto_2

    .line 449
    :cond_3
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/focus/CrossHair;->convertTouchPointToRectF(Lopenlight/co/camera/models/MeteringPoint;)V

    .line 452
    :goto_2
    iget-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget-object v1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mOriginalRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    invoke-static {p1, v1}, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->access$1200(Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;Landroid/graphics/RectF;)V

    .line 453
    iget-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    const-string v1, "left"

    new-array v5, v4, [F

    iget-object v6, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v6, v6, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->left:F

    aput v6, v5, v0

    iget-object v6, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v6, v6, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->left:F

    const/high16 v7, 0x41c80000    # 25.0f

    sub-float/2addr v6, v7

    aput v6, v5, v3

    invoke-static {p1, v1, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 455
    iget-object v1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    const-string v5, "top"

    new-array v6, v4, [F

    iget-object v8, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v8, v8, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->top:F

    aput v8, v6, v0

    iget-object v8, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v8, v8, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->top:F

    sub-float/2addr v8, v7

    aput v8, v6, v3

    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 457
    iget-object v5, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    const-string v6, "right"

    new-array v8, v4, [F

    iget-object v9, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v9, v9, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->right:F

    aput v9, v8, v0

    iget-object v9, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v9, v9, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->right:F

    add-float/2addr v9, v7

    aput v9, v8, v3

    invoke-static {v5, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 459
    iget-object v6, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    const-string v8, "bottom"

    new-array v9, v4, [F

    iget-object v10, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v10, v10, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->bottom:F

    aput v10, v9, v0

    iget-object v10, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v10, v10, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->bottom:F

    add-float/2addr v10, v7

    aput v10, v9, v3

    invoke-static {v6, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 462
    iget-object v7, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060053

    invoke-virtual {v8, v9, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 464
    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lopenlight/co/camera/view/focus/CrossHair;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-virtual {v8}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->isFocusLocked()Z

    move-result v8

    if-eqz v8, :cond_4

    const v8, 0x7f0800f2

    goto :goto_3

    :cond_4
    const v8, 0x7f0800f1

    :goto_3
    invoke-virtual {v7, v8, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairDrawable:Landroid/graphics/drawable/Drawable;

    .line 468
    :goto_4
    iget-object v2, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x437f0000    # 255.0f

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 469
    iget-object v2, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 472
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v2

    invoke-virtual {v2}, Lopenlight/co/camera/view/rotate/OrientationsController;->getConfig()Lopenlight/co/camera/enums/OrientationConfig;

    move-result-object v2

    invoke-virtual {v2}, Lopenlight/co/camera/enums/OrientationConfig;->getViewRotationAngle()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lopenlight/co/camera/view/focus/CrossHair;->mOrientationAngle:F

    .line 474
    iget-object v2, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v6, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 475
    iget-object v2, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairAnimator:Landroid/animation/AnimatorSet;

    iget-object v7, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 476
    iget-object v2, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairAnimator:Landroid/animation/AnimatorSet;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object p1, v7, v0

    aput-object v5, v7, v3

    aput-object v1, v7, v4

    const/4 p1, 0x3

    aput-object v6, v7, p1

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 477
    iget-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairAnimator:Landroid/animation/AnimatorSet;

    iget-boolean p0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mFocusAchieved:Z

    if-eqz p0, :cond_5

    const-wide/16 v0, 0x64

    goto :goto_5

    :cond_5
    const-wide/16 v0, 0x3e8

    :goto_5
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p0

    .line 478
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startFadeAnimation()V
    .locals 2

    .line 516
    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->clear()V

    const/4 v0, 0x0

    .line 519
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/focus/CrossHair;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mFadeAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mFadeAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 522
    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mFadeAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mFadeAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 523
    iget-object p0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mFadeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startShakeAnimation()V
    .locals 5

    .line 486
    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->clear()V

    const/4 v0, 0x0

    .line 489
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/focus/CrossHair;->setVisibility(I)V

    .line 491
    iget-object v1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    invoke-virtual {v1}, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->setEmpty()V

    .line 493
    iget-object v1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget-object v2, p0, Lopenlight/co/camera/view/focus/CrossHair;->mOriginalRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    invoke-static {v1, v2}, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->access$1200(Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;Landroid/graphics/RectF;)V

    .line 495
    iget-object v1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    invoke-virtual {v1}, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 497
    iget-object v1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    const-string v2, "left"

    iget-object v3, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v3, v3, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->left:F

    .line 498
    invoke-direct {p0, v3}, Lopenlight/co/camera/view/focus/CrossHair;->getShakeAnimationCoordinates(F)[F

    move-result-object v3

    .line 497
    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 499
    iget-object v2, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    const-string v3, "right"

    iget-object v4, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v4, v4, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->right:F

    .line 500
    invoke-direct {p0, v4}, Lopenlight/co/camera/view/focus/CrossHair;->getShakeAnimationCoordinates(F)[F

    move-result-object v4

    .line 499
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 502
    iget-object v3, p0, Lopenlight/co/camera/view/focus/CrossHair;->mShakeAnimator:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lopenlight/co/camera/view/focus/CrossHair;->mShakeAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 504
    iget-object v3, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 505
    iget-object v3, p0, Lopenlight/co/camera/view/focus/CrossHair;->mShakeAnimator:Landroid/animation/AnimatorSet;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 506
    iget-object p0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mShakeAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x384

    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private updateCrossHairAfterLockRelease()V
    .locals 3

    .line 546
    sget-object v0, Lopenlight/co/camera/view/focus/CrossHair;->TAG:Ljava/lang/String;

    const-string v1, "updateCrossHairAfterLockRelease"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mFocusAchieved:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0800f5

    goto :goto_0

    :cond_0
    const v1, 0x7f0800f1

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairDrawable:Landroid/graphics/drawable/Drawable;

    .line 550
    invoke-direct {p0}, Lopenlight/co/camera/view/focus/CrossHair;->removeCrossHair()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 308
    sget-object v0, Lopenlight/co/camera/view/focus/CrossHair;->TAG:Ljava/lang/String;

    const-string v1, "clear"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 309
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/focus/CrossHair;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 311
    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 312
    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mShakeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 313
    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mShakeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 314
    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 315
    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 316
    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mFadeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 317
    iget-object p0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairStatusHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 357
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 361
    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->isFocusLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget v0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mOrientationAngle:F

    iget-object v1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    invoke-virtual {v1}, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    .line 363
    invoke-virtual {v2}, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->centerY()F

    move-result v2

    .line 362
    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 368
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->getLastFocusTriggeredFace()Landroid/hardware/camera2/params/Face;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mRectangleCornerRadius:I

    int-to-float v1, v1

    iget v2, p0, Lopenlight/co/camera/view/focus/CrossHair;->mRectangleCornerRadius:I

    int-to-float v2, v2

    iget-object p0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 373
    :cond_1
    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    invoke-virtual {v0}, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v1, v1, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v2, v2, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v3, v3, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lopenlight/co/camera/view/focus/CrossHair;->mAnimationRectF:Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;

    iget v4, v4, Lopenlight/co/camera/view/focus/CrossHair$AnimatorRectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 378
    iget-object p0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->isFocusLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p1}, Lopenlight/co/camera/enums/OrientationConfig;->getViewRotationAngle()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lopenlight/co/camera/view/focus/CrossHair;->mOrientationAngle:F

    .line 328
    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->invalidate()V

    :cond_0
    return-void
.end method

.method public remove()V
    .locals 1

    .line 301
    iget-object p0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairStatusHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setSize(II)V
    .locals 1

    .line 338
    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 339
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 340
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 341
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/focus/CrossHair;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->requestLayout()V

    return-void
.end method

.method public showFocusAchieved()V
    .locals 1

    .line 287
    iget-object p0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairStatusHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showFocusFailed()V
    .locals 1

    .line 294
    iget-object p0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairStatusHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public showFocusStartAtCoordinates(Lopenlight/co/camera/models/MeteringPoint;)V
    .locals 2
    .param p1    # Lopenlight/co/camera/models/MeteringPoint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 277
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    .line 278
    iput v1, v0, Landroid/os/Message;->what:I

    .line 279
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 280
    iget-object p0, p0, Lopenlight/co/camera/view/focus/CrossHair;->mCrossHairStatusHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateCoordinatesAndDraw(Lopenlight/co/camera/models/MeteringPoint;)V
    .locals 1

    .line 350
    invoke-virtual {p0}, Lopenlight/co/camera/view/focus/CrossHair;->clear()V

    const/4 v0, 0x0

    .line 351
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/focus/CrossHair;->setVisibility(I)V

    .line 352
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/focus/CrossHair;->showFocusStartAtCoordinates(Lopenlight/co/camera/models/MeteringPoint;)V

    return-void
.end method
