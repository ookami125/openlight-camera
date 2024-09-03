.class Lopenlight/co/camera/view/ftu/ImageFtuBaseController$1;
.super Landroid/os/Handler;
.source "ImageFtuBaseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/ftu/ImageFtuBaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/ftu/ImageFtuBaseController;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/ftu/ImageFtuBaseController;Landroid/os/Looper;)V
    .registers 3

    .line 78
    iput-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$1;->this$0:Lopenlight/co/camera/view/ftu/ImageFtuBaseController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 81
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_4a

    goto :goto_49

    .line 96
    :pswitch_6
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$1;->this$0:Lopenlight/co/camera/view/ftu/ImageFtuBaseController;

    # getter for: Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mListener:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;
    invoke-static {p1}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->access$000(Lopenlight/co/camera/view/ftu/ImageFtuBaseController;)Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 97
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$1;->this$0:Lopenlight/co/camera/view/ftu/ImageFtuBaseController;

    # getter for: Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mListener:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;
    invoke-static {p0}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->access$000(Lopenlight/co/camera/view/ftu/ImageFtuBaseController;)Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;

    move-result-object p0

    sget-object p1, Lopenlight/co/camera/enums/FtuView;->FOCUS_FAILED:Lopenlight/co/camera/enums/FtuView;

    invoke-interface {p0, p1}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;->onSingleRunComplete(Lopenlight/co/camera/enums/FtuView;)V

    goto :goto_49

    .line 83
    :pswitch_1a
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$1;->this$0:Lopenlight/co/camera/view/ftu/ImageFtuBaseController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->show(Z)V

    .line 84
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$1;->this$0:Lopenlight/co/camera/view/ftu/ImageFtuBaseController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->updateVisibilityOfView(Z)V

    goto :goto_49

    .line 87
    :pswitch_27
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$1;->this$0:Lopenlight/co/camera/view/ftu/ImageFtuBaseController;

    # getter for: Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mListener:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;
    invoke-static {p1}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->access$000(Lopenlight/co/camera/view/ftu/ImageFtuBaseController;)Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 88
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$1;->this$0:Lopenlight/co/camera/view/ftu/ImageFtuBaseController;

    # getter for: Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mListener:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;
    invoke-static {p1}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->access$000(Lopenlight/co/camera/view/ftu/ImageFtuBaseController;)Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;

    move-result-object p1

    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$1;->this$0:Lopenlight/co/camera/view/ftu/ImageFtuBaseController;

    iget-object v0, v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    invoke-interface {p1, v0}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;->onIncorrectUserResponse(Lopenlight/co/camera/enums/FtuView;)V

    .line 89
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$1;->this$0:Lopenlight/co/camera/view/ftu/ImageFtuBaseController;

    iget-object p1, p1, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    sget-object v0, Lopenlight/co/camera/enums/FtuView;->PRIME_SCREEN:Lopenlight/co/camera/enums/FtuView;

    if-ne p1, v0, :cond_49

    .line 90
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$1;->this$0:Lopenlight/co/camera/view/ftu/ImageFtuBaseController;

    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->onIncorrectResponseInPrime()V

    :cond_49
    :goto_49
    return-void

    :pswitch_data_4a
    .packed-switch 0xc9
        :pswitch_27
        :pswitch_1a
        :pswitch_6
    .end packed-switch
.end method
