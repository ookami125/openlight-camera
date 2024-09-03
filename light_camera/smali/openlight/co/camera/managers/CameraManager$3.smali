.class Lopenlight/co/camera/managers/CameraManager$3;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
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
.field private mLastFrameTime:J

.field final synthetic this$0:Lopenlight/co/camera/managers/CameraManager;


# direct methods
.method constructor <init>(Lopenlight/co/camera/managers/CameraManager;)V
    .registers 4

    .line 445
    iput-object p1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    const-wide/16 v0, 0x0

    .line 446
    iput-wide v0, p0, Lopenlight/co/camera/managers/CameraManager$3;->mLastFrameTime:J

    return-void
.end method

.method private process(Landroid/hardware/camera2/CaptureResult;)V
    .registers 14
    .param p1    # Landroid/hardware/camera2/CaptureResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 449
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object v0, v0, Lopenlight/co/camera/managers/CameraManager;->mCurrentState:Lopenlight/co/camera/managers/CameraManager$State;

    sget-object v1, Lopenlight/co/camera/managers/CameraManager$State;->OPEN:Lopenlight/co/camera/managers/CameraManager$State;

    if-eq v0, v1, :cond_25

    .line 450
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera not in open state to process preview capture result, state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager;->mCurrentState:Lopenlight/co/camera/managers/CameraManager$State;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 454
    :cond_25
    iget-object v0, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraStateLock:Ljava/lang/Object;
    invoke-static {v0}, Lopenlight/co/camera/managers/CameraManager;->access$800(Lopenlight/co/camera/managers/CameraManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 455
    :try_start_2c
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # setter for: Lopenlight/co/camera/managers/CameraManager;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;
    invoke-static {v1, p1}, Lopenlight/co/camera/managers/CameraManager;->access$1102(Lopenlight/co/camera/managers/CameraManager;Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    .line 457
    sget-object v1, Lopenlight/co/camera/managers/CameraManager$5;->$SwitchMap$light$co$camera$utils$CameraState$SessionState:[I

    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;
    invoke-static {v2}, Lopenlight/co/camera/managers/CameraManager;->access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;

    move-result-object v2

    invoke-virtual {v2}, Lopenlight/co/camera/utils/CameraState;->getSessionState()Lopenlight/co/camera/utils/CameraState$SessionState;

    move-result-object v2

    invoke-virtual {v2}, Lopenlight/co/camera/utils/CameraState$SessionState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x4

    packed-switch v1, :pswitch_data_3fc

    goto/16 :goto_3f7

    .line 577
    :pswitch_4c
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCaptureManager:Lopenlight/co/camera/utils/Provider;
    invoke-static {v1}, Lopenlight/co/camera/managers/CameraManager;->access$000(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object v1

    invoke-interface {v1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lopenlight/co/camera/managers/capture/CaptureManager;

    .line 578
    iget-object v6, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mAutoExposureManager:Lopenlight/co/camera/utils/Provider;
    invoke-static {v6}, Lopenlight/co/camera/managers/CameraManager;->access$400(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object v6

    invoke-interface {v6}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    invoke-virtual {v6}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->isMetering()Z

    move-result v6

    .line 579
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "3A convergence in frame: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[AE] Is AE metering on: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v6, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraInfo:Lopenlight/co/camera/CameraInfo;
    invoke-static {v6}, Lopenlight/co/camera/managers/CameraManager;->access$1800(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/CameraInfo;

    move-result-object v6

    invoke-virtual {v6}, Lopenlight/co/camera/CameraInfo;->isAutoFocusSupported()Z

    move-result v6

    if-nez v6, :cond_c2

    .line 586
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v6}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_b4

    goto/16 :goto_3f7

    .line 592
    :cond_b4
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v5, :cond_c0

    .line 593
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v2, :cond_c2

    :cond_c0
    move v2, v3

    goto :goto_c3

    :cond_c2
    move v2, v4

    .line 597
    :goto_c3
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v6}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 598
    sget-object v7, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v7}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 599
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[AE] AE State: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[AE] AWB State: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_19c

    if-nez p1, :cond_109

    goto/16 :goto_19c

    .line 607
    :cond_109
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v7, 0x2

    if-eq p1, v7, :cond_11d

    .line 608
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v5, :cond_11d

    .line 609
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v7, 0x3

    if-ne p1, v7, :cond_138

    .line 611
    :cond_11d
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v5, :cond_124

    move v4, v3

    .line 617
    :cond_124
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mAutoExposureManager:Lopenlight/co/camera/utils/Provider;
    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$400(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object p1

    invoke-interface {p1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object v2, v2, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 618
    invoke-virtual {p1, v2}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->resetRoiInCenterWeighted(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    move v2, v3

    .line 621
    :cond_138
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CAPTURE] PendingCaptureIntent: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {v1}, Lopenlight/co/camera/managers/capture/CaptureManager;->getPendingUserCaptures()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 621
    invoke-static {p1, v3}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CAPTURE] readyToCaptures: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_17b

    .line 625
    invoke-virtual {v1}, Lopenlight/co/camera/managers/capture/CaptureManager;->getPendingUserCaptures()I

    move-result p1

    if-lez p1, :cond_17b

    .line 626
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->triggerCaptureToHal()V

    goto/16 :goto_3f7

    :cond_17b
    if-eqz v2, :cond_3f7

    .line 628
    invoke-virtual {v1}, Lopenlight/co/camera/managers/capture/CaptureManager;->getPendingUserCaptures()I

    move-result p1

    if-nez p1, :cond_3f7

    .line 629
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v1, "[AF] Starting Focus post Metering complete"

    invoke-static {p1, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_195

    .line 631
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0, v5}, Lopenlight/co/camera/managers/CameraManager;->startFocus(I)V

    goto/16 :goto_3f7

    .line 633
    :cond_195
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->startFocus()V

    goto/16 :goto_3f7

    .line 602
    :cond_19c
    :goto_19c
    invoke-virtual {v1}, Lopenlight/co/camera/managers/capture/CaptureManager;->resetCapture()V

    .line 603
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;
    invoke-static {p0}, Lopenlight/co/camera/managers/CameraManager;->access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;

    move-result-object p0

    sget-object p1, Lopenlight/co/camera/utils/CameraState$SessionState;->PREVIEW:Lopenlight/co/camera/utils/CameraState$SessionState;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/utils/CameraState;->setSessionState(Lopenlight/co/camera/utils/CameraState$SessionState;)V

    goto/16 :goto_3f7

    .line 569
    :pswitch_1ac
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Burst Capture initiation in frameNumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 569
    invoke-static {v1, p1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCaptureManager:Lopenlight/co/camera/utils/Provider;
    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$000(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object p1

    invoke-interface {p1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/camera/managers/capture/CaptureManager;

    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    .line 573
    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCaptureManager:Lopenlight/co/camera/utils/Provider;
    invoke-static {v1}, Lopenlight/co/camera/managers/CameraManager;->access$000(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object v1

    invoke-interface {v1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-virtual {v1}, Lopenlight/co/camera/managers/capture/CaptureManager;->getPendingUserCaptures()I

    move-result v1

    .line 572
    invoke-virtual {p1, v1}, Lopenlight/co/camera/managers/capture/CaptureManager;->captureBurstPictureLocked(I)V

    .line 574
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;
    invoke-static {p0}, Lopenlight/co/camera/managers/CameraManager;->access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;

    move-result-object p0

    sget-object p1, Lopenlight/co/camera/utils/CameraState$SessionState;->PREVIEW:Lopenlight/co/camera/utils/CameraState$SessionState;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/utils/CameraState;->setSessionState(Lopenlight/co/camera/utils/CameraState$SessionState;)V

    goto/16 :goto_3f7

    .line 558
    :pswitch_1f4
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mAutoExposureManager:Lopenlight/co/camera/utils/Provider;
    invoke-static {v1}, Lopenlight/co/camera/managers/CameraManager;->access$400(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object v1

    invoke-interface {v1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object v2, v2, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, v2}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->resetPreCaptureTrigger(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 559
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capture initiation in frameNumber "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 559
    invoke-static {v1, p1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;
    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$300(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/TimingLoggerUtil;

    move-result-object p1

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->IN_STATE_STILL_CAPTURE:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    invoke-virtual {p1, v1}, Lopenlight/co/camera/utils/TimingLoggerUtil;->captureTiming(Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;)V

    .line 564
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCaptureManager:Lopenlight/co/camera/utils/Provider;
    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$000(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object p1

    invoke-interface {p1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/capture/CaptureManager;->captureStillPictureLocked()V

    .line 566
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;
    invoke-static {p0}, Lopenlight/co/camera/managers/CameraManager;->access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;

    move-result-object p0

    sget-object p1, Lopenlight/co/camera/utils/CameraState$SessionState;->PREVIEW:Lopenlight/co/camera/utils/CameraState$SessionState;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/utils/CameraState;->setSessionState(Lopenlight/co/camera/utils/CameraState$SessionState;)V

    goto/16 :goto_3f7

    .line 523
    :pswitch_24a
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_256

    goto/16 :goto_3f7

    .line 527
    :cond_256
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 528
    invoke-static {}, Lopenlight/co/camera/managers/zoom/ZoomManager;->get()Lopenlight/co/camera/managers/zoom/ZoomManager;

    move-result-object v3

    invoke-virtual {v3}, Lopenlight/co/camera/managers/zoom/ZoomManager;->isCurrentlyZooming()Z

    move-result v3

    if-eqz v3, :cond_27b

    .line 529
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Zoom in progress. Cannot Focus!"

    invoke-static {p1, v1}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object p1, p1, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    invoke-interface {p1}, Lopenlight/co/camera/managers/CameraManager$UpdatePreview;->focusFailedUpdateUi()V

    .line 531
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->focusComplete()V

    .line 532
    monitor-exit v0

    return-void

    :cond_27b
    if-ne v1, v5, :cond_2bc

    .line 535
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Focus Achieved in frame: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 535
    invoke-static {v1, p1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;
    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$300(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/TimingLoggerUtil;

    move-result-object p1

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->FOCUS_ACHIEVED:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {p1, v1}, Lopenlight/co/camera/utils/TimingLoggerUtil;->captureTiming(Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;)V

    .line 538
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object p1, p1, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    invoke-interface {p1}, Lopenlight/co/camera/managers/CameraManager$UpdatePreview;->focusSuccessUpdateUi()V

    .line 539
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/CameraManager;->focusComplete()V

    .line 540
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;
    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;

    move-result-object p1

    sget-object v1, Lopenlight/co/camera/utils/CameraState$SessionState;->PREVIEW:Lopenlight/co/camera/utils/CameraState$SessionState;

    invoke-virtual {p1, v1}, Lopenlight/co/camera/utils/CameraState;->setSessionState(Lopenlight/co/camera/utils/CameraState$SessionState;)V

    goto :goto_2f7

    :cond_2bc
    if-ne v1, v2, :cond_2f7

    .line 543
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Focus Failed in frame: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object p1, p1, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    if-eqz p1, :cond_2e7

    .line 545
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object p1, p1, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    invoke-interface {p1}, Lopenlight/co/camera/managers/CameraManager$UpdatePreview;->focusFailedUpdateUi()V

    .line 547
    :cond_2e7
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/CameraManager;->focusComplete()V

    .line 548
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;
    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$200(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/CameraState;

    move-result-object p1

    sget-object v1, Lopenlight/co/camera/utils/CameraState$SessionState;->PREVIEW:Lopenlight/co/camera/utils/CameraState$SessionState;

    invoke-virtual {p1, v1}, Lopenlight/co/camera/utils/CameraState;->setSessionState(Lopenlight/co/camera/utils/CameraState$SessionState;)V

    .line 550
    :cond_2f7
    :goto_2f7
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # invokes: Lopenlight/co/camera/managers/CameraManager;->hasTimeToFocusThresholdPassed()Z
    invoke-static {p1}, Lopenlight/co/camera/managers/CameraManager;->access$1700(Lopenlight/co/camera/managers/CameraManager;)Z

    move-result p1

    if-eqz p1, :cond_3f7

    .line 551
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Focus Timeout"

    invoke-static {p1, v1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object p1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object p1, p1, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    invoke-interface {p1}, Lopenlight/co/camera/managers/CameraManager$UpdatePreview;->focusFailedUpdateUi()V

    .line 553
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->focusComplete()V

    goto/16 :goto_3f7

    .line 469
    :pswitch_316
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v1

    const-wide/16 v5, 0x2

    cmp-long v1, v1, v5

    if-gez v1, :cond_34d

    .line 470
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    # setter for: Lopenlight/co/camera/managers/CameraManager;->mFpsRange:Landroid/util/Range;
    invoke-static {v1, v2}, Lopenlight/co/camera/managers/CameraManager;->access$1202(Lopenlight/co/camera/managers/CameraManager;Landroid/util/Range;)Landroid/util/Range;

    .line 471
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object v1, v1, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v2, 0x0

    .line 472
    invoke-static {v1, v2}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAeTargetFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/util/Range;)V

    .line 473
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mCaptureReqManager:Lopenlight/co/camera/utils/Provider;
    invoke-static {v1}, Lopenlight/co/camera/managers/CameraManager;->access$700(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object v1

    invoke-interface {v1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;

    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object v2, v2, Lopenlight/co/camera/managers/CameraManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, v2}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->resetZoom(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 475
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {v1}, Lopenlight/co/camera/managers/CameraManager;->startRepeatingRequestInPreview()V

    .line 478
    :cond_34d
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mFocusManager:Lopenlight/co/camera/utils/Provider;
    invoke-static {v1}, Lopenlight/co/camera/managers/CameraManager;->access$600(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object v1

    invoke-interface {v1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lopenlight/co/camera/managers/focus/FocusManager;

    .line 479
    invoke-virtual {v1}, Lopenlight/co/camera/managers/focus/FocusManager;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_377

    .line 482
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Initial focus in module"

    invoke-static {v1, v2}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # getter for: Lopenlight/co/camera/managers/CameraManager;->mSmartAFTriggerMgrProvider:Lopenlight/co/camera/utils/Provider;
    invoke-static {v1}, Lopenlight/co/camera/managers/CameraManager;->access$1300(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object v1

    invoke-interface {v1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-virtual {v1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->processSystemTrigger()V

    .line 487
    :cond_377
    invoke-static {}, Lopenlight/co/camera/utils/FaceDetector;->get()Lopenlight/co/camera/utils/FaceDetector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lopenlight/co/camera/utils/FaceDetector;->processCaptureResult(Landroid/hardware/camera2/CaptureResult;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_387

    .line 488
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_39b

    :cond_387
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    .line 489
    # getter for: Lopenlight/co/camera/managers/CameraManager;->mSmartAFTriggerMgrProvider:Lopenlight/co/camera/utils/Provider;
    invoke-static {v1}, Lopenlight/co/camera/managers/CameraManager;->access$1300(Lopenlight/co/camera/managers/CameraManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object v1

    invoke-interface {v1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-virtual {v1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->getLastFocusTriggeredFace()Landroid/hardware/camera2/params/Face;

    move-result-object v1

    if-eqz v1, :cond_39b

    move v1, v3

    goto :goto_39c

    :cond_39b
    move v1, v4

    .line 491
    :goto_39c
    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object v2, v2, Lopenlight/co/camera/managers/CameraManager;->mCurrentState:Lopenlight/co/camera/managers/CameraManager$State;

    sget-object v5, Lopenlight/co/camera/managers/CameraManager$State;->OPEN:Lopenlight/co/camera/managers/CameraManager$State;

    if-ne v2, v5, :cond_3f7

    .line 492
    iget-object v2, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object v2, v2, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    iget-object v5, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    # invokes: Lopenlight/co/camera/managers/CameraManager;->getISO(Landroid/hardware/camera2/CaptureResult;)I
    invoke-static {v5, p1}, Lopenlight/co/camera/managers/CameraManager;->access$1400(Lopenlight/co/camera/managers/CameraManager;Landroid/hardware/camera2/CaptureResult;)I

    move-result v5

    iget-object v6, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    .line 493
    # invokes: Lopenlight/co/camera/managers/CameraManager;->getShutterSpeed(Landroid/hardware/camera2/CaptureResult;)J
    invoke-static {v6, p1}, Lopenlight/co/camera/managers/CameraManager;->access$1500(Lopenlight/co/camera/managers/CameraManager;Landroid/hardware/camera2/CaptureResult;)J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v8

    const-wide/16 v10, 0x1

    cmp-long v8, v8, v10

    if-gez v8, :cond_3bf

    goto :goto_3c0

    :cond_3bf
    move v3, v4

    .line 492
    :goto_3c0
    invoke-interface {v2, v5, v6, v7, v3}, Lopenlight/co/camera/managers/CameraManager$UpdatePreview;->updateHudInfo(IJZ)V

    if-eqz v1, :cond_3cc

    .line 500
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object v1, v1, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    invoke-interface {v1}, Lopenlight/co/camera/managers/CameraManager$UpdatePreview;->onNoFacesInPreview()V

    .line 503
    :cond_3cc
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object v1, v1, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    .line 504
    invoke-static {p1}, Lopenlight/co/lightsdk/camera2/CaptureResult$Parser;->get(Landroid/hardware/camera2/CaptureResult;)Lopenlight/co/lightsdk/camera2/CaptureResult$Parser;

    move-result-object v2

    .line 505
    invoke-virtual {v2}, Lopenlight/co/lightsdk/camera2/CaptureResult$Parser;->isCaptureStacked()Ljava/lang/Byte;

    move-result-object v2

    .line 503
    invoke-interface {v1, v2}, Lopenlight/co/camera/managers/CameraManager$UpdatePreview;->updateLowLightAssist(Ljava/lang/Byte;)V

    .line 507
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object v1, v1, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    .line 508
    invoke-static {p1}, Lopenlight/co/lightsdk/camera2/CaptureResult$Parser;->get(Landroid/hardware/camera2/CaptureResult;)Lopenlight/co/lightsdk/camera2/CaptureResult$Parser;

    move-result-object v2

    .line 509
    invoke-virtual {v2}, Lopenlight/co/lightsdk/camera2/CaptureResult$Parser;->isOnTripod()Ljava/lang/Byte;

    move-result-object v2

    .line 507
    invoke-interface {v1, v2}, Lopenlight/co/camera/managers/CameraManager$UpdatePreview;->updateTripodAssist(Ljava/lang/Byte;)V

    .line 510
    iget-object v1, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    iget-object v1, v1, Lopenlight/co/camera/managers/CameraManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    .line 511
    # invokes: Lopenlight/co/camera/managers/CameraManager;->showHandshakeAssist(Landroid/hardware/camera2/CaptureResult;)Z
    invoke-static {p0, p1}, Lopenlight/co/camera/managers/CameraManager;->access$1600(Lopenlight/co/camera/managers/CameraManager;Landroid/hardware/camera2/CaptureResult;)Z

    move-result p0

    .line 510
    invoke-interface {v1, p0}, Lopenlight/co/camera/managers/CameraManager$UpdatePreview;->updateHandshakeAssist(Z)V

    .line 638
    :cond_3f7
    :goto_3f7
    :pswitch_3f7
    monitor-exit v0

    return-void

    :catchall_3f9
    move-exception p0

    monitor-exit v0
    :try_end_3fb
    .catchall {:try_start_2c .. :try_end_3fb} :catchall_3f9

    throw p0

    :pswitch_data_3fc
    .packed-switch 0x1
        :pswitch_316
        :pswitch_3f7
        :pswitch_24a
        :pswitch_1f4
        :pswitch_1ac
        :pswitch_4c
    .end packed-switch
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 4
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

    .line 653
    invoke-direct {p0, p3}, Lopenlight/co/camera/managers/CameraManager$3;->process(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 6
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

    .line 659
    # getter for: Lopenlight/co/camera/managers/CameraManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Preview Capture Failed : Reason: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Sequence Id "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " frameNumber "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 659
    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object p0, p0, Lopenlight/co/camera/managers/CameraManager$3;->this$0:Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->handleOnCaptureFailed()V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 4
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

    .line 645
    invoke-direct {p0, p3}, Lopenlight/co/camera/managers/CameraManager$3;->process(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method
