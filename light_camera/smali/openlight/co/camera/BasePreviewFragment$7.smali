.class Lopenlight/co/camera/BasePreviewFragment$7;
.super Landroid/os/Handler;
.source "BasePreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/BasePreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/BasePreviewFragment;


# direct methods
.method constructor <init>(Lopenlight/co/camera/BasePreviewFragment;Landroid/os/Looper;)V
    .registers 3

    .line 1164
    iput-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$7;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1167
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment$7;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object v0, v0, Lopenlight/co/camera/BasePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    .line 1168
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x8

    packed-switch v1, :pswitch_data_d2

    .line 1216
    :pswitch_11
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$7;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/BasePreviewFragment;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_d1

    .line 1211
    :pswitch_18
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$7;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-eqz p1, :cond_d1

    .line 1212
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$7;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->resetThumbnailPath()V

    goto/16 :goto_d1

    .line 1204
    :pswitch_27
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$7;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mZoomWheel:Lopenlight/co/camera/view/zoom/ZoomWheel;

    if-eqz p1, :cond_d1

    .line 1205
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$7;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    invoke-virtual {p0, v2}, Lopenlight/co/camera/BasePreviewFragment;->updateZoomWheelLayout(I)V

    .line 1206
    invoke-static {}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->get()Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;

    move-result-object p0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->resetZoom(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1207
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->startRepeatingRequestInPreview()V

    goto/16 :goto_d1

    .line 1198
    :pswitch_42
    # getter for: Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/BasePreviewFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Closing All Resources and Restarting App"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$7;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;

    const-string v0, "event_camera_device_error"

    invoke-virtual {p1, v0}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;)V

    .line 1200
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$7;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    invoke-virtual {p1}, Lopenlight/co/camera/BasePreviewFragment;->clear()V

    .line 1201
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$7;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lopenlight/co/camera/utils/Util;->restartAppWithDelay(Landroid/app/Activity;)V

    goto/16 :goto_d1

    .line 1195
    :pswitch_64
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$7;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mCrossHairView:Lopenlight/co/camera/view/focus/CrossHair;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$7;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mFocusManager:Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/focus/FocusManager;->getCurrentFocusPoint()Lopenlight/co/camera/models/MeteringPoint;

    move-result-object p0

    invoke-virtual {p1, p0}, Lopenlight/co/camera/view/focus/CrossHair;->showFocusStartAtCoordinates(Lopenlight/co/camera/models/MeteringPoint;)V

    goto :goto_d1

    .line 1187
    :pswitch_74
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->isIdle()Z

    move-result p1

    if-eqz p1, :cond_95

    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$7;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/zoom/ZoomManager;->isCurrentlyZooming()Z

    move-result p1

    if-nez p1, :cond_95

    .line 1188
    # getter for: Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/BasePreviewFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Camera is idle, Post zoom, setting ae/af roi to center, and trigger AE: "

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$7;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->processZoomTrigger()V

    goto :goto_d1

    .line 1191
    :cond_95
    # getter for: Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/BasePreviewFragment;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Post Zoom, camera is not idle, so ignoring this runnable"

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d1

    .line 1183
    :pswitch_9f
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$7;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    invoke-virtual {p1}, Lopenlight/co/camera/BasePreviewFragment;->removeZoomWheelView()V

    .line 1184
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$7;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mZoomWheel:Lopenlight/co/camera/view/zoom/ZoomWheel;

    invoke-virtual {p0, v2}, Lopenlight/co/camera/view/zoom/ZoomWheel;->setVisibility(I)V

    goto :goto_d1

    .line 1180
    :pswitch_ac
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$7;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    invoke-virtual {p0}, Lopenlight/co/camera/BasePreviewFragment;->hideSystemUI()V

    goto :goto_d1

    .line 1175
    :pswitch_b2
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$7;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-eqz p1, :cond_d1

    .line 1176
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$7;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->startAnimation()V

    goto :goto_d1

    .line 1170
    :pswitch_c0
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$7;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    if-eqz p1, :cond_d1

    .line 1171
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$7;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mPrimaryControl:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$7;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-boolean p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mIsPrimaryControlEnabled:Z

    invoke-virtual {p1, p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->updateControls(Z)V

    :cond_d1
    :goto_d1
    return-void

    :pswitch_data_d2
    .packed-switch 0xc8
        :pswitch_c0
        :pswitch_b2
        :pswitch_11
        :pswitch_ac
        :pswitch_9f
        :pswitch_74
        :pswitch_64
        :pswitch_42
        :pswitch_27
        :pswitch_18
    .end packed-switch
.end method
