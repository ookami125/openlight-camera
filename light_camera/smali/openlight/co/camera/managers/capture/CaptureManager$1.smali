.class Lopenlight/co/camera/managers/capture/CaptureManager$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CaptureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/managers/capture/CaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/managers/capture/CaptureManager;


# direct methods
.method constructor <init>(Lopenlight/co/camera/managers/capture/CaptureManager;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lopenlight/co/camera/managers/capture/CaptureManager$1;->this$0:Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3
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

    .line 464
    invoke-static {}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureCompleted : SequenceId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " frameNumber "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 464
    invoke-static {p1, p3}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object p1, p0, Lopenlight/co/camera/managers/capture/CaptureManager$1;->this$0:Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-static {p1}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$600(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/camera/utils/TimingLoggerUtil;

    move-result-object p1

    sget-object p3, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->CAPTURE_COMPLETE:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    invoke-virtual {p1, p3}, Lopenlight/co/camera/utils/TimingLoggerUtil;->captureTiming(Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;)V

    .line 469
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 470
    invoke-static {}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onCaptureCompleted, request tag is null"

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 474
    :cond_0
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 475
    iget-object p2, p0, Lopenlight/co/camera/managers/capture/CaptureManager$1;->this$0:Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-static {p2}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$700(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 476
    iget-object p2, p0, Lopenlight/co/camera/managers/capture/CaptureManager$1;->this$0:Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-static {p2}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$700(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;

    move-result-object p2

    invoke-interface {p2}, Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;->onCaptureComplete()V

    .line 478
    :cond_1
    iget-object p2, p0, Lopenlight/co/camera/managers/capture/CaptureManager$1;->this$0:Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-static {p2}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$200(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object p2

    invoke-interface {p2}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lopenlight/co/camera/managers/CameraManager;

    .line 480
    invoke-virtual {p2}, Lopenlight/co/camera/managers/CameraManager;->getCameraStateLock()Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 481
    :try_start_0
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager$1;->this$0:Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-static {v0}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$300(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/camera/ImageReaderManager;

    move-result-object v0

    iget-object v1, p0, Lopenlight/co/camera/managers/capture/CaptureManager$1;->this$0:Lopenlight/co/camera/managers/capture/CaptureManager;

    .line 482
    invoke-static {v1}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$300(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/camera/ImageReaderManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lopenlight/co/camera/ImageReaderManager;->getJpegImageBuilder(I)Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;

    move-result-object v1

    iget-object v2, p0, Lopenlight/co/camera/managers/capture/CaptureManager$1;->this$0:Lopenlight/co/camera/managers/capture/CaptureManager;

    .line 483
    invoke-static {v2}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$300(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/camera/ImageReaderManager;

    move-result-object v2

    invoke-virtual {v2}, Lopenlight/co/camera/ImageReaderManager;->getJpegResultQueue()Ljava/util/TreeMap;

    move-result-object v2

    .line 481
    invoke-virtual {v0, p1, v1, v2}, Lopenlight/co/camera/ImageReaderManager;->handleCompletionLocked(ILopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;Ljava/util/TreeMap;)V

    .line 484
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager$1;->this$0:Lopenlight/co/camera/managers/capture/CaptureManager;

    .line 485
    invoke-static {v0}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$300(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/camera/ImageReaderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lopenlight/co/camera/ImageReaderManager;->getRawImageBuilder(I)Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 487
    iget-object v1, p0, Lopenlight/co/camera/managers/capture/CaptureManager$1;->this$0:Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-static {v1}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$300(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/camera/ImageReaderManager;

    move-result-object v1

    iget-object p0, p0, Lopenlight/co/camera/managers/capture/CaptureManager$1;->this$0:Lopenlight/co/camera/managers/capture/CaptureManager;

    .line 488
    invoke-static {p0}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$300(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/camera/ImageReaderManager;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/ImageReaderManager;->getRawResultQueue()Ljava/util/TreeMap;

    move-result-object p0

    .line 487
    invoke-virtual {v1, p1, v0, p0}, Lopenlight/co/camera/ImageReaderManager;->handleCompletionLocked(ILopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;Ljava/util/TreeMap;)V

    .line 490
    :cond_2
    invoke-virtual {p2}, Lopenlight/co/camera/managers/CameraManager;->captureComplete()V

    .line 491
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3
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

    .line 498
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 499
    invoke-static {}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capture Failed : Reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Sequence Id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getSequenceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " frameNumber "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 499
    invoke-static {p2, p3}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object p2, p0, Lopenlight/co/camera/managers/capture/CaptureManager$1;->this$0:Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-static {p2}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$200(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object p2

    invoke-interface {p2}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lopenlight/co/camera/managers/CameraManager;

    .line 503
    invoke-virtual {p2}, Lopenlight/co/camera/managers/CameraManager;->decrementCapturesInFlight()V

    .line 504
    invoke-static {}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$000()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureFailed image: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lopenlight/co/camera/managers/CameraManager;->getCapturesInFlight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {p2}, Lopenlight/co/camera/managers/CameraManager;->getCameraStateLock()Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 506
    :try_start_0
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager$1;->this$0:Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-static {v0}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$300(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/camera/ImageReaderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lopenlight/co/camera/ImageReaderManager;->removeJpegRequestQueue(I)V

    .line 507
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureManager$1;->this$0:Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-static {v0}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$300(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/camera/ImageReaderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lopenlight/co/camera/ImageReaderManager;->removeRawRequestQueue(I)V

    .line 508
    invoke-virtual {p2}, Lopenlight/co/camera/managers/CameraManager;->captureComplete()V

    .line 509
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    iget-object p1, p0, Lopenlight/co/camera/managers/capture/CaptureManager$1;->this$0:Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-static {p1}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$700(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 511
    iget-object p0, p0, Lopenlight/co/camera/managers/capture/CaptureManager$1;->this$0:Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-static {p0}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$700(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;

    move-result-object p0

    invoke-interface {p0}, Lopenlight/co/camera/managers/capture/CaptureManager$CaptureUiUpdate;->onCaptureFailure()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 509
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 2
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 415
    invoke-static {}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureStarted : frameNumber "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p5, " timestamp "

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 418
    invoke-static {}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onCaptureStart, request tag is null"

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 422
    :cond_0
    invoke-static {}, Lopenlight/co/camera/utils/MediaFileManager;->get()Lopenlight/co/camera/utils/MediaFileManager;

    move-result-object p1

    .line 423
    invoke-virtual {p1}, Lopenlight/co/camera/utils/MediaFileManager;->getImagePath()Ljava/lang/String;

    move-result-object p3

    .line 424
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 425
    invoke-static {}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCaptureStarted, folder to create jpeg/raw invalid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 430
    :cond_1
    invoke-virtual {p1}, Lopenlight/co/camera/utils/MediaFileManager;->getNextProcessedAndRawFileNames()Landroid/util/Pair;

    move-result-object p1

    .line 431
    iget-object p3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/io/File;

    .line 432
    invoke-static {}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$000()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "onCaptureStarted:: JPEG File Name: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    .line 436
    invoke-static {}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$000()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "onCaptureStarted:: Raw File Name: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object p4, p0, Lopenlight/co/camera/managers/capture/CaptureManager$1;->this$0:Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-static {p4, p2}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$100(Lopenlight/co/camera/managers/capture/CaptureManager;Landroid/hardware/camera2/CaptureRequest;)V

    .line 442
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 443
    iget-object p4, p0, Lopenlight/co/camera/managers/capture/CaptureManager$1;->this$0:Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-static {p4}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$200(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object p4

    invoke-interface {p4}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p4}, Lopenlight/co/camera/managers/CameraManager;->getCameraStateLock()Ljava/lang/Object;

    move-result-object p4

    monitor-enter p4

    .line 444
    :try_start_0
    iget-object p5, p0, Lopenlight/co/camera/managers/capture/CaptureManager$1;->this$0:Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-static {p5}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$300(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/camera/ImageReaderManager;

    move-result-object p5

    invoke-virtual {p5, p2}, Lopenlight/co/camera/ImageReaderManager;->getJpegImageBuilder(I)Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;

    move-result-object p5

    .line 445
    iget-object p6, p0, Lopenlight/co/camera/managers/capture/CaptureManager$1;->this$0:Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-static {p6}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$300(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/camera/ImageReaderManager;

    move-result-object p6

    invoke-virtual {p6, p2}, Lopenlight/co/camera/ImageReaderManager;->getRawImageBuilder(I)Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;

    move-result-object p2

    .line 446
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    iget-object p4, p0, Lopenlight/co/camera/managers/capture/CaptureManager$1;->this$0:Lopenlight/co/camera/managers/capture/CaptureManager;

    .line 448
    invoke-static {p4}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$400(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/camera/proto/CameraCaptureRequestInfo;

    move-result-object p4

    invoke-static {p4}, Lopenlight/co/camera/utils/ImageUtil;->getViewPrefs(Lopenlight/co/camera/proto/CameraCaptureRequestInfo;)Lltpb/ViewPreferences;

    move-result-object p4

    if-eqz p5, :cond_2

    .line 450
    invoke-virtual {p5, p3}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->setFile(Ljava/io/File;)Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;

    .line 451
    invoke-virtual {p5, p4}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->setViewPrefs(Lltpb/ViewPreferences;)Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;

    .line 452
    iget-object p0, p0, Lopenlight/co/camera/managers/capture/CaptureManager$1;->this$0:Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-static {p0}, Lopenlight/co/camera/managers/capture/CaptureManager;->access$500(Lopenlight/co/camera/managers/capture/CaptureManager;)Lopenlight/co/lib/exif/ExifInformation;

    move-result-object p0

    invoke-virtual {p5, p0}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->setExifInfo(Lopenlight/co/lib/exif/ExifInformation;)Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;

    :cond_2
    if-eqz p2, :cond_3

    .line 455
    invoke-virtual {p2, p1}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->setFile(Ljava/io/File;)Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;

    .line 456
    invoke-virtual {p2, p4}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->setViewPrefs(Lltpb/ViewPreferences;)Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 446
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
