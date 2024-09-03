.class public Lopenlight/co/camera/view/zoom/ZoomWheel;
.super Landroid/view/View;
.source "ZoomWheel.java"

# interfaces
.implements Lopenlight/co/camera/listener/OrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;
    }
.end annotation


# static fields
.field private static final ALPHA:I = 0xff

.field private static final DOTS_FILL_ALPHA_POW:I = 0x18

.field private static final FADE_PRIME_START_INDEX:I = 0x8

.field private static final FOCAL_LENGTH_CENTRAL_INDEX:I = 0x0

.field private static final LENS_TO_FOCAL_LENGTH_FACTOR:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ZoomWheel"

.field private static final TEXT_FILL_ALPHA_POW:I = 0x3

.field private static final TEXT_SCALING_POW:F = 1.5f


# instance fields
.field private final mAngleBetweenItemsInRadians:D

.field private mAngleOfFirstItem:D

.field private mCalculatedZoomLevel:D

.field private final mCameraApp:Landroid/content/Context;

.field private final mCameraInfo:Lopenlight/co/camera/CameraInfo;

.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentEventType:Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;

.field private mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

.field private mDotRadius:F

.field private mDotRightMargin:F

.field private final mExtensionRect:Landroid/graphics/Rect;

.field private mFocalLengthLeftMargin:F

.field private final mFocalLengthRect:Landroid/graphics/Rect;

.field private final mHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

.field private mLargeTextSize:F

.field private mLensExtension:Ljava/lang/String;

.field private mMediumTextSize:F

.field private mPrevZoomString:Ljava/lang/String;

.field private mPrimeDotExtraSpace:F

.field private mPrimeLensDotSpace:F

.field private mSmallTextSize:F

.field private mSpaceBetweenDots:F

.field private mSpaceFocalLengthExt:F

.field private mStrokeWidth:F

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mZoomLevel:F

.field private final mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

.field private mZoomString:Ljava/lang/String;

.field private mZoomUiLength:F


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/view/zoom/ZoomWheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-static {}, Lopenlight/co/camera/CameraInfo;->get()Lopenlight/co/camera/CameraInfo;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    .line 62
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCameraApp:Landroid/content/Context;

    const-wide p1, 0x3ff19999a0000000L    # 1.100000023841858

    .line 63
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    iput-wide p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mAngleBetweenItemsInRadians:D

    .line 64
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mExtensionRect:Landroid/graphics/Rect;

    .line 65
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mFocalLengthRect:Landroid/graphics/Rect;

    .line 66
    invoke-static {}, Lopenlight/co/camera/haptic/PlayHaptic;->get()Lopenlight/co/camera/haptic/PlayHaptic;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

    .line 67
    new-instance p1, Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mTextPaint:Landroid/text/TextPaint;

    .line 68
    sget-object p1, Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;->DISPLAY:Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;

    iput-object p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCurrentEventType:Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;

    const-string p1, "28"

    .line 75
    iput-object p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mZoomString:Ljava/lang/String;

    const-string p1, "28"

    .line 76
    iput-object p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mPrevZoomString:Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 79
    iput p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mStrokeWidth:F

    .line 99
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object p1

    .line 100
    invoke-virtual {p1, p0}, Lopenlight/co/camera/view/rotate/OrientationsController;->registerOrientationListener(Lopenlight/co/camera/listener/OrientationListener;)V

    .line 101
    invoke-virtual {p1}, Lopenlight/co/camera/view/rotate/OrientationsController;->getConfig()Lopenlight/co/camera/enums/OrientationConfig;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    .line 102
    invoke-direct {p0}, Lopenlight/co/camera/view/zoom/ZoomWheel;->updateAngleOfFirst()V

    .line 103
    invoke-direct {p0}, Lopenlight/co/camera/view/zoom/ZoomWheel;->initResources()V

    .line 104
    invoke-static {}, Lopenlight/co/camera/managers/zoom/ZoomManager;->get()Lopenlight/co/camera/managers/zoom/ZoomManager;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    return-void
.end method

.method private calculateFinishZoomText()V
    .registers 3

    .line 232
    iget v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mZoomLevel:F

    iget-object v1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    .line 233
    invoke-virtual {v1}, Lopenlight/co/camera/CameraInfo;->getMinFocalLengthLens()F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 235
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mZoomString:Ljava/lang/String;

    return-void
.end method

.method private calculateZoomLevel()V
    .registers 7

    .line 212
    iget-object v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v0}, Lopenlight/co/camera/CameraInfo;->getBACamerasFocalLengthRatio()F

    move-result v0

    .line 213
    iget-object v1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v1}, Lopenlight/co/camera/CameraInfo;->getCBCamerasFocalLengthRatio()F

    move-result v1

    .line 214
    iget-object v2, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v2}, Lopenlight/co/camera/CameraInfo;->getMaxToMinZoomRatio()F

    move-result v2

    .line 215
    iget-object v3, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {v3}, Lopenlight/co/camera/managers/zoom/ZoomManager;->getTempZoomLevel()F

    move-result v3

    .line 216
    iget v4, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mZoomLevel:F

    cmpg-float v4, v4, v0

    if-gez v4, :cond_23

    .line 217
    invoke-direct {p0, v3, v0}, Lopenlight/co/camera/view/zoom/ZoomWheel;->getComputedZoomLevel(FF)D

    move-result-wide v0

    goto :goto_39

    :cond_23
    iget v4, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mZoomLevel:F

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_37

    iget v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mZoomLevel:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_37

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 219
    invoke-direct {p0, v3, v1}, Lopenlight/co/camera/view/zoom/ZoomWheel;->getComputedZoomLevel(FF)D

    move-result-wide v0

    add-double/2addr v0, v4

    goto :goto_39

    :cond_37
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_39
    iput-wide v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCalculatedZoomLevel:D

    .line 220
    invoke-direct {p0}, Lopenlight/co/camera/view/zoom/ZoomWheel;->updateAngleOfFirst()V

    .line 221
    invoke-direct {p0}, Lopenlight/co/camera/view/zoom/ZoomWheel;->calculateFinishZoomText()V

    return-void
.end method

.method private drawDotsOnZoomWheel(DFLandroid/graphics/Canvas;)V
    .registers 8

    .line 285
    invoke-virtual {p0}, Lopenlight/co/camera/view/zoom/ZoomWheel;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mDotRightMargin:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 287
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    const-wide/high16 v1, 0x4038000000000000L    # 24.0

    .line 288
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    .line 290
    invoke-virtual {p4}, Landroid/graphics/Canvas;->save()I

    .line 292
    iget-object p2, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Lopenlight/co/camera/view/zoom/ZoomWheel;->strokeColor(F)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 293
    iget-object p2, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 294
    iget-object p2, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mStrokeWidth:F

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    int-to-float p2, v0

    .line 295
    iget v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mDotRadius:F

    iget-object v1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p4, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 298
    iget-object v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1}, Lopenlight/co/camera/view/zoom/ZoomWheel;->fillColor(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 299
    iget-object p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mTextPaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 300
    iget p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mDotRadius:F

    iget-object p0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p4, p2, p3, p1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 301
    invoke-virtual {p4}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawFocalLengthText(Ljava/lang/String;DLandroid/graphics/Canvas;)V
    .registers 21

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-wide/from16 v12, p2

    .line 405
    iget-object v0, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    invoke-virtual {v0}, Lopenlight/co/camera/enums/OrientationConfig;->getViewRotationAngle()I

    move-result v0

    int-to-float v14, v0

    .line 407
    iget v0, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mLargeTextSize:F

    invoke-static {v12, v13, v0}, Lopenlight/co/camera/view/zoom/ZoomWheel;->getPrimeTextSize(DF)F

    move-result v8

    .line 409
    iget v0, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mMediumTextSize:F

    invoke-static {v12, v13, v0}, Lopenlight/co/camera/view/zoom/ZoomWheel;->getPrimeTextSize(DF)F

    move-result v15

    .line 411
    iget-object v0, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mLensExtension:Ljava/lang/String;

    invoke-direct {v10, v0, v15}, Lopenlight/co/camera/view/zoom/ZoomWheel;->getTextBound(Ljava/lang/String;F)V

    .line 412
    invoke-direct {v10, v11, v8}, Lopenlight/co/camera/view/zoom/ZoomWheel;->getTextBound(Ljava/lang/String;F)V

    .line 414
    sget-object v0, Lopenlight/co/camera/view/zoom/ZoomWheel$1;->$SwitchMap$light$co$camera$enums$OrientationConfig:[I

    iget-object v1, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    invoke-virtual {v1}, Lopenlight/co/camera/enums/OrientationConfig;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10a

    goto/16 :goto_108

    .line 448
    :pswitch_30
    iget v0, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mFocalLengthLeftMargin:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 449
    iget v0, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCenterY:I

    int-to-float v0, v0

    iget-object v1, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mFocalLengthRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v7, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v14

    move-wide/from16 v4, p2

    move v6, v9

    move v12, v9

    move-object/from16 v9, p4

    .line 450
    invoke-direct/range {v0 .. v9}, Lopenlight/co/camera/view/zoom/ZoomWheel;->drawText(Ljava/lang/String;IFDIIFLandroid/graphics/Canvas;)V

    int-to-float v0, v12

    .line 455
    iget-object v1, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mTextPaint:Landroid/text/TextPaint;

    .line 456
    invoke-static {v11, v1}, Lopenlight/co/camera/view/zoom/ZoomWheel;->getTextWidth(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mSpaceFocalLengthExt:F

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 458
    iget v0, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCenterY:I

    int-to-float v0, v0

    iget-object v1, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mExtensionRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v7, v0

    .line 459
    iget-object v1, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mLensExtension:Ljava/lang/String;

    move-object/from16 v0, p0

    move v8, v15

    invoke-direct/range {v0 .. v9}, Lopenlight/co/camera/view/zoom/ZoomWheel;->drawText(Ljava/lang/String;IFDIIFLandroid/graphics/Canvas;)V

    goto/16 :goto_108

    .line 432
    :pswitch_74
    iget v0, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCenterX:I

    int-to-float v0, v0

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float v1, v8, v12

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 433
    iget v0, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCenterY:I

    int-to-float v0, v0

    iget-object v1, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v11, v1}, Lopenlight/co/camera/view/zoom/ZoomWheel;->getTextWidth(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v1

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    float-to-int v7, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v14

    move-wide/from16 v4, p2

    move v6, v13

    move-object/from16 v9, p4

    .line 434
    invoke-direct/range {v0 .. v9}, Lopenlight/co/camera/view/zoom/ZoomWheel;->drawText(Ljava/lang/String;IFDIIFLandroid/graphics/Canvas;)V

    int-to-float v0, v13

    .line 438
    iget-object v1, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mExtensionRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v12

    sub-float/2addr v0, v1

    iget v1, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mSpaceFocalLengthExt:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 440
    iget v0, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCenterY:I

    iget-object v1, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mExtensionRect:Landroid/graphics/Rect;

    .line 441
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mSpaceFocalLengthExt:F

    sub-float/2addr v0, v1

    float-to-int v7, v0

    .line 442
    iget-object v1, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mLensExtension:Ljava/lang/String;

    move-object/from16 v0, p0

    move v8, v15

    invoke-direct/range {v0 .. v9}, Lopenlight/co/camera/view/zoom/ZoomWheel;->drawText(Ljava/lang/String;IFDIIFLandroid/graphics/Canvas;)V

    goto :goto_108

    .line 417
    :pswitch_c2
    iget v0, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCenterX:I

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v1, v8

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 418
    iget v0, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCenterY:I

    int-to-float v0, v0

    iget-object v1, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mFocalLengthRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v7, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v14

    move-wide/from16 v4, p2

    move v6, v12

    move-object/from16 v9, p4

    .line 419
    invoke-direct/range {v0 .. v9}, Lopenlight/co/camera/view/zoom/ZoomWheel;->drawText(Ljava/lang/String;IFDIIFLandroid/graphics/Canvas;)V

    .line 424
    iget-object v0, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mExtensionRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v12, v0

    int-to-float v0, v12

    iget v1, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mSpaceFocalLengthExt:F

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 426
    iget v0, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCenterY:I

    int-to-float v0, v0

    iget-object v1, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mExtensionRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v7, v0

    .line 427
    iget-object v1, v10, Lopenlight/co/camera/view/zoom/ZoomWheel;->mLensExtension:Ljava/lang/String;

    move-object/from16 v0, p0

    move v8, v15

    invoke-direct/range {v0 .. v9}, Lopenlight/co/camera/view/zoom/ZoomWheel;->drawText(Ljava/lang/String;IFDIIFLandroid/graphics/Canvas;)V

    :goto_108
    return-void

    nop

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_c2
        :pswitch_74
        :pswitch_30
        :pswitch_30
    .end packed-switch
.end method

.method private drawFocalLengths(IIDFLandroid/graphics/Canvas;)V
    .registers 16

    .line 366
    iget v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mZoomLevel:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_14

    .line 367
    iget-object v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->getZoomLevel()F

    move-result v0

    iput v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mZoomLevel:F

    .line 368
    invoke-direct {p0}, Lopenlight/co/camera/view/zoom/ZoomWheel;->calculateFinishZoomText()V

    :cond_14
    if-ne p2, p1, :cond_1f

    .line 373
    invoke-direct {p0, p2}, Lopenlight/co/camera/view/zoom/ZoomWheel;->playHaptic(I)V

    .line 374
    iget-object p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mZoomString:Ljava/lang/String;

    invoke-direct {p0, p1, p3, p4, p6}, Lopenlight/co/camera/view/zoom/ZoomWheel;->drawFocalLengthText(Ljava/lang/String;DLandroid/graphics/Canvas;)V

    goto :goto_70

    .line 376
    :cond_1f
    invoke-direct {p0, p2}, Lopenlight/co/camera/view/zoom/ZoomWheel;->getPrimeLevelToDisplay(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    return-void

    .line 378
    :cond_27
    sget-object v1, Lopenlight/co/camera/view/zoom/ZoomWheel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Zoom Level of the Side: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sub-int/2addr p1, p2

    .line 379
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 380
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 382
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_70

    .line 383
    iget p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mSmallTextSize:F

    invoke-direct {p0, v2, p1}, Lopenlight/co/camera/view/zoom/ZoomWheel;->getTextBound(Ljava/lang/String;F)V

    .line 384
    sget-object p1, Lopenlight/co/camera/view/zoom/ZoomWheel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ZOOM] Zoom value in focal length: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v4, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mFocalLengthRect:Landroid/graphics/Rect;

    move-object v1, p0

    move-wide v5, p3

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lopenlight/co/camera/view/zoom/ZoomWheel;->drawPrimeFocalLengthText(Ljava/lang/String;ILandroid/graphics/Rect;DFLandroid/graphics/Canvas;)V

    :cond_70
    :goto_70
    return-void
.end method

.method private drawItem(ILandroid/graphics/Canvas;)V
    .registers 14

    .line 245
    iget-wide v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mAngleOfFirstItem:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-wide v3, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mAngleBetweenItemsInRadians:D

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v4, v1

    add-int v5, v4, p1

    if-ltz v5, :cond_5c

    const/16 p1, 0x35

    if-lt v5, p1, :cond_1b

    goto :goto_5c

    .line 254
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mAngleBetweenItemsInRadians:D

    int-to-double v6, v5

    mul-double/2addr v2, v6

    sub-double/2addr v0, v2

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double/2addr v0, v2

    .line 256
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide v6, 0x3fd3333333333333L    # 0.3

    .line 257
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v8, v2

    .line 260
    iget p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCenterY:I

    int-to-double v2, p1

    .line 261
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    iget p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mZoomUiLength:F

    float-to-double v9, p1

    mul-double/2addr v6, v9

    float-to-double v9, v8

    mul-double/2addr v6, v9

    sub-double/2addr v2, v6

    .line 262
    iget p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mSpaceBetweenDots:F

    float-to-double v6, p1

    add-double/2addr v2, v6

    double-to-float p1, v2

    .line 263
    iget v2, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mDotRadius:F

    sub-float/2addr p1, v2

    .line 266
    iget-object v2, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object v3, p0

    move-wide v6, v0

    move-object v9, p2

    .line 269
    invoke-direct/range {v3 .. v9}, Lopenlight/co/camera/view/zoom/ZoomWheel;->drawFocalLengths(IIDFLandroid/graphics/Canvas;)V

    .line 273
    invoke-direct {p0, v0, v1, p1, p2}, Lopenlight/co/camera/view/zoom/ZoomWheel;->drawDotsOnZoomWheel(DFLandroid/graphics/Canvas;)V

    return-void

    :cond_5c
    :goto_5c
    return-void
.end method

.method private drawPrimeFocalLengthText(Ljava/lang/String;ILandroid/graphics/Rect;DFLandroid/graphics/Canvas;)V
    .registers 18

    move-object v0, p0

    .line 485
    iget v1, v0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCenterY:I

    int-to-double v1, v1

    .line 486
    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget v5, v0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mZoomUiLength:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    move/from16 v5, p6

    float-to-double v5, v5

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-float v1, v1

    .line 489
    sget-object v2, Lopenlight/co/camera/view/zoom/ZoomWheel$1;->$SwitchMap$light$co$camera$enums$OrientationConfig:[I

    iget-object v3, v0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    invoke-virtual {v3}, Lopenlight/co/camera/enums/OrientationConfig;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_90

    move v6, v4

    move v7, v6

    goto :goto_7d

    .line 492
    :pswitch_25
    invoke-virtual {p3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 493
    invoke-virtual {p0}, Lopenlight/co/camera/view/zoom/ZoomWheel;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mDotRightMargin:F

    sub-float/2addr v2, v3

    iget v3, v0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mDotRadius:F

    sub-float/2addr v2, v3

    iget v3, v0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mPrimeLensDotSpace:F

    sub-float/2addr v2, v3

    .line 494
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 493
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_7b

    .line 502
    :pswitch_44
    invoke-virtual {p3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 503
    invoke-virtual {p0}, Lopenlight/co/camera/view/zoom/ZoomWheel;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v4, v0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mPrimeLensDotSpace:F

    sub-float/2addr v2, v4

    iget v4, v0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mDotRadius:F

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget v3, v0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mDotRightMargin:F

    sub-float/2addr v2, v3

    iget v3, v0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mPrimeDotExtraSpace:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_7b

    .line 497
    :pswitch_61
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 498
    invoke-virtual {p0}, Lopenlight/co/camera/view/zoom/ZoomWheel;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v4, v0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mPrimeLensDotSpace:F

    sub-float/2addr v2, v4

    iget v4, v0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mDotRadius:F

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget v3, v0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mDotRightMargin:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    :goto_7b
    move v7, v1

    move v6, v2

    .line 508
    :goto_7d
    iget-object v1, v0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    .line 509
    invoke-virtual {v1}, Lopenlight/co/camera/enums/OrientationConfig;->getViewRotationAngle()I

    move-result v1

    int-to-float v3, v1

    iget v8, v0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mMediumTextSize:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p4

    move-object/from16 v9, p7

    .line 508
    invoke-direct/range {v0 .. v9}, Lopenlight/co/camera/view/zoom/ZoomWheel;->drawText(Ljava/lang/String;IFDIIFLandroid/graphics/Canvas;)V

    return-void

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_61
        :pswitch_44
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method

.method private drawText(Ljava/lang/String;IFDIIFLandroid/graphics/Canvas;)V
    .registers 14

    .line 322
    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_18

    const/16 v2, 0x8

    if-ge p2, v2, :cond_18

    div-float v0, v1, v0

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v0, v2

    :cond_18
    if-nez p2, :cond_1b

    goto :goto_26

    .line 331
    :cond_1b
    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    const-wide/high16 v1, 0x3ff8000000000000L    # 1.5

    invoke-static {p4, p5, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p4

    double-to-float v1, p4

    .line 334
    :goto_26
    invoke-virtual {p9}, Landroid/graphics/Canvas;->save()I

    .line 335
    iget-object p2, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mTextPaint:Landroid/text/TextPaint;

    mul-float/2addr p8, v1

    invoke-virtual {p2, p8}, Landroid/text/TextPaint;->setTextSize(F)V

    int-to-float p2, p6

    int-to-float p4, p7

    .line 336
    invoke-virtual {p9, p3, p2, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 337
    iget-object p3, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v0}, Lopenlight/co/camera/view/zoom/ZoomWheel;->strokeColor(F)I

    move-result p5

    invoke-virtual {p3, p5}, Landroid/text/TextPaint;->setColor(I)V

    .line 338
    iget-object p3, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mTextPaint:Landroid/text/TextPaint;

    sget-object p5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 339
    iget-object p3, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mTextPaint:Landroid/text/TextPaint;

    iget p5, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mStrokeWidth:F

    invoke-virtual {p3, p5}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 340
    iget-object p3, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p9, p1, p2, p4, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 341
    iget-object p3, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v0}, Lopenlight/co/camera/view/zoom/ZoomWheel;->fillColor(F)I

    move-result p5

    invoke-virtual {p3, p5}, Landroid/text/TextPaint;->setColor(I)V

    .line 342
    iget-object p3, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mTextPaint:Landroid/text/TextPaint;

    sget-object p5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 343
    iget-object p0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p9, p1, p2, p4, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 344
    invoke-virtual {p9}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private static fillColor(F)I
    .registers 2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    const/16 v0, 0xff

    .line 580
    invoke-static {p0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private getComputedZoomLevel(FF)D
    .registers 3

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    sub-float/2addr p2, p0

    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p2, p0

    div-float/2addr p1, p2

    float-to-double p0, p1

    return-wide p0
.end method

.method private getPrimeLevelToDisplay(I)I
    .registers 4

    const/high16 v0, 0x41200000    # 10.0f

    if-nez p1, :cond_10

    .line 565
    iget-object p0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    .line 566
    invoke-virtual {p0}, Lopenlight/co/camera/CameraInfo;->getMinFocalLengthLens()F

    move-result p0

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_21

    :cond_10
    const/16 v1, 0x34

    if-ne p1, v1, :cond_20

    iget-object p0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    .line 568
    invoke-virtual {p0}, Lopenlight/co/camera/CameraInfo;->getMaxFocalLengthLens()F

    move-result p0

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_21

    :cond_20
    const/4 p0, -0x1

    :goto_21
    return p0
.end method

.method private static getPrimeTextSize(DF)F
    .registers 5

    .line 549
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x401c000000000000L    # 7.0

    .line 550
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    div-float/2addr p1, p0

    mul-float/2addr p2, p1

    return p2
.end method

.method private getTextBound(Ljava/lang/String;F)V
    .registers 6

    .line 533
    iget-object v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mTextPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_5

    return-void

    .line 534
    :cond_5
    iget-object v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 535
    iget-object p2, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mTextPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mLensExtension:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object p0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mExtensionRect:Landroid/graphics/Rect;

    goto :goto_1e

    :cond_1c
    iget-object p0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mFocalLengthRect:Landroid/graphics/Rect;

    :goto_1e
    invoke-virtual {p2, p1, v0, v1, p0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-void
.end method

.method private static getTextWidth(Ljava/lang/String;Landroid/graphics/Paint;)F
    .registers 4

    .line 523
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result p0

    return p0
.end method

.method private initResources()V
    .registers 4

    .line 172
    iget-object v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCameraApp:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0140

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mLensExtension:Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Lopenlight/co/camera/view/cache/FontCache;->get()Lopenlight/co/camera/view/cache/FontCache;

    move-result-object v2

    invoke-virtual {v2}, Lopenlight/co/camera/view/cache/FontCache;->getHarmoniaRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 175
    iget-object v1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mTextPaint:Landroid/text/TextPaint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    const v1, 0x7f070196

    .line 176
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mStrokeWidth:F

    const v1, 0x7f070160

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mLargeTextSize:F

    const v1, 0x7f070161

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mMediumTextSize:F

    const v1, 0x7f070163

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mSmallTextSize:F

    const v1, 0x7f070194

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mDotRadius:F

    const v1, 0x7f070195

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mDotRightMargin:F

    const v1, 0x7f070192

    .line 183
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mSpaceBetweenDots:F

    const v1, 0x7f070193

    .line 187
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mSpaceFocalLengthExt:F

    const v1, 0x7f07018c

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mFocalLengthLeftMargin:F

    const v1, 0x7f070191

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mPrimeLensDotSpace:F

    const v1, 0x7f070190

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mPrimeDotExtraSpace:F

    const v1, 0x7f070077

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mZoomUiLength:F

    return-void
.end method

.method private playHaptic(I)V
    .registers 5

    .line 601
    sget-object v0, Lopenlight/co/camera/view/zoom/ZoomWheel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playHaptic index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->getZoomType()Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    move-result-object v0

    sget-object v1, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;->FLING:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    if-ne v0, v1, :cond_42

    iget v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mZoomLevel:F

    iget-object v1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    .line 603
    invoke-virtual {v1}, Lopenlight/co/camera/CameraInfo;->getDefaultToMinFocalLengthRatio()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_36

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_36

    const/16 v0, 0x34

    if-eq p1, v0, :cond_36

    if-nez p1, :cond_42

    :cond_36
    iget-object p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCurrentEventType:Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;

    sget-object v0, Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;->DISPLAY:Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;

    if-ne p1, v0, :cond_3f

    sget-object p1, Lopenlight/co/camera/haptic/Immersion;->DISPLAY_ZOOM_PRIME:Lopenlight/co/camera/haptic/Immersion;

    goto :goto_50

    :cond_3f
    sget-object p1, Lopenlight/co/camera/haptic/Immersion;->TOUCHSTRIP_ZOOM_PRIME:Lopenlight/co/camera/haptic/Immersion;

    goto :goto_50

    :cond_42
    iget-object p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mZoomString:Ljava/lang/String;

    iget-object v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mPrevZoomString:Ljava/lang/String;

    .line 608
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4f

    sget-object p1, Lopenlight/co/camera/haptic/Immersion;->DISPLAY_ZOOM_DOT:Lopenlight/co/camera/haptic/Immersion;

    goto :goto_50

    :cond_4f
    const/4 p1, 0x0

    :goto_50
    if-eqz p1, :cond_5b

    .line 612
    iget-object v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

    invoke-virtual {v0, p1}, Lopenlight/co/camera/haptic/PlayHaptic;->playHaptic(Lopenlight/co/camera/haptic/Immersion;)V

    .line 613
    iget-object p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mZoomString:Ljava/lang/String;

    iput-object p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mPrevZoomString:Ljava/lang/String;

    :cond_5b
    return-void
.end method

.method private removeListener()V
    .registers 2

    .line 621
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    invoke-virtual {p0}, Lopenlight/co/camera/view/zoom/ZoomWheel;->getListenerName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/rotate/OrientationsController;->unregisterOrientationListenerWithTag(Ljava/lang/String;)V

    return-void
.end method

.method private static strokeColor(F)I
    .registers 2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    const/4 v0, 0x0

    .line 591
    invoke-static {p0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private updateAngleOfFirst()V
    .registers 5

    .line 203
    iget-wide v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mAngleBetweenItemsInRadians:D

    const-wide/high16 v2, 0x404a000000000000L    # 52.0

    mul-double/2addr v0, v2

    .line 204
    iget-wide v2, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCalculatedZoomLevel:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mAngleOfFirstItem:D

    .line 205
    invoke-virtual {p0}, Lopenlight/co/camera/view/zoom/ZoomWheel;->invalidate()V

    return-void
.end method


# virtual methods
.method public getListenerName()Ljava/lang/String;
    .registers 1

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getZoomValue()F
    .registers 1

    .line 141
    iget-object p0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mZoomString:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 167
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 168
    invoke-direct {p0}, Lopenlight/co/camera/view/zoom/ZoomWheel;->removeListener()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 153
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 154
    iget v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCenterX:I

    if-eqz v0, :cond_19

    iget v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCenterY:I

    if-nez v0, :cond_c

    goto :goto_19

    :cond_c
    const/16 v0, -0x1a

    :goto_e
    const/16 v1, 0x1a

    if-gt v0, v1, :cond_18

    .line 161
    invoke-direct {p0, v0, p1}, Lopenlight/co/camera/view/zoom/ZoomWheel;->drawItem(ILandroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_18
    return-void

    :cond_19
    :goto_19
    return-void
.end method

.method public onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    .line 110
    invoke-virtual {p0}, Lopenlight/co/camera/view/zoom/ZoomWheel;->invalidate()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 147
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCenterX:I

    .line 148
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCenterY:I

    return-void
.end method

.method public setCurrentEventType(Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mCurrentEventType:Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;

    return-void
.end method

.method public setZoomLevel()V
    .registers 2

    .line 122
    iget-object v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->getZoomLevel()F

    move-result v0

    iput v0, p0, Lopenlight/co/camera/view/zoom/ZoomWheel;->mZoomLevel:F

    .line 123
    invoke-direct {p0}, Lopenlight/co/camera/view/zoom/ZoomWheel;->calculateZoomLevel()V

    return-void
.end method
