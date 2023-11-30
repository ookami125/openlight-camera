.class public Lopenlight/co/camera/utils/MeteringRect;
.super Ljava/lang/Object;
.source "MeteringRect.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MeteringRect"

.field private static final sInstance:Lopenlight/co/camera/utils/MeteringRect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lopenlight/co/camera/utils/MeteringRect;

    invoke-direct {v0}, Lopenlight/co/camera/utils/MeteringRect;-><init>()V

    sput-object v0, Lopenlight/co/camera/utils/MeteringRect;->sInstance:Lopenlight/co/camera/utils/MeteringRect;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lopenlight/co/camera/utils/MeteringRect;
    .locals 1

    .line 34
    sget-object v0, Lopenlight/co/camera/utils/MeteringRect;->sInstance:Lopenlight/co/camera/utils/MeteringRect;

    return-object v0
.end method


# virtual methods
.method public getMeteringRectAndScreenPoint(Lopenlight/co/camera/models/MeteringPoint;Landroid/view/TextureView;Z)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lopenlight/co/camera/models/MeteringPoint;",
            "Landroid/view/TextureView;",
            "Z)",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/params/MeteringRectangle;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-static {}, Lopenlight/co/camera/CameraInfo;->get()Lopenlight/co/camera/CameraInfo;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/CameraInfo;->getSensorActiveArraySize()Landroid/graphics/Rect;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 58
    :cond_0
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v1

    const v2, 0x7f070073

    .line 61
    invoke-static {v1, v2}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result v2

    .line 63
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 64
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 65
    invoke-virtual {p2}, Landroid/view/TextureView;->getWidth()I

    move-result v5

    .line 66
    invoke-virtual {p2}, Landroid/view/TextureView;->getHeight()I

    move-result v6

    mul-int v7, v3, v6

    mul-int v8, v4, v5

    if-ge v7, v8, :cond_1

    int-to-float v7, v3

    int-to-float v8, v5

    :goto_0
    div-float/2addr v7, v8

    goto :goto_1

    :cond_1
    int-to-float v7, v4

    int-to-float v8, v6

    goto :goto_0

    .line 79
    :goto_1
    sget-object v8, Lopenlight/co/camera/utils/MeteringRect;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[METERING] Event:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lopenlight/co/camera/models/MeteringPoint;->isCenter()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz p3, :cond_2

    .line 83
    sget-object p0, Lopenlight/co/camera/utils/MeteringRect;->TAG:Ljava/lang/String;

    const-string p1, "[METERING] at center need to initial by value 0 0 0 0 0"

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance p0, Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 90
    :cond_2
    invoke-static {v1}, Lopenlight/co/camera/utils/Util;->getWidthOfScreen(Landroid/content/Context;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 91
    invoke-static {v1}, Lopenlight/co/camera/utils/Util;->getHeightOfScreen(Landroid/content/Context;)I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    goto :goto_2

    .line 94
    :cond_3
    invoke-virtual {p1}, Lopenlight/co/camera/models/MeteringPoint;->getX()I

    move-result p3

    .line 95
    invoke-virtual {p1}, Lopenlight/co/camera/models/MeteringPoint;->getY()I

    move-result p1

    move v11, p3

    move p3, p1

    move p1, v11

    .line 98
    :goto_2
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p3}, Landroid/graphics/Point;-><init>(II)V

    .line 99
    sget-object v8, Lopenlight/co/camera/utils/MeteringRect;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[METERING] Calculated Point: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 104
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr p1, v8

    .line 105
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p3, p2

    int-to-float p1, p1

    mul-float/2addr p1, v7

    .line 109
    invoke-static {v7, v3, v5}, Lopenlight/co/camera/utils/Util;->getCoordinateDifference(FII)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    int-to-float p2, p3

    mul-float/2addr p2, v7

    .line 111
    invoke-static {v7, v4, v6}, Lopenlight/co/camera/utils/Util;->getCoordinateDifference(FII)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p2, p3

    float-to-int p2, p2

    .line 115
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object p3

    invoke-virtual {p3}, Lopenlight/co/camera/managers/CameraManager;->getCaptureResultPerFrame()Landroid/hardware/camera2/CaptureResult;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 117
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    goto :goto_3

    :cond_4
    move-object p3, v0

    :goto_3
    if-nez p3, :cond_5

    goto :goto_4

    :cond_5
    move-object p0, p3

    .line 124
    :goto_4
    iget p3, p0, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    .line 125
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    int-to-float v3, v3

    div-float/2addr v5, v3

    int-to-float p1, p1

    mul-float/2addr v5, p1

    add-float/2addr p3, v5

    float-to-int p1, p3

    .line 126
    iget p3, p0, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    .line 127
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float p2, p2

    mul-float/2addr v3, p2

    add-float/2addr p3, v3

    float-to-int p2, p3

    .line 128
    div-int/lit8 p3, v2, 0x2

    sub-int/2addr p1, p3

    sub-int/2addr p2, p3

    .line 131
    iget p3, p0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v2

    .line 132
    invoke-static {p1, p3, v3}, Lopenlight/co/camera/view/level/Clamp;->clamp(III)I

    move-result p1

    .line 133
    iget p3, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v2

    .line 134
    invoke-static {p2, p3, p0}, Lopenlight/co/camera/view/level/Clamp;->clamp(III)I

    move-result p0

    if-ltz p1, :cond_7

    if-gez p0, :cond_6

    goto :goto_5

    .line 140
    :cond_6
    new-instance p2, Landroid/graphics/Rect;

    add-int p3, p1, v2

    add-int/2addr v2, p0

    invoke-direct {p2, p1, p0, p3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 142
    sget-object p0, Lopenlight/co/camera/utils/MeteringRect;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[METERING] Point: new Rect: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance p0, Landroid/hardware/camera2/params/MeteringRectangle;

    const/16 p1, 0x3e8

    invoke-direct {p0, p2, p1}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_5
    return-object v0
.end method
