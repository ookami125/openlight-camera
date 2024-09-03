.class Lopenlight/co/camera/managers/focus/FocusManager$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/managers/focus/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/managers/focus/FocusManager;


# direct methods
.method constructor <init>(Lopenlight/co/camera/managers/focus/FocusManager;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lopenlight/co/camera/managers/focus/FocusManager$1;->this$0:Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method private process(Landroid/hardware/camera2/CaptureResult;)V
    .registers 6
    .param p1    # Landroid/hardware/camera2/CaptureResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 181
    # getter for: Lopenlight/co/camera/managers/focus/FocusManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/focus/FocusManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AF] Focus Callback state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 182
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in frame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-static {v0, p1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Lopenlight/co/camera/managers/focus/FocusManager$1;->this$0:Lopenlight/co/camera/managers/focus/FocusManager;

    # getter for: Lopenlight/co/camera/managers/focus/FocusManager;->mFocusListener:Lopenlight/co/camera/listener/FocusListener;
    invoke-static {p1}, Lopenlight/co/camera/managers/focus/FocusManager;->access$100(Lopenlight/co/camera/managers/focus/FocusManager;)Lopenlight/co/camera/listener/FocusListener;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 185
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/FocusManager$1;->this$0:Lopenlight/co/camera/managers/focus/FocusManager;

    # getter for: Lopenlight/co/camera/managers/focus/FocusManager;->mFocusListener:Lopenlight/co/camera/listener/FocusListener;
    invoke-static {p0}, Lopenlight/co/camera/managers/focus/FocusManager;->access$100(Lopenlight/co/camera/managers/focus/FocusManager;)Lopenlight/co/camera/listener/FocusListener;

    move-result-object p0

    invoke-interface {p0}, Lopenlight/co/camera/listener/FocusListener;->focusCompleted()V

    goto :goto_45

    .line 187
    :cond_3c
    # getter for: Lopenlight/co/camera/managers/focus/FocusManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/focus/FocusManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Focus Completed: Focus Listener is null"

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_45
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 6
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

    .line 221
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 222
    iget-object p1, p0, Lopenlight/co/camera/managers/focus/FocusManager$1;->this$0:Lopenlight/co/camera/managers/focus/FocusManager;

    # getter for: Lopenlight/co/camera/managers/focus/FocusManager;->mCurrentState:Lopenlight/co/camera/managers/focus/FocusManager$State;
    invoke-static {p1}, Lopenlight/co/camera/managers/focus/FocusManager;->access$200(Lopenlight/co/camera/managers/focus/FocusManager;)Lopenlight/co/camera/managers/focus/FocusManager$State;

    move-result-object p1

    sget-object p2, Lopenlight/co/camera/managers/focus/FocusManager$State;->IDLE:Lopenlight/co/camera/managers/focus/FocusManager$State;

    if-eq p1, p2, :cond_2d

    .line 223
    # getter for: Lopenlight/co/camera/managers/focus/FocusManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/focus/FocusManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FOCUS COMPLETED: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0, p3}, Lopenlight/co/camera/managers/focus/FocusManager$1;->process(Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_49

    .line 226
    :cond_2d
    # getter for: Lopenlight/co/camera/managers/focus/FocusManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/focus/FocusManager;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring onCaptureComplete, current state is IDLE, frame number: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 226
    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_49
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

    .line 235
    invoke-super {p0, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V

    .line 236
    iget-object p1, p0, Lopenlight/co/camera/managers/focus/FocusManager$1;->this$0:Lopenlight/co/camera/managers/focus/FocusManager;

    # getter for: Lopenlight/co/camera/managers/focus/FocusManager;->mCurrentState:Lopenlight/co/camera/managers/focus/FocusManager$State;
    invoke-static {p1}, Lopenlight/co/camera/managers/focus/FocusManager;->access$200(Lopenlight/co/camera/managers/focus/FocusManager;)Lopenlight/co/camera/managers/focus/FocusManager$State;

    move-result-object p1

    sget-object p2, Lopenlight/co/camera/managers/focus/FocusManager$State;->IDLE:Lopenlight/co/camera/managers/focus/FocusManager$State;

    if-eq p1, p2, :cond_62

    .line 237
    iget-object p1, p0, Lopenlight/co/camera/managers/focus/FocusManager$1;->this$0:Lopenlight/co/camera/managers/focus/FocusManager;

    sget-object p2, Lopenlight/co/camera/managers/focus/FocusManager$State;->IDLE:Lopenlight/co/camera/managers/focus/FocusManager$State;

    # setter for: Lopenlight/co/camera/managers/focus/FocusManager;->mCurrentState:Lopenlight/co/camera/managers/focus/FocusManager$State;
    invoke-static {p1, p2}, Lopenlight/co/camera/managers/focus/FocusManager;->access$202(Lopenlight/co/camera/managers/focus/FocusManager;Lopenlight/co/camera/managers/focus/FocusManager$State;)Lopenlight/co/camera/managers/focus/FocusManager$State;

    .line 238
    # getter for: Lopenlight/co/camera/managers/focus/FocusManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/focus/FocusManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FOCUS FAILED: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object p1, p0, Lopenlight/co/camera/managers/focus/FocusManager$1;->this$0:Lopenlight/co/camera/managers/focus/FocusManager;

    # getter for: Lopenlight/co/camera/managers/focus/FocusManager;->mFocusListener:Lopenlight/co/camera/listener/FocusListener;
    invoke-static {p1}, Lopenlight/co/camera/managers/focus/FocusManager;->access$100(Lopenlight/co/camera/managers/focus/FocusManager;)Lopenlight/co/camera/listener/FocusListener;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 240
    iget-object p1, p0, Lopenlight/co/camera/managers/focus/FocusManager$1;->this$0:Lopenlight/co/camera/managers/focus/FocusManager;

    # getter for: Lopenlight/co/camera/managers/focus/FocusManager;->mFocusListener:Lopenlight/co/camera/listener/FocusListener;
    invoke-static {p1}, Lopenlight/co/camera/managers/focus/FocusManager;->access$100(Lopenlight/co/camera/managers/focus/FocusManager;)Lopenlight/co/camera/listener/FocusListener;

    move-result-object p1

    invoke-interface {p1}, Lopenlight/co/camera/listener/FocusListener;->focusFailed()V

    goto :goto_4b

    .line 242
    :cond_42
    # getter for: Lopenlight/co/camera/managers/focus/FocusManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/focus/FocusManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Focus Failed, Focus listener is null"

    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_4b
    # getter for: Lopenlight/co/camera/managers/focus/FocusManager;->mSmartAfTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;
    invoke-static {}, Lopenlight/co/camera/managers/focus/FocusManager;->access$500()Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->focusFailed()V

    .line 246
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/FocusManager$1;->this$0:Lopenlight/co/camera/managers/focus/FocusManager;

    # getter for: Lopenlight/co/camera/managers/focus/FocusManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;
    invoke-static {p0}, Lopenlight/co/camera/managers/focus/FocusManager;->access$300(Lopenlight/co/camera/managers/focus/FocusManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object p0

    invoke-interface {p0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->focusComplete()V

    goto :goto_7e

    .line 248
    :cond_62
    # getter for: Lopenlight/co/camera/managers/focus/FocusManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/focus/FocusManager;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring onCaptureFailed, current state is IDLE, frame number: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getFrameNumber()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 248
    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7e
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

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 9
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 196
    iget-object v0, p0, Lopenlight/co/camera/managers/focus/FocusManager$1;->this$0:Lopenlight/co/camera/managers/focus/FocusManager;

    # getter for: Lopenlight/co/camera/managers/focus/FocusManager;->mCurrentState:Lopenlight/co/camera/managers/focus/FocusManager$State;
    invoke-static {v0}, Lopenlight/co/camera/managers/focus/FocusManager;->access$200(Lopenlight/co/camera/managers/focus/FocusManager;)Lopenlight/co/camera/managers/focus/FocusManager$State;

    move-result-object v0

    sget-object v1, Lopenlight/co/camera/managers/focus/FocusManager$State;->IDLE:Lopenlight/co/camera/managers/focus/FocusManager$State;

    if-eq v0, v1, :cond_41

    .line 197
    invoke-super/range {p0 .. p6}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 198
    iget-object p1, p0, Lopenlight/co/camera/managers/focus/FocusManager$1;->this$0:Lopenlight/co/camera/managers/focus/FocusManager;

    # getter for: Lopenlight/co/camera/managers/focus/FocusManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;
    invoke-static {p1}, Lopenlight/co/camera/managers/focus/FocusManager;->access$300(Lopenlight/co/camera/managers/focus/FocusManager;)Lopenlight/co/camera/utils/Provider;

    move-result-object p1

    invoke-interface {p1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/CameraManager;->focusTriggered()V

    .line 199
    iget-object p1, p0, Lopenlight/co/camera/managers/focus/FocusManager$1;->this$0:Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    # setter for: Lopenlight/co/camera/managers/focus/FocusManager;->mFocusStartTime:J
    invoke-static {p1, p2, p3}, Lopenlight/co/camera/managers/focus/FocusManager;->access$402(Lopenlight/co/camera/managers/focus/FocusManager;J)J

    .line 200
    iget-object p1, p0, Lopenlight/co/camera/managers/focus/FocusManager$1;->this$0:Lopenlight/co/camera/managers/focus/FocusManager;

    # getter for: Lopenlight/co/camera/managers/focus/FocusManager;->mFocusListener:Lopenlight/co/camera/listener/FocusListener;
    invoke-static {p1}, Lopenlight/co/camera/managers/focus/FocusManager;->access$100(Lopenlight/co/camera/managers/focus/FocusManager;)Lopenlight/co/camera/listener/FocusListener;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 201
    iget-object p0, p0, Lopenlight/co/camera/managers/focus/FocusManager$1;->this$0:Lopenlight/co/camera/managers/focus/FocusManager;

    # getter for: Lopenlight/co/camera/managers/focus/FocusManager;->mFocusListener:Lopenlight/co/camera/listener/FocusListener;
    invoke-static {p0}, Lopenlight/co/camera/managers/focus/FocusManager;->access$100(Lopenlight/co/camera/managers/focus/FocusManager;)Lopenlight/co/camera/listener/FocusListener;

    move-result-object p0

    invoke-interface {p0}, Lopenlight/co/camera/listener/FocusListener;->focusStarted()V

    goto :goto_59

    .line 203
    :cond_37
    # getter for: Lopenlight/co/camera/managers/focus/FocusManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/focus/FocusManager;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Focus Started: Focus Listener is null"

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_59

    .line 206
    :cond_41
    # getter for: Lopenlight/co/camera/managers/focus/FocusManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/managers/focus/FocusManager;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring onCaptureStarted, current state is IDLE, frame number: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_59
    return-void
.end method
