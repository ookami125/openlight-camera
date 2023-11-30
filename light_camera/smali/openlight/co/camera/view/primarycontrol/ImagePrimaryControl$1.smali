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
    .locals 0

    .line 232
    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$1;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 235
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 247
    :pswitch_0
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$1;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-virtual {p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->stopAnimation()V

    .line 248
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$1;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-static {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$400(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V

    goto :goto_0

    .line 244
    :pswitch_1
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$1;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-static {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$300(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V

    goto :goto_0

    .line 240
    :pswitch_2
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$1;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$1;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-static {v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$100(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$200(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Landroid/view/View;)V

    .line 241
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$1;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$102(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Landroid/view/View;)Landroid/view/View;

    goto :goto_0

    .line 237
    :pswitch_3
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$1;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-static {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$000(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
