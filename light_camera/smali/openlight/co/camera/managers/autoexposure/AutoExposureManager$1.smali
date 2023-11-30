.class Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "AutoExposureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;


# direct methods
.method constructor <init>(Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$1;->this$0:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method private process(Landroid/hardware/camera2/CaptureResult;)V
    .locals 4
    .param p1    # Landroid/hardware/camera2/CaptureResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 383
    iget-object v0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$1;->this$0:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->access$002(Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;J)J

    .line 384
    invoke-static {}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AE] Precapture Trigger callback with AE state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 386
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in frameNumber: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$1;->this$0:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    .line 387
    invoke-static {p1}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->access$000(Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 384
    invoke-static {v0, p1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object p0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$1;->this$0:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    invoke-static {p0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->access$200(Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object p0

    invoke-interface {p0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->aeWaitingConvergence()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/TotalCaptureResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 402
    invoke-direct {p0, p3}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$1;->process(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/CaptureFailure;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 408
    invoke-static {}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPreCaptureAECallback Capture Failed : Reason: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Sequence Id "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " frameNumer "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 408
    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AE Pre-capture Trigger Failed. Directly going for capture"

    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object p0, p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$1;->this$0:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    invoke-static {p0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->access$200(Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object p0

    invoke-interface {p0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->triggerCaptureToHal()V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/CaptureResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 395
    invoke-direct {p0, p3}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$1;->process(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method
