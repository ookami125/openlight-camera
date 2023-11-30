.class public Lopenlight/co/camera/view/wheel/FerrisWheel;
.super Landroid/view/View;
.source "FerrisWheel.java"


# static fields
.field private static final ALPHA:I = 0xff

.field private static final BITMAP_OFFSET:I = 0x18

.field private static final BITMAP_SIZE:I = 0x48

.field private static final ESTIMATED_CHARACTER_SPACING:I = 0x20

.field private static final EXPOSURE_LEFT_FACTOR:I = 0x32

.field private static final EXPOSURE_TOP_FACTOR:I = 0x14

.field private static final HISTORY_POINTER_OFFSET:I = 0x12

.field private static final NEGATIVE_EXPOSURE_SIGN:Ljava/lang/String; = "-"

.field private static final POSITIVE_EXPOSURE_SIGN:Ljava/lang/String; = "+"

.field private static final STROKE_WIDTH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "FerrisWheel"

.field private static final TEXT_OFFSET:I = 0x30

.field private static final TEXT_SCALE_FACTOR:I = 0xe


# instance fields
.field INVERT_FILTER:Landroid/graphics/ColorMatrixColorFilter;

.field private final INVERT_MATRIX:Landroid/graphics/ColorMatrix;

.field private mAngleBetweenItemsInRadians:D

.field private mAngleOfFirstItem:D

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCenterAlpha:F

.field private mCenterBrightness:Ljava/lang/String;

.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentPointer:Landroid/graphics/Bitmap;

.field private mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

.field private mFractionSize:I

.field private final mHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

.field private mItemFont:Landroid/graphics/Typeface;

.field private mLabelFont:Landroid/graphics/Typeface;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPrevIndex:I

.field private mPrevMidIndex:I

.field private mPreviousPointer:Landroid/graphics/Bitmap;

.field private mRadius:I

.field private mStartWheelX:I

.field private final mTextBounds:Landroid/graphics/Rect;

.field private mTextSize:I

.field private final mUiColor:I

.field private final mUpdatePreviousIndex:Ljava/lang/Runnable;

.field private mWheelAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 262
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mTextSize:I

    .line 78
    iput p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mFractionSize:I

    .line 81
    iput p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mRadius:I

    .line 84
    iput p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterX:I

    .line 87
    iput p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterY:I

    .line 96
    iput p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPrevMidIndex:I

    .line 99
    iput p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mStartWheelX:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 102
    iput p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterAlpha:F

    .line 105
    iput p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mWheelAlpha:F

    const-wide/16 p1, 0x0

    .line 108
    iput-wide p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mAngleOfFirstItem:D

    .line 117
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mTextBounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 132
    iput-object p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterBrightness:Ljava/lang/String;

    .line 138
    invoke-static {}, Lopenlight/co/camera/haptic/PlayHaptic;->get()Lopenlight/co/camera/haptic/PlayHaptic;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

    const/4 p1, -0x1

    .line 141
    iput p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mUiColor:I

    .line 144
    new-instance p1, Landroid/graphics/ColorMatrix;

    const/16 p2, 0x14

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-direct {p1, p2}, Landroid/graphics/ColorMatrix;-><init>([F)V

    iput-object p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->INVERT_MATRIX:Landroid/graphics/ColorMatrix;

    .line 152
    new-instance p1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object p2, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->INVERT_MATRIX:Landroid/graphics/ColorMatrix;

    invoke-direct {p1, p2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->INVERT_FILTER:Landroid/graphics/ColorMatrixColorFilter;

    .line 157
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPaint:Landroid/graphics/Paint;

    .line 173
    new-instance p1, Lopenlight/co/camera/view/wheel/FerrisWheel$1;

    invoke-direct {p1, p0}, Lopenlight/co/camera/view/wheel/FerrisWheel$1;-><init>(Lopenlight/co/camera/view/wheel/FerrisWheel;)V

    iput-object p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mUpdatePreviousIndex:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lopenlight/co/camera/view/dragger/DraggerModel;Landroid/graphics/Typeface;)V
    .locals 2

    .line 228
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mTextSize:I

    .line 78
    iput v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mFractionSize:I

    .line 81
    iput v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mRadius:I

    .line 84
    iput v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterX:I

    .line 87
    iput v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterY:I

    .line 96
    iput v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPrevMidIndex:I

    .line 99
    iput v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mStartWheelX:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 102
    iput v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterAlpha:F

    .line 105
    iput v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mWheelAlpha:F

    const-wide/16 v0, 0x0

    .line 108
    iput-wide v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mAngleOfFirstItem:D

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mTextBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterBrightness:Ljava/lang/String;

    .line 138
    invoke-static {}, Lopenlight/co/camera/haptic/PlayHaptic;->get()Lopenlight/co/camera/haptic/PlayHaptic;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

    const/4 v0, -0x1

    .line 141
    iput v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mUiColor:I

    .line 144
    new-instance v0, Landroid/graphics/ColorMatrix;

    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    iput-object v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->INVERT_MATRIX:Landroid/graphics/ColorMatrix;

    .line 152
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->INVERT_MATRIX:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->INVERT_FILTER:Landroid/graphics/ColorMatrixColorFilter;

    .line 157
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPaint:Landroid/graphics/Paint;

    .line 173
    new-instance v0, Lopenlight/co/camera/view/wheel/FerrisWheel$1;

    invoke-direct {v0, p0}, Lopenlight/co/camera/view/wheel/FerrisWheel$1;-><init>(Lopenlight/co/camera/view/wheel/FerrisWheel;)V

    iput-object v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mUpdatePreviousIndex:Ljava/lang/Runnable;

    .line 229
    iput-object p2, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    .line 230
    iput-object p3, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mItemFont:Landroid/graphics/Typeface;

    .line 231
    iget-object p2, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 232
    iget-object p2, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPaint:Landroid/graphics/Paint;

    iget-object p3, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mItemFont:Landroid/graphics/Typeface;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 233
    iget-object p2, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    iget p2, p2, Lopenlight/co/camera/view/dragger/DraggerModel;->mAngleBetweenItemsInDegrees:I

    int-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    iput-wide p2, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mAngleBetweenItemsInRadians:D

    .line 234
    invoke-static {}, Lopenlight/co/camera/view/cache/FontCache;->get()Lopenlight/co/camera/view/cache/FontCache;

    move-result-object p2

    invoke-virtual {p2}, Lopenlight/co/camera/view/cache/FontCache;->getHarmoniaBold()Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mLabelFont:Landroid/graphics/Typeface;

    const p2, 0x7f07018b

    .line 235
    invoke-static {p1, p2}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mTextSize:I

    const p2, 0x7f0700ca

    .line 236
    invoke-static {p1, p2}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mFractionSize:I

    const p2, 0x7f07018a

    .line 237
    invoke-static {p1, p2}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mRadius:I

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 p2, 0x7f030000

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 240
    array-length p2, p1

    div-int/lit8 p2, p2, 0x2

    aget-object p1, p1, p2

    iput-object p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterBrightness:Ljava/lang/String;

    .line 241
    invoke-direct {p0}, Lopenlight/co/camera/view/wheel/FerrisWheel;->getPointerBitmap()V

    .line 242
    invoke-direct {p0}, Lopenlight/co/camera/view/wheel/FerrisWheel;->updateAngleOfFirstItem()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$002(Lopenlight/co/camera/view/wheel/FerrisWheel;I)I
    .locals 0

    .line 34
    iput p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPrevIndex:I

    return p1
.end method

.method static synthetic access$100(Lopenlight/co/camera/view/wheel/FerrisWheel;)Lopenlight/co/camera/view/dragger/DraggerModel;
    .locals 0

    .line 34
    iget-object p0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    return-object p0
.end method

.method private drawItem(I)V
    .locals 20

    move-object/from16 v6, p0

    move/from16 v0, p1

    .line 409
    iget-wide v1, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mAngleOfFirstItem:D

    .line 410
    iget-wide v3, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mAngleOfFirstItem:D

    iget-wide v7, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mAngleBetweenItemsInRadians:D

    div-double/2addr v3, v7

    .line 411
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    add-int v7, v3, v0

    if-ltz v7, :cond_e

    .line 413
    iget-object v3, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    iget-object v3, v3, Lopenlight/co/camera/view/dragger/DraggerModel;->mItemsLabel:[Ljava/lang/String;

    array-length v3, v3

    if-ge v7, v3, :cond_e

    .line 414
    iget-wide v3, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mAngleBetweenItemsInRadians:D

    int-to-double v8, v7

    mul-double/2addr v3, v8

    sub-double/2addr v1, v3

    .line 415
    iget v3, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterAlpha:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget v3, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mWheelAlpha:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    .line 418
    invoke-direct {v6, v7}, Lopenlight/co/camera/view/wheel/FerrisWheel;->updatePositionOfMidSubject(I)V

    .line 421
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x402c000000000000L    # 14.0

    .line 423
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v10, v10

    .line 424
    iget-object v3, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPaint:Landroid/graphics/Paint;

    iget v5, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mTextSize:I

    int-to-float v5, v5

    mul-float/2addr v5, v10

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 426
    iget-object v3, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    iget-object v3, v3, Lopenlight/co/camera/view/dragger/DraggerModel;->mItemsLabel:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-direct {v6, v3}, Lopenlight/co/camera/view/wheel/FerrisWheel;->getMainText(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 427
    aget-object v13, v11, v12

    const-wide/high16 v14, 0x401c000000000000L    # 7.0

    .line 430
    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v3, v14

    div-float v3, v4, v3

    const/4 v5, -0x2

    const/4 v14, 0x1

    if-eq v0, v5, :cond_4

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    if-ne v0, v14, :cond_2

    goto :goto_0

    :cond_2
    if-nez v0, :cond_5

    mul-float/2addr v3, v4

    goto :goto_2

    :cond_3
    :goto_0
    const v4, 0x3f80a3d7    # 1.005f

    mul-float/2addr v3, v4

    goto :goto_2

    :cond_4
    :goto_1
    const v4, 0x3f8147ae    # 1.01f

    mul-float/2addr v3, v4

    .line 438
    :cond_5
    :goto_2
    iget-object v4, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setTextScaleX(F)V

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    .line 441
    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v4, v4

    if-nez v0, :cond_6

    .line 444
    iget v5, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterAlpha:F

    goto :goto_3

    :cond_6
    iget v5, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mWheelAlpha:F

    :goto_3
    double-to-float v8, v8

    mul-float/2addr v8, v5

    if-eqz v0, :cond_7

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v8

    move v9, v5

    goto :goto_4

    :cond_7
    move v9, v8

    :goto_4
    if-eqz v0, :cond_8

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v8, v5

    :cond_8
    const/high16 v5, 0x42000000    # 32.0f

    mul-float/2addr v5, v10

    mul-float/2addr v3, v5

    const/high16 v15, 0x42400000    # 48.0f

    sub-float v3, v15, v3

    sub-float/2addr v15, v5

    .line 460
    iget-object v5, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    move/from16 v16, v15

    iget-object v15, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v13, v12, v14, v15}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 461
    iget v5, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterY:I

    int-to-double v14, v5

    .line 462
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    iget v5, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mRadius:I

    move-object/from16 v17, v13

    int-to-double v12, v5

    mul-double/2addr v1, v12

    float-to-double v4, v4

    mul-double/2addr v1, v4

    add-double/2addr v14, v1

    double-to-float v12, v14

    .line 463
    iget-object v1, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    sub-float v1, v12, v1

    .line 464
    iget-object v2, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterBrightness:Ljava/lang/String;

    move-object/from16 v13, v17

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v17, 0x42480000    # 50.0f

    if-eqz v2, :cond_9

    add-float v3, v3, v17

    :cond_9
    move/from16 v18, v3

    const-string v2, "-"

    .line 469
    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "+"

    .line 470
    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    move/from16 v19, v1

    goto :goto_7

    :cond_b
    :goto_6
    const/high16 v2, 0x41a00000    # 20.0f

    sub-float/2addr v1, v2

    goto :goto_5

    :goto_7
    if-nez v0, :cond_c

    .line 474
    iget v0, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPrevMidIndex:I

    if-eq v0, v7, :cond_c

    .line 475
    iput v7, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPrevMidIndex:I

    .line 476
    iget-object v0, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

    sget-object v1, Lopenlight/co/camera/haptic/Immersion;->BRIGHTNESS_SCROLL:Lopenlight/co/camera/haptic/Immersion;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/haptic/PlayHaptic;->playHaptic(Lopenlight/co/camera/haptic/Immersion;)V

    .line 481
    :cond_c
    iget v0, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mStartWheelX:I

    int-to-float v0, v0

    add-float v2, v0, v18

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 482
    invoke-direct {v6, v8}, Lopenlight/co/camera/view/wheel/FerrisWheel;->strokeColor(F)I

    move-result v5

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v3, v19

    .line 481
    invoke-direct/range {v0 .. v5}, Lopenlight/co/camera/view/wheel/FerrisWheel;->drawTextOnCanvas(Ljava/lang/String;FFLandroid/graphics/Paint$Style;I)V

    .line 484
    iget v0, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mStartWheelX:I

    int-to-float v0, v0

    add-float v2, v0, v18

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-direct {v6, v9}, Lopenlight/co/camera/view/wheel/FerrisWheel;->fillColor(F)I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lopenlight/co/camera/view/wheel/FerrisWheel;->drawTextOnCanvas(Ljava/lang/String;FFLandroid/graphics/Paint$Style;I)V

    .line 487
    array-length v0, v11

    const/4 v1, 0x1

    if-le v0, v1, :cond_d

    .line 488
    aget-object v11, v11, v1

    .line 489
    iget-object v0, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPaint:Landroid/graphics/Paint;

    iget v1, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mFractionSize:I

    int-to-float v1, v1

    mul-float/2addr v1, v10

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 490
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 491
    iget-object v1, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v11, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 493
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    float-to-double v0, v0

    sub-double/2addr v14, v0

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    sub-double/2addr v14, v0

    double-to-float v10, v14

    .line 495
    iget v0, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mStartWheelX:I

    int-to-float v0, v0

    add-float v0, v0, v18

    iget-object v1, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mTextBounds:Landroid/graphics/Rect;

    .line 496
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    add-float v2, v0, v17

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 497
    invoke-direct {v6, v8}, Lopenlight/co/camera/view/wheel/FerrisWheel;->strokeColor(F)I

    move-result v5

    move-object/from16 v0, p0

    move-object v1, v11

    move v3, v10

    .line 495
    invoke-direct/range {v0 .. v5}, Lopenlight/co/camera/view/wheel/FerrisWheel;->drawTextOnCanvas(Ljava/lang/String;FFLandroid/graphics/Paint$Style;I)V

    .line 499
    iget v0, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mStartWheelX:I

    int-to-float v0, v0

    add-float v0, v0, v18

    iget-object v1, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mTextBounds:Landroid/graphics/Rect;

    .line 500
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    add-float v2, v0, v17

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 501
    invoke-direct {v6, v9}, Lopenlight/co/camera/view/wheel/FerrisWheel;->fillColor(F)I

    move-result v5

    move-object/from16 v0, p0

    move-object v1, v11

    .line 499
    invoke-direct/range {v0 .. v5}, Lopenlight/co/camera/view/wheel/FerrisWheel;->drawTextOnCanvas(Ljava/lang/String;FFLandroid/graphics/Paint$Style;I)V

    .line 506
    :cond_d
    iget v0, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPrevIndex:I

    if-ne v7, v0, :cond_e

    iget-object v0, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPreviousPointer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_e

    .line 513
    iget-object v0, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPreviousPointer:Landroid/graphics/Bitmap;

    iget v2, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mStartWheelX:I

    int-to-float v2, v2

    add-float v2, v2, v16

    iget-object v3, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPreviousPointer:Landroid/graphics/Bitmap;

    .line 514
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x41900000    # 18.0f

    sub-float/2addr v2, v3

    iget-object v3, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCurrentPointer:Landroid/graphics/Bitmap;

    .line 515
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    sub-float/2addr v12, v3

    iget-object v3, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPaint:Landroid/graphics/Paint;

    .line 513
    invoke-virtual {v0, v1, v2, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 517
    iget-object v0, v6, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_e
    return-void
.end method

.method private drawLabel()V
    .locals 11

    .line 378
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    iget-object v0, v0, Lopenlight/co/camera/view/dragger/DraggerModel;->mName:Ljava/lang/String;

    .line 379
    sget-object v1, Lopenlight/co/camera/view/wheel/FerrisWheel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 381
    iget-object v1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 382
    iget-object v1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mTextBounds:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 383
    iget v1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterY:I

    int-to-float v1, v1

    iget-object v2, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    sub-float v7, v1, v2

    .line 385
    iget v1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterX:I

    div-int/lit8 v1, v1, 0x2

    const-string v2, "shutter"

    .line 386
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    iget v1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterX:I

    div-int/lit8 v1, v1, 0x4

    :cond_0
    move v8, v1

    int-to-float v9, v8

    .line 389
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    iget v1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterAlpha:F

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v1, v10

    invoke-direct {p0, v1}, Lopenlight/co/camera/view/wheel/FerrisWheel;->strokeColor(F)I

    move-result v6

    move-object v1, p0

    move-object v2, v0

    move v3, v9

    move v4, v7

    invoke-direct/range {v1 .. v6}, Lopenlight/co/camera/view/wheel/FerrisWheel;->drawTextOnCanvas(Ljava/lang/String;FFLandroid/graphics/Paint$Style;I)V

    .line 391
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iget v1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterAlpha:F

    invoke-direct {p0, v1}, Lopenlight/co/camera/view/wheel/FerrisWheel;->fillColor(F)I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lopenlight/co/camera/view/wheel/FerrisWheel;->drawTextOnCanvas(Ljava/lang/String;FFLandroid/graphics/Paint$Style;I)V

    .line 394
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCurrentPointer:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v8

    add-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    iget v3, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterY:I

    int-to-float v3, v3

    iget-object v4, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCurrentPointer:Landroid/graphics/Bitmap;

    .line 395
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v10

    sub-float/2addr v3, v4

    iget-object v4, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPaint:Landroid/graphics/Paint;

    .line 394
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 396
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 398
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mTextBounds:Landroid/graphics/Rect;

    .line 399
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/2addr v8, v0

    iget-object v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCurrentPointer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/2addr v8, v0

    add-int/lit8 v8, v8, 0x18

    iput v8, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mStartWheelX:I

    return-void
.end method

.method private drawTextOnCanvas(Ljava/lang/String;FFLandroid/graphics/Paint$Style;I)V
    .locals 1

    .line 320
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    iget-object p5, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p5, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 322
    sget-object p5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, p5}, Landroid/graphics/Paint$Style;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 323
    iget-object p4, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPaint:Landroid/graphics/Paint;

    const/high16 p5, 0x40800000    # 4.0f

    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 325
    :cond_0
    iget-object p4, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCanvas:Landroid/graphics/Canvas;

    iget-object p0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, p2, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private fillColor(F)I
    .locals 0

    const/high16 p0, 0x437f0000    # 255.0f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    const/16 p1, 0xff

    .line 188
    invoke-static {p0, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private getMainText(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    const-string p0, " "

    .line 335
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPointerBitmap()V
    .locals 4

    .line 272
    invoke-virtual {p0}, Lopenlight/co/camera/view/wheel/FerrisWheel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08016a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x48

    .line 271
    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCurrentPointer:Landroid/graphics/Bitmap;

    .line 278
    invoke-virtual {p0}, Lopenlight/co/camera/view/wheel/FerrisWheel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f08016b

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 277
    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPreviousPointer:Landroid/graphics/Bitmap;

    return-void
.end method

.method private strokeColor(F)I
    .locals 0

    const/high16 p0, 0x437f0000    # 255.0f

    mul-float/2addr p1, p0

    float-to-int p0, p1

    const/4 p1, 0x0

    .line 200
    invoke-static {p0, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private updateAngleOfFirstItem()V
    .locals 4

    .line 164
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    iget-object v0, v0, Lopenlight/co/camera/view/dragger/DraggerModel;->mItemsLabel:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    iget-wide v2, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mAngleBetweenItemsInRadians:D

    mul-double/2addr v0, v2

    .line 165
    iget-object v2, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    iget v2, v2, Lopenlight/co/camera/view/dragger/DraggerModel;->mPositionFromSubject:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mAngleOfFirstItem:D

    .line 166
    invoke-virtual {p0}, Lopenlight/co/camera/view/wheel/FerrisWheel;->invalidate()V

    return-void
.end method

.method private updatePositionOfMidSubject(I)V
    .locals 6

    .line 368
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    iget-object v0, v0, Lopenlight/co/camera/view/dragger/DraggerModel;->mItemsLabel:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    iget-wide v2, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mAngleBetweenItemsInRadians:D

    mul-double/2addr v0, v2

    .line 369
    iget-wide v2, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mAngleBetweenItemsInRadians:D

    int-to-double v4, p1

    mul-double/2addr v2, v4

    div-double/2addr v2, v0

    double-to-float p1, v2

    .line 371
    iget-object p0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/dragger/DraggerModel;->updateSubject(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 292
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 293
    iget v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterX:I

    if-eqz v0, :cond_1

    iget v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterY:I

    if-eqz v0, :cond_1

    iget v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mWheelAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    iput-object p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCanvas:Landroid/graphics/Canvas;

    .line 298
    iget-object p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mLabelFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 299
    invoke-direct {p0}, Lopenlight/co/camera/view/wheel/FerrisWheel;->drawLabel()V

    .line 300
    iget-object p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mItemFont:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 p1, -0x2

    .line 301
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/wheel/FerrisWheel;->drawItem(I)V

    const/4 p1, -0x1

    .line 302
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/wheel/FerrisWheel;->drawItem(I)V

    const/4 p1, 0x0

    .line 303
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/wheel/FerrisWheel;->drawItem(I)V

    const/4 p1, 0x1

    .line 304
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/wheel/FerrisWheel;->drawItem(I)V

    const/4 p1, 0x2

    .line 305
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/wheel/FerrisWheel;->drawItem(I)V

    const/4 p1, 0x0

    .line 306
    iput-object p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCanvas:Landroid/graphics/Canvas;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 285
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 286
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterX:I

    .line 287
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterY:I

    return-void
.end method

.method public setDragComplete(FF)V
    .locals 0

    .line 213
    iput p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterAlpha:F

    .line 214
    iput p2, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mWheelAlpha:F

    .line 215
    iget p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mCenterAlpha:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    iget p1, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mWheelAlpha:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    .line 216
    invoke-virtual {p0}, Lopenlight/co/camera/view/wheel/FerrisWheel;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateDragPosition(F)V
    .locals 3

    .line 345
    sget-object v0, Lopenlight/co/camera/view/wheel/FerrisWheel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value received on Drag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    move p1, v2

    .line 351
    :cond_1
    :goto_0
    iget-object v0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    invoke-virtual {v0, p1}, Lopenlight/co/camera/view/dragger/DraggerModel;->updateSubject(F)V

    .line 352
    invoke-direct {p0}, Lopenlight/co/camera/view/wheel/FerrisWheel;->updateAngleOfFirstItem()V

    return-void
.end method

.method public updatePreviousIndexValue()V
    .locals 0

    .line 359
    iget-object p0, p0, Lopenlight/co/camera/view/wheel/FerrisWheel;->mUpdatePreviousIndex:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
