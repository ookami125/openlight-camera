.class public Lopenlight/co/lib/view/HistogramView;
.super Landroid/view/View;
.source "HistogramView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/lib/view/HistogramView$HistogramHelper;,
        Lopenlight/co/lib/view/HistogramView$OnDrawListener;
    }
.end annotation


# static fields
.field private static final BUCKETS:I = 0x100

.field private static final CHANNELS:I = 0x4

.field private static final HIGH_CLIP:I = 0x3

.field private static final OFFSET_B:I = 0x2

.field private static final OFFSET_G:I = 0x1

.field private static final OFFSET_R:I = 0x0

.field private static final OFFSET_Y:I = 0x3

.field private static final STATE_COLOR:I = 0x1

.field private static final STATE_COUNT:I = 0x3

.field private static final STATE_GRAY:I = 0x0

.field private static final STATE_ICON:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBorderColor:I

.field private final mCounts:[F

.field private mHistogramHelper:Lopenlight/co/lib/view/HistogramView$HistogramHelper;

.field private final mHistogramPath:Landroid/graphics/Path;

.field private mMax:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mState:I

.field private mUseIcon:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lopenlight/co/lib/view/HistogramView;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/lib/view/HistogramView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lopenlight/co/lib/view/HistogramView;->mState:I

    const v0, 0x7dffffff

    .line 55
    iput v0, p0, Lopenlight/co/lib/view/HistogramView;->mBorderColor:I

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lopenlight/co/lib/view/HistogramView;->mPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lopenlight/co/lib/view/HistogramView;->mHistogramPath:Landroid/graphics/Path;

    const/16 v0, 0x400

    .line 62
    new-array v0, v0, [F

    iput-object v0, p0, Lopenlight/co/lib/view/HistogramView;->mCounts:[F

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lopenlight/co/lib/view/HistogramView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lopenlight/co/lib/view/HistogramView;->mState:I

    const v0, 0x7dffffff

    .line 55
    iput v0, p0, Lopenlight/co/lib/view/HistogramView;->mBorderColor:I

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lopenlight/co/lib/view/HistogramView;->mPaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lopenlight/co/lib/view/HistogramView;->mHistogramPath:Landroid/graphics/Path;

    const/16 v0, 0x400

    .line 62
    new-array v0, v0, [F

    iput-object v0, p0, Lopenlight/co/lib/view/HistogramView;->mCounts:[F

    .line 76
    invoke-direct {p0, p1, p2}, Lopenlight/co/lib/view/HistogramView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 51
    iput p3, p0, Lopenlight/co/lib/view/HistogramView;->mState:I

    const p3, 0x7dffffff

    .line 55
    iput p3, p0, Lopenlight/co/lib/view/HistogramView;->mBorderColor:I

    .line 57
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lopenlight/co/lib/view/HistogramView;->mPaint:Landroid/graphics/Paint;

    .line 58
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lopenlight/co/lib/view/HistogramView;->mHistogramPath:Landroid/graphics/Path;

    const/16 p3, 0x400

    .line 62
    new-array p3, p3, [F

    iput-object p3, p0, Lopenlight/co/lib/view/HistogramView;->mCounts:[F

    .line 81
    invoke-direct {p0, p1, p2}, Lopenlight/co/lib/view/HistogramView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 51
    iput p3, p0, Lopenlight/co/lib/view/HistogramView;->mState:I

    const p3, 0x7dffffff

    .line 55
    iput p3, p0, Lopenlight/co/lib/view/HistogramView;->mBorderColor:I

    .line 57
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lopenlight/co/lib/view/HistogramView;->mPaint:Landroid/graphics/Paint;

    .line 58
    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lopenlight/co/lib/view/HistogramView;->mHistogramPath:Landroid/graphics/Path;

    const/16 p3, 0x400

    .line 62
    new-array p3, p3, [F

    iput-object p3, p0, Lopenlight/co/lib/view/HistogramView;->mCounts:[F

    .line 86
    invoke-direct {p0, p1, p2}, Lopenlight/co/lib/view/HistogramView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lopenlight/co/lib/view/HistogramView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private drawHistogram(Landroid/graphics/Canvas;[FIILandroid/graphics/PorterDuff$Mode;F)V
    .locals 4

    .line 234
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x43800000    # 256.0f

    div-float/2addr v0, v2

    div-float p6, v1, p6

    .line 240
    iget-object v2, p0, Lopenlight/co/lib/view/HistogramView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    .line 241
    iget-object v2, p0, Lopenlight/co/lib/view/HistogramView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 242
    iget-object v2, p0, Lopenlight/co/lib/view/HistogramView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 243
    iget-object v2, p0, Lopenlight/co/lib/view/HistogramView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 244
    iget-object v2, p0, Lopenlight/co/lib/view/HistogramView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    iget-object p4, p0, Lopenlight/co/lib/view/HistogramView;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v2, p5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p4, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 246
    iget-object p4, p0, Lopenlight/co/lib/view/HistogramView;->mHistogramPath:Landroid/graphics/Path;

    invoke-virtual {p4}, Landroid/graphics/Path;->reset()V

    const/high16 p4, 0x40000000    # 2.0f

    div-float p4, v0, p4

    const/4 p5, 0x0

    add-float/2addr p4, p5

    :goto_0
    const/16 v2, 0x400

    if-ge p3, v2, :cond_1

    .line 249
    aget v2, p2, p3

    cmpl-float v3, v2, p5

    if-lez v3, :cond_0

    mul-float/2addr v2, p6

    .line 251
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 252
    iget-object v3, p0, Lopenlight/co/lib/view/HistogramView;->mHistogramPath:Landroid/graphics/Path;

    invoke-virtual {v3, p4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 253
    iget-object v3, p0, Lopenlight/co/lib/view/HistogramView;->mHistogramPath:Landroid/graphics/Path;

    sub-float v2, v1, v2

    invoke-virtual {v3, p4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_0
    add-float/2addr p4, v0

    add-int/lit8 p3, p3, 0x4

    goto :goto_0

    .line 257
    :cond_1
    iget-object p2, p0, Lopenlight/co/lib/view/HistogramView;->mHistogramPath:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 258
    iget-object p2, p0, Lopenlight/co/lib/view/HistogramView;->mHistogramPath:Landroid/graphics/Path;

    iget-object p0, p0, Lopenlight/co/lib/view/HistogramView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x1

    .line 287
    invoke-virtual {p0, v0}, Lopenlight/co/lib/view/HistogramView;->setClickable(Z)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 289
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v2, Lopenlight/co/lib/R$styleable;->HistogramView:[I

    invoke-virtual {p1, p2, v2, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 293
    :try_start_0
    sget p2, Lopenlight/co/lib/R$styleable;->HistogramView_useIcon:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lopenlight/co/lib/view/HistogramView;->mUseIcon:Z

    .line 294
    sget p2, Lopenlight/co/lib/R$styleable;->HistogramView_borderColor:I

    iget v0, p0, Lopenlight/co/lib/view/HistogramView;->mBorderColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lopenlight/co/lib/view/HistogramView;->mBorderColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 297
    throw p0

    .line 299
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lopenlight/co/lib/view/HistogramView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 300
    iget-object p1, p0, Lopenlight/co/lib/view/HistogramView;->mCounts:[F

    array-length p1, p1

    .line 301
    new-array p2, p1, [F

    :goto_1
    if-ge v1, p1, :cond_1

    int-to-float v0, v1

    .line 303
    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 305
    :cond_1
    invoke-virtual {p0, p2}, Lopenlight/co/lib/view/HistogramView;->setCounts([F)V

    :cond_2
    return-void
.end method

.method private nextState()V
    .locals 2

    .line 178
    iget v0, p0, Lopenlight/co/lib/view/HistogramView;->mState:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 179
    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v1, p0, Lopenlight/co/lib/view/HistogramView;->mUseIcon:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0, v0}, Lopenlight/co/lib/view/HistogramView;->setState(I)V

    return-void
.end method

.method private setMax()V
    .locals 3

    .line 186
    iget v0, p0, Lopenlight/co/lib/view/HistogramView;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lopenlight/co/lib/view/HistogramView;->mCounts:[F

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lopenlight/co/lib/view/HistogramView;->findMax([FI)F

    move-result v0

    iget-object v2, p0, Lopenlight/co/lib/view/HistogramView;->mCounts:[F

    invoke-virtual {p0, v2, v1}, Lopenlight/co/lib/view/HistogramView;->findMax([FI)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lopenlight/co/lib/view/HistogramView;->mCounts:[F

    const/4 v2, 0x2

    .line 188
    invoke-virtual {p0, v1, v2}, Lopenlight/co/lib/view/HistogramView;->findMax([FI)F

    move-result v1

    .line 187
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lopenlight/co/lib/view/HistogramView;->mMax:F

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lopenlight/co/lib/view/HistogramView;->mCounts:[F

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lopenlight/co/lib/view/HistogramView;->findMax([FI)F

    move-result v0

    iput v0, p0, Lopenlight/co/lib/view/HistogramView;->mMax:F

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelUpdate()V
    .locals 1

    .line 120
    iget-object p0, p0, Lopenlight/co/lib/view/HistogramView;->mHistogramHelper:Lopenlight/co/lib/view/HistogramView$HistogramHelper;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 122
    invoke-virtual {p0, v0}, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method findMax([FI)F
    .locals 3

    .line 272
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    .line 273
    invoke-static {p0}, Ljava/util/Arrays;->sort([F)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x3f4

    if-ge v0, v1, :cond_1

    add-int v1, v0, p2

    .line 278
    aget v1, p0, v1

    cmpl-float v2, v1, p1

    if-lez v2, :cond_0

    move p1, v1

    :cond_0
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    const/high16 p0, 0x40c00000    # 6.0f

    mul-float/2addr p1, p0

    const/high16 p0, 0x40a00000    # 5.0f

    div-float/2addr p1, p0

    return p1
.end method

.method public getCounts()[F
    .locals 0

    .line 127
    iget-object p0, p0, Lopenlight/co/lib/view/HistogramView;->mCounts:[F

    return-object p0
.end method

.method helperFinished(Lopenlight/co/lib/view/HistogramView$HistogramHelper;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lopenlight/co/lib/view/HistogramView;->mHistogramHelper:Lopenlight/co/lib/view/HistogramView$HistogramHelper;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 173
    iput-object p1, p0, Lopenlight/co/lib/view/HistogramView;->mHistogramHelper:Lopenlight/co/lib/view/HistogramView$HistogramHelper;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v7, p0

    .line 203
    iget v0, v7, Lopenlight/co/lib/view/HistogramView;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 210
    :pswitch_0
    iget-object v2, v7, Lopenlight/co/lib/view/HistogramView;->mCounts:[F

    const/4 v3, 0x0

    const/high16 v4, -0x10000

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    iget v6, v7, Lopenlight/co/lib/view/HistogramView;->mMax:F

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lopenlight/co/lib/view/HistogramView;->drawHistogram(Landroid/graphics/Canvas;[FIILandroid/graphics/PorterDuff$Mode;F)V

    .line 211
    iget-object v2, v7, Lopenlight/co/lib/view/HistogramView;->mCounts:[F

    const/4 v3, 0x1

    const v4, -0xff0100

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    iget v6, v7, Lopenlight/co/lib/view/HistogramView;->mMax:F

    invoke-direct/range {v0 .. v6}, Lopenlight/co/lib/view/HistogramView;->drawHistogram(Landroid/graphics/Canvas;[FIILandroid/graphics/PorterDuff$Mode;F)V

    .line 212
    iget-object v2, v7, Lopenlight/co/lib/view/HistogramView;->mCounts:[F

    const/4 v3, 0x2

    const v4, -0xffff01

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    iget v6, v7, Lopenlight/co/lib/view/HistogramView;->mMax:F

    invoke-direct/range {v0 .. v6}, Lopenlight/co/lib/view/HistogramView;->drawHistogram(Landroid/graphics/Canvas;[FIILandroid/graphics/PorterDuff$Mode;F)V

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object v2, v7, Lopenlight/co/lib/view/HistogramView;->mCounts:[F

    const/4 v3, 0x3

    const/4 v4, -0x1

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    iget v6, v7, Lopenlight/co/lib/view/HistogramView;->mMax:F

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lopenlight/co/lib/view/HistogramView;->drawHistogram(Landroid/graphics/Canvas;[FIILandroid/graphics/PorterDuff$Mode;F)V

    .line 217
    :goto_0
    invoke-virtual {p0}, Lopenlight/co/lib/view/HistogramView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 218
    invoke-virtual {p0}, Lopenlight/co/lib/view/HistogramView;->getHeight()I

    move-result v1

    .line 220
    iget-object v2, v7, Lopenlight/co/lib/view/HistogramView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->reset()V

    .line 221
    iget-object v2, v7, Lopenlight/co/lib/view/HistogramView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 222
    iget-object v2, v7, Lopenlight/co/lib/view/HistogramView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x43800000    # 256.0f

    div-float v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 223
    iget-object v2, v7, Lopenlight/co/lib/view/HistogramView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 224
    iget-object v2, v7, Lopenlight/co/lib/view/HistogramView;->mPaint:Landroid/graphics/Paint;

    iget v3, v7, Lopenlight/co/lib/view/HistogramView;->mBorderColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v14, v1

    .line 225
    iget-object v6, v7, Lopenlight/co/lib/view/HistogramView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v4, v0

    move v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/16 v1, 0x19

    :goto_1
    const/16 v2, 0x4b

    if-gt v1, v2, :cond_0

    int-to-float v2, v1

    mul-float/2addr v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v11, v2, v3

    const/4 v10, 0x0

    .line 228
    iget-object v13, v7, Lopenlight/co/lib/view/HistogramView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v9, v11

    move v12, v14

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x19

    goto :goto_1

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 145
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 146
    iget p1, p0, Lopenlight/co/lib/view/HistogramView;->mState:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 147
    invoke-virtual {p0}, Lopenlight/co/lib/view/HistogramView;->getMinimumWidth()I

    move-result p1

    invoke-virtual {p0}, Lopenlight/co/lib/view/HistogramView;->getMinimumHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lopenlight/co/lib/view/HistogramView;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 0

    .line 155
    invoke-direct {p0}, Lopenlight/co/lib/view/HistogramView;->nextState()V

    .line 156
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Lopenlight/co/lib/view/HistogramView$OnDrawListener;Z)V
    .locals 8

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 90
    invoke-virtual/range {v0 .. v7}, Lopenlight/co/lib/view/HistogramView;->setBitmap(Landroid/graphics/Bitmap;Lopenlight/co/lib/view/HistogramView$OnDrawListener;ZIIII)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Lopenlight/co/lib/view/HistogramView$OnDrawListener;ZIIII)V
    .locals 11

    move-object v9, p0

    .line 95
    iget-object v0, v9, Lopenlight/co/lib/view/HistogramView;->mHistogramHelper:Lopenlight/co/lib/view/HistogramView$HistogramHelper;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, v9, Lopenlight/co/lib/view/HistogramView;->mHistogramHelper:Lopenlight/co/lib/view/HistogramView$HistogramHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->cancel(Z)Z

    .line 98
    :cond_0
    new-instance v10, Lopenlight/co/lib/view/HistogramView$HistogramHelper;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p0

    move v3, p3

    move-object v4, p2

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lopenlight/co/lib/view/HistogramView$HistogramHelper;-><init>(Landroid/graphics/Bitmap;Lopenlight/co/lib/view/HistogramView;ZLopenlight/co/lib/view/HistogramView$OnDrawListener;IIII)V

    iput-object v10, v9, Lopenlight/co/lib/view/HistogramView;->mHistogramHelper:Lopenlight/co/lib/view/HistogramView$HistogramHelper;

    .line 100
    iget-object v0, v9, Lopenlight/co/lib/view/HistogramView;->mHistogramHelper:Lopenlight/co/lib/view/HistogramView$HistogramHelper;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setCounts([F)V
    .locals 3

    if-nez p1, :cond_0

    .line 132
    iget-object p1, p0, Lopenlight/co/lib/view/HistogramView;->mCounts:[F

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lopenlight/co/lib/view/HistogramView;->mCounts:[F

    array-length v0, v0

    .line 135
    array-length v1, p1

    if-ne v1, v0, :cond_1

    .line 136
    iget-object v1, p0, Lopenlight/co/lib/view/HistogramView;->mCounts:[F

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    :cond_1
    :goto_0
    invoke-direct {p0}, Lopenlight/co/lib/view/HistogramView;->setMax()V

    .line 140
    invoke-virtual {p0}, Lopenlight/co/lib/view/HistogramView;->invalidate()V

    return-void
.end method

.method public setImage(Landroid/media/Image;Lopenlight/co/lib/view/HistogramView$OnDrawListener;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lopenlight/co/lib/view/HistogramView;->mHistogramHelper:Lopenlight/co/lib/view/HistogramView$HistogramHelper;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lopenlight/co/lib/view/HistogramView;->mHistogramHelper:Lopenlight/co/lib/view/HistogramView$HistogramHelper;

    invoke-virtual {v0, v1}, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->cancel(Z)Z

    .line 107
    :cond_0
    new-instance v0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;

    invoke-direct {v0, p1, p0, v1, p2}, Lopenlight/co/lib/view/HistogramView$HistogramHelper;-><init>(Landroid/media/Image;Lopenlight/co/lib/view/HistogramView;ZLopenlight/co/lib/view/HistogramView$OnDrawListener;)V

    iput-object v0, p0, Lopenlight/co/lib/view/HistogramView;->mHistogramHelper:Lopenlight/co/lib/view/HistogramView$HistogramHelper;

    .line 108
    iget-object p0, p0, Lopenlight/co/lib/view/HistogramView;->mHistogramHelper:Lopenlight/co/lib/view/HistogramView$HistogramHelper;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setImagePath(Ljava/lang/String;Lopenlight/co/lib/view/HistogramView$OnDrawListener;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lopenlight/co/lib/view/HistogramView;->mHistogramHelper:Lopenlight/co/lib/view/HistogramView$HistogramHelper;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lopenlight/co/lib/view/HistogramView;->mHistogramHelper:Lopenlight/co/lib/view/HistogramView$HistogramHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->cancel(Z)Z

    .line 115
    :cond_0
    new-instance v0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;

    invoke-direct {v0, p1, p0, p2}, Lopenlight/co/lib/view/HistogramView$HistogramHelper;-><init>(Ljava/lang/String;Lopenlight/co/lib/view/HistogramView;Lopenlight/co/lib/view/HistogramView$OnDrawListener;)V

    iput-object v0, p0, Lopenlight/co/lib/view/HistogramView;->mHistogramHelper:Lopenlight/co/lib/view/HistogramView$HistogramHelper;

    .line 116
    iget-object p0, p0, Lopenlight/co/lib/view/HistogramView;->mHistogramHelper:Lopenlight/co/lib/view/HistogramView$HistogramHelper;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setState(I)V
    .locals 4

    .line 160
    iget v0, p0, Lopenlight/co/lib/view/HistogramView;->mState:I

    if-eq p1, v0, :cond_3

    .line 161
    iget v0, p0, Lopenlight/co/lib/view/HistogramView;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne p1, v3, :cond_1

    move v1, v2

    :cond_1
    if-eq v0, v1, :cond_2

    .line 162
    invoke-virtual {p0}, Lopenlight/co/lib/view/HistogramView;->requestLayout()V

    .line 164
    :cond_2
    iput p1, p0, Lopenlight/co/lib/view/HistogramView;->mState:I

    .line 165
    invoke-direct {p0}, Lopenlight/co/lib/view/HistogramView;->setMax()V

    .line 166
    invoke-virtual {p0}, Lopenlight/co/lib/view/HistogramView;->invalidate()V

    :cond_3
    return-void
.end method
