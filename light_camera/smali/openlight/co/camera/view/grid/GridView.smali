.class public Lopenlight/co/camera/view/grid/GridView;
.super Landroid/view/View;
.source "GridView.java"


# static fields
.field private static final GOLDEN_RATIO:F

.field private static final GRID_ALPHA:I = 0x99

.field private static final GRID_OPACITY:F = 0.6f

.field private static final TAG:Ljava/lang/String; = "GridView"


# instance fields
.field captureScreenParam:Ljava/lang/Runnable;

.field private mGridType:Ljava/lang/String;

.field private final mGridViewModel:Lopenlight/co/camera/view/grid/GridViewModel;

.field private mPaddingFront:I

.field private mPaintGrid:Landroid/graphics/Paint;

.field private mPrevViewHeight:I

.field private mPrevViewWidth:I

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lopenlight/co/camera/view/grid/GridView;->GOLDEN_RATIO:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-static {}, Lopenlight/co/camera/view/grid/GridViewModel;->getInstance()Lopenlight/co/camera/view/grid/GridViewModel;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/grid/GridView;->mGridViewModel:Lopenlight/co/camera/view/grid/GridViewModel;

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lopenlight/co/camera/view/grid/GridView;->mViewWidth:I

    .line 32
    iput p1, p0, Lopenlight/co/camera/view/grid/GridView;->mViewHeight:I

    .line 34
    iput p1, p0, Lopenlight/co/camera/view/grid/GridView;->mPrevViewWidth:I

    .line 36
    iput p1, p0, Lopenlight/co/camera/view/grid/GridView;->mPrevViewHeight:I

    .line 42
    iput p1, p0, Lopenlight/co/camera/view/grid/GridView;->mPaddingFront:I

    .line 113
    new-instance p1, Lopenlight/co/camera/view/grid/GridView$1;

    invoke-direct {p1, p0}, Lopenlight/co/camera/view/grid/GridView$1;-><init>(Lopenlight/co/camera/view/grid/GridView;)V

    iput-object p1, p0, Lopenlight/co/camera/view/grid/GridView;->captureScreenParam:Ljava/lang/Runnable;

    .line 63
    invoke-direct {p0}, Lopenlight/co/camera/view/grid/GridView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;)V
    .registers 4

    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-static {}, Lopenlight/co/camera/view/grid/GridViewModel;->getInstance()Lopenlight/co/camera/view/grid/GridViewModel;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/grid/GridView;->mGridViewModel:Lopenlight/co/camera/view/grid/GridViewModel;

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lopenlight/co/camera/view/grid/GridView;->mViewWidth:I

    .line 32
    iput p1, p0, Lopenlight/co/camera/view/grid/GridView;->mViewHeight:I

    .line 34
    iput p1, p0, Lopenlight/co/camera/view/grid/GridView;->mPrevViewWidth:I

    .line 36
    iput p1, p0, Lopenlight/co/camera/view/grid/GridView;->mPrevViewHeight:I

    .line 42
    iput p1, p0, Lopenlight/co/camera/view/grid/GridView;->mPaddingFront:I

    .line 113
    new-instance p1, Lopenlight/co/camera/view/grid/GridView$1;

    invoke-direct {p1, p0}, Lopenlight/co/camera/view/grid/GridView$1;-><init>(Lopenlight/co/camera/view/grid/GridView;)V

    iput-object p1, p0, Lopenlight/co/camera/view/grid/GridView;->captureScreenParam:Ljava/lang/Runnable;

    .line 51
    iput-object p2, p0, Lopenlight/co/camera/view/grid/GridView;->mGridType:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lopenlight/co/camera/view/grid/GridView;->init()V

    .line 53
    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/camera/view/grid/GridView;)Lopenlight/co/camera/view/grid/GridViewModel;
    .registers 1

    .line 19
    iget-object p0, p0, Lopenlight/co/camera/view/grid/GridView;->mGridViewModel:Lopenlight/co/camera/view/grid/GridViewModel;

    return-object p0
.end method

.method static synthetic access$102(Lopenlight/co/camera/view/grid/GridView;I)I
    .registers 2

    .line 19
    iput p1, p0, Lopenlight/co/camera/view/grid/GridView;->mPaddingFront:I

    return p1
.end method

.method static synthetic access$202(Lopenlight/co/camera/view/grid/GridView;I)I
    .registers 2

    .line 19
    iput p1, p0, Lopenlight/co/camera/view/grid/GridView;->mViewWidth:I

    return p1
.end method

.method static synthetic access$302(Lopenlight/co/camera/view/grid/GridView;I)I
    .registers 2

    .line 19
    iput p1, p0, Lopenlight/co/camera/view/grid/GridView;->mViewHeight:I

    return p1
.end method

.method static synthetic access$400(Lopenlight/co/camera/view/grid/GridView;)I
    .registers 1

    .line 19
    iget p0, p0, Lopenlight/co/camera/view/grid/GridView;->mPrevViewWidth:I

    return p0
.end method

.method static synthetic access$402(Lopenlight/co/camera/view/grid/GridView;I)I
    .registers 2

    .line 19
    iput p1, p0, Lopenlight/co/camera/view/grid/GridView;->mPrevViewWidth:I

    return p1
.end method

.method static synthetic access$500(Lopenlight/co/camera/view/grid/GridView;)I
    .registers 1

    .line 19
    iget p0, p0, Lopenlight/co/camera/view/grid/GridView;->mPrevViewHeight:I

    return p0
.end method

.method static synthetic access$502(Lopenlight/co/camera/view/grid/GridView;I)I
    .registers 2

    .line 19
    iput p1, p0, Lopenlight/co/camera/view/grid/GridView;->mPrevViewHeight:I

    return p1
.end method

.method private drawGrid(Landroid/graphics/Canvas;I)V
    .registers 14

    .line 140
    iget v0, p0, Lopenlight/co/camera/view/grid/GridView;->mViewWidth:I

    if-eqz v0, :cond_3d

    iget v0, p0, Lopenlight/co/camera/view/grid/GridView;->mViewHeight:I

    if-eqz v0, :cond_3d

    if-eqz p2, :cond_3d

    .line 141
    iget v0, p0, Lopenlight/co/camera/view/grid/GridView;->mViewWidth:I

    div-int/2addr v0, p2

    .line 142
    iget v1, p0, Lopenlight/co/camera/view/grid/GridView;->mViewHeight:I

    div-int/2addr v1, p2

    const/4 v2, 0x1

    :goto_11
    if-ge v2, p2, :cond_3d

    .line 146
    iget v3, p0, Lopenlight/co/camera/view/grid/GridView;->mPaddingFront:I

    int-to-float v5, v3

    mul-int v3, v1, v2

    int-to-float v8, v3

    iget v3, p0, Lopenlight/co/camera/view/grid/GridView;->mViewWidth:I

    iget v4, p0, Lopenlight/co/camera/view/grid/GridView;->mPaddingFront:I

    add-int/2addr v3, v4

    int-to-float v7, v3

    iget-object v9, p0, Lopenlight/co/camera/view/grid/GridView;->mPaintGrid:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v8

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 150
    iget v3, p0, Lopenlight/co/camera/view/grid/GridView;->mPaddingFront:I

    mul-int v4, v0, v2

    add-int/2addr v3, v4

    int-to-float v6, v3

    const/4 v7, 0x0

    iget v3, p0, Lopenlight/co/camera/view/grid/GridView;->mPaddingFront:I

    add-int/2addr v3, v4

    int-to-float v8, v3

    iget v3, p0, Lopenlight/co/camera/view/grid/GridView;->mViewHeight:I

    int-to-float v9, v3

    iget-object v10, p0, Lopenlight/co/camera/view/grid/GridView;->mPaintGrid:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_3d
    return-void
.end method

.method private drawGridDense(Landroid/graphics/Canvas;)V
    .registers 11

    .line 185
    iget v0, p0, Lopenlight/co/camera/view/grid/GridView;->mViewHeight:I

    if-eqz v0, :cond_41

    iget v0, p0, Lopenlight/co/camera/view/grid/GridView;->mViewWidth:I

    if-eqz v0, :cond_41

    const/4 v0, 0x0

    move v1, v0

    .line 190
    :goto_a
    iget v2, p0, Lopenlight/co/camera/view/grid/GridView;->mViewWidth:I

    if-ge v1, v2, :cond_25

    if-lez v1, :cond_22

    .line 192
    iget v2, p0, Lopenlight/co/camera/view/grid/GridView;->mPaddingFront:I

    add-int/2addr v2, v1

    int-to-float v4, v2

    int-to-float v5, v0

    iget v2, p0, Lopenlight/co/camera/view/grid/GridView;->mPaddingFront:I

    add-int/2addr v2, v1

    int-to-float v6, v2

    iget v2, p0, Lopenlight/co/camera/view/grid/GridView;->mViewHeight:I

    int-to-float v7, v2

    iget-object v8, p0, Lopenlight/co/camera/view/grid/GridView;->mPaintGrid:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_22
    add-int/lit8 v1, v1, 0x78

    goto :goto_a

    :cond_25
    move v1, v0

    .line 199
    :goto_26
    iget v2, p0, Lopenlight/co/camera/view/grid/GridView;->mViewHeight:I

    if-ge v1, v2, :cond_41

    if-eqz v1, :cond_3e

    .line 201
    iget v2, p0, Lopenlight/co/camera/view/grid/GridView;->mPaddingFront:I

    add-int/2addr v2, v0

    int-to-float v4, v2

    int-to-float v7, v1

    iget v2, p0, Lopenlight/co/camera/view/grid/GridView;->mPaddingFront:I

    iget v3, p0, Lopenlight/co/camera/view/grid/GridView;->mViewWidth:I

    add-int/2addr v2, v3

    int-to-float v6, v2

    iget-object v8, p0, Lopenlight/co/camera/view/grid/GridView;->mPaintGrid:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3e
    add-int/lit8 v1, v1, 0x78

    goto :goto_26

    :cond_41
    return-void
.end method

.method private drawPhiGoldenRatioGrid(Landroid/graphics/Canvas;)V
    .registers 11

    .line 157
    iget v0, p0, Lopenlight/co/camera/view/grid/GridView;->mViewWidth:I

    if-eqz v0, :cond_7b

    iget v0, p0, Lopenlight/co/camera/view/grid/GridView;->mViewHeight:I

    if-eqz v0, :cond_7b

    .line 158
    sget v0, Lopenlight/co/camera/view/grid/GridView;->GOLDEN_RATIO:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 159
    iget v1, p0, Lopenlight/co/camera/view/grid/GridView;->mViewWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 160
    iget v2, p0, Lopenlight/co/camera/view/grid/GridView;->mViewHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    .line 164
    iget v0, p0, Lopenlight/co/camera/view/grid/GridView;->mPaddingFront:I

    int-to-float v4, v0

    sget v0, Lopenlight/co/camera/view/grid/GridView;->GOLDEN_RATIO:F

    mul-float v5, v2, v0

    iget v0, p0, Lopenlight/co/camera/view/grid/GridView;->mViewWidth:I

    iget v3, p0, Lopenlight/co/camera/view/grid/GridView;->mPaddingFront:I

    add-int/2addr v0, v3

    int-to-float v6, v0

    sget v0, Lopenlight/co/camera/view/grid/GridView;->GOLDEN_RATIO:F

    mul-float v7, v2, v0

    iget-object v8, p0, Lopenlight/co/camera/view/grid/GridView;->mPaintGrid:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 168
    iget v0, p0, Lopenlight/co/camera/view/grid/GridView;->mPaddingFront:I

    int-to-float v4, v0

    sget v0, Lopenlight/co/camera/view/grid/GridView;->GOLDEN_RATIO:F

    mul-float/2addr v0, v2

    add-float v5, v0, v2

    iget v0, p0, Lopenlight/co/camera/view/grid/GridView;->mViewWidth:I

    iget v3, p0, Lopenlight/co/camera/view/grid/GridView;->mPaddingFront:I

    add-int/2addr v0, v3

    int-to-float v6, v0

    sget v0, Lopenlight/co/camera/view/grid/GridView;->GOLDEN_RATIO:F

    mul-float/2addr v0, v2

    add-float v7, v0, v2

    iget-object v8, p0, Lopenlight/co/camera/view/grid/GridView;->mPaintGrid:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 173
    iget v0, p0, Lopenlight/co/camera/view/grid/GridView;->mPaddingFront:I

    int-to-float v0, v0

    sget v2, Lopenlight/co/camera/view/grid/GridView;->GOLDEN_RATIO:F

    mul-float/2addr v2, v1

    add-float v4, v0, v2

    const/4 v5, 0x0

    iget v0, p0, Lopenlight/co/camera/view/grid/GridView;->mPaddingFront:I

    int-to-float v0, v0

    sget v2, Lopenlight/co/camera/view/grid/GridView;->GOLDEN_RATIO:F

    mul-float/2addr v2, v1

    add-float v6, v0, v2

    iget v0, p0, Lopenlight/co/camera/view/grid/GridView;->mViewHeight:I

    int-to-float v7, v0

    iget-object v8, p0, Lopenlight/co/camera/view/grid/GridView;->mPaintGrid:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 178
    iget v0, p0, Lopenlight/co/camera/view/grid/GridView;->mPaddingFront:I

    int-to-float v0, v0

    sget v2, Lopenlight/co/camera/view/grid/GridView;->GOLDEN_RATIO:F

    mul-float/2addr v2, v1

    add-float/2addr v2, v1

    add-float v4, v0, v2

    iget v0, p0, Lopenlight/co/camera/view/grid/GridView;->mPaddingFront:I

    int-to-float v0, v0

    sget v2, Lopenlight/co/camera/view/grid/GridView;->GOLDEN_RATIO:F

    mul-float/2addr v2, v1

    add-float/2addr v2, v1

    add-float v6, v0, v2

    iget v0, p0, Lopenlight/co/camera/view/grid/GridView;->mViewHeight:I

    int-to-float v7, v0

    iget-object v8, p0, Lopenlight/co/camera/view/grid/GridView;->mPaintGrid:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_7b
    return-void
.end method

.method private init()V
    .registers 3

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lopenlight/co/camera/view/grid/GridView;->mPaintGrid:Landroid/graphics/Paint;

    .line 85
    iget-object v0, p0, Lopenlight/co/camera/view/grid/GridView;->mPaintGrid:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    iget-object v0, p0, Lopenlight/co/camera/view/grid/GridView;->mPaintGrid:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget-object v0, p0, Lopenlight/co/camera/view/grid/GridView;->mPaintGrid:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object p0, p0, Lopenlight/co/camera/view/grid/GridView;->mPaintGrid:Landroid/graphics/Paint;

    const/16 v0, 0x99

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 92
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 93
    invoke-virtual {p0}, Lopenlight/co/camera/view/grid/GridView;->updateScreenParams()V

    .line 94
    iget-object v0, p0, Lopenlight/co/camera/view/grid/GridView;->mGridType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0xce2e

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v1, v2, :cond_41

    const v2, 0xaefd55

    if-eq v1, v2, :cond_37

    const v2, 0x5a89840

    if-eq v1, v2, :cond_2d

    const v2, 0x5b0c31f

    if-eq v1, v2, :cond_23

    goto :goto_4b

    :cond_23
    const-string v1, "dense"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    move v0, v4

    goto :goto_4c

    :cond_2d
    const-string v1, "cross"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const/4 v0, 0x1

    goto :goto_4c

    :cond_37
    const-string v1, "golden_ratio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    move v0, v3

    goto :goto_4c

    :cond_41
    const-string v1, "3x3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const/4 v0, 0x0

    goto :goto_4c

    :cond_4b
    :goto_4b
    const/4 v0, -0x1

    :goto_4c
    packed-switch v0, :pswitch_data_60

    goto :goto_5f

    .line 108
    :pswitch_50
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/grid/GridView;->drawGridDense(Landroid/graphics/Canvas;)V

    goto :goto_5f

    .line 104
    :pswitch_54
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/grid/GridView;->drawPhiGoldenRatioGrid(Landroid/graphics/Canvas;)V

    goto :goto_5f

    .line 100
    :pswitch_58
    invoke-direct {p0, p1, v3}, Lopenlight/co/camera/view/grid/GridView;->drawGrid(Landroid/graphics/Canvas;I)V

    goto :goto_5f

    .line 96
    :pswitch_5c
    invoke-direct {p0, p1, v4}, Lopenlight/co/camera/view/grid/GridView;->drawGrid(Landroid/graphics/Canvas;I)V

    :goto_5f
    return-void

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_58
        :pswitch_54
        :pswitch_50
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 78
    iput p1, p0, Lopenlight/co/camera/view/grid/GridView;->mViewWidth:I

    .line 79
    iput p2, p0, Lopenlight/co/camera/view/grid/GridView;->mViewHeight:I

    .line 80
    sget-object p0, Lopenlight/co/camera/view/grid/GridView;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "preview Size Changed: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateGridType(Ljava/lang/String;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lopenlight/co/camera/view/grid/GridView;->mGridType:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lopenlight/co/camera/view/grid/GridView;->invalidate()V

    return-void
.end method

.method public updateScreenParams()V
    .registers 1

    .line 136
    iget-object p0, p0, Lopenlight/co/camera/view/grid/GridView;->captureScreenParam:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
