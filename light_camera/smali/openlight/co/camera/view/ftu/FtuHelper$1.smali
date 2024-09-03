.class Lopenlight/co/camera/view/ftu/FtuHelper$1;
.super Ljava/lang/Object;
.source "FtuHelper.java"

# interfaces
.implements Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/ftu/FtuHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/ftu/FtuHelper;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/ftu/FtuHelper;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lopenlight/co/camera/view/ftu/FtuHelper$1;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentViewChanged(Lopenlight/co/camera/enums/FtuView;)V
    .registers 3

    .line 134
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper$1;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    # getter for: Lopenlight/co/camera/view/ftu/FtuHelper;->mListener:Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;
    invoke-static {v0}, Lopenlight/co/camera/view/ftu/FtuHelper;->access$000(Lopenlight/co/camera/view/ftu/FtuHelper;)Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 135
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper$1;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    # getter for: Lopenlight/co/camera/view/ftu/FtuHelper;->mListener:Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;
    invoke-static {p0}, Lopenlight/co/camera/view/ftu/FtuHelper;->access$000(Lopenlight/co/camera/view/ftu/FtuHelper;)Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;->ftuUpdateCurrentView(Lopenlight/co/camera/enums/FtuView;)V

    :cond_11
    return-void
.end method

.method public onIncorrectUserResponse(Lopenlight/co/camera/enums/FtuView;)V
    .registers 3

    .line 91
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper$1;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    # getter for: Lopenlight/co/camera/view/ftu/FtuHelper;->mListener:Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;
    invoke-static {v0}, Lopenlight/co/camera/view/ftu/FtuHelper;->access$000(Lopenlight/co/camera/view/ftu/FtuHelper;)Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 92
    :cond_9
    sget-object v0, Lopenlight/co/camera/view/ftu/FtuHelper$3;->$SwitchMap$light$co$camera$enums$FtuView:[I

    invoke-virtual {p1}, Lopenlight/co/camera/enums/FtuView;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_3a

    goto :goto_39

    .line 97
    :pswitch_15
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/FtuHelper$1;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    # getter for: Lopenlight/co/camera/view/ftu/FtuHelper;->mListener:Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;
    invoke-static {p1}, Lopenlight/co/camera/view/ftu/FtuHelper;->access$000(Lopenlight/co/camera/view/ftu/FtuHelper;)Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;

    move-result-object p1

    invoke-interface {p1}, Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;->ftuRemovePrimaryControl()V

    .line 98
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/FtuHelper$1;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    # getter for: Lopenlight/co/camera/view/ftu/FtuHelper;->mImageFtuController:Lopenlight/co/camera/view/ftu/ImageFtuController;
    invoke-static {p1}, Lopenlight/co/camera/view/ftu/FtuHelper;->access$100(Lopenlight/co/camera/view/ftu/FtuHelper;)Lopenlight/co/camera/view/ftu/ImageFtuController;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 99
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper$1;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    # getter for: Lopenlight/co/camera/view/ftu/FtuHelper;->mImageFtuController:Lopenlight/co/camera/view/ftu/ImageFtuController;
    invoke-static {p0}, Lopenlight/co/camera/view/ftu/FtuHelper;->access$100(Lopenlight/co/camera/view/ftu/FtuHelper;)Lopenlight/co/camera/view/ftu/ImageFtuController;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuController;->onWheelScrollComplete()V

    goto :goto_39

    .line 94
    :pswitch_30
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper$1;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    # getter for: Lopenlight/co/camera/view/ftu/FtuHelper;->mListener:Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;
    invoke-static {p0}, Lopenlight/co/camera/view/ftu/FtuHelper;->access$000(Lopenlight/co/camera/view/ftu/FtuHelper;)Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;

    move-result-object p0

    invoke-interface {p0}, Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;->ftuRemoveZoomView()V

    :cond_39
    :goto_39
    return-void

    :pswitch_data_3a
    .packed-switch 0x2
        :pswitch_30
        :pswitch_15
    .end packed-switch
.end method

.method public onPlayAllComplete()V
    .registers 2

    .line 107
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper$1;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    # invokes: Lopenlight/co/camera/view/ftu/FtuHelper;->closeFtuController()V
    invoke-static {v0}, Lopenlight/co/camera/view/ftu/FtuHelper;->access$200(Lopenlight/co/camera/view/ftu/FtuHelper;)V

    .line 108
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper$1;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    # invokes: Lopenlight/co/camera/view/ftu/FtuHelper;->updateDraggerModel()V
    invoke-static {v0}, Lopenlight/co/camera/view/ftu/FtuHelper;->access$300(Lopenlight/co/camera/view/ftu/FtuHelper;)V

    .line 109
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper$1;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    # getter for: Lopenlight/co/camera/view/ftu/FtuHelper;->mListener:Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;
    invoke-static {v0}, Lopenlight/co/camera/view/ftu/FtuHelper;->access$000(Lopenlight/co/camera/view/ftu/FtuHelper;)Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;

    move-result-object v0

    invoke-interface {v0}, Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;->ftuUpdatePrimaryControlOnComplete()V

    .line 110
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper$1;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    # invokes: Lopenlight/co/camera/view/ftu/FtuHelper;->updateFtuPlayAllPreference()V
    invoke-static {v0}, Lopenlight/co/camera/view/ftu/FtuHelper;->access$400(Lopenlight/co/camera/view/ftu/FtuHelper;)V

    .line 111
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper$1;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    # getter for: Lopenlight/co/camera/view/ftu/FtuHelper;->mListener:Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;
    invoke-static {p0}, Lopenlight/co/camera/view/ftu/FtuHelper;->access$000(Lopenlight/co/camera/view/ftu/FtuHelper;)Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;

    move-result-object p0

    invoke-interface {p0}, Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;->ftuResetZoomOnComplete()V

    return-void
.end method

.method public onSingleRunComplete(Lopenlight/co/camera/enums/FtuView;)V
    .registers 3

    .line 116
    sget-object v0, Lopenlight/co/camera/enums/FtuView;->FOCUS_FAILED:Lopenlight/co/camera/enums/FtuView;

    if-ne p1, v0, :cond_f

    .line 117
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/FtuHelper$1;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    # invokes: Lopenlight/co/camera/view/ftu/FtuHelper;->updateFtuAlertPreference()V
    invoke-static {p1}, Lopenlight/co/camera/view/ftu/FtuHelper;->access$500(Lopenlight/co/camera/view/ftu/FtuHelper;)V

    .line 118
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper$1;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    # invokes: Lopenlight/co/camera/view/ftu/FtuHelper;->closeFtuAlertController()V
    invoke-static {p0}, Lopenlight/co/camera/view/ftu/FtuHelper;->access$600(Lopenlight/co/camera/view/ftu/FtuHelper;)V

    goto :goto_2e

    .line 124
    :cond_f
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper$1;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    # getter for: Lopenlight/co/camera/view/ftu/FtuHelper;->mListener:Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;
    invoke-static {v0}, Lopenlight/co/camera/view/ftu/FtuHelper;->access$000(Lopenlight/co/camera/view/ftu/FtuHelper;)Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;

    move-result-object v0

    if-eqz v0, :cond_29

    sget-object v0, Lopenlight/co/camera/enums/FtuView;->VIDEO_SCREEN_FINISH:Lopenlight/co/camera/enums/FtuView;

    if-ne p1, v0, :cond_29

    .line 125
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/FtuHelper$1;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    # invokes: Lopenlight/co/camera/view/ftu/FtuHelper;->updateVideoFtuVideoPreference()V
    invoke-static {p1}, Lopenlight/co/camera/view/ftu/FtuHelper;->access$700(Lopenlight/co/camera/view/ftu/FtuHelper;)V

    .line 126
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/FtuHelper$1;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    # getter for: Lopenlight/co/camera/view/ftu/FtuHelper;->mListener:Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;
    invoke-static {p1}, Lopenlight/co/camera/view/ftu/FtuHelper;->access$000(Lopenlight/co/camera/view/ftu/FtuHelper;)Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;

    move-result-object p1

    invoke-interface {p1}, Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;->ftuUpdatePrimaryControl()V

    .line 128
    :cond_29
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper$1;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    # invokes: Lopenlight/co/camera/view/ftu/FtuHelper;->closeFtuController()V
    invoke-static {p0}, Lopenlight/co/camera/view/ftu/FtuHelper;->access$200(Lopenlight/co/camera/view/ftu/FtuHelper;)V

    :goto_2e
    return-void
.end method

.method public onUserActionRequired(Lopenlight/co/camera/enums/FtuView;)V
    .registers 4

    .line 75
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper$1;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    # getter for: Lopenlight/co/camera/view/ftu/FtuHelper;->mListener:Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;
    invoke-static {v0}, Lopenlight/co/camera/view/ftu/FtuHelper;->access$000(Lopenlight/co/camera/view/ftu/FtuHelper;)Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 76
    :cond_9
    sget-object v0, Lopenlight/co/camera/view/ftu/FtuHelper$3;->$SwitchMap$light$co$camera$enums$FtuView:[I

    invoke-virtual {p1}, Lopenlight/co/camera/enums/FtuView;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    goto :goto_32

    .line 83
    :pswitch_15
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper$1;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    # getter for: Lopenlight/co/camera/view/ftu/FtuHelper;->mListener:Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;
    invoke-static {v0}, Lopenlight/co/camera/view/ftu/FtuHelper;->access$000(Lopenlight/co/camera/view/ftu/FtuHelper;)Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;

    move-result-object v0

    invoke-interface {v0}, Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;->ftuUpdatePrimaryControl()V

    .line 84
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper$1;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/ftu/FtuHelper;->onWaitingUserAction(Lopenlight/co/camera/enums/FtuView;)V

    goto :goto_32

    .line 79
    :pswitch_24
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/FtuHelper$1;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    # getter for: Lopenlight/co/camera/view/ftu/FtuHelper;->mListener:Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;
    invoke-static {v0}, Lopenlight/co/camera/view/ftu/FtuHelper;->access$000(Lopenlight/co/camera/view/ftu/FtuHelper;)Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;

    move-result-object v0

    invoke-interface {v0}, Lopenlight/co/camera/view/ftu/FtuHelper$FtuHelperListener;->ftuShowZoomView()V

    .line 80
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/FtuHelper$1;->this$0:Lopenlight/co/camera/view/ftu/FtuHelper;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/ftu/FtuHelper;->onWaitingUserAction(Lopenlight/co/camera/enums/FtuView;)V

    :goto_32
    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_24
        :pswitch_24
        :pswitch_15
    .end packed-switch
.end method
