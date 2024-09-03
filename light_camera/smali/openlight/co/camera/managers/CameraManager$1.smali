.class Lopenlight/co/camera/managers/CameraManager$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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

    .line 276
    iput-object p1, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    .line 279
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCaptureManager:Lopenlight/co/camera/utils/Provider;
    invoke-static {v0}, Lopenlight/co/camera/managers/CameraManager;->access$000(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object v0

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/capture/CaptureManager;

    .line 280
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_236

    :pswitch_12
    goto/16 :goto_234

    .line 356
    :pswitch_14
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MSG_FOCUS_COMPLETE"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mAutoExposureManager:Lopenlight/co/camera/utils/Provider;
    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$400(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object p1

    invoke-interface {p1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->setMeteringCompleted()V

    .line 358
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mFocusManager:Lopenlight/co/camera/utils/Provider;
    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$600(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object p1

    invoke-interface {p1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/focus/FocusManager;->setFocusCompleted()V

    .line 359
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object p1, p1, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    if-eqz p1, :cond_48

    .line 360
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object p1, p1, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    invoke-interface {p1}, Lopenlight/co/camera/managers/CameraManager$UpdatePreview;->enableControls()V

    .line 362
    :cond_48
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;
    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;

    move-result-object p1

    sget-object v0, Lopenlight/co/camera/utils/CameraState$SessionState;->PREVIEW:Lopenlight/co/camera/utils/CameraState$SessionState;

    invoke-virtual {p1, v0}, Lopenlight/co/camera/utils/CameraState;->setSessionState(Lopenlight/co/camera/utils/CameraState$SessionState;)V

    .line 363
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MSG_RESET_POST_FOCUS"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mAutoExposureManager:Lopenlight/co/camera/utils/Provider;
    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$400(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object p1

    invoke-interface {p1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->getAeHwLock()Z

    move-result p1

    if-nez p1, :cond_86

    .line 365
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCaptureReqManager:Lopenlight/co/camera/utils/Provider;
    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$700(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object p1

    invoke-interface {p1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;

    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object v0, v0, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p1, v0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->resetPostCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 366
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/CameraManager;->startRepeatingRequestInPreview()V

    .line 368
    :cond_86
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->checkForQueuedState()V

    goto/16 :goto_234

    .line 352
    :pswitch_8d
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MSG_FOCUS_TRIGGERED"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;
    invoke-static {p0}, Lopenlight/co/camera/managers/CameraManager;->access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;

    move-result-object p0

    sget-object p1, Lopenlight/co/camera/utils/CameraState$SessionState;->WAITING_FOR_FOCUS_ACHIEVED:Lopenlight/co/camera/utils/CameraState$SessionState;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/utils/CameraState;->setSessionState(Lopenlight/co/camera/utils/CameraState$SessionState;)V

    goto/16 :goto_234

    .line 326
    :pswitch_a3
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MSG_START_FOCUS"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mAutoExposureManager:Lopenlight/co/camera/utils/Provider;
    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$400(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object p1

    invoke-interface {p1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    .line 328
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AE Manager State Locked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->isLocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p1}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->isLocked()Z

    move-result v0

    if-nez v0, :cond_234

    .line 330
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;
    invoke-static {v0}, Lopenlight/co/camera/managers/CameraManager;->access$500(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/managers/zoom/ZoomManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->isCurrentlyZooming()Z

    move-result v0

    .line 332
    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCaptureManager:Lopenlight/co/camera/utils/Provider;
    invoke-static {v2}, Lopenlight/co/camera/managers/CameraManager;->access$000(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object v2

    invoke-interface {v2}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-virtual {v2}, Lopenlight/co/camera/managers/capture/CaptureManager;->isIdle()Z

    move-result v2

    if-nez v2, :cond_10b

    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    .line 333
    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCaptureManager:Lopenlight/co/camera/utils/Provider;
    invoke-static {v2}, Lopenlight/co/camera/managers/CameraManager;->access$000(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object v2

    invoke-interface {v2}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-virtual {v2}, Lopenlight/co/camera/managers/capture/CaptureManager;->isQueued()Z

    move-result v2

    if-eqz v2, :cond_109

    goto :goto_10b

    :cond_109
    const/4 v2, 0x0

    goto :goto_10c

    :cond_10b
    :goto_10b
    move v2, v1

    :goto_10c
    if-nez v0, :cond_13e

    if-eqz v2, :cond_13e

    .line 336
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;
    invoke-static {v0}, Lopenlight/co/camera/managers/CameraManager;->access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;

    move-result-object v0

    sget-object v2, Lopenlight/co/camera/utils/CameraState$SessionState;->WAITING_FOR_FOCUS_TRIGGER:Lopenlight/co/camera/utils/CameraState$SessionState;

    invoke-virtual {v0, v2}, Lopenlight/co/camera/utils/CameraState;->setSessionState(Lopenlight/co/camera/utils/CameraState$SessionState;)V

    .line 337
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;
    invoke-static {v0}, Lopenlight/co/camera/managers/CameraManager;->access$300(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/TimingLoggerUtil;

    move-result-object v0

    sget-object v2, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->START_FOCUS:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {v0, v2}, Lopenlight/co/camera/utils/TimingLoggerUtil;->captureTiming(Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;)V

    .line 338
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mFocusManager:Lopenlight/co/camera/utils/Provider;
    invoke-static {v0}, Lopenlight/co/camera/managers/CameraManager;->access$600(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object v0

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/focus/FocusManager;->autoTriggerFocus()V

    .line 342
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p1, p0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->lockAe(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto/16 :goto_234

    :cond_13e
    if-eqz v0, :cond_234

    .line 343
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    .line 344
    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;
    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/utils/CameraState;->getSessionState()Lopenlight/co/camera/utils/CameraState$SessionState;

    move-result-object p1

    sget-object v0, Lopenlight/co/camera/utils/CameraState$SessionState;->WAITING_FOR_3A_CONVERGENCE:Lopenlight/co/camera/utils/CameraState$SessionState;

    if-ne p1, v0, :cond_234

    .line 345
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Zooming while waiting for convergence. Skipping AE Lock and aborting focus."

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->focusComplete()V

    goto/16 :goto_234

    .line 322
    :pswitch_15e
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MSG_AE_WAITING_CONVERGENCE"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;
    invoke-static {p0}, Lopenlight/co/camera/managers/CameraManager;->access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;

    move-result-object p0

    sget-object p1, Lopenlight/co/camera/utils/CameraState$SessionState;->WAITING_FOR_3A_CONVERGENCE:Lopenlight/co/camera/utils/CameraState$SessionState;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/utils/CameraState;->setSessionState(Lopenlight/co/camera/utils/CameraState$SessionState;)V

    goto/16 :goto_234

    .line 308
    :pswitch_174
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MSG_START_AE_METERING"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object p1, p1, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    if-eqz p1, :cond_18a

    .line 310
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object p1, p1, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    invoke-interface {p1}, Lopenlight/co/camera/managers/CameraManager$UpdatePreview;->disableControls()V

    .line 312
    :cond_18a
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;
    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$300(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/TimingLoggerUtil;

    move-result-object p1

    sget-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->START_AE_METERING:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {p1, v0}, Lopenlight/co/camera/utils/TimingLoggerUtil;->captureTiming(Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;)V

    .line 313
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mAutoExposureManager:Lopenlight/co/camera/utils/Provider;
    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$400(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object p1

    invoke-interface {p1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->startAeMetering()Z

    move-result p1

    if-eqz p1, :cond_1ae

    .line 315
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->aeWaitingConvergence()V

    goto/16 :goto_234

    .line 318
    :cond_1ae
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->startFocus()V

    goto/16 :goto_234

    .line 295
    :pswitch_1b5
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v2, "MSG_CAPTURE_COMPLETE"

    invoke-static {p1, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Lopenlight/co/camera/managers/capture/CaptureManager;->getPendingUserCaptures()I

    move-result p1

    if-lez p1, :cond_1d6

    invoke-virtual {v0}, Lopenlight/co/camera/managers/capture/CaptureManager;->isBurstCapture()Z

    move-result p1

    if-eqz p1, :cond_1d6

    .line 297
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;
    invoke-static {p0}, Lopenlight/co/camera/managers/CameraManager;->access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;

    move-result-object p0

    sget-object p1, Lopenlight/co/camera/utils/CameraState$SessionState;->WAITING_FOR_BURST_CAPTURE_COMPLETION:Lopenlight/co/camera/utils/CameraState$SessionState;

    .line 298
    invoke-virtual {p0, p1}, Lopenlight/co/camera/utils/CameraState;->setSessionState(Lopenlight/co/camera/utils/CameraState$SessionState;)V

    goto :goto_234

    .line 300
    :cond_1d6
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object p1, p1, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    if-eqz p1, :cond_1e3

    .line 301
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object p1, p1, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    invoke-interface {p1}, Lopenlight/co/camera/managers/CameraManager$UpdatePreview;->updateUiOnCaptureComplete()V

    .line 303
    :cond_1e3
    invoke-virtual {v0}, Lopenlight/co/camera/managers/capture/CaptureManager;->finishedCaptureLocked()V

    .line 304
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;
    invoke-static {p0}, Lopenlight/co/camera/managers/CameraManager;->access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;

    move-result-object p0

    sget-object p1, Lopenlight/co/camera/utils/CameraState$SessionState;->PREVIEW:Lopenlight/co/camera/utils/CameraState$SessionState;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/utils/CameraState;->setSessionState(Lopenlight/co/camera/utils/CameraState$SessionState;)V

    goto :goto_234

    .line 286
    :pswitch_1f2
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MSG_TRIGGER_CAPTURE_TO_HAL"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    .line 288
    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCaptureManager:Lopenlight/co/camera/utils/Provider;
    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$000(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object p1

    invoke-interface {p1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/capture/CaptureManager;->isBurstCapture()Z

    move-result p1

    if-eqz p1, :cond_210

    sget-object p1, Lopenlight/co/camera/utils/CameraState$SessionState;->WAITING_FOR_BURST_CAPTURE_COMPLETION:Lopenlight/co/camera/utils/CameraState$SessionState;

    goto :goto_212

    :cond_210
    sget-object p1, Lopenlight/co/camera/utils/CameraState$SessionState;->WAITING_FOR_STILL_CAPTURE_COMPLETION:Lopenlight/co/camera/utils/CameraState$SessionState;

    .line 292
    :goto_212
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;
    invoke-static {p0}, Lopenlight/co/camera/managers/CameraManager;->access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lopenlight/co/camera/utils/CameraState;->setSessionState(Lopenlight/co/camera/utils/CameraState$SessionState;)V

    goto :goto_234

    .line 282
    :pswitch_21c
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MSG_CAPTURE_START"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$1;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCaptureManager:Lopenlight/co/camera/utils/Provider;
    invoke-static {p0}, Lopenlight/co/camera/managers/CameraManager;->access$000(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object p0

    invoke-interface {p0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/capture/CaptureManager;->doCapture()V

    :cond_234
    :goto_234
    return v1

    nop

    :pswitch_data_236
    .packed-switch 0x64
        :pswitch_21c
        :pswitch_1f2
        :pswitch_1b5
        :pswitch_174
        :pswitch_15e
        :pswitch_a3
        :pswitch_12
        :pswitch_8d
        :pswitch_14
    .end packed-switch
.end method
