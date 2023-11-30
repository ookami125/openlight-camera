.class Lopenlight/co/camera/view/dragger/DraggerModel$1;
.super Landroid/os/Handler;
.source "DraggerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/dragger/DraggerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/dragger/DraggerModel;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/dragger/DraggerModel;Landroid/os/Looper;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lopenlight/co/camera/view/dragger/DraggerModel$1;->this$0:Lopenlight/co/camera/view/dragger/DraggerModel;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 108
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lopenlight/co/camera/CameraMode;->forIndex(I)Lopenlight/co/camera/CameraMode;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/CameraMode;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {}, Lopenlight/co/camera/view/dragger/DraggerModel;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mode saved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lopenlight/co/camera/view/dragger/DraggerModel;->access$000()Lopenlight/co/lib/content/Prefs;

    move-result-object v1

    const-string v2, "camera_mode_setting"

    invoke-interface {v1, v2, v0}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :pswitch_1
    invoke-static {}, Lopenlight/co/camera/view/dragger/DraggerModel;->access$000()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    const-string v1, "shutter_index"

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 102
    :pswitch_2
    invoke-static {}, Lopenlight/co/camera/view/dragger/DraggerModel;->access$000()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    const-string v1, "iso_index"

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 99
    :pswitch_3
    invoke-static {}, Lopenlight/co/camera/view/dragger/DraggerModel;->access$000()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    const-string v1, "ex_index"

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;I)V

    .line 113
    :goto_0
    iget-object v0, p0, Lopenlight/co/camera/view/dragger/DraggerModel$1;->this$0:Lopenlight/co/camera/view/dragger/DraggerModel;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, v0, Lopenlight/co/camera/view/dragger/DraggerModel;->mPreviousCalculatedIndex:I

    .line 114
    iget-object p0, p0, Lopenlight/co/camera/view/dragger/DraggerModel$1;->this$0:Lopenlight/co/camera/view/dragger/DraggerModel;

    invoke-virtual {p0}, Lopenlight/co/camera/view/dragger/DraggerModel;->updateHudInfoInPreview()V

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
