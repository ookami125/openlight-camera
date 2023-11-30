.class Lopenlight/co/camera/view/face/FaceViewHelper$1;
.super Landroid/os/Handler;
.source "FaceViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/face/FaceViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/face/FaceViewHelper;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/face/FaceViewHelper;Landroid/os/Looper;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lopenlight/co/camera/view/face/FaceViewHelper$1;->this$0:Lopenlight/co/camera/view/face/FaceViewHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 57
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 75
    :pswitch_0
    iget-object p1, p0, Lopenlight/co/camera/view/face/FaceViewHelper$1;->this$0:Lopenlight/co/camera/view/face/FaceViewHelper;

    iget-object v0, p0, Lopenlight/co/camera/view/face/FaceViewHelper$1;->this$0:Lopenlight/co/camera/view/face/FaceViewHelper;

    invoke-static {v0}, Lopenlight/co/camera/view/face/FaceViewHelper;->access$400(Lopenlight/co/camera/view/face/FaceViewHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f090071

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/face/FaceView;

    invoke-static {p1, v0}, Lopenlight/co/camera/view/face/FaceViewHelper;->access$302(Lopenlight/co/camera/view/face/FaceViewHelper;Lopenlight/co/camera/view/face/FaceView;)Lopenlight/co/camera/view/face/FaceView;

    .line 76
    iget-object p0, p0, Lopenlight/co/camera/view/face/FaceViewHelper$1;->this$0:Lopenlight/co/camera/view/face/FaceViewHelper;

    invoke-static {p0}, Lopenlight/co/camera/view/face/FaceViewHelper;->access$300(Lopenlight/co/camera/view/face/FaceViewHelper;)Lopenlight/co/camera/view/face/FaceView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/face/FaceView;->setVisibility(I)V

    goto :goto_0

    .line 71
    :pswitch_1
    iget-object p0, p0, Lopenlight/co/camera/view/face/FaceViewHelper$1;->this$0:Lopenlight/co/camera/view/face/FaceViewHelper;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lopenlight/co/camera/view/face/FaceViewHelper;->access$202(Lopenlight/co/camera/view/face/FaceViewHelper;Z)Z

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x65

    .line 61
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/face/FaceViewHelper$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 62
    invoke-static {}, Lopenlight/co/camera/view/face/FaceViewHelper;->access$000()J

    move-result-wide v0

    .line 61
    invoke-virtual {p0, p1, v0, v1}, Lopenlight/co/camera/view/face/FaceViewHelper$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 64
    iget-object p0, p0, Lopenlight/co/camera/view/face/FaceViewHelper$1;->this$0:Lopenlight/co/camera/view/face/FaceViewHelper;

    invoke-static {p0}, Lopenlight/co/camera/view/face/FaceViewHelper;->access$100(Lopenlight/co/camera/view/face/FaceViewHelper;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
