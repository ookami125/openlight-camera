.class public Lopenlight/co/camera/view/wheel/ModeWheel;
.super Landroid/view/View;
.source "ModeWheel.java"

# interfaces
.implements Lopenlight/co/camera/listener/OrientationListener;


# static fields
.field private static final ALPHA_OPAQUE:I = 0xff

.field private static final TAG:Ljava/lang/String; = "ModeWheel"

.field private static final VERBOSE_LOGGING:Z = false

.field private static final WHEEL_PERSPECTIVE_FACTOR:I = 0x1a


# instance fields
.field private mAngleBetweenItemsInRadians:D

.field private mAngleOfFirstItem:D

.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

.field private mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

.field private mItemFont:Landroid/graphics/Typeface;

.field private mLabelFont:Landroid/graphics/Typeface;

.field private mLandscapeAngleBetweenItem:F

.field private final mModeBoundaries:[Lopenlight/co/camera/view/dragger/ModeBoundary;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPortraitAngleBetweenItem:F

.field private mPositionIndicatorHeight:I

.field private mPositionIndicatorWidth:I

.field private mRect:Landroid/graphics/Rect;

.field private mStrokeWidth:F

.field private final mTextBounds:Landroid/graphics/Rect;

.field private mTextOffset:I

.field private mTextSizeLandscape:F

.field private mTextSizePortrait:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 45
    iput p1, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mCenterX:I

    .line 50
    iput p1, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mCenterY:I

    .line 54
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPaint:Landroid/graphics/Paint;

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mAngleOfFirstItem:D

    .line 69
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mTextBounds:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 81
    iput p2, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mStrokeWidth:F

    .line 83
    iput p1, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mTextOffset:I

    .line 89
    iput p2, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mLandscapeAngleBetweenItem:F

    .line 91
    iput p2, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPortraitAngleBetweenItem:F

    .line 93
    iput p1, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPositionIndicatorWidth:I

    .line 95
    iput p1, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPositionIndicatorHeight:I

    .line 98
    invoke-static {}, Lopenlight/co/camera/CameraMode;->getEnabledModes()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    new-array p1, p1, [Lopenlight/co/camera/view/dragger/ModeBoundary;

    iput-object p1, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mModeBoundaries:[Lopenlight/co/camera/view/dragger/ModeBoundary;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lopenlight/co/camera/view/dragger/DraggerModel;Landroid/graphics/Typeface;)V
    .locals 3

    .line 117
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mCenterX:I

    .line 50
    iput v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mCenterY:I

    .line 54
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPaint:Landroid/graphics/Paint;

    const-wide/16 v1, 0x0

    .line 59
    iput-wide v1, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mAngleOfFirstItem:D

    .line 69
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mTextBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 81
    iput v1, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mStrokeWidth:F

    .line 83
    iput v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mTextOffset:I

    .line 89
    iput v1, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mLandscapeAngleBetweenItem:F

    .line 91
    iput v1, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPortraitAngleBetweenItem:F

    .line 93
    iput v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPositionIndicatorWidth:I

    .line 95
    iput v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPositionIndicatorHeight:I

    .line 98
    invoke-static {}, Lopenlight/co/camera/CameraMode;->getEnabledModes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lopenlight/co/camera/view/dragger/ModeBoundary;

    iput-object v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mModeBoundaries:[Lopenlight/co/camera/view/dragger/ModeBoundary;

    .line 118
    iput-object p2, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    .line 119
    iput-object p3, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mItemFont:Landroid/graphics/Typeface;

    .line 120
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/wheel/ModeWheel;->init(Landroid/content/Context;)V

    return-void
.end method

.method private drawMode(Landroid/graphics/Canvas;I)V
    .locals 12

    .line 312
    iget-wide v2, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mAngleOfFirstItem:D

    .line 313
    iget-wide v4, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mAngleOfFirstItem:D

    iget-wide v6, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mAngleBetweenItemsInRadians:D

    div-double/2addr v4, v6

    .line 314
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    add-int/2addr v4, p2

    if-ltz v4, :cond_4

    .line 317
    iget-object v5, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    iget-object v5, v5, Lopenlight/co/camera/view/dragger/DraggerModel;->mItemsLabel:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 318
    iget-wide v5, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mAngleBetweenItemsInRadians:D

    int-to-double v7, v4

    mul-double/2addr v5, v7

    sub-double/2addr v2, v5

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    mul-double/2addr v5, v2

    .line 319
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 320
    iget-object v7, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    iget-object v7, v7, Lopenlight/co/camera/view/dragger/DraggerModel;->mItemsLabel:[Ljava/lang/String;

    aget-object v7, v7, v4

    double-to-float v4, v2

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v4, v8

    if-eqz p2, :cond_0

    const/high16 v9, 0x3f400000    # 0.75f

    mul-float/2addr v4, v9

    :cond_0
    move v9, v4

    .line 337
    iget-object v10, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    sget-object v11, Lopenlight/co/camera/enums/OrientationConfig;->PORTRAIT:Lopenlight/co/camera/enums/OrientationConfig;

    if-eq v10, v11, :cond_3

    iget-object v10, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    sget-object v11, Lopenlight/co/camera/enums/OrientationConfig;->PORTRAIT_REVERSE:Lopenlight/co/camera/enums/OrientationConfig;

    if-ne v10, v11, :cond_1

    goto :goto_1

    :cond_1
    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    .line 348
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v8, v10

    if-eqz p2, :cond_2

    const/16 v10, 0x34

    .line 353
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/2addr v10, v1

    goto :goto_0

    :cond_2
    const/16 v10, 0x1a

    :goto_0
    int-to-double v10, v10

    .line 355
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    .line 356
    iget v3, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mTextSizeLandscape:F

    float-to-double v10, v3

    mul-double/2addr v1, v10

    double-to-float v1, v1

    goto :goto_2

    .line 340
    :cond_3
    :goto_1
    iget v1, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mTextSizePortrait:F

    :goto_2
    move-object v0, p0

    move v2, v4

    move v3, v9

    move-wide v4, v5

    move v6, v8

    move-object v8, p1

    .line 364
    invoke-direct/range {v0 .. v8}, Lopenlight/co/camera/view/wheel/ModeWheel;->drawPositionOnCanvas(FFFDFLjava/lang/String;Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method

.method private drawOnCanvas(Ljava/lang/String;FFFFLandroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 7

    .line 435
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-direct {p0, p5}, Lopenlight/co/camera/view/wheel/ModeWheel;->strokeColor(F)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lopenlight/co/camera/view/wheel/ModeWheel;->drawTextOnCanvas(Ljava/lang/String;FFLandroid/graphics/Paint$Style;ILandroid/graphics/Canvas;)V

    .line 437
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-direct {p0, p4}, Lopenlight/co/camera/view/wheel/ModeWheel;->fillColor(F)I

    move-result v5

    invoke-direct/range {v0 .. v6}, Lopenlight/co/camera/view/wheel/ModeWheel;->drawTextOnCanvas(Ljava/lang/String;FFLandroid/graphics/Paint$Style;ILandroid/graphics/Canvas;)V

    .line 439
    invoke-direct {p0, p1, p3, p6}, Lopenlight/co/camera/view/wheel/ModeWheel;->setItemSize(Ljava/lang/String;FLandroid/graphics/Rect;)V

    return-void
.end method

.method private drawPositionIndicator(Landroid/graphics/Canvas;)V
    .locals 6

    .line 294
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Landroid/graphics/Rect;

    .line 296
    invoke-virtual {p0}, Lopenlight/co/camera/view/wheel/ModeWheel;->getWidth()I

    move-result v1

    iget v2, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPositionIndicatorWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mCenterY:I

    iget v3, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPositionIndicatorHeight:I

    sub-int/2addr v2, v3

    .line 298
    invoke-virtual {p0}, Lopenlight/co/camera/view/wheel/ModeWheel;->getWidth()I

    move-result v3

    iget v4, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mCenterY:I

    iget v5, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPositionIndicatorHeight:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mRect:Landroid/graphics/Rect;

    .line 300
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 301
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 302
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawPositionOnCanvas(FFFDFLjava/lang/String;Landroid/graphics/Canvas;)V
    .locals 11

    move-object v0, p0

    move-object/from16 v8, p8

    .line 383
    iget-object v1, v0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPaint:Landroid/graphics/Paint;

    move v2, p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 384
    iget-object v1, v0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPaint:Landroid/graphics/Paint;

    move v4, p2

    invoke-direct {p0, p2}, Lopenlight/co/camera/view/wheel/ModeWheel;->fillColor(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 387
    iget v1, v0, Lopenlight/co/camera/view/wheel/ModeWheel;->mCenterY:I

    int-to-double v1, v1

    .line 389
    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-virtual {p0}, Lopenlight/co/camera/view/wheel/ModeWheel;->getHeight()I

    move-result v3

    int-to-double v9, v3

    mul-double/2addr v5, v9

    move/from16 v3, p6

    float-to-double v9, v3

    mul-double/2addr v5, v9

    sub-double/2addr v1, v5

    double-to-float v1, v1

    .line 392
    iget-object v2, v0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v5, v0, Lopenlight/co/camera/view/wheel/ModeWheel;->mTextBounds:Landroid/graphics/Rect;

    const/4 v6, 0x0

    move-object/from16 v7, p7

    invoke-virtual {v2, v7, v6, v3, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 393
    sget-object v2, Lopenlight/co/camera/view/wheel/ModeWheel$1;->$SwitchMap$light$co$camera$enums$OrientationConfig:[I

    iget-object v3, v0, Lopenlight/co/camera/view/wheel/ModeWheel;->mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    invoke-virtual {v3}, Lopenlight/co/camera/enums/OrientationConfig;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 416
    :pswitch_0
    iget-object v2, v0, Lopenlight/co/camera/view/wheel/ModeWheel;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 417
    invoke-virtual {p0}, Lopenlight/co/camera/view/wheel/ModeWheel;->getWidth()I

    move-result v2

    iget-object v3, v0, Lopenlight/co/camera/view/wheel/ModeWheel;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v5, v0, Lopenlight/co/camera/view/wheel/ModeWheel;->mTextOffset:I

    add-int/2addr v3, v5

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v1

    .line 418
    iget-object v6, v0, Lopenlight/co/camera/view/wheel/ModeWheel;->mTextBounds:Landroid/graphics/Rect;

    move-object v0, p0

    move-object/from16 v1, p7

    move v4, p2

    move v5, p3

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lopenlight/co/camera/view/wheel/ModeWheel;->drawOnCanvas(Ljava/lang/String;FFFFLandroid/graphics/Rect;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 405
    :pswitch_1
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Canvas;->save()I

    .line 406
    iget-object v2, v0, Lopenlight/co/camera/view/wheel/ModeWheel;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 407
    invoke-virtual {p0}, Lopenlight/co/camera/view/wheel/ModeWheel;->getWidth()I

    move-result v2

    iget v3, v0, Lopenlight/co/camera/view/wheel/ModeWheel;->mTextOffset:I

    sub-int/2addr v2, v3

    .line 408
    iget-object v3, v0, Lopenlight/co/camera/view/wheel/ModeWheel;->mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    invoke-virtual {v3}, Lopenlight/co/camera/enums/OrientationConfig;->getViewRotationAngle()I

    move-result v3

    int-to-float v3, v3

    int-to-float v2, v2

    int-to-float v5, v1

    invoke-virtual {v8, v3, v2, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 410
    iget-object v6, v0, Lopenlight/co/camera/view/wheel/ModeWheel;->mTextBounds:Landroid/graphics/Rect;

    move-object v0, p0

    move-object/from16 v1, p7

    move v3, v5

    move v4, p2

    move v5, p3

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lopenlight/co/camera/view/wheel/ModeWheel;->drawOnCanvas(Ljava/lang/String;FFFFLandroid/graphics/Rect;Landroid/graphics/Canvas;)V

    .line 412
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 395
    :pswitch_2
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Canvas;->save()I

    .line 396
    iget-object v2, v0, Lopenlight/co/camera/view/wheel/ModeWheel;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 397
    invoke-virtual {p0}, Lopenlight/co/camera/view/wheel/ModeWheel;->getWidth()I

    move-result v2

    iget v3, v0, Lopenlight/co/camera/view/wheel/ModeWheel;->mTextOffset:I

    sub-int/2addr v2, v3

    .line 398
    iget-object v3, v0, Lopenlight/co/camera/view/wheel/ModeWheel;->mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    invoke-virtual {v3}, Lopenlight/co/camera/enums/OrientationConfig;->getViewRotationAngle()I

    move-result v3

    int-to-float v3, v3

    int-to-float v2, v2

    int-to-float v5, v1

    invoke-virtual {v8, v3, v2, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 400
    iget-object v6, v0, Lopenlight/co/camera/view/wheel/ModeWheel;->mTextBounds:Landroid/graphics/Rect;

    move-object v0, p0

    move-object/from16 v1, p7

    move v3, v5

    move v4, p2

    move v5, p3

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lopenlight/co/camera/view/wheel/ModeWheel;->drawOnCanvas(Ljava/lang/String;FFFFLandroid/graphics/Rect;Landroid/graphics/Canvas;)V

    .line 402
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private drawTextOnCanvas(Ljava/lang/String;FFLandroid/graphics/Paint$Style;ILandroid/graphics/Canvas;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 282
    iget-object p5, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p5, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 283
    sget-object p5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, p5}, Landroid/graphics/Paint$Style;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 284
    iget-object p4, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPaint:Landroid/graphics/Paint;

    iget p5, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mStrokeWidth:F

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 286
    :cond_0
    iget-object p0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p6, p1, p2, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private fillColor(F)I
    .locals 0

    const/high16 p0, 0x437f0000    # 255.0f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    const/16 p1, 0xff

    .line 516
    invoke-static {p0, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private getItemTouched(Landroid/view/MotionEvent;)Lopenlight/co/camera/CameraMode;
    .locals 6

    .line 497
    iget-object p0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mModeBoundaries:[Lopenlight/co/camera/view/dragger/ModeBoundary;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 498
    invoke-virtual {v2}, Lopenlight/co/camera/view/dragger/ModeBoundary;->getBoundedRectangle()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 499
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 498
    invoke-virtual {v2, v3, v4, v5}, Lopenlight/co/camera/view/dragger/ModeBoundary;->isTouchWithinBounds(Landroid/graphics/RectF;FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 500
    invoke-virtual {v2}, Lopenlight/co/camera/view/dragger/ModeBoundary;->getMode()Lopenlight/co/camera/CameraMode;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 225
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 226
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mItemFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 227
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    .line 228
    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/rotate/OrientationsController;->registerOrientationListener(Lopenlight/co/camera/listener/OrientationListener;)V

    .line 229
    invoke-virtual {v0}, Lopenlight/co/camera/view/rotate/OrientationsController;->getConfig()Lopenlight/co/camera/enums/OrientationConfig;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    .line 230
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    iget v0, v0, Lopenlight/co/camera/view/dragger/DraggerModel;->mAngleBetweenItemsInDegrees:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mAngleBetweenItemsInRadians:D

    const v0, 0x7f070124

    .line 231
    invoke-static {p1, v0}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mStrokeWidth:F

    const v0, 0x7f070122

    .line 232
    invoke-static {p1, v0}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mTextOffset:I

    const v0, 0x7f07011d

    .line 233
    invoke-static {p1, v0}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mTextSizeLandscape:F

    const v0, 0x7f07011f

    .line 234
    invoke-static {p1, v0}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mTextSizePortrait:F

    const v0, 0x7f07011c

    .line 235
    invoke-static {p1, v0}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mLandscapeAngleBetweenItem:F

    const v0, 0x7f07011e

    .line 237
    invoke-static {p1, v0}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPortraitAngleBetweenItem:F

    const v0, 0x7f070121

    .line 239
    invoke-static {p1, v0}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPositionIndicatorWidth:I

    const v0, 0x7f070120

    .line 241
    invoke-static {p1, v0}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPositionIndicatorHeight:I

    .line 243
    invoke-static {}, Lopenlight/co/camera/view/cache/FontCache;->get()Lopenlight/co/camera/view/cache/FontCache;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/view/cache/FontCache;->getHarmoniaBold()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mLabelFont:Landroid/graphics/Typeface;

    .line 244
    invoke-direct {p0}, Lopenlight/co/camera/view/wheel/ModeWheel;->initAngleDegree()V

    return-void
.end method

.method private initAngleDegree()V
    .locals 2

    .line 251
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    sget-object v1, Lopenlight/co/camera/enums/OrientationConfig;->PORTRAIT:Lopenlight/co/camera/enums/OrientationConfig;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    sget-object v1, Lopenlight/co/camera/enums/OrientationConfig;->PORTRAIT_REVERSE:Lopenlight/co/camera/enums/OrientationConfig;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    iget v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mLandscapeAngleBetweenItem:F

    float-to-double v0, v0

    .line 255
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    goto :goto_1

    .line 251
    :cond_1
    :goto_0
    iget v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPortraitAngleBetweenItem:F

    float-to-double v0, v0

    .line 254
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 255
    :goto_1
    iput-wide v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mAngleBetweenItemsInRadians:D

    .line 256
    invoke-direct {p0}, Lopenlight/co/camera/view/wheel/ModeWheel;->updateAngleOfFirstItem()V

    return-void
.end method

.method private saveRectSize(Ljava/lang/String;FFF)V
    .locals 4

    .line 484
    invoke-static {p1}, Lopenlight/co/camera/CameraMode;->getModeByLabel(Ljava/lang/String;)Lopenlight/co/camera/CameraMode;

    move-result-object p1

    .line 485
    iget-object p0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mModeBoundaries:[Lopenlight/co/camera/view/dragger/ModeBoundary;

    invoke-static {p1}, Lopenlight/co/camera/CameraMode;->indexForMode(Lopenlight/co/camera/CameraMode;)I

    move-result v0

    new-instance v1, Lopenlight/co/camera/view/dragger/ModeBoundary;

    new-instance v2, Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p2, p4, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v1, p1, v2}, Lopenlight/co/camera/view/dragger/ModeBoundary;-><init>(Lopenlight/co/camera/CameraMode;Landroid/graphics/RectF;)V

    aput-object v1, p0, v0

    return-void
.end method

.method private setItemSize(Ljava/lang/String;FLandroid/graphics/Rect;)V
    .locals 3

    .line 450
    sget-object v0, Lopenlight/co/camera/view/wheel/ModeWheel$1;->$SwitchMap$light$co$camera$enums$OrientationConfig:[I

    iget-object v1, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    invoke-virtual {v1}, Lopenlight/co/camera/enums/OrientationConfig;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 468
    :pswitch_0
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    .line 469
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    invoke-direct {p0, p1, p2, v0, p3}, Lopenlight/co/camera/view/wheel/ModeWheel;->saveRectSize(Ljava/lang/String;FFF)V

    goto :goto_0

    .line 460
    :pswitch_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    add-float/2addr v0, p2

    mul-float/2addr v0, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 462
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p2

    add-float/2addr p2, v2

    mul-float/2addr p2, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    .line 464
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    .line 463
    invoke-direct {p0, p1, v0, p2, p3}, Lopenlight/co/camera/view/wheel/ModeWheel;->saveRectSize(Ljava/lang/String;FFF)V

    goto :goto_0

    .line 453
    :pswitch_2
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p2

    add-float/2addr v0, p2

    mul-float/2addr v0, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 455
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p2

    add-float/2addr p2, v2

    mul-float/2addr p2, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    .line 456
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    invoke-direct {p0, p1, v0, p2, p3}, Lopenlight/co/camera/view/wheel/ModeWheel;->saveRectSize(Ljava/lang/String;FFF)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private strokeColor(F)I
    .locals 0

    const/high16 p0, 0x437f0000    # 255.0f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    const/4 p1, 0x0

    .line 528
    invoke-static {p0, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private updateAngleOfFirstItem()V
    .locals 4

    .line 264
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    iget-object v0, v0, Lopenlight/co/camera/view/dragger/DraggerModel;->mItemsLabel:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    iget-wide v2, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mAngleBetweenItemsInRadians:D

    mul-double/2addr v0, v2

    .line 265
    iget-object v2, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    iget v2, v2, Lopenlight/co/camera/view/dragger/DraggerModel;->mPositionFromSubject:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mAngleOfFirstItem:D

    .line 266
    invoke-virtual {p0}, Lopenlight/co/camera/view/wheel/ModeWheel;->invalidate()V

    return-void
.end method


# virtual methods
.method public getListenerName()Ljava/lang/String;
    .locals 0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 206
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 207
    iget v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mCenterX:I

    if-eqz v0, :cond_2

    iget v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mCenterY:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 210
    :cond_0
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/wheel/ModeWheel;->drawPositionIndicator(Landroid/graphics/Canvas;)V

    .line 211
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mLabelFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 212
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mItemFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 213
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    iget-object v0, v0, Lopenlight/co/camera/view/dragger/DraggerModel;->mItemsLabel:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    neg-int v1, v0

    :goto_0
    if-gt v1, v0, :cond_1

    .line 215
    invoke-direct {p0, p1, v1}, Lopenlight/co/camera/view/wheel/ModeWheel;->drawMode(Landroid/graphics/Canvas;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    .line 147
    invoke-direct {p0}, Lopenlight/co/camera/view/wheel/ModeWheel;->initAngleDegree()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 200
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mCenterX:I

    .line 201
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mCenterY:I

    return-void
.end method

.method public setDragComplete()V
    .locals 1

    .line 173
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    invoke-virtual {v0}, Lopenlight/co/camera/view/dragger/DraggerModel;->indexOfSelectedItem()I

    .line 174
    invoke-direct {p0}, Lopenlight/co/camera/view/wheel/ModeWheel;->updateAngleOfFirstItem()V

    .line 175
    invoke-virtual {p0}, Lopenlight/co/camera/view/wheel/ModeWheel;->invalidate()V

    return-void
.end method

.method public updateDragPosition(F)V
    .locals 3

    .line 162
    sget-object v0, Lopenlight/co/camera/view/wheel/ModeWheel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ModelWheel Value received on Drag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    cmpg-float v0, p1, v2

    if-gez v0, :cond_1

    move p1, v2

    .line 164
    :cond_1
    :goto_0
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    invoke-virtual {v0, p1}, Lopenlight/co/camera/view/dragger/DraggerModel;->updateSubject(F)V

    .line 165
    invoke-direct {p0}, Lopenlight/co/camera/view/wheel/ModeWheel;->updateAngleOfFirstItem()V

    return-void
.end method

.method public updateModeOnTap(Landroid/view/MotionEvent;)V
    .locals 3

    .line 186
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/wheel/ModeWheel;->getItemTouched(Landroid/view/MotionEvent;)Lopenlight/co/camera/CameraMode;

    move-result-object p1

    .line 187
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    iget-object v0, v0, Lopenlight/co/camera/view/dragger/DraggerModel;->mItemsLabel:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-eqz p1, :cond_0

    .line 189
    invoke-static {p1}, Lopenlight/co/camera/CameraMode;->indexForMode(Lopenlight/co/camera/CameraMode;)I

    move-result p1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 190
    sget-object v0, Lopenlight/co/camera/view/wheel/ModeWheel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/ModeWheel;->mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    invoke-virtual {v0, p1}, Lopenlight/co/camera/view/dragger/DraggerModel;->updateSubject(F)V

    .line 192
    invoke-direct {p0}, Lopenlight/co/camera/view/wheel/ModeWheel;->updateAngleOfFirstItem()V

    :cond_0
    return-void
.end method
