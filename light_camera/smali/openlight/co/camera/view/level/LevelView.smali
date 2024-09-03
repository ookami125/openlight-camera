.class public Lopenlight/co/camera/view/level/LevelView;
.super Landroid/view/View;
.source "LevelView.java"


# static fields
.field private static final DECREASE_FACTOR:I = 0x96

.field private static final TAG:Ljava/lang/String; = "Level"


# instance fields
.field private isLevel:Z

.field private mDeviceRotationVector:Lopenlight/co/camera/view/level/DeviceRotationVector;

.field mPaint:Landroid/graphics/Paint;

.field mPath:Landroid/graphics/Path;

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lopenlight/co/camera/view/level/LevelView;->isLevel:Z

    .line 34
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/level/LevelView;->mPaint:Landroid/graphics/Paint;

    .line 36
    iget-object p1, p0, Lopenlight/co/camera/view/level/LevelView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object p1, p0, Lopenlight/co/camera/view/level/LevelView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    iget-object p1, p0, Lopenlight/co/camera/view/level/LevelView;->mPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40800000    # 4.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/level/LevelView;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lopenlight/co/camera/view/level/DeviceRotationVector;)V
    .registers 4

    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lopenlight/co/camera/view/level/LevelView;->isLevel:Z

    .line 34
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/level/LevelView;->mPaint:Landroid/graphics/Paint;

    .line 36
    iget-object p1, p0, Lopenlight/co/camera/view/level/LevelView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object p1, p0, Lopenlight/co/camera/view/level/LevelView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    iget-object p1, p0, Lopenlight/co/camera/view/level/LevelView;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/level/LevelView;->mPath:Landroid/graphics/Path;

    .line 51
    iput-object p2, p0, Lopenlight/co/camera/view/level/LevelView;->mDeviceRotationVector:Lopenlight/co/camera/view/level/DeviceRotationVector;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 103
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 105
    iget-object v0, p0, Lopenlight/co/camera/view/level/LevelView;->mDeviceRotationVector:Lopenlight/co/camera/view/level/DeviceRotationVector;

    iget v0, v0, Lopenlight/co/camera/view/level/DeviceRotationVector;->pitch:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4054000000000000L    # 80.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_f

    return-void

    :cond_f
    double-to-int v0, v0

    const/16 v1, 0x3c

    const/16 v2, 0x50

    .line 107
    invoke-static {v0, v1, v2}, Lopenlight/co/camera/view/level/Clamp;->clamp(III)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    sub-double v0, v2, v0

    div-double/2addr v0, v2

    .line 109
    iget-object v2, p0, Lopenlight/co/camera/view/level/LevelView;->mPaint:Landroid/graphics/Paint;

    const-wide v3, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 111
    iget-object v0, p0, Lopenlight/co/camera/view/level/LevelView;->mDeviceRotationVector:Lopenlight/co/camera/view/level/DeviceRotationVector;

    iget v0, v0, Lopenlight/co/camera/view/level/DeviceRotationVector;->pitch:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 113
    iget v2, p0, Lopenlight/co/camera/view/level/LevelView;->mViewWidth:I

    int-to-float v2, v2

    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v3

    .line 115
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    float-to-double v5, v2

    mul-double/2addr v3, v5

    double-to-float v3, v3

    .line 117
    iget v4, p0, Lopenlight/co/camera/view/level/LevelView;->mViewHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 119
    iget v5, p0, Lopenlight/co/camera/view/level/LevelView;->mViewHeight:I

    int-to-float v5, v5

    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v5, v6

    .line 121
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    sub-float v5, v4, v5

    float-to-double v5, v5

    mul-double/2addr v0, v5

    double-to-float v0, v0

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 125
    iget v1, p0, Lopenlight/co/camera/view/level/LevelView;->mViewWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 126
    iget-object v5, p0, Lopenlight/co/camera/view/level/LevelView;->mDeviceRotationVector:Lopenlight/co/camera/view/level/DeviceRotationVector;

    iget v5, v5, Lopenlight/co/camera/view/level/DeviceRotationVector;->roll:F

    neg-float v5, v5

    .line 127
    invoke-virtual {p1, v5, v1, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 129
    iget-object v1, p0, Lopenlight/co/camera/view/level/LevelView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 131
    iget-object v1, p0, Lopenlight/co/camera/view/level/LevelView;->mPath:Landroid/graphics/Path;

    add-float v5, v2, v3

    const/high16 v6, 0x43610000    # 225.0f

    add-float v7, v5, v6

    sub-float v8, v4, v0

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 133
    iget-object v1, p0, Lopenlight/co/camera/view/level/LevelView;->mPath:Landroid/graphics/Path;

    iget v9, p0, Lopenlight/co/camera/view/level/LevelView;->mViewWidth:I

    int-to-float v9, v9

    sub-float/2addr v9, v3

    sub-float/2addr v9, v2

    sub-float/2addr v9, v6

    invoke-virtual {v1, v9, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 135
    iget-object v1, p0, Lopenlight/co/camera/view/level/LevelView;->mPath:Landroid/graphics/Path;

    iget v6, p0, Lopenlight/co/camera/view/level/LevelView;->mViewWidth:I

    int-to-float v6, v6

    sub-float/2addr v6, v3

    sub-float/2addr v6, v2

    const/high16 v2, 0x43160000    # 150.0f

    sub-float/2addr v6, v2

    add-float/2addr v4, v0

    invoke-virtual {v1, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 137
    iget-object v0, p0, Lopenlight/co/camera/view/level/LevelView;->mPath:Landroid/graphics/Path;

    add-float/2addr v5, v2

    invoke-virtual {v0, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 139
    iget-object v0, p0, Lopenlight/co/camera/view/level/LevelView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 141
    iget-object v0, p0, Lopenlight/co/camera/view/level/LevelView;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lopenlight/co/camera/view/level/LevelView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 97
    iput p1, p0, Lopenlight/co/camera/view/level/LevelView;->mViewWidth:I

    .line 98
    iput p2, p0, Lopenlight/co/camera/view/level/LevelView;->mViewHeight:I

    return-void
.end method

.method public setDeviceRotationVector(Lopenlight/co/camera/view/level/DeviceRotationVector;)V
    .registers 5

    .line 75
    iput-object p1, p0, Lopenlight/co/camera/view/level/LevelView;->mDeviceRotationVector:Lopenlight/co/camera/view/level/DeviceRotationVector;

    const-string v0, "Level"

    const-string v1, "************************"

    .line 76
    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Level"

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device Pitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lopenlight/co/camera/view/level/LevelView;->mDeviceRotationVector:Lopenlight/co/camera/view/level/DeviceRotationVector;

    iget v2, v2, Lopenlight/co/camera/view/level/DeviceRotationVector;->pitch:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Level"

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device roll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lopenlight/co/camera/view/level/LevelView;->mDeviceRotationVector:Lopenlight/co/camera/view/level/DeviceRotationVector;

    iget v2, v2, Lopenlight/co/camera/view/level/DeviceRotationVector;->roll:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Level"

    const-string v1, "************************"

    .line 79
    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget v0, p1, Lopenlight/co/camera/view/level/DeviceRotationVector;->roll:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6c

    iget v0, p1, Lopenlight/co/camera/view/level/DeviceRotationVector;->roll:F

    const/high16 v2, -0x3fc00000    # -3.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6c

    iget v0, p1, Lopenlight/co/camera/view/level/DeviceRotationVector;->pitch:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6c

    iget p1, p1, Lopenlight/co/camera/view/level/DeviceRotationVector;->pitch:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_6c

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lopenlight/co/camera/view/level/LevelView;->isLevel:Z

    .line 87
    iget-object p1, p0, Lopenlight/co/camera/view/level/LevelView;->mPaint:Landroid/graphics/Paint;

    const v0, -0xff0100

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_72

    .line 89
    :cond_6c
    iget-object p1, p0, Lopenlight/co/camera/view/level/LevelView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    :goto_72
    invoke-virtual {p0}, Lopenlight/co/camera/view/level/LevelView;->invalidate()V

    return-void
.end method
