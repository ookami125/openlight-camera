.class Lopenlight/co/camera/ImageReaderManager$4;
.super Ljava/lang/Object;
.source "ImageReaderManager.java"

# interfaces
.implements Lopenlight/co/camera/listener/OnImageSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/ImageReaderManager;->dequeueAndSaveImage(Ljava/util/TreeMap;Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/ImageReaderManager;

.field final synthetic val$imageFormat:I

.field final synthetic val$reader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;


# direct methods
.method constructor <init>(Lopenlight/co/camera/ImageReaderManager;ILopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;)V
    .registers 4

    .line 483
    iput-object p1, p0, Lopenlight/co/camera/ImageReaderManager$4;->this$0:Lopenlight/co/camera/ImageReaderManager;

    iput p2, p0, Lopenlight/co/camera/ImageReaderManager$4;->val$imageFormat:I

    iput-object p3, p0, Lopenlight/co/camera/ImageReaderManager$4;->val$reader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .registers 6

    .line 494
    iget-object v0, p0, Lopenlight/co/camera/ImageReaderManager$4;->val$reader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    invoke-virtual {v0}, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->close()V

    .line 496
    iget v0, p0, Lopenlight/co/camera/ImageReaderManager$4;->val$imageFormat:I

    const/16 v1, 0x23

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 500
    :goto_e
    invoke-static {}, Lopenlight/co/camera/CameraApp;->isLight()Z

    move-result v1

    if-ne v0, v1, :cond_3b

    .line 502
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/camera/managers/CameraManager;->decrementCapturesInFlight()V

    .line 503
    # getter for: Lopenlight/co/camera/ImageReaderManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/ImageReaderManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RAW File saved, pending captures: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lopenlight/co/camera/managers/CameraManager;->getCapturesInFlight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 503
    invoke-static {v1, v2}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    if-eqz v0, :cond_61

    .line 508
    # getter for: Lopenlight/co/camera/ImageReaderManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/ImageReaderManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RAW File saved onComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object p1, p0, Lopenlight/co/camera/ImageReaderManager$4;->this$0:Lopenlight/co/camera/ImageReaderManager;

    # getter for: Lopenlight/co/camera/ImageReaderManager;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;
    invoke-static {p1}, Lopenlight/co/camera/ImageReaderManager;->access$100(Lopenlight/co/camera/ImageReaderManager;)Lopenlight/co/camera/utils/TimingLoggerUtil;

    move-result-object p1

    sget-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->RAW_SAVED:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    invoke-virtual {p1, v0}, Lopenlight/co/camera/utils/TimingLoggerUtil;->captureTiming(Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;)V

    goto :goto_84

    .line 511
    :cond_61
    # getter for: Lopenlight/co/camera/ImageReaderManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/ImageReaderManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Jpeg File saved onComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object p1, p0, Lopenlight/co/camera/ImageReaderManager$4;->this$0:Lopenlight/co/camera/ImageReaderManager;

    # getter for: Lopenlight/co/camera/ImageReaderManager;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;
    invoke-static {p1}, Lopenlight/co/camera/ImageReaderManager;->access$100(Lopenlight/co/camera/ImageReaderManager;)Lopenlight/co/camera/utils/TimingLoggerUtil;

    move-result-object p1

    sget-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->JPEG_SAVED:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    invoke-virtual {p1, v0}, Lopenlight/co/camera/utils/TimingLoggerUtil;->captureTiming(Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;)V

    .line 514
    :goto_84
    iget-object p1, p0, Lopenlight/co/camera/ImageReaderManager$4;->this$0:Lopenlight/co/camera/ImageReaderManager;

    # getter for: Lopenlight/co/camera/ImageReaderManager;->mPendingCapturesCompleteListener:Lopenlight/co/camera/ImageReaderManager$PendingCapturesCompleteListener;
    invoke-static {p1}, Lopenlight/co/camera/ImageReaderManager;->access$800(Lopenlight/co/camera/ImageReaderManager;)Lopenlight/co/camera/ImageReaderManager$PendingCapturesCompleteListener;

    move-result-object p1

    if-eqz p1, :cond_95

    .line 515
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager$4;->this$0:Lopenlight/co/camera/ImageReaderManager;

    # getter for: Lopenlight/co/camera/ImageReaderManager;->mPendingCapturesCompleteListener:Lopenlight/co/camera/ImageReaderManager$PendingCapturesCompleteListener;
    invoke-static {p0}, Lopenlight/co/camera/ImageReaderManager;->access$800(Lopenlight/co/camera/ImageReaderManager;)Lopenlight/co/camera/ImageReaderManager$PendingCapturesCompleteListener;

    move-result-object p0

    invoke-interface {p0}, Lopenlight/co/camera/ImageReaderManager$PendingCapturesCompleteListener;->onComplete()V

    :cond_95
    return-void
.end method

.method public onSaved(Ljava/lang/String;I)V
    .registers 6

    .line 486
    # getter for: Lopenlight/co/camera/ImageReaderManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/ImageReaderManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image saved path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lopenlight/co/camera/ImageReaderManager$4;->this$0:Lopenlight/co/camera/ImageReaderManager;

    # getter for: Lopenlight/co/camera/ImageReaderManager;->mOnImageStatusListener:Lopenlight/co/camera/ImageReaderManager$OnImageStatusListener;
    invoke-static {v0}, Lopenlight/co/camera/ImageReaderManager;->access$500(Lopenlight/co/camera/ImageReaderManager;)Lopenlight/co/camera/ImageReaderManager$OnImageStatusListener;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 488
    iget-object v0, p0, Lopenlight/co/camera/ImageReaderManager$4;->this$0:Lopenlight/co/camera/ImageReaderManager;

    # getter for: Lopenlight/co/camera/ImageReaderManager;->mOnImageStatusListener:Lopenlight/co/camera/ImageReaderManager$OnImageStatusListener;
    invoke-static {v0}, Lopenlight/co/camera/ImageReaderManager;->access$500(Lopenlight/co/camera/ImageReaderManager;)Lopenlight/co/camera/ImageReaderManager$OnImageStatusListener;

    move-result-object v0

    iget p0, p0, Lopenlight/co/camera/ImageReaderManager$4;->val$imageFormat:I

    invoke-interface {v0, p0, p1, p2}, Lopenlight/co/camera/ImageReaderManager$OnImageStatusListener;->onImageSaved(ILjava/lang/String;I)V

    :cond_2b
    return-void
.end method
