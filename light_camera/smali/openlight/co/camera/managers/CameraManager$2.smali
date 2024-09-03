.class Lopenlight/co/camera/managers/CameraManager$2;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/managers/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/managers/CameraManager;


# direct methods
.method constructor <init>(Lopenlight/co/camera/managers/CameraManager;)V
    .registers 2

    .line 388
    iput-object p1, p0, Lopenlight/co/camera/managers/CameraManager$2;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .registers 3
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 435
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraDevice onClosed"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$2;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;
    invoke-static {p0}, Lopenlight/co/camera/managers/CameraManager;->access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;

    move-result-object p0

    sget-object p1, Lopenlight/co/camera/utils/CameraState$DeviceState;->CLOSED:Lopenlight/co/camera/utils/CameraState$DeviceState;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/utils/CameraState;->setDeviceState(Lopenlight/co/camera/utils/CameraState$DeviceState;)V

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .registers 6
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 405
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraDevice onDisconnected - id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager$2;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraStateLock:Ljava/lang/Object;
    invoke-static {v0}, Lopenlight/co/camera/managers/CameraManager;->access$800(Lopenlight/co/camera/managers/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 407
    :try_start_23
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$2;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lopenlight/co/camera/managers/CameraManager;->access$900(Lopenlight/co/camera/managers/CameraManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 408
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$2;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;
    invoke-static {v1}, Lopenlight/co/camera/managers/CameraManager;->access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;

    move-result-object v1

    sget-object v3, Lopenlight/co/camera/utils/CameraState$DeviceState;->CLOSED:Lopenlight/co/camera/utils/CameraState$DeviceState;

    invoke-virtual {v1, v3}, Lopenlight/co/camera/utils/CameraState;->setDeviceState(Lopenlight/co/camera/utils/CameraState$DeviceState;)V

    .line 409
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$2;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object v1, v1, Lopenlight/co/camera/managers/CameraManager;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 410
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 411
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$2;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iput-object v2, p1, Lopenlight/co/camera/managers/CameraManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 412
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_23 .. :try_end_47} :catchall_60

    .line 413
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$2;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;
    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$1000(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/metrics/Metrics;

    move-result-object p1

    const-string v0, "event_camera_device_error"

    invoke-virtual {p1, v0}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;)V

    .line 414
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$2;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object p1, p1, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    if-eqz p1, :cond_5f

    .line 415
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$2;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    invoke-interface {p0}, Lopenlight/co/camera/managers/CameraManager$UpdatePreview;->cameraDeviceError()V

    :cond_5f
    return-void

    :catchall_60
    move-exception p0

    .line 412
    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p0
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .registers 6
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 421
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraDevice onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object p2, p0, Lopenlight/co/camera/managers/CameraManager$2;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraStateLock:Ljava/lang/Object;
    invoke-static {p2}, Lopenlight/co/camera/managers/CameraManager;->access$800(Lopenlight/co/camera/managers/CameraManager;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 423
    :try_start_1f
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager$2;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lopenlight/co/camera/managers/CameraManager;->access$900(Lopenlight/co/camera/managers/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 424
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager$2;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;
    invoke-static {v0}, Lopenlight/co/camera/managers/CameraManager;->access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;

    move-result-object v0

    sget-object v2, Lopenlight/co/camera/utils/CameraState$DeviceState;->CLOSED:Lopenlight/co/camera/utils/CameraState$DeviceState;

    invoke-virtual {v0, v2}, Lopenlight/co/camera/utils/CameraState;->setDeviceState(Lopenlight/co/camera/utils/CameraState$DeviceState;)V

    .line 425
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager$2;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object v0, v0, Lopenlight/co/camera/managers/CameraManager;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 426
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 427
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$2;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iput-object v1, p1, Lopenlight/co/camera/managers/CameraManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 428
    monitor-exit p2
    :try_end_43
    .catchall {:try_start_1f .. :try_end_43} :catchall_56

    .line 429
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$2;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;
    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$1000(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/metrics/Metrics;

    move-result-object p1

    const-string p2, "event_camera_device_error"

    invoke-virtual {p1, p2}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;)V

    .line 430
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$2;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    invoke-interface {p0}, Lopenlight/co/camera/managers/CameraManager$UpdatePreview;->cameraDeviceError()V

    return-void

    :catchall_56
    move-exception p0

    .line 428
    :try_start_57
    monitor-exit p2
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p0
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .registers 4
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 392
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraDevice onOpened"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager$2;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraStateLock:Ljava/lang/Object;
    invoke-static {v0}, Lopenlight/co/camera/managers/CameraManager;->access$800(Lopenlight/co/camera/managers/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 396
    :try_start_10
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$2;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object v1, v1, Lopenlight/co/camera/managers/CameraManager;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 397
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$2;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iput-object p1, v1, Lopenlight/co/camera/managers/CameraManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 398
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$2;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;
    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;

    move-result-object p1

    sget-object v1, Lopenlight/co/camera/utils/CameraState$DeviceState;->OPEN:Lopenlight/co/camera/utils/CameraState$DeviceState;

    invoke-virtual {p1, v1}, Lopenlight/co/camera/utils/CameraState;->setDeviceState(Lopenlight/co/camera/utils/CameraState$DeviceState;)V

    .line 399
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$2;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    invoke-interface {p0}, Lopenlight/co/camera/managers/CameraManager$UpdatePreview;->cameraDeviceOpen()V

    .line 400
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_2f

    throw p0
.end method
