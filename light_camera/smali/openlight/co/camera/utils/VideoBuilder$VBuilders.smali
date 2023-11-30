.class public Lopenlight/co/camera/utils/VideoBuilder$VBuilders;
.super Ljava/lang/Object;
.source "VideoBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/utils/VideoBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VBuilders"
.end annotation


# instance fields
.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mContext:Landroid/content/Context;

.field private mVideoCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lopenlight/co/camera/utils/VideoBuilder$VBuilders;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public declared-synchronized buildIfComplete()Lopenlight/co/camera/utils/VideoBuilder;
    .locals 5

    monitor-enter p0

    .line 81
    :try_start_0
    new-instance v0, Lopenlight/co/camera/utils/VideoBuilder;

    iget-object v1, p0, Lopenlight/co/camera/utils/VideoBuilder$VBuilders;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v2, p0, Lopenlight/co/camera/utils/VideoBuilder$VBuilders;->mVideoCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, p0, Lopenlight/co/camera/utils/VideoBuilder$VBuilders;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v4, p0, Lopenlight/co/camera/utils/VideoBuilder$VBuilders;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3, v4}, Lopenlight/co/camera/utils/VideoBuilder;-><init>(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CameraCharacteristics;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCameraCharacterictic(Landroid/hardware/camera2/CameraCharacteristics;)Lopenlight/co/camera/utils/VideoBuilder$VBuilders;
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 76
    :try_start_0
    iput-object p1, p0, Lopenlight/co/camera/utils/VideoBuilder$VBuilders;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-object p0

    .line 75
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 74
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDevice(Landroid/hardware/camera2/CameraDevice;)Lopenlight/co/camera/utils/VideoBuilder$VBuilders;
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 64
    :try_start_0
    iput-object p1, p0, Lopenlight/co/camera/utils/VideoBuilder$VBuilders;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-object p0

    .line 63
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 62
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setVideoSession(Landroid/hardware/camera2/CameraCaptureSession;)Lopenlight/co/camera/utils/VideoBuilder$VBuilders;
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 70
    :try_start_0
    iput-object p1, p0, Lopenlight/co/camera/utils/VideoBuilder$VBuilders;->mVideoCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-object p0

    .line 69
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 68
    monitor-exit p0

    throw p1
.end method
