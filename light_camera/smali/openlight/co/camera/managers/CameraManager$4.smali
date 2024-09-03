.class Lopenlight/co/camera/managers/CameraManager$4;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/managers/CameraManager;->createCameraPreviewSessionLocked(Landroid/graphics/SurfaceTexture;Landroid/util/Size;)V
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

    .line 1138
    iput-object p1, p0, Lopenlight/co/camera/managers/CameraManager$4;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 2
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1179
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[CONFIG] session: onClosed"

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 3
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1173
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[CONFIG] session: onConfigureFailed"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$4;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;
    invoke-static {p0}, Lopenlight/co/camera/managers/CameraManager;->access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/utils/CameraState;->releaseSurface()V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 4
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1142
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CONFIG] session: onConfigured"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager$4;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraStateLock:Ljava/lang/Object;
    invoke-static {v0}, Lopenlight/co/camera/managers/CameraManager;->access$800(Lopenlight/co/camera/managers/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1145
    :try_start_10
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$4;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object v1, v1, Lopenlight/co/camera/managers/CameraManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v1, :cond_21

    .line 1146
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$4;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;
    invoke-static {p0}, Lopenlight/co/camera/managers/CameraManager;->access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/utils/CameraState;->releaseSurface()V

    .line 1147
    monitor-exit v0

    return-void

    .line 1150
    :cond_21
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$4;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # setter for: Lopenlight/co/camera/managers/CameraManager;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    invoke-static {v1, p1}, Lopenlight/co/camera/managers/CameraManager;->access$1902(Lopenlight/co/camera/managers/CameraManager;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_72

    .line 1152
    :try_start_26
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$4;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCaptureReqManager:Lopenlight/co/camera/utils/Provider;
    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$700(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object p1

    invoke-interface {p1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;

    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$4;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object v1, v1, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 1153
    invoke-virtual {p1, v1}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->createPreviewRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1154
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$4;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;
    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;

    move-result-object p1

    sget-object v1, Lopenlight/co/camera/utils/CameraState$SessionState;->PREVIEW:Lopenlight/co/camera/utils/CameraState$SessionState;

    invoke-virtual {p1, v1}, Lopenlight/co/camera/utils/CameraState;->setSessionState(Lopenlight/co/camera/utils/CameraState$SessionState;)V
    :try_end_44
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_44} :catch_66
    .catchall {:try_start_26 .. :try_end_44} :catchall_72

    .line 1159
    :try_start_44
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$4;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/CameraManager;->startRepeatingRequestInPreview()V

    .line 1161
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$4;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCamMode:Lopenlight/co/camera/CameraMode;
    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$2000(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/CameraMode;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/CameraMode;->isManual()Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 1162
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$4;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object p1, p1, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, 0x0

    .line 1163
    invoke-static {p1, v1}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAwbLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 1166
    :cond_5d
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$4;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    invoke-interface {p0}, Lopenlight/co/camera/managers/CameraManager$UpdatePreview;->onCaptureSessionConfigured()V

    .line 1167
    monitor-exit v0

    return-void

    :catch_66
    move-exception p0

    .line 1156
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Error building preview"

    invoke-static {p1, v1, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1157
    monitor-exit v0

    return-void

    :catchall_72
    move-exception p0

    .line 1167
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_44 .. :try_end_74} :catchall_72

    throw p0
.end method
