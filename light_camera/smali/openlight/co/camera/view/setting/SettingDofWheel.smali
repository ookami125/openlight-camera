.class public Lopenlight/co/camera/view/setting/SettingDofWheel;
.super Landroid/view/View;
.source "SettingDofWheel.java"

# interfaces
.implements Lopenlight/co/camera/listener/OrientationListener;


# static fields
.field private static final DOT_WIDTH:I = 0x46

.field private static final ITEMS:[Ljava/lang/Integer;

.field private static final RADIUS:I = 0x4

.field private static final STROKE_WIDTH:I = 0x4


# instance fields
.field private mAngleBetweenItemsInRadians:D

.field private mAngleOfFirstItem:D

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCenterAlpha:F

.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentDofValue:Ljava/lang/String;

.field private final mTextPaint:Landroid/text/TextPaint;

.field mUiColor:I

.field private mWheelAlpha:F

.field private mZoomLevel:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x35

    .line 23
    new-array v0, v0, [Ljava/lang/Integer;

    sput-object v0, Lopenlight/co/camera/view/setting/SettingDofWheel;->ITEMS:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 81
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCenterX:I

    .line 29
    iput p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCenterY:I

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mAngleOfFirstItem:D

    const/high16 p1, 0x3f800000    # 1.0f

    .line 39
    iput p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCenterAlpha:F

    .line 41
    iput p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mWheelAlpha:F

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mZoomLevel:F

    const/4 p1, -0x1

    .line 45
    iput p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mUiColor:I

    .line 47
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    .line 82
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingDofWheel;->initValue()V

    .line 83
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingDofWheel;->init()V

    .line 84
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lopenlight/co/camera/view/rotate/OrientationsController;->registerOrientationListener(Lopenlight/co/camera/listener/OrientationListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCenterX:I

    .line 29
    iput p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCenterY:I

    const-wide/16 p1, 0x0

    .line 37
    iput-wide p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mAngleOfFirstItem:D

    const/high16 p1, 0x3f800000    # 1.0f

    .line 39
    iput p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCenterAlpha:F

    .line 41
    iput p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mWheelAlpha:F

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mZoomLevel:F

    const/4 p1, -0x1

    .line 45
    iput p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mUiColor:I

    .line 47
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    .line 105
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingDofWheel;->initValue()V

    .line 106
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingDofWheel;->init()V

    return-void
.end method

.method private drawCircle(IIF)V
    .locals 3

    .line 190
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingDofWheel;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x23

    add-int/lit8 v0, v0, -0x48

    sub-int/2addr p1, p2

    .line 191
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    .line 192
    sget-object p2, Lopenlight/co/camera/view/setting/SettingDofWheel;->ITEMS:[Ljava/lang/Integer;

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr p2, v1

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float p1, p2, p1

    .line 194
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float v1, p1, p2

    if-lez v1, :cond_0

    move p1, p2

    :cond_0
    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p2, p1

    .line 197
    iget-object v1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, p2}, Lopenlight/co/camera/view/setting/SettingDofWheel;->strokeColor(F)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 198
    iget-object p2, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 199
    iget-object p2, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 200
    iget-object p2, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v0, v0

    iget-object v2, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, p3, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 201
    iget-object p2, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/setting/SettingDofWheel;->fillColor(F)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 202
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 203
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCanvas:Landroid/graphics/Canvas;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p3, v0, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCurrentLevelText()V
    .locals 5

    .line 207
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCurrentDofValue:Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x43100000    # 144.0f

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 213
    invoke-direct {p0, v0}, Lopenlight/co/camera/view/setting/SettingDofWheel;->getTextBound(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 216
    :cond_0
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingDofWheel;->getHeight()I

    move-result v2

    add-int/lit16 v2, v2, -0xd4

    .line 217
    iget v3, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCenterX:I

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    sub-float/2addr v3, v1

    float-to-int v1, v3

    .line 218
    iget-object v3, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {p0, v4}, Lopenlight/co/camera/view/setting/SettingDofWheel;->strokeColor(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 219
    iget-object v3, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 220
    iget-object v3, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 221
    iget-object v3, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCanvas:Landroid/graphics/Canvas;

    int-to-float v1, v1

    int-to-float v2, v2

    iget-object v4, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 222
    iget-object v3, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Lopenlight/co/camera/view/setting/SettingDofWheel;->fillColor(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 223
    iget-object v3, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 224
    iget-object v3, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCanvas:Landroid/graphics/Canvas;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawItems(I)V
    .locals 11

    .line 165
    iget-wide v0, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mAngleOfFirstItem:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 166
    iget-wide v1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mAngleOfFirstItem:D

    iget-wide v3, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mAngleBetweenItemsInRadians:D

    div-double/2addr v1, v3

    .line 167
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v4, v1

    add-int v5, v4, p1

    if-ltz v5, :cond_1

    .line 169
    sget-object p1, Lopenlight/co/camera/view/setting/SettingDofWheel;->ITEMS:[Ljava/lang/Integer;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    if-le v5, p1, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mAngleBetweenItemsInRadians:D

    int-to-double v6, v5

    mul-double/2addr v2, v6

    sub-double v6, v0, v2

    .line 175
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    .line 178
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v8, v0

    .line 179
    iget p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCenterX:I

    int-to-double v0, p1

    .line 180
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide v9, 0x408c200000000000L    # 900.0

    mul-double/2addr v2, v9

    float-to-double v9, v8

    mul-double/2addr v2, v9

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    add-double/2addr v0, v2

    double-to-float p1, v0

    const/high16 v0, 0x40800000    # 4.0f

    sub-float/2addr p1, v0

    .line 183
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 184
    invoke-direct {p0, v4, v5, p1}, Lopenlight/co/camera/view/setting/SettingDofWheel;->drawCircle(IIF)V

    move-object v3, p0

    .line 185
    invoke-direct/range {v3 .. v8}, Lopenlight/co/camera/view/setting/SettingDofWheel;->drawText(IIDF)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private drawSideText(Ljava/lang/String;Landroid/graphics/Rect;DFF)V
    .locals 4

    .line 272
    iget v0, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCenterX:I

    int-to-double v0, v0

    .line 273
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    const-wide v2, 0x408c200000000000L    # 900.0

    mul-double/2addr p3, v2

    float-to-double v2, p5

    mul-double/2addr p3, v2

    sub-double/2addr v0, p3

    double-to-float p3, v0

    const/high16 p4, 0x3f000000    # 0.5f

    mul-float/2addr p4, p6

    .line 275
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p2

    sub-float/2addr p3, p2

    float-to-int p2, p3

    .line 276
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingDofWheel;->getHeight()I

    move-result p3

    add-int/lit16 p3, p3, -0x8c

    add-int/lit8 p3, p3, -0x24

    .line 277
    iget-object p5, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, p4}, Lopenlight/co/camera/view/setting/SettingDofWheel;->strokeColor(F)I

    move-result p4

    invoke-virtual {p5, p4}, Landroid/text/TextPaint;->setColor(I)V

    .line 278
    iget-object p4, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    sget-object p5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, p5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 279
    iget-object p4, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    const/high16 p5, 0x40800000    # 4.0f

    invoke-virtual {p4, p5}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 280
    iget-object p4, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCanvas:Landroid/graphics/Canvas;

    int-to-float p2, p2

    int-to-float p3, p3

    iget-object p5, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p4, p1, p2, p3, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 281
    iget-object p4, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, p6}, Lopenlight/co/camera/view/setting/SettingDofWheel;->fillColor(F)I

    move-result p5

    invoke-virtual {p4, p5}, Landroid/text/TextPaint;->setColor(I)V

    .line 282
    iget-object p4, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    sget-object p5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, p5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 283
    iget-object p4, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCanvas:Landroid/graphics/Canvas;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p4, p1, p2, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawText(IIDF)V
    .locals 8

    if-ne p2, p1, :cond_0

    .line 238
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingDofWheel;->drawCurrentLevelText()V

    goto :goto_0

    .line 240
    :cond_0
    invoke-direct {p0, p2}, Lopenlight/co/camera/view/setting/SettingDofWheel;->getSideText(I)I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    const/16 v2, 0x64

    if-lt v0, v2, :cond_3

    :cond_1
    if-lez v0, :cond_2

    if-lt v0, v1, :cond_3

    :cond_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    :cond_3
    return-void

    :cond_4
    sub-int/2addr p1, p2

    .line 243
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v1, 0x5

    if-ge p1, v1, :cond_5

    const p2, 0x3e4ccccd    # 0.2f

    int-to-float p1, p1

    mul-float/2addr p2, p1

    :cond_5
    move v7, p2

    .line 248
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, v7}, Lopenlight/co/camera/view/setting/SettingDofWheel;->fillColor(F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 249
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 251
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    const/high16 p2, 0x42200000    # 40.0f

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 252
    invoke-direct {p0, v2}, Lopenlight/co/camera/view/setting/SettingDofWheel;->getTextBound(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_6

    return-void

    .line 254
    :cond_6
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, v7}, Lopenlight/co/camera/view/setting/SettingDofWheel;->fillColor(F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    move-object v1, p0

    move-wide v4, p3

    move v6, p5

    .line 255
    invoke-direct/range {v1 .. v7}, Lopenlight/co/camera/view/setting/SettingDofWheel;->drawSideText(Ljava/lang/String;Landroid/graphics/Rect;DFF)V

    :cond_7
    :goto_0
    return-void
.end method

.method private getSideText(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 264
    :cond_0
    sget-object p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->ITEMS:[Ljava/lang/Integer;

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    if-ne p1, p0, :cond_1

    const/16 p0, 0x64

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private getTextBound(Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 3

    .line 228
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 230
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private init()V
    .locals 3

    .line 110
    invoke-static {}, Lopenlight/co/camera/view/cache/FontCache;->get()Lopenlight/co/camera/view/cache/FontCache;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/view/cache/FontCache;->getHarmoniaRegular()Landroid/graphics/Typeface;

    move-result-object v0

    const-wide v1, 0x3ff19999a0000000L    # 1.100000023841858

    .line 112
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    iput-wide v1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mAngleBetweenItemsInRadians:D

    .line 113
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingDofWheel;->updateAngleOfFirst()V

    .line 114
    iget-object v1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 115
    iget-object v1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 116
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mTextPaint:Landroid/text/TextPaint;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method private initValue()V
    .locals 2

    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0x35

    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x1a

    .line 58
    sget-object v1, Lopenlight/co/camera/view/setting/SettingDofWheel;->ITEMS:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateAngleOfFirst()V
    .locals 4

    .line 50
    sget-object v0, Lopenlight/co/camera/view/setting/SettingDofWheel;->ITEMS:[Ljava/lang/Integer;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    iget-wide v2, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mAngleBetweenItemsInRadians:D

    mul-double/2addr v0, v2

    .line 51
    iget v2, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mZoomLevel:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mAngleOfFirstItem:D

    .line 52
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingDofWheel;->invalidate()V

    return-void
.end method


# virtual methods
.method fillColor(F)I
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 64
    iget p0, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mUiColor:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0xff

    invoke-static {p1, p0, p0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 65
    invoke-static {p1, p0, p0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    :goto_0
    return p0
.end method

.method public getListenerName()Ljava/lang/String;
    .locals 0

    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 128
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 129
    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCanvas:Landroid/graphics/Canvas;

    .line 130
    iget p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCenterX:I

    if-eqz p1, :cond_3

    iget p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCenterY:I

    if-nez p1, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    iget p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCenterAlpha:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    iget p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mWheelAlpha:F

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    return-void

    .line 137
    :cond_1
    sget-object p1, Lopenlight/co/camera/view/setting/SettingDofWheel;->ITEMS:[Ljava/lang/Integer;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 138
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lopenlight/co/camera/view/setting/SettingDofWheel;->drawItems(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCanvas:Landroid/graphics/Canvas;

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V
    .locals 0

    .line 288
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingDofWheel;->invalidate()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 122
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCenterX:I

    .line 123
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCenterY:I

    return-void
.end method

.method public setScaleValue(F)V
    .locals 1

    .line 146
    iput p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mZoomLevel:F

    .line 147
    iget p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mZoomLevel:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 148
    iput v0, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mZoomLevel:F

    .line 150
    :cond_0
    iget p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mZoomLevel:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 151
    iput v0, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mZoomLevel:F

    .line 153
    :cond_1
    iget p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mZoomLevel:F

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 154
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCurrentDofValue:Ljava/lang/String;

    .line 155
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingDofWheel;->updateAngleOfFirst()V

    return-void
.end method

.method public setZoomFinish(FF)V
    .locals 0

    .line 159
    iput p1, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mCenterAlpha:F

    .line 160
    iput p2, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mWheelAlpha:F

    .line 161
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingDofWheel;->invalidate()V

    return-void
.end method

.method strokeColor(F)I
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 70
    iget p0, p0, Lopenlight/co/camera/view/setting/SettingDofWheel;->mUiColor:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    invoke-static {p1, p0, p0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0xff

    .line 71
    invoke-static {p1, p0, p0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    :goto_0
    return p0
.end method
