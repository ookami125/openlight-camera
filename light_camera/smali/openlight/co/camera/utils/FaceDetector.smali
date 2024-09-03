.class public Lopenlight/co/camera/utils/FaceDetector;
.super Ljava/lang/Object;
.source "FaceDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/utils/FaceDetector$OnFaceEventListener;
    }
.end annotation


# static fields
.field private static final ENABLE_FACE_DETECTION:Z

.field private static final TAG:Ljava/lang/String; = "FaceDetector"

.field private static final sInstance:Lopenlight/co/camera/utils/FaceDetector;


# instance fields
.field private mOnFaceEventListener:Lopenlight/co/camera/utils/FaceDetector$OnFaceEventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 22
    new-instance v0, Lopenlight/co/camera/utils/FaceDetector;

    invoke-direct {v0}, Lopenlight/co/camera/utils/FaceDetector;-><init>()V

    sput-object v0, Lopenlight/co/camera/utils/FaceDetector;->sInstance:Lopenlight/co/camera/utils/FaceDetector;

    .line 26
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v0

    const-string v1, "face.detect"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lopenlight/co/lib/utils/FeatureManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lopenlight/co/camera/utils/FaceDetector;->ENABLE_FACE_DETECTION:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lopenlight/co/camera/utils/FaceDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Face Detect Enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lopenlight/co/camera/utils/FaceDetector;->isFaceDetectionFeatureEnabled()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static get()Lopenlight/co/camera/utils/FaceDetector;
    .registers 1

    .line 32
    sget-object v0, Lopenlight/co/camera/utils/FaceDetector;->sInstance:Lopenlight/co/camera/utils/FaceDetector;

    return-object v0
.end method


# virtual methods
.method public convertFaceRectToDisplayCoordinates(Landroid/hardware/camera2/params/Face;IILandroid/graphics/Rect;)V
    .registers 9

    int-to-float p0, p2

    .line 101
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p0, p2

    int-to-float p2, p3

    .line 102
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 104
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    .line 109
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p0

    .line 110
    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p2

    .line 111
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p2

    .line 112
    iget p2, p3, Landroid/graphics/Rect;->right:I

    iget p3, p4, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p3

    int-to-float p2, p2

    mul-float/2addr p2, p0

    .line 113
    invoke-virtual {p1}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    float-to-int p1, v0

    float-to-int p3, v1

    float-to-int p2, p2

    float-to-int p4, v2

    invoke-virtual {p0, p1, p3, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public disableFaceDetectionOnPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 80
    invoke-virtual {p0}, Lopenlight/co/camera/utils/FaceDetector;->isFaceDetectionFeatureEnabled()Z

    move-result p0

    if-eqz p0, :cond_10

    .line 81
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x0

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 81
    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public enableFaceDetectionOnPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 67
    invoke-virtual {p0}, Lopenlight/co/camera/utils/FaceDetector;->isFaceDetectionFeatureEnabled()Z

    move-result p0

    if-eqz p0, :cond_10

    .line 68
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x2

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 68
    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_10
    return-void
.end method

.method public getFaceMode(Landroid/hardware/camera2/CaptureResult;)I
    .registers 2

    .line 59
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public isFaceDetectionFeatureEnabled()Z
    .registers 1

    .line 137
    sget-boolean p0, Lopenlight/co/camera/utils/FaceDetector;->ENABLE_FACE_DETECTION:Z

    return p0
.end method

.method public declared-synchronized processCaptureResult(Landroid/hardware/camera2/CaptureResult;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureResult;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_24

    .line 43
    :try_start_4
    iget-object v1, p0, Lopenlight/co/camera/utils/FaceDetector;->mOnFaceEventListener:Lopenlight/co/camera/utils/FaceDetector$OnFaceEventListener;

    if-eqz v1, :cond_24

    .line 45
    invoke-virtual {p0, p1}, Lopenlight/co/camera/utils/FaceDetector;->getFaceMode(Landroid/hardware/camera2/CaptureResult;)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_24

    .line 46
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 47
    iget-object p1, p0, Lopenlight/co/camera/utils/FaceDetector;->mOnFaceEventListener:Lopenlight/co/camera/utils/FaceDetector$OnFaceEventListener;

    invoke-interface {p1, v0}, Lopenlight/co/camera/utils/FaceDetector$OnFaceEventListener;->onFaceDetected(Ljava/util/List;)V
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_21

    goto :goto_24

    :catchall_21
    move-exception p1

    .line 41
    monitor-exit p0

    throw p1

    .line 49
    :cond_24
    :goto_24
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized registerOnFaceEventListener(Lopenlight/co/camera/utils/FaceDetector$OnFaceEventListener;)V
    .registers 3

    monitor-enter p0

    .line 124
    :try_start_1
    invoke-virtual {p0}, Lopenlight/co/camera/utils/FaceDetector;->isFaceDetectionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 125
    iput-object p1, p0, Lopenlight/co/camera/utils/FaceDetector;->mOnFaceEventListener:Lopenlight/co/camera/utils/FaceDetector$OnFaceEventListener;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 127
    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    .line 123
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterOnFaceEventListener()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 133
    :try_start_2
    iput-object v0, p0, Lopenlight/co/camera/utils/FaceDetector;->mOnFaceEventListener:Lopenlight/co/camera/utils/FaceDetector$OnFaceEventListener;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 134
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    .line 132
    monitor-exit p0

    throw v0
.end method
