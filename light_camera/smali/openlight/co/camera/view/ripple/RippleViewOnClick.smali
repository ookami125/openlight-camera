.class public Lopenlight/co/camera/view/ripple/RippleViewOnClick;
.super Landroid/widget/RelativeLayout;
.source "RippleViewOnClick.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;,
        Lopenlight/co/camera/view/ripple/RippleViewOnClick$OnRippleCompleteListener;
    }
.end annotation


# instance fields
.field private durationEmpty:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private hasToZoom:Ljava/lang/Boolean;

.field private isCentered:Ljava/lang/Boolean;

.field private mAnimationRunning:Z

.field private mCanvasHandler:Landroid/os/Handler;

.field private mFrameRate:I

.field private mHeight:I

.field private mRadiusMax:F

.field private mRippleAnimation:I

.field private mRippleDuration:I

.field private mWidth:I

.field private onCompletionListener:Lopenlight/co/camera/view/ripple/RippleViewOnClick$OnRippleCompleteListener;

.field private originBitmap:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;

.field private rippleColor:I

.field private ripplePadding:I

.field private rippleType:Ljava/lang/Integer;

.field private final runnable:Ljava/lang/Runnable;

.field private scaleAnimation:Landroid/view/animation/ScaleAnimation;

.field private timer:I

.field private timerEmpty:I

.field private x:F

.field private y:F

.field private zoomDuration:I

.field private zoomScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0xa

    .line 36
    iput p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mFrameRate:I

    const/16 p1, 0x190

    .line 37
    iput p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleDuration:I

    const/16 p1, 0x5a

    .line 38
    iput p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleAnimation:I

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRadiusMax:F

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mAnimationRunning:Z

    .line 42
    iput p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->timer:I

    .line 43
    iput p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->timerEmpty:I

    const/4 p1, -0x1

    .line 44
    iput p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->durationEmpty:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 45
    iput p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->x:F

    .line 46
    iput p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->y:F

    .line 58
    new-instance p1, Lopenlight/co/camera/view/ripple/RippleViewOnClick$1;

    invoke-direct {p1, p0}, Lopenlight/co/camera/view/ripple/RippleViewOnClick$1;-><init>(Lopenlight/co/camera/view/ripple/RippleViewOnClick;)V

    iput-object p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0xa

    .line 36
    iput v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mFrameRate:I

    const/16 v0, 0x190

    .line 37
    iput v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleDuration:I

    const/16 v0, 0x5a

    .line 38
    iput v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleAnimation:I

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRadiusMax:F

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mAnimationRunning:Z

    .line 42
    iput v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->timer:I

    .line 43
    iput v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->timerEmpty:I

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->durationEmpty:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 45
    iput v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->x:F

    .line 46
    iput v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->y:F

    .line 58
    new-instance v0, Lopenlight/co/camera/view/ripple/RippleViewOnClick$1;

    invoke-direct {v0, p0}, Lopenlight/co/camera/view/ripple/RippleViewOnClick$1;-><init>(Lopenlight/co/camera/view/ripple/RippleViewOnClick;)V

    iput-object v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->runnable:Ljava/lang/Runnable;

    .line 73
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0xa

    .line 36
    iput p3, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mFrameRate:I

    const/16 p3, 0x190

    .line 37
    iput p3, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleDuration:I

    const/16 p3, 0x5a

    .line 38
    iput p3, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleAnimation:I

    const/4 p3, 0x0

    .line 40
    iput p3, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRadiusMax:F

    const/4 p3, 0x0

    .line 41
    iput-boolean p3, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mAnimationRunning:Z

    .line 42
    iput p3, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->timer:I

    .line 43
    iput p3, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->timerEmpty:I

    const/4 p3, -0x1

    .line 44
    iput p3, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->durationEmpty:I

    const/high16 p3, -0x40800000    # -1.0f

    .line 45
    iput p3, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->x:F

    .line 46
    iput p3, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->y:F

    .line 58
    new-instance p3, Lopenlight/co/camera/view/ripple/RippleViewOnClick$1;

    invoke-direct {p3, p0}, Lopenlight/co/camera/view/ripple/RippleViewOnClick$1;-><init>(Lopenlight/co/camera/view/ripple/RippleViewOnClick;)V

    iput-object p3, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->runnable:Ljava/lang/Runnable;

    .line 78
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/camera/view/ripple/RippleViewOnClick;Ljava/lang/Boolean;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->sendClickEvent(Ljava/lang/Boolean;)V

    return-void
.end method

.method private createAnimation(FF)V
    .registers 6

    .line 239
    invoke-virtual {p0}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_78

    iget-boolean v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mAnimationRunning:Z

    if-nez v0, :cond_78

    .line 240
    iget-object v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->hasToZoom:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 241
    iget-object v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->startAnimation(Landroid/view/animation/Animation;)V

    .line 243
    :cond_17
    iget v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mWidth:I

    iget v1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRadiusMax:F

    .line 245
    iget-object v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->rippleType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_32

    .line 246
    iget v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRadiusMax:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iput v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRadiusMax:F

    .line 248
    :cond_32
    iget v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRadiusMax:F

    iget v2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->ripplePadding:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iput v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRadiusMax:F

    .line 250
    iget-object v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->isCentered:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_51

    iget-object v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->rippleType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_4c

    goto :goto_51

    .line 254
    :cond_4c
    iput p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->x:F

    .line 255
    iput p2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->y:F

    goto :goto_61

    .line 251
    :cond_51
    :goto_51
    invoke-virtual {p0}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->getMeasuredWidth()I

    move-result p1

    div-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->x:F

    .line 252
    invoke-virtual {p0}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->getMeasuredHeight()I

    move-result p1

    div-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->y:F

    .line 258
    :goto_61
    iput-boolean v2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mAnimationRunning:Z

    .line 260
    iget-object p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->rippleType:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_75

    iget-object p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->originBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_75

    .line 261
    invoke-virtual {p0, v2}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->originBitmap:Landroid/graphics/Bitmap;

    .line 263
    :cond_75
    invoke-virtual {p0}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->invalidate()V

    :cond_78
    return-void
.end method

.method private getCircleBitmap(I)Landroid/graphics/Bitmap;
    .registers 10

    .line 305
    iget-object v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->originBitmap:Landroid/graphics/Bitmap;

    .line 306
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 308
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 309
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 310
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->x:F

    int-to-float p1, p1

    sub-float/2addr v4, p1

    float-to-int v4, v4

    iget v5, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->y:F

    sub-float/2addr v5, p1

    float-to-int v5, v5

    iget v6, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->x:F

    add-float/2addr v6, p1

    float-to-int v6, v6

    iget v7, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->y:F

    add-float/2addr v7, p1

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x1

    .line 313
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v4, 0x0

    .line 314
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 315
    iget v4, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->x:F

    iget v5, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->y:F

    invoke-virtual {v1, v4, v5, p1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 317
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 318
    iget-object p0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->originBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 88
    invoke-virtual {p0}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 91
    :cond_7
    sget-object v0, Lopenlight/co/camera/R$styleable;->RippleViewOnClick:[I

    .line 92
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x2

    .line 94
    invoke-virtual {p0}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 93
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->rippleColor:I

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->rippleType:Ljava/lang/Integer;

    const/4 v0, 0x7

    .line 96
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->hasToZoom:Ljava/lang/Boolean;

    const/4 v0, 0x1

    .line 97
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->isCentered:Ljava/lang/Boolean;

    const/4 v2, 0x4

    .line 98
    iget v3, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleDuration:I

    .line 99
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleDuration:I

    const/4 v2, 0x3

    .line 100
    iget v3, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mFrameRate:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mFrameRate:I

    .line 101
    iget v2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleAnimation:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleAnimation:I

    const/4 v2, 0x5

    .line 104
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->ripplePadding:I

    .line 105
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mCanvasHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    const v3, 0x3f83d70a    # 1.03f

    .line 106
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->zoomScale:F

    const/16 v2, 0x8

    const/16 v3, 0xc8

    .line 107
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->zoomDuration:I

    .line 108
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->paint:Landroid/graphics/Paint;

    .line 110
    iget-object p2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 111
    iget-object p2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    iget-object p2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->rippleColor:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object p2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleAnimation:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 114
    invoke-virtual {p0, v1}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->setWillNotDraw(Z)V

    .line 116
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v1, Lopenlight/co/camera/view/ripple/RippleViewOnClick$2;

    invoke-direct {v1, p0}, Lopenlight/co/camera/view/ripple/RippleViewOnClick$2;-><init>(Lopenlight/co/camera/view/ripple/RippleViewOnClick;)V

    invoke-direct {p2, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->gestureDetector:Landroid/view/GestureDetector;

    .line 136
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->setDrawingCacheEnabled(Z)V

    .line 137
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->setClickable(Z)V

    return-void
.end method

.method private sendClickEvent(Ljava/lang/Boolean;)V
    .registers 9

    .line 288
    invoke-virtual {p0}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/AdapterView;

    if-eqz v0, :cond_3a

    .line 289
    invoke-virtual {p0}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/AdapterView;

    .line 290
    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 291
    invoke-virtual {v2, v4}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v5

    .line 292
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 293
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 294
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v1

    move-object v3, p0

    .line 295
    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    goto :goto_3a

    .line 297
    :cond_2c
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 298
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    move-object v3, p0

    .line 299
    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_3a
    :goto_3a
    return-void
.end method


# virtual methods
.method public animateRipple(FF)V
    .registers 3

    .line 229
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->createAnimation(FF)V

    return-void
.end method

.method public animateRipple(Landroid/view/MotionEvent;)V
    .registers 3

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->createAnimation(FF)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 142
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 143
    iget-boolean v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mAnimationRunning:Z

    if-eqz v0, :cond_115

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 145
    iget v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleDuration:I

    iget v1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->timer:I

    iget v2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mFrameRate:I

    mul-int/2addr v1, v2

    const/4 v2, -0x1

    if-gt v0, v1, :cond_33

    const/4 v0, 0x0

    .line 146
    iput-boolean v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mAnimationRunning:Z

    .line 147
    iput v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->timer:I

    .line 148
    iput v2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->durationEmpty:I

    .line 149
    iput v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->timerEmpty:I

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_26

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 156
    :cond_26
    invoke-virtual {p0}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->invalidate()V

    .line 157
    iget-object p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->onCompletionListener:Lopenlight/co/camera/view/ripple/RippleViewOnClick$OnRippleCompleteListener;

    if-eqz p1, :cond_32

    iget-object p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->onCompletionListener:Lopenlight/co/camera/view/ripple/RippleViewOnClick$OnRippleCompleteListener;

    invoke-interface {p1, p0}, Lopenlight/co/camera/view/ripple/RippleViewOnClick$OnRippleCompleteListener;->onComplete(Lopenlight/co/camera/view/ripple/RippleViewOnClick;)V

    :cond_32
    return-void

    .line 160
    :cond_33
    iget-object v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mCanvasHandler:Landroid/os/Handler;

    iget-object v1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->runnable:Ljava/lang/Runnable;

    iget v3, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mFrameRate:I

    int-to-long v3, v3

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    iget v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->timer:I

    if-nez v0, :cond_44

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 166
    :cond_44
    iget v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->x:F

    iget v1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->y:F

    iget v3, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRadiusMax:F

    iget v4, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->timer:I

    int-to-float v4, v4

    iget v5, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mFrameRate:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleDuration:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 169
    iget-object v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->paint:Landroid/graphics/Paint;

    const-string v1, "#ffff4444"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->rippleType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b4

    iget-object v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->originBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b4

    iget v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->timer:I

    int-to-float v0, v0

    iget v3, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mFrameRate:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    iget v3, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleDuration:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    const v3, 0x3ecccccd    # 0.4f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_b4

    .line 173
    iget v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->durationEmpty:I

    if-ne v0, v2, :cond_93

    .line 174
    iget v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleDuration:I

    iget v2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->timer:I

    iget v3, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mFrameRate:I

    mul-int/2addr v2, v3

    sub-int/2addr v0, v2

    iput v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->durationEmpty:I

    .line 176
    :cond_93
    iget v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->timerEmpty:I

    add-int/2addr v0, v1

    iput v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->timerEmpty:I

    .line 177
    iget v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRadiusMax:F

    iget v2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->timerEmpty:I

    int-to-float v2, v2

    iget v3, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mFrameRate:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->durationEmpty:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->getCircleBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 179
    iget-object v2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 180
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 183
    :cond_b4
    iget-object p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->rippleColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    iget-object p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->rippleType:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_f7

    .line 186
    iget p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->timer:I

    int-to-float p1, p1

    iget v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mFrameRate:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleDuration:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const v0, 0x3f19999a    # 0.6f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_ef

    .line 187
    iget-object p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleAnimation:I

    int-to-float v0, v0

    iget v2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleAnimation:I

    int-to-float v2, v2

    iget v3, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->timerEmpty:I

    int-to-float v3, v3

    iget v4, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mFrameRate:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->durationEmpty:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_110

    .line 191
    :cond_ef
    iget-object p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleAnimation:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_110

    .line 193
    :cond_f7
    iget-object p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->paint:Landroid/graphics/Paint;

    iget v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleAnimation:I

    int-to-float v0, v0

    iget v2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleAnimation:I

    int-to-float v2, v2

    iget v3, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->timer:I

    int-to-float v3, v3

    iget v4, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mFrameRate:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleDuration:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 197
    :goto_110
    iget p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->timer:I

    add-int/2addr p1, v1

    iput p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->timer:I

    :cond_115
    return-void
.end method

.method public getRippleColor()I
    .registers 1

    .line 334
    iget p0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->rippleColor:I

    return p0
.end method

.method public getRipplePadding()I
    .registers 1

    .line 364
    iget p0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->ripplePadding:I

    return p0
.end method

.method public getRippleType()Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;
    .registers 2

    .line 338
    invoke-static {}, Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;->values()[Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;

    move-result-object v0

    iget-object p0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->rippleType:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getZoomDuration()I
    .registers 1

    .line 403
    iget p0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->zoomDuration:I

    return p0
.end method

.method public getZoomScale()F
    .registers 1

    .line 390
    iget p0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->zoomScale:F

    return p0
.end method

.method public getmFrameRate()I
    .registers 1

    .line 429
    iget p0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mFrameRate:I

    return p0
.end method

.method public getmRippleAnimation()I
    .registers 1

    .line 442
    iget p0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleAnimation:I

    return p0
.end method

.method public getmRippleDuration()I
    .registers 1

    .line 416
    iget p0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleDuration:I

    return p0
.end method

.method public isCentered()Ljava/lang/Boolean;
    .registers 1

    .line 351
    iget-object p0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->isCentered:Ljava/lang/Boolean;

    return-object p0
.end method

.method public isZooming()Ljava/lang/Boolean;
    .registers 1

    .line 377
    iget-object p0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->hasToZoom:Ljava/lang/Boolean;

    return-object p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 278
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 279
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onSizeChanged(IIII)V
    .registers 12

    .line 203
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 204
    iput p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mWidth:I

    .line 205
    iput p2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mHeight:I

    .line 207
    new-instance p3, Landroid/view/animation/ScaleAnimation;

    iget v2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->zoomScale:F

    iget v4, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->zoomScale:F

    const/4 p4, 0x2

    div-int/2addr p1, p4

    int-to-float v5, p1

    div-int/2addr p2, p4

    int-to-float v6, p2

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iput-object p3, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    .line 208
    iget-object p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    iget p2, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->zoomDuration:I

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 209
    iget-object p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, p4}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 210
    iget-object p0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->scaleAnimation:Landroid/view/animation/ScaleAnimation;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 269
    iget-object v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 270
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->animateRipple(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    .line 271
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->sendClickEvent(Ljava/lang/Boolean;)V

    .line 273
    :cond_13
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setCentered(Ljava/lang/Boolean;)V
    .registers 2

    .line 360
    iput-object p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->isCentered:Ljava/lang/Boolean;

    return-void
.end method

.method public setOnRippleCompleteListener(Lopenlight/co/camera/view/ripple/RippleViewOnClick$OnRippleCompleteListener;)V
    .registers 2

    .line 455
    iput-object p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->onCompletionListener:Lopenlight/co/camera/view/ripple/RippleViewOnClick$OnRippleCompleteListener;

    return-void
.end method

.method public setRippleColor(I)V
    .registers 3
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation

    .line 330
    invoke-virtual {p0}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->rippleColor:I

    return-void
.end method

.method public setRipplePadding(I)V
    .registers 2

    .line 373
    iput p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->ripplePadding:I

    return-void
.end method

.method public setRippleType(Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;)V
    .registers 2

    .line 347
    invoke-virtual {p1}, Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->rippleType:Ljava/lang/Integer;

    return-void
.end method

.method public setZoomDuration(I)V
    .registers 2

    .line 412
    iput p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->zoomDuration:I

    return-void
.end method

.method public setZoomScale(F)V
    .registers 2

    .line 399
    iput p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->zoomScale:F

    return-void
.end method

.method public setZooming(Ljava/lang/Boolean;)V
    .registers 2

    .line 386
    iput-object p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->hasToZoom:Ljava/lang/Boolean;

    return-void
.end method

.method public setmFrameRate(I)V
    .registers 2

    .line 438
    iput p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mFrameRate:I

    return-void
.end method

.method public setmRippleAnimation(I)V
    .registers 2

    .line 451
    iput p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleAnimation:I

    return-void
.end method

.method public setmRippleDuration(I)V
    .registers 2

    .line 425
    iput p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->mRippleDuration:I

    return-void
.end method
