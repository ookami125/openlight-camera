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
    .locals 0

    .line 1138
    iput-object p1, p0, Lopenlight/co/camera/managers/CameraManager$4;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1179
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[CONFIG] session: onClosed"

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1173
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[CONFIG] session: onConfigureFailed"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$4;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-static {p0}, Lopenlight/co/camera/managers/CameraManager;->access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/utils/CameraState;->releaseSurface()V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1142
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CONFIG] session: onConfigured"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager$4;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-static {v0}, Lopenlight/co/camera/managers/CameraManager;->access$800(Lopenlight/co/camera/managers/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1145
    :try_start_0
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$4;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object v1, v1, Lopenlight/co/camera/managers/CameraManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v1, :cond_0

    .line 1146
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$4;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-static {p0}, Lopenlight/co/camera/managers/CameraManager;->access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/utils/CameraState;->releaseSurface()V

    .line 1147
    monitor-exit v0

    return-void

    .line 1150
    :cond_0
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$4;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-static {v1, p1}, Lopenlight/co/camera/managers/CameraManager;->access$1902(Lopenlight/co/camera/managers/CameraManager;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1152
    :try_start_1
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$4;->this$0:Lopenlight/co/camera/managers/CameraManager;

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

    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;

    move-result-object p1

    sget-object v1, Lopenlight/co/camera/utils/CameraState$SessionState;->PREVIEW:Lopenlight/co/camera/utils/CameraState$SessionState;

    invoke-virtual {p1, v1}, Lopenlight/co/camera/utils/CameraState;->setSessionState(Lopenlight/co/camera/utils/CameraState$SessionState;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1159
    :try_start_2
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$4;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/CameraManager;->startRepeatingRequestInPreview()V

    .line 1161
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$4;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$2000(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/CameraMode;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/CameraMode;->isManual()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1162
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$4;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object p1, p1, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, 0x0

    .line 1163
    invoke-static {p1, v1}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAwbLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 1166
    :cond_1
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$4;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    invoke-interface {p0}, Lopenlight/co/camera/managers/CameraManager$UpdatePreview;->onCaptureSessionConfigured()V

    .line 1167
    monitor-exit v0

    return-void

    :catch_0
    move-exception p0

    .line 1156
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Error building preview"

    invoke-static {p1, v1, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1157
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 1167
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
