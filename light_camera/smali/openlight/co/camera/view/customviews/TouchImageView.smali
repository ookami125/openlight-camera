.class public Lopenlight/co/camera/view/customviews/TouchImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/view/customviews/TouchImageView$ZoomVariables;,
        Lopenlight/co/camera/view/customviews/TouchImageView$CompatScroller;,
        Lopenlight/co/camera/view/customviews/TouchImageView$Fling;,
        Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;,
        Lopenlight/co/camera/view/customviews/TouchImageView$ScaleListener;,
        Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;,
        Lopenlight/co/camera/view/customviews/TouchImageView$OnTouchImageViewListener;,
        Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;,
        Lopenlight/co/camera/view/customviews/TouchImageView$State;
    }
.end annotation


# static fields
.field private static final DEBUG:Ljava/lang/String; = "DEBUG"

.field private static final MATRIX_VALUES_COUNT:I = 0x9

.field private static final SUPER_MAX_MULTIPLIER:F = 1.25f

.field private static final SUPER_MIN_MULTIPLIER:F = 0.3f

.field public static normalizedScale:F


# instance fields
.field private context:Landroid/content/Context;

.field private delayedZoomVariables:Lopenlight/co/camera/view/customviews/TouchImageView$ZoomVariables;

.field private doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private fling:Lopenlight/co/camera/view/customviews/TouchImageView$Fling;

.field private imageRenderedAtLeastOnce:Z

.field private m:[F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private matchViewHeight:F

.field private matchViewWidth:F

.field private matrix:Landroid/graphics/Matrix;

.field private maxScale:F

.field private minScale:F

.field private onDrawReady:Z

.field private onSwipeOutListener:Lopenlight/co/camera/view/grid/CustomViewPager$OnSwipeOutListener;

.field private prevMatchViewHeight:F

.field private prevMatchViewWidth:F

.field private prevMatrix:Landroid/graphics/Matrix;

.field private prevViewHeight:I

.field private prevViewWidth:I

.field private state:Lopenlight/co/camera/view/customviews/TouchImageView$State;

.field private superMaxScale:F

.field private superMinScale:F

.field private touchImageViewListener:Lopenlight/co/camera/view/customviews/TouchImageView$OnTouchImageViewListener;

.field private userTouchListener:Landroid/view/View$OnTouchListener;

.field private viewHeight:I

.field private viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 133
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 124
    iput-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 126
    iput-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->touchImageViewListener:Lopenlight/co/camera/view/customviews/TouchImageView$OnTouchImageViewListener;

    .line 134
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->sharedConstructing(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 138
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 123
    iput-object p2, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 124
    iput-object p2, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 126
    iput-object p2, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->touchImageViewListener:Lopenlight/co/camera/view/customviews/TouchImageView$OnTouchImageViewListener;

    .line 139
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->sharedConstructing(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 143
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 123
    iput-object p2, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 124
    iput-object p2, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    .line 126
    iput-object p2, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->touchImageViewListener:Lopenlight/co/camera/view/customviews/TouchImageView$OnTouchImageViewListener;

    .line 144
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->sharedConstructing(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lopenlight/co/camera/view/customviews/TouchImageView;)Landroid/view/GestureDetector;
    .registers 1

    .line 64
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$1100(Lopenlight/co/camera/view/customviews/TouchImageView;Lopenlight/co/camera/view/customviews/TouchImageView$State;)V
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->setState(Lopenlight/co/camera/view/customviews/TouchImageView$State;)V

    return-void
.end method

.method static synthetic access$1200(Lopenlight/co/camera/view/customviews/TouchImageView;)I
    .registers 1

    .line 64
    iget p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewWidth:I

    return p0
.end method

.method static synthetic access$1300(Lopenlight/co/camera/view/customviews/TouchImageView;)F
    .registers 1

    .line 64
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getImageWidth()F

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lopenlight/co/camera/view/customviews/TouchImageView;FFF)F
    .registers 4

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lopenlight/co/camera/view/customviews/TouchImageView;->getFixDragTrans(FFF)F

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lopenlight/co/camera/view/customviews/TouchImageView;)I
    .registers 1

    .line 64
    iget p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewHeight:I

    return p0
.end method

.method static synthetic access$1600(Lopenlight/co/camera/view/customviews/TouchImageView;)F
    .registers 1

    .line 64
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getImageHeight()F

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lopenlight/co/camera/view/customviews/TouchImageView;)Landroid/graphics/Matrix;
    .registers 1

    .line 64
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$1800(Lopenlight/co/camera/view/customviews/TouchImageView;)V
    .registers 1

    .line 64
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->fixTrans()V

    return-void
.end method

.method static synthetic access$1900(Lopenlight/co/camera/view/customviews/TouchImageView;)Lopenlight/co/camera/view/grid/CustomViewPager$OnSwipeOutListener;
    .registers 1

    .line 64
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->onSwipeOutListener:Lopenlight/co/camera/view/grid/CustomViewPager$OnSwipeOutListener;

    return-object p0
.end method

.method static synthetic access$2000(Lopenlight/co/camera/view/customviews/TouchImageView;)Landroid/view/View$OnTouchListener;
    .registers 1

    .line 64
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic access$2100(Lopenlight/co/camera/view/customviews/TouchImageView;)Lopenlight/co/camera/view/customviews/TouchImageView$OnTouchImageViewListener;
    .registers 1

    .line 64
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->touchImageViewListener:Lopenlight/co/camera/view/customviews/TouchImageView$OnTouchImageViewListener;

    return-object p0
.end method

.method static synthetic access$2200(Lopenlight/co/camera/view/customviews/TouchImageView;DFFZ)V
    .registers 6

    .line 64
    invoke-direct/range {p0 .. p5}, Lopenlight/co/camera/view/customviews/TouchImageView;->scaleImage(DFFZ)V

    return-void
.end method

.method static synthetic access$2300(Lopenlight/co/camera/view/customviews/TouchImageView;FFZ)Landroid/graphics/PointF;
    .registers 4

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lopenlight/co/camera/view/customviews/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lopenlight/co/camera/view/customviews/TouchImageView;FF)Landroid/graphics/PointF;
    .registers 3

    .line 64
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/customviews/TouchImageView;->transformCoordBitmapToTouch(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lopenlight/co/camera/view/customviews/TouchImageView;)V
    .registers 1

    .line 64
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->fixScaleTrans()V

    return-void
.end method

.method static synthetic access$2600(Lopenlight/co/camera/view/customviews/TouchImageView;)Landroid/content/Context;
    .registers 1

    .line 64
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2700(Lopenlight/co/camera/view/customviews/TouchImageView;)[F
    .registers 1

    .line 64
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    return-object p0
.end method

.method static synthetic access$300(Lopenlight/co/camera/view/customviews/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .registers 1

    .line 64
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object p0
.end method

.method static synthetic access$400(Lopenlight/co/camera/view/customviews/TouchImageView;)Lopenlight/co/camera/view/customviews/TouchImageView$Fling;
    .registers 1

    .line 64
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->fling:Lopenlight/co/camera/view/customviews/TouchImageView$Fling;

    return-object p0
.end method

.method static synthetic access$402(Lopenlight/co/camera/view/customviews/TouchImageView;Lopenlight/co/camera/view/customviews/TouchImageView$Fling;)Lopenlight/co/camera/view/customviews/TouchImageView$Fling;
    .registers 2

    .line 64
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->fling:Lopenlight/co/camera/view/customviews/TouchImageView$Fling;

    return-object p1
.end method

.method static synthetic access$500(Lopenlight/co/camera/view/customviews/TouchImageView;Ljava/lang/Runnable;)V
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->compatPostOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600(Lopenlight/co/camera/view/customviews/TouchImageView;)Lopenlight/co/camera/view/customviews/TouchImageView$State;
    .registers 1

    .line 64
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->state:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    return-object p0
.end method

.method static synthetic access$700(Lopenlight/co/camera/view/customviews/TouchImageView;)F
    .registers 1

    .line 64
    iget p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->minScale:F

    return p0
.end method

.method static synthetic access$800(Lopenlight/co/camera/view/customviews/TouchImageView;)F
    .registers 1

    .line 64
    iget p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->maxScale:F

    return p0
.end method

.method static synthetic access$900(Lopenlight/co/camera/view/customviews/TouchImageView;)Landroid/view/ScaleGestureDetector;
    .registers 1

    .line 64
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method private compatPostOnAnimation(Ljava/lang/Runnable;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1339
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 1340
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_f

    :cond_a
    const-wide/16 v0, 0x10

    .line 1343
    invoke-virtual {p0, p1, v0, v1}, Lopenlight/co/camera/view/customviews/TouchImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_f
    return-void
.end method

.method private fitImageToView()V
    .registers 12

    .line 610
    invoke-virtual {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_ff

    .line 611
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_ff

    .line 612
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_ff

    .line 615
    :cond_14
    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_fe

    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    if-nez v1, :cond_1e

    goto/16 :goto_fe

    .line 619
    :cond_1e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 620
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 625
    iget v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewWidth:I

    int-to-float v1, v1

    int-to-float v2, v9

    div-float/2addr v1, v2

    .line 626
    iget v3, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewHeight:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float/2addr v3, v4

    .line 628
    sget-object v5, Lopenlight/co/camera/view/customviews/TouchImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v6, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    packed-switch v5, :pswitch_data_100

    .line 651
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "TouchImageView does not support FIT_START or FIT_END"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 638
    :pswitch_47
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    move v3, v1

    .line 641
    :pswitch_50
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_5b

    .line 634
    :pswitch_55
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_5b

    :pswitch_5a
    move v1, v6

    :goto_5b
    move v3, v1

    .line 659
    :pswitch_5c
    iget v5, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewWidth:I

    int-to-float v5, v5

    mul-float v7, v1, v2

    sub-float/2addr v5, v7

    .line 660
    iget v7, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewHeight:I

    int-to-float v7, v7

    mul-float v8, v3, v4

    sub-float/2addr v7, v8

    .line 661
    iget v8, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewWidth:I

    int-to-float v8, v8

    sub-float/2addr v8, v5

    iput v8, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matchViewWidth:F

    .line 662
    iget v8, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewHeight:I

    int-to-float v8, v8

    sub-float/2addr v8, v7

    iput v8, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matchViewHeight:F

    .line 663
    invoke-virtual {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->isZoomed()Z

    move-result v8

    if-nez v8, :cond_8f

    iget-boolean v8, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->imageRenderedAtLeastOnce:Z

    if-nez v8, :cond_8f

    .line 667
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 668
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v5, v1

    div-float/2addr v7, v1

    invoke-virtual {v0, v5, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 669
    sput v6, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    goto :goto_f5

    .line 677
    :cond_8f
    iget v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->prevMatchViewWidth:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_9c

    iget v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->prevMatchViewHeight:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_9f

    .line 678
    :cond_9c
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->savePreviousImageValues()V

    .line 681
    :cond_9f
    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 686
    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    const/4 v3, 0x0

    iget v5, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matchViewWidth:F

    div-float/2addr v5, v2

    sget v2, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    mul-float/2addr v5, v2

    aput v5, v1, v3

    .line 687
    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    const/4 v2, 0x4

    iget v3, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matchViewHeight:F

    div-float/2addr v3, v4

    sget v4, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    mul-float/2addr v3, v4

    aput v3, v1, v2

    .line 692
    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    const/4 v2, 0x2

    aget v4, v1, v2

    .line 693
    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    const/4 v2, 0x5

    aget v10, v1, v2

    .line 698
    iget v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->prevMatchViewWidth:F

    sget v2, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    mul-float v5, v1, v2

    .line 699
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getImageWidth()F

    move-result v6

    const/4 v3, 0x2

    .line 700
    iget v7, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->prevViewWidth:I

    iget v8, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewWidth:I

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lopenlight/co/camera/view/customviews/TouchImageView;->translateMatrixAfterRotate(IFFFIII)V

    .line 706
    iget v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->prevMatchViewHeight:F

    sget v2, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    mul-float v4, v1, v2

    .line 707
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getImageHeight()F

    move-result v5

    const/4 v2, 0x5

    .line 708
    iget v6, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->prevViewHeight:I

    iget v7, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewHeight:I

    move-object v1, p0

    move v3, v10

    move v8, v0

    invoke-direct/range {v1 .. v8}, Lopenlight/co/camera/view/customviews/TouchImageView;->translateMatrixAfterRotate(IFFFIII)V

    .line 714
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 716
    :goto_f5
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->fixTrans()V

    .line 717
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void

    :cond_fe
    :goto_fe
    return-void

    :cond_ff
    :goto_ff
    return-void

    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_55
        :pswitch_47
        :pswitch_50
        :pswitch_5c
    .end packed-switch
.end method

.method private fixScaleTrans()V
    .registers 6

    .line 530
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->fixTrans()V

    .line 531
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 532
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getImageWidth()F

    move-result v0

    iget v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewWidth:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-gez v0, :cond_25

    .line 533
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    const/4 v2, 0x2

    iget v3, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewWidth:I

    int-to-float v3, v3

    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getImageWidth()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    aput v3, v0, v2

    .line 536
    :cond_25
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getImageHeight()F

    move-result v0

    iget v2, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewHeight:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3e

    .line 537
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    const/4 v2, 0x5

    iget v3, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewHeight:I

    int-to-float v3, v3

    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getImageHeight()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    aput v3, v0, v2

    .line 539
    :cond_3e
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method

.method private fixTrans()V
    .registers 5

    .line 510
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 511
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    .line 512
    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    .line 514
    iget v2, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getImageWidth()F

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lopenlight/co/camera/view/customviews/TouchImageView;->getFixTrans(FFF)F

    move-result v0

    .line 515
    iget v2, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewHeight:I

    int-to-float v2, v2

    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getImageHeight()F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lopenlight/co/camera/view/customviews/TouchImageView;->getFixTrans(FFF)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-nez v3, :cond_30

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_35

    .line 518
    :cond_30
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_35
    return-void
.end method

.method private getFixDragTrans(FFF)F
    .registers 4

    cmpg-float p0, p3, p2

    if-gtz p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    return p1
.end method

.method private getFixTrans(FFF)F
    .registers 5

    cmpg-float p0, p3, p2

    const/4 v0, 0x0

    if-gtz p0, :cond_a

    sub-float p0, p2, p3

    move p2, p0

    move p0, v0

    goto :goto_d

    :cond_a
    sub-float p0, p2, p3

    move p2, v0

    :goto_d
    cmpg-float p3, p1, p0

    if-gez p3, :cond_14

    neg-float p1, p1

    add-float/2addr p1, p0

    return p1

    :cond_14
    cmpl-float p0, p1, p2

    if-lez p0, :cond_1b

    neg-float p0, p1

    add-float/2addr p0, p2

    return p0

    :cond_1b
    return v0
.end method

.method private getImageHeight()F
    .registers 2

    .line 573
    iget p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matchViewHeight:F

    sget v0, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    mul-float/2addr p0, v0

    return p0
.end method

.method private getImageWidth()F
    .registers 2

    .line 569
    iget p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matchViewWidth:F

    sget v0, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    mul-float/2addr p0, v0

    return p0
.end method

.method private printMatrixInfo()V
    .registers 4

    const/16 v0, 0x9

    .line 1362
    new-array v0, v0, [F

    .line 1363
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const-string p0, "DEBUG"

    .line 1364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " TransX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " TransY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    aget v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private savePreviousImageValues()V
    .registers 3

    .line 285
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2a

    iget v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewHeight:I

    if-eqz v0, :cond_2a

    iget v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewWidth:I

    if-eqz v0, :cond_2a

    .line 286
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 287
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 288
    iget v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matchViewHeight:F

    iput v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->prevMatchViewHeight:F

    .line 289
    iget v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matchViewWidth:F

    iput v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->prevMatchViewWidth:F

    .line 290
    iget v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewHeight:I

    iput v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->prevViewHeight:I

    .line 291
    iget v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewWidth:I

    iput v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->prevViewWidth:I

    :cond_2a
    return-void
.end method

.method private scaleImage(DFFZ)V
    .registers 10

    if-eqz p5, :cond_7

    .line 1016
    iget p5, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->superMinScale:F

    .line 1017
    iget v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->superMaxScale:F

    goto :goto_b

    .line 1020
    :cond_7
    iget p5, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->minScale:F

    .line 1021
    iget v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->maxScale:F

    .line 1024
    :goto_b
    sget v1, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    .line 1025
    sget v2, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    float-to-double v2, v2

    mul-double/2addr v2, p1

    double-to-float v2, v2

    sput v2, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    .line 1026
    sget v2, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1f

    .line 1027
    sput v0, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    div-float/2addr v0, v1

    float-to-double p1, v0

    goto :goto_29

    .line 1029
    :cond_1f
    sget v0, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    cmpg-float v0, v0, p5

    if-gez v0, :cond_29

    .line 1030
    sput p5, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    div-float/2addr p5, v1

    float-to-double p1, p5

    .line 1034
    :cond_29
    :goto_29
    iget-object p5, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;

    double-to-float p1, p1

    invoke-virtual {p5, p1, p1, p3, p4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1035
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->fixScaleTrans()V

    .line 1036
    sget p0, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    return-void
.end method

.method private setState(Lopenlight/co/camera/view/customviews/TouchImageView$State;)V
    .registers 2

    .line 790
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->state:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    return-void
.end method

.method private setViewSize(III)I
    .registers 4

    const/high16 p0, -0x80000000

    if-eq p1, p0, :cond_b

    if-eqz p1, :cond_9

    const/high16 p0, 0x40000000    # 2.0f

    goto :goto_f

    :cond_9
    move p2, p3

    goto :goto_f

    .line 736
    :cond_b
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_f
    return p2
.end method

.method private sharedConstructing(Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x1

    .line 148
    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatImageView;->setClickable(Z)V

    .line 149
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->context:Landroid/content/Context;

    .line 150
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lopenlight/co/camera/view/customviews/TouchImageView$ScaleListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lopenlight/co/camera/view/customviews/TouchImageView$ScaleListener;-><init>(Lopenlight/co/camera/view/customviews/TouchImageView;Lopenlight/co/camera/view/customviews/TouchImageView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 151
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;

    invoke-direct {v1, p0, v2}, Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;-><init>(Lopenlight/co/camera/view/customviews/TouchImageView;Lopenlight/co/camera/view/customviews/TouchImageView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 152
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 153
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    const/16 p1, 0x9

    .line 154
    new-array p1, p1, [F

    iput-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 155
    sput p1, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    .line 156
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-nez v0, :cond_3f

    .line 157
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 159
    :cond_3f
    iput p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->minScale:F

    const/high16 p1, 0x40400000    # 3.0f

    .line 160
    iput p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->maxScale:F

    const p1, 0x3e99999a    # 0.3f

    .line 161
    iget v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->minScale:F

    mul-float/2addr v0, p1

    iput v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->superMinScale:F

    const/high16 p1, 0x3fa00000    # 1.25f

    .line 162
    iget v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->maxScale:F

    mul-float/2addr v0, p1

    iput v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->superMaxScale:F

    .line 163
    iget-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 164
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 165
    sget-object p1, Lopenlight/co/camera/view/customviews/TouchImageView$State;->NONE:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    invoke-direct {p0, p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->setState(Lopenlight/co/camera/view/customviews/TouchImageView$State;)V

    const/4 p1, 0x0

    .line 166
    iput-boolean p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->onDrawReady:Z

    .line 167
    new-instance p1, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;

    invoke-direct {p1, p0, v2}, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;-><init>(Lopenlight/co/camera/view/customviews/TouchImageView;Lopenlight/co/camera/view/customviews/TouchImageView$1;)V

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private transformCoordBitmapToTouch(FF)Landroid/graphics/PointF;
    .registers 5

    .line 1180
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1181
    invoke-virtual {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1182
    invoke-virtual {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v0

    div-float/2addr p2, v1

    .line 1185
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getImageWidth()F

    move-result v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 1186
    iget-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    const/4 v1, 0x5

    aget p1, p1, v1

    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getImageHeight()F

    move-result p0

    mul-float/2addr p0, p2

    add-float/2addr p1, p0

    .line 1187
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method private transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;
    .registers 9

    .line 1155
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1156
    invoke-virtual {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    .line 1157
    invoke-virtual {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    .line 1158
    iget-object v2, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    .line 1159
    iget-object v3, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    sub-float/2addr p1, v2

    mul-float/2addr p1, v0

    .line 1160
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getImageWidth()F

    move-result v2

    div-float/2addr p1, v2

    sub-float/2addr p2, v3

    mul-float/2addr p2, v1

    .line 1161
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getImageHeight()F

    move-result p0

    div-float/2addr p2, p0

    if-eqz p3, :cond_44

    const/4 p0, 0x0

    .line 1164
    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1165
    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 1168
    :cond_44
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method private translateMatrixAfterRotate(IFFFIII)V
    .registers 10

    int-to-float p6, p6

    cmpg-float v0, p4, p6

    const/high16 v1, 0x3f000000    # 0.5f

    if-gez v0, :cond_15

    .line 768
    iget-object p2, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    int-to-float p3, p7

    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    const/4 p4, 0x0

    aget p0, p0, p4

    mul-float/2addr p3, p0

    sub-float/2addr p6, p3

    mul-float/2addr p6, v1

    aput p6, p2, p1

    goto :goto_32

    :cond_15
    const/4 p7, 0x0

    cmpl-float p7, p2, p7

    if-lez p7, :cond_22

    .line 774
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    sub-float/2addr p4, p6

    mul-float/2addr p4, v1

    neg-float p2, p4

    aput p2, p0, p1

    goto :goto_32

    .line 784
    :cond_22
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    int-to-float p5, p5

    mul-float/2addr p5, v1

    add-float/2addr p2, p5

    div-float/2addr p2, p3

    .line 785
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    mul-float/2addr p2, p4

    mul-float/2addr p6, v1

    sub-float/2addr p2, p6

    neg-float p2, p2

    aput p2, p0, p1

    :goto_32
    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .registers 5

    .line 799
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 800
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    .line 802
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getImageWidth()F

    move-result v1

    iget v2, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    const/4 v2, 0x0

    if-gez v1, :cond_19

    return v2

    :cond_19
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_22

    if-gez p1, :cond_22

    return v2

    .line 808
    :cond_22
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getImageWidth()F

    move-result p0

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_38

    if-lez p1, :cond_38

    return v2

    :cond_38
    const/4 p0, 0x1

    return p0
.end method

.method public canScrollHorizontallyFroyo(I)Z
    .registers 2

    .line 794
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->canScrollHorizontally(I)Z

    move-result p0

    return p0
.end method

.method public getCurrentScale()F
    .registers 2

    .line 184
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getMatrixScale(Landroid/graphics/Matrix;)F

    move-result p0

    return p0
.end method

.method public getCurrentZoom()F
    .registers 1

    .line 382
    sget p0, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    return p0
.end method

.method public getMatrixScale(Landroid/graphics/Matrix;)F
    .registers 7
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 191
    invoke-virtual {p0, p1, v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const/4 v4, 0x3

    .line 192
    invoke-virtual {p0, p1, v4}, Lopenlight/co/camera/view/customviews/TouchImageView;->getMatrixValue(Landroid/graphics/Matrix;I)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    .line 191
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method protected getMatrixValue(Landroid/graphics/Matrix;I)F
    .registers 4
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x9L
        .end annotation
    .end param

    .line 197
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 198
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    aget p0, p0, p2

    return p0
.end method

.method public getMaxZoom()F
    .registers 1

    .line 353
    iget p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->maxScale:F

    return p0
.end method

.method public getMinZoom()F
    .registers 1

    .line 372
    iget p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->minScale:F

    return p0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 1

    .line 251
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public getScrollPosition()Landroid/graphics/PointF;
    .registers 6

    .line 481
    invoke-virtual {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 485
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 486
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 488
    iget v2, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lopenlight/co/camera/view/customviews/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object p0

    .line 489
    iget v2, p0, Landroid/graphics/PointF;->x:F

    int-to-float v1, v1

    div-float/2addr v2, v1

    iput v2, p0, Landroid/graphics/PointF;->x:F

    .line 490
    iget v1, p0, Landroid/graphics/PointF;->y:F

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Landroid/graphics/PointF;->y:F

    return-object p0
.end method

.method public getZoomedRect()Landroid/graphics/RectF;
    .registers 7

    .line 269
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_3a

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 272
    invoke-direct {p0, v1, v1, v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v1

    .line 273
    iget v2, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewWidth:I

    int-to-float v2, v2

    iget v3, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewHeight:I

    int-to-float v3, v3

    invoke-direct {p0, v2, v3, v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;

    move-result-object v0

    .line 275
    invoke-virtual {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    .line 276
    invoke-virtual {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    .line 277
    new-instance v3, Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, p0

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v5, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, p0

    invoke-direct {v3, v4, v1, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3

    .line 270
    :cond_3a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getZoomedRect() not supported with FIT_XY"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isZoomed()Z
    .registers 2

    .line 260
    sget p0, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 343
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 344
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->savePreviousImageValues()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    const/4 v0, 0x1

    .line 331
    iput-boolean v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->onDrawReady:Z

    .line 332
    iput-boolean v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->imageRenderedAtLeastOnce:Z

    .line 333
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->delayedZoomVariables:Lopenlight/co/camera/view/customviews/TouchImageView$ZoomVariables;

    if-eqz v0, :cond_1f

    .line 334
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->delayedZoomVariables:Lopenlight/co/camera/view/customviews/TouchImageView$ZoomVariables;

    iget v0, v0, Lopenlight/co/camera/view/customviews/TouchImageView$ZoomVariables;->scale:F

    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->delayedZoomVariables:Lopenlight/co/camera/view/customviews/TouchImageView$ZoomVariables;

    iget v1, v1, Lopenlight/co/camera/view/customviews/TouchImageView$ZoomVariables;->focusX:F

    iget-object v2, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->delayedZoomVariables:Lopenlight/co/camera/view/customviews/TouchImageView$ZoomVariables;

    iget v2, v2, Lopenlight/co/camera/view/customviews/TouchImageView$ZoomVariables;->focusY:F

    iget-object v3, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->delayedZoomVariables:Lopenlight/co/camera/view/customviews/TouchImageView$ZoomVariables;

    iget-object v3, v3, Lopenlight/co/camera/view/customviews/TouchImageView$ZoomVariables;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0, v1, v2, v3}, Lopenlight/co/camera/view/customviews/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 336
    iput-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->delayedZoomVariables:Lopenlight/co/camera/view/customviews/TouchImageView$ZoomVariables;

    .line 338
    :cond_1f
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 578
    invoke-virtual {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 579
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-eqz v1, :cond_42

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_42

    .line 584
    :cond_13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 585
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 586
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 587
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 588
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 589
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 590
    invoke-direct {p0, p1, v2, v1}, Lopenlight/co/camera/view/customviews/TouchImageView;->setViewSize(III)I

    move-result p1

    iput p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewWidth:I

    .line 591
    invoke-direct {p0, p2, v3, v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->setViewSize(III)I

    move-result p1

    iput p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewHeight:I

    .line 596
    iget p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewWidth:I

    iget p2, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewHeight:I

    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/view/customviews/TouchImageView;->setMeasuredDimension(II)V

    .line 601
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->fitImageToView()V

    return-void

    :cond_42
    :goto_42
    const/4 p1, 0x0

    .line 580
    invoke-virtual {p0, p1, p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    .line 312
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_4f

    .line 313
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "saveScale"

    .line 314
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    const-string v0, "matrix"

    .line 315
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    .line 316
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->prevMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    const-string v0, "matchViewHeight"

    .line 317
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->prevMatchViewHeight:F

    const-string v0, "matchViewWidth"

    .line 318
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->prevMatchViewWidth:F

    const-string v0, "viewHeight"

    .line 319
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->prevViewHeight:I

    const-string v0, "viewWidth"

    .line 320
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->prevViewWidth:I

    const-string v0, "imageRendered"

    .line 321
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->imageRenderedAtLeastOnce:Z

    const-string v0, "instanceState"

    .line 322
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 326
    :cond_4f
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 297
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "instanceState"

    .line 298
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "saveScale"

    .line 299
    sget v2, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "matchViewHeight"

    .line 300
    iget v2, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matchViewHeight:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "matchViewWidth"

    .line 301
    iget v2, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matchViewWidth:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "viewWidth"

    .line 302
    iget v2, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "viewHeight"

    .line 303
    iget v2, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 304
    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    const-string v1, "matrix"

    .line 305
    iget-object v2, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    const-string v1, "imageRendered"

    .line 306
    iget-boolean p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->imageRenderedAtLeastOnce:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public resetZoom()V
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 399
    sput v0, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    .line 400
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 210
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 211
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->savePreviousImageValues()V

    .line 212
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 217
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->savePreviousImageValues()V

    .line 219
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public setImageResource(I)V
    .registers 2

    .line 203
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageResource(I)V

    .line 204
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->savePreviousImageValues()V

    .line 205
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 2

    .line 224
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setImageURI(Landroid/net/Uri;)V

    .line 225
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->savePreviousImageValues()V

    .line 226
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->fitImageToView()V

    return-void
.end method

.method public setMaxZoom(F)V
    .registers 3

    .line 362
    iput p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->maxScale:F

    .line 363
    iget p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->maxScale:F

    const/high16 v0, 0x3fa00000    # 1.25f

    mul-float/2addr p1, v0

    iput p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->superMaxScale:F

    return-void
.end method

.method public setMinZoom(F)V
    .registers 3

    .line 391
    iput p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->minScale:F

    .line 392
    iget p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->minScale:F

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v0

    iput p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->superMinScale:F

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-void
.end method

.method public setOnSwipeOutListener(Lopenlight/co/camera/view/grid/CustomViewPager$OnSwipeOutListener;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->onSwipeOutListener:Lopenlight/co/camera/view/grid/CustomViewPager$OnSwipeOutListener;

    return-void
.end method

.method public setOnTouchImageViewListener(Lopenlight/co/camera/view/customviews/TouchImageView$OnTouchImageViewListener;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->touchImageViewListener:Lopenlight/co/camera/view/customviews/TouchImageView$OnTouchImageViewListener;

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 2

    .line 172
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->userTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    .line 231
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_1c

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_1c

    .line 234
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne p1, v0, :cond_12

    .line 235
    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1b

    .line 238
    :cond_12
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 239
    iget-boolean p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->onDrawReady:Z

    if-eqz p1, :cond_1b

    .line 244
    invoke-virtual {p0, p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->setZoom(Lopenlight/co/camera/view/customviews/TouchImageView;)V

    :cond_1b
    :goto_1b
    return-void

    .line 232
    :cond_1c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "TouchImageView does not support FIT_START or FIT_END"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setScrollPosition(FF)V
    .registers 4

    .line 502
    sget v0, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    invoke-virtual {p0, v0, p1, p2}, Lopenlight/co/camera/view/customviews/TouchImageView;->setZoom(FFF)V

    return-void
.end method

.method public setZoom(F)V
    .registers 3

    const/high16 v0, 0x3f000000    # 0.5f

    .line 409
    invoke-virtual {p0, p1, v0, v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->setZoom(FFF)V

    return-void
.end method

.method public setZoom(FFF)V
    .registers 5

    .line 423
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setZoom(FFFLandroid/widget/ImageView$ScaleType;)V
    .registers 12

    .line 443
    iget-boolean v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->onDrawReady:Z

    if-nez v0, :cond_12

    .line 444
    new-instance v0, Lopenlight/co/camera/view/customviews/TouchImageView$ZoomVariables;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lopenlight/co/camera/view/customviews/TouchImageView$ZoomVariables;-><init>(Lopenlight/co/camera/view/customviews/TouchImageView;FFFLandroid/widget/ImageView$ScaleType;)V

    iput-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->delayedZoomVariables:Lopenlight/co/camera/view/customviews/TouchImageView$ZoomVariables;

    return-void

    .line 448
    :cond_12
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p4, v0, :cond_19

    .line 449
    invoke-virtual {p0, p4}, Lopenlight/co/camera/view/customviews/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 451
    :cond_19
    invoke-virtual {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->resetZoom()V

    float-to-double v2, p1

    .line 452
    iget p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewWidth:I

    const/4 p4, 0x2

    div-int/2addr p1, p4

    int-to-float v4, p1

    iget p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewHeight:I

    div-int/2addr p1, p4

    int-to-float v5, p1

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lopenlight/co/camera/view/customviews/TouchImageView;->scaleImage(DFFZ)V

    .line 453
    iget-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 454
    iget-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getImageWidth()F

    move-result v0

    mul-float/2addr p2, v0

    iget v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    sub-float/2addr p2, v0

    neg-float p2, p2

    aput p2, p1, p4

    .line 455
    iget-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    const/4 p2, 0x5

    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->getImageHeight()F

    move-result p4

    mul-float/2addr p3, p4

    iget p4, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->viewHeight:I

    int-to-float p4, p4

    mul-float/2addr p4, v1

    sub-float/2addr p3, p4

    neg-float p3, p3

    aput p3, p1, p2

    .line 456
    iget-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object p2, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->m:[F

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 457
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->fixTrans()V

    .line 458
    iget-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setZoom(Lopenlight/co/camera/view/customviews/TouchImageView;)V
    .registers 5

    .line 468
    invoke-virtual {p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->getScrollPosition()Landroid/graphics/PointF;

    move-result-object v0

    .line 469
    invoke-virtual {p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->getCurrentZoom()F

    move-result v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    invoke-virtual {p0, v1, v2, v0, p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->setZoom(FFFLandroid/widget/ImageView$ScaleType;)V

    return-void
.end method
