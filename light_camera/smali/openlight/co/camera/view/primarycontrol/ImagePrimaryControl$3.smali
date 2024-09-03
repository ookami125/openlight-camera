.class Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$3;
.super Lopenlight/co/camera/listener/OnSwipeTouchListener;
.source "ImagePrimaryControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->initChildView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Landroid/content/Context;)V
    .registers 3

    .line 368
    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$3;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-direct {p0, p2}, Lopenlight/co/camera/listener/OnSwipeTouchListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLongPressing()V
    .registers 1

    return-void
.end method

.method public onSingleTap()V
    .registers 3

    .line 371
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$3;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # getter for: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCaptureListener:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$CaptureListener;
    invoke-static {v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$1000(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$CaptureListener;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 372
    # getter for: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Soft Key capture"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$3;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # getter for: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCaptureListener:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$CaptureListener;
    invoke-static {v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$1000(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$CaptureListener;

    move-result-object v0

    invoke-interface {v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$CaptureListener;->captureStillPicture()V

    .line 375
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$3;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # getter for: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;
    invoke-static {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$600(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Lopenlight/co/camera/metrics/Metrics;

    move-result-object p0

    const-string v0, "event_capture_soft_key_pressed"

    invoke-virtual {p0, v0}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;)V

    :cond_25
    return-void
.end method
