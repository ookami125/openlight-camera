.class Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$1;
.super Landroid/os/Handler;
.source "ImagePrimaryControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Landroid/os/Looper;)V
    .registers 3

    .line 232
    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$1;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 235
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_30

    goto :goto_2e

    .line 247
    :pswitch_6
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$1;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->stopAnimation()V

    .line 248
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$1;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # invokes: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->showGalleryThumbTimeout()V
    invoke-static {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$400(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V

    goto :goto_2e

    .line 244
    :pswitch_11
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$1;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # invokes: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeConfirmation()V
    invoke-static {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$300(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V

    goto :goto_2e

    .line 240
    :pswitch_17
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$1;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$1;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # getter for: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCurrentWheelView:Landroid/view/View;
    invoke-static {v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$100(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Landroid/view/View;

    move-result-object v0

    # invokes: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->removeWheelView(Landroid/view/View;)V
    invoke-static {p1, v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$200(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Landroid/view/View;)V

    .line 241
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$1;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    const/4 p1, 0x0

    # setter for: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCurrentWheelView:Landroid/view/View;
    invoke-static {p0, p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$102(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Landroid/view/View;)Landroid/view/View;

    goto :goto_2e

    .line 237
    :pswitch_29
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$1;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # invokes: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->launchVideoFragment()V
    invoke-static {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$000(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V

    :goto_2e
    return-void

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_29
        :pswitch_17
        :pswitch_11
        :pswitch_6
    .end packed-switch
.end method
