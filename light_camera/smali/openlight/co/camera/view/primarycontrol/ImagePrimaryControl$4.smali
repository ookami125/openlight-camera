.class Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$4;
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

    .line 388
    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$4;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-direct {p0, p2}, Lopenlight/co/camera/listener/OnSwipeTouchListener;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private onTapOnOpenAncillary()V
    .registers 5

    .line 400
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$4;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # getter for: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCaptureManager:Lopenlight/co/camera/managers/capture/CaptureManager;
    invoke-static {v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$1100(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Lopenlight/co/camera/managers/capture/CaptureManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/capture/CaptureManager;->isIdle()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 403
    :cond_d
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$4;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    const/4 v1, 0x0

    # invokes: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->handleViewLeftControl(Z)V
    invoke-static {v0, v1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$1200(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Z)V

    .line 404
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$4;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # invokes: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeStatusBar()V
    invoke-static {v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$1300(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V

    .line 405
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$4;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    const/4 v2, 0x0

    const/4 v3, 0x1

    # invokes: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->addOrShowAncillaryToolbar(Ljava/lang/String;Z)V
    invoke-static {v0, v2, v3}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$1400(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Ljava/lang/String;Z)V

    .line 406
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$4;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # invokes: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->disableWheelControl()V
    invoke-static {v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$1500(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V

    .line 407
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$4;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # invokes: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeLevel()V
    invoke-static {v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$1600(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V

    .line 408
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$4;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # invokes: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeDofView()V
    invoke-static {v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$1700(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V

    .line 409
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$4;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # setter for: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mIsDofEnabled:Z
    invoke-static {v0, v1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$1802(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Z)Z

    .line 410
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$4;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # getter for: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;
    invoke-static {v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$500(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->setNeedAnimationAfterCapture(Z)V

    .line 411
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$4;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # getter for: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mGalleryThumbContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$1900(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 412
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$4;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # getter for: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;
    invoke-static {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$600(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Lopenlight/co/camera/metrics/Metrics;

    move-result-object p0

    const-string v0, "event_ui_ancillary_opened"

    invoke-virtual {p0, v0}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onScrollTop()V
    .registers 1

    .line 396
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$4;->onTapOnOpenAncillary()V

    return-void
.end method

.method public onSingleTap()V
    .registers 1

    .line 391
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$4;->onTapOnOpenAncillary()V

    return-void
.end method
