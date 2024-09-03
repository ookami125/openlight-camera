.class public Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;
.super Lopenlight/co/camera/listener/ScreenGestureListener;
.source "BasePreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/BasePreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PreviewGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/BasePreviewFragment;


# direct methods
.method constructor <init>(Lopenlight/co/camera/BasePreviewFragment;Landroid/content/Context;)V
    .registers 3

    .line 839
    iput-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    .line 840
    invoke-direct {p0, p2}, Lopenlight/co/camera/listener/ScreenGestureListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public areValidEvents(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 914
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lopenlight/co/camera/BasePreviewFragment;->isWithinPreview(Landroid/view/MotionEvent;Z)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    invoke-virtual {p0, p2, v1}, Lopenlight/co/camera/BasePreviewFragment;->isWithinPreview(Landroid/view/MotionEvent;Z)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 v1, 0x1

    :cond_12
    return v1
.end method

.method public onFling(Z)V
    .registers 5

    .line 845
    # getter for: Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/BasePreviewFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fling Listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object v0, v0, Lopenlight/co/camera/BasePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 847
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object v0, v0, Lopenlight/co/camera/BasePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {v0, p1}, Lopenlight/co/camera/managers/zoom/ZoomManager;->calculatePrimeLevel(Z)F

    move-result p1

    .line 848
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object v0, v0, Lopenlight/co/camera/BasePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->getZoomLevel()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_47

    .line 849
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object v0, v0, Lopenlight/co/camera/BasePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    iget-object v1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object v1, v1, Lopenlight/co/camera/BasePreviewFragment;->mZoomWheel:Lopenlight/co/camera/view/zoom/ZoomWheel;

    invoke-virtual {v0, p1, v1}, Lopenlight/co/camera/managers/zoom/ZoomManager;->zoomToNextPrime(FLopenlight/co/camera/view/zoom/ZoomWheel;)V

    .line 851
    :cond_47
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    invoke-virtual {p1}, Lopenlight/co/camera/BasePreviewFragment;->removeZoomWheelView()V

    .line 852
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    invoke-virtual {p1}, Lopenlight/co/camera/BasePreviewFragment;->doFocusPostZoom()V

    .line 853
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    invoke-virtual {p1}, Lopenlight/co/camera/view/ftu/FtuHelper;->isFtuPlaying()Z

    move-result p1

    if-eqz p1, :cond_64

    .line 854
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    sget-object p1, Lopenlight/co/camera/enums/FtuView;->PRIME_SCREEN:Lopenlight/co/camera/enums/FtuView;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/ftu/FtuHelper;->onUserActionComplete(Lopenlight/co/camera/enums/FtuView;)V

    :cond_64
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4

    .line 971
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lopenlight/co/camera/BasePreviewFragment;->isWithinPreview(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 973
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->processScreenLongPress(FF)V

    :cond_1c
    return-void
.end method

.method public onScroll(FFZ)V
    .registers 6

    .line 893
    # getter for: Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/BasePreviewFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScroll "

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object v0, v0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-eqz v0, :cond_1a

    .line 895
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object v0, v0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    const v1, 0x3ed2f1aa    # 0.412f

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->setScrollDistance(F)V

    .line 898
    :cond_1a
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {p1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/CameraManager;->isIdle()Z

    move-result p1

    if-eqz p1, :cond_6c

    .line 899
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/zoom/ZoomManager;->isCurrentlyZooming()Z

    move-result p1

    if-nez p1, :cond_40

    .line 900
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    sget-object v0, Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;->DISPLAY:Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;

    invoke-virtual {p1, v0}, Lopenlight/co/camera/BasePreviewFragment;->showZoomWheelView(Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;)V

    .line 901
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    invoke-virtual {p1}, Lopenlight/co/camera/BasePreviewFragment;->removeFocusCrossHair()V

    :cond_40
    if-eqz p3, :cond_6c

    .line 905
    # getter for: Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/BasePreviewFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "scaleRatio: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {p1, p2}, Lopenlight/co/camera/managers/zoom/ZoomManager;->setZoom(F)V

    .line 907
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomWheel:Lopenlight/co/camera/view/zoom/ZoomWheel;

    invoke-virtual {p1, p0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->performZoom(Lopenlight/co/camera/view/zoom/ZoomWheel;)V

    :cond_6c
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 862
    # getter for: Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/BasePreviewFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSingleTapUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object v0, v0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_55

    .line 866
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object v0, v0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->setTappedPoint(FF)V

    .line 867
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object v0, v0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->isAncillaryToolbarVisible()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 868
    # getter for: Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/BasePreviewFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Image ancillary toolbar is open, closing it"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->closeAncillaryToolbar()V

    .line 870
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-boolean p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mIsPrimaryControlEnabled:Z

    invoke-virtual {p1, v2, p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->manageControlViews(ZZ)V

    return v1

    .line 873
    :cond_55
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object v0, v0, Lopenlight/co/camera/BasePreviewFragment;->mVideoController:Lopenlight/co/camera/VideoController;

    if-eqz v0, :cond_80

    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object v0, v0, Lopenlight/co/camera/BasePreviewFragment;->mVideoController:Lopenlight/co/camera/VideoController;

    invoke-virtual {v0}, Lopenlight/co/camera/VideoController;->isAncillaryToolbarVisible()Z

    move-result v0

    if-nez v0, :cond_6f

    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object v0, v0, Lopenlight/co/camera/BasePreviewFragment;->mVideoController:Lopenlight/co/camera/VideoController;

    .line 874
    invoke-virtual {v0}, Lopenlight/co/camera/VideoController;->isModeWheelVisible()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 875
    :cond_6f
    # getter for: Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/BasePreviewFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Video ancillary toolbar is open, closing it"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mVideoController:Lopenlight/co/camera/VideoController;

    invoke-virtual {p0, v2}, Lopenlight/co/camera/VideoController;->updateToolbarsVisibility(Z)V

    return v1

    .line 880
    :cond_80
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    invoke-virtual {v0, p1, v2}, Lopenlight/co/camera/BasePreviewFragment;->isWithinPreview(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 881
    # getter for: Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/BasePreviewFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AF] Tap to focus at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " with focal length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object v3, v3, Lopenlight/co/camera/BasePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    .line 883
    invoke-virtual {v3}, Lopenlight/co/camera/managers/zoom/ZoomManager;->getFocalLength()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 881
    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->processUserTap(FF)V

    return v2

    :cond_d0
    return v1
.end method

.method public onTouch(Landroid/view/MotionEvent;FZ)Z
    .registers 7

    .line 922
    invoke-static {}, Lopenlight/co/camera/managers/capture/CaptureManager;->get()Lopenlight/co/camera/managers/capture/CaptureManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/capture/CaptureManager;->isIdle()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 926
    :cond_c
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object v0, v0, Lopenlight/co/camera/BasePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->isCurrentlyZooming()Z

    move-result v0

    .line 927
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_b6

    goto/16 :goto_b4

    .line 935
    :pswitch_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_b4

    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mAutoExposureManager:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    .line 936
    invoke-virtual {p1}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->isMetering()Z

    move-result p1

    if-nez p1, :cond_b4

    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mFocusManager:Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/focus/FocusManager;->isFocusing()Z

    move-result p1

    if-nez p1, :cond_b4

    if-eqz v0, :cond_4f

    if-eqz p3, :cond_4f

    .line 938
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {p1, p2}, Lopenlight/co/camera/managers/zoom/ZoomManager;->setZoom(F)V

    .line 939
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomWheel:Lopenlight/co/camera/view/zoom/ZoomWheel;

    invoke-virtual {p1, p0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->performZoom(Lopenlight/co/camera/view/zoom/ZoomWheel;)V

    goto :goto_b4

    :cond_4f
    if-nez v0, :cond_b4

    .line 941
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    sget-object p2, Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;->DISPLAY:Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;

    invoke-virtual {p1, p2}, Lopenlight/co/camera/BasePreviewFragment;->showZoomWheelView(Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;)V

    .line 942
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->removeFocusCrossHair()V

    goto :goto_b4

    :pswitch_5e
    if-eqz v0, :cond_7d

    .line 948
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    invoke-virtual {p1}, Lopenlight/co/camera/view/ftu/FtuHelper;->isFtuPlaying()Z

    move-result p1

    if-nez p1, :cond_7d

    .line 951
    # getter for: Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/BasePreviewFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Zoom Touch Up Event"

    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    invoke-virtual {p1}, Lopenlight/co/camera/BasePreviewFragment;->removeZoomWheelView()V

    .line 953
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    invoke-virtual {p1}, Lopenlight/co/camera/BasePreviewFragment;->doFocusPostZoom()V

    :cond_7d
    if-eqz v0, :cond_a2

    .line 955
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    .line 956
    invoke-virtual {p1}, Lopenlight/co/camera/managers/zoom/ZoomManager;->getZoomType()Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    move-result-object p1

    sget-object p2, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;->SCROLL:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    invoke-virtual {p1, p2}, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a2

    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    .line 957
    invoke-virtual {p1}, Lopenlight/co/camera/view/ftu/FtuHelper;->isFtuPlaying()Z

    move-result p1

    if-eqz p1, :cond_a2

    .line 958
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    sget-object p2, Lopenlight/co/camera/enums/FtuView;->ZOOM_SCREEN:Lopenlight/co/camera/enums/FtuView;

    invoke-virtual {p1, p2}, Lopenlight/co/camera/view/ftu/FtuHelper;->onUserActionComplete(Lopenlight/co/camera/enums/FtuView;)V

    .line 960
    :cond_a2
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-eqz p1, :cond_b4

    .line 961
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->touchUp()V

    goto :goto_b4

    .line 930
    :pswitch_b0
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iput-boolean v1, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomTriggersFocus:Z

    :cond_b4
    :goto_b4
    const/4 p0, 0x1

    return p0

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_b0
        :pswitch_5e
        :pswitch_1d
    .end packed-switch
.end method
