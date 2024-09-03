.class Lopenlight/co/camera/view/focus/CrossHair$6;
.super Landroid/os/Handler;
.source "CrossHair.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/focus/CrossHair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/focus/CrossHair;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/focus/CrossHair;Landroid/os/Looper;)V
    .registers 3

    .line 216
    iput-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair$6;->this$0:Lopenlight/co/camera/view/focus/CrossHair;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 220
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 221
    # getter for: Lopenlight/co/camera/view/focus/CrossHair;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/view/focus/CrossHair;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_58

    goto :goto_56

    .line 240
    :pswitch_23
    iget-object p0, p0, Lopenlight/co/camera/view/focus/CrossHair$6;->this$0:Lopenlight/co/camera/view/focus/CrossHair;

    # invokes: Lopenlight/co/camera/view/focus/CrossHair;->startFadeAnimation()V
    invoke-static {p0}, Lopenlight/co/camera/view/focus/CrossHair;->access$1000(Lopenlight/co/camera/view/focus/CrossHair;)V

    goto :goto_56

    .line 236
    :pswitch_29
    iget-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair$6;->this$0:Lopenlight/co/camera/view/focus/CrossHair;

    invoke-virtual {p1}, Lopenlight/co/camera/view/focus/CrossHair;->clear()V

    .line 237
    iget-object p0, p0, Lopenlight/co/camera/view/focus/CrossHair$6;->this$0:Lopenlight/co/camera/view/focus/CrossHair;

    # invokes: Lopenlight/co/camera/view/focus/CrossHair;->removeCrossHair()V
    invoke-static {p0}, Lopenlight/co/camera/view/focus/CrossHair;->access$400(Lopenlight/co/camera/view/focus/CrossHair;)V

    goto :goto_56

    .line 232
    :pswitch_34
    iget-object p0, p0, Lopenlight/co/camera/view/focus/CrossHair$6;->this$0:Lopenlight/co/camera/view/focus/CrossHair;

    # invokes: Lopenlight/co/camera/view/focus/CrossHair;->startShakeAnimation()V
    invoke-static {p0}, Lopenlight/co/camera/view/focus/CrossHair;->access$900(Lopenlight/co/camera/view/focus/CrossHair;)V

    goto :goto_56

    .line 228
    :pswitch_3a
    iget-object p1, p0, Lopenlight/co/camera/view/focus/CrossHair$6;->this$0:Lopenlight/co/camera/view/focus/CrossHair;

    const/4 v0, 0x1

    # setter for: Lopenlight/co/camera/view/focus/CrossHair;->mFocusAchieved:Z
    invoke-static {p1, v0}, Lopenlight/co/camera/view/focus/CrossHair;->access$102(Lopenlight/co/camera/view/focus/CrossHair;Z)Z

    .line 229
    iget-object p0, p0, Lopenlight/co/camera/view/focus/CrossHair$6;->this$0:Lopenlight/co/camera/view/focus/CrossHair;

    const/4 p1, 0x0

    # invokes: Lopenlight/co/camera/view/focus/CrossHair;->startCrossHairAnimations(Lopenlight/co/camera/models/MeteringPoint;)V
    invoke-static {p0, p1}, Lopenlight/co/camera/view/focus/CrossHair;->access$800(Lopenlight/co/camera/view/focus/CrossHair;Lopenlight/co/camera/models/MeteringPoint;)V

    goto :goto_56

    .line 224
    :pswitch_47
    iget-object v0, p0, Lopenlight/co/camera/view/focus/CrossHair$6;->this$0:Lopenlight/co/camera/view/focus/CrossHair;

    const/4 v1, 0x0

    # setter for: Lopenlight/co/camera/view/focus/CrossHair;->mFocusAchieved:Z
    invoke-static {v0, v1}, Lopenlight/co/camera/view/focus/CrossHair;->access$102(Lopenlight/co/camera/view/focus/CrossHair;Z)Z

    .line 225
    iget-object p0, p0, Lopenlight/co/camera/view/focus/CrossHair$6;->this$0:Lopenlight/co/camera/view/focus/CrossHair;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lopenlight/co/camera/models/MeteringPoint;

    # invokes: Lopenlight/co/camera/view/focus/CrossHair;->startCrossHairAnimations(Lopenlight/co/camera/models/MeteringPoint;)V
    invoke-static {p0, p1}, Lopenlight/co/camera/view/focus/CrossHair;->access$800(Lopenlight/co/camera/view/focus/CrossHair;Lopenlight/co/camera/models/MeteringPoint;)V

    :goto_56
    return-void

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_47
        :pswitch_3a
        :pswitch_34
        :pswitch_29
        :pswitch_23
    .end packed-switch
.end method
