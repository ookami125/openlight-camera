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
    .registers 3

    .line 54
    iput-object p1, p0, Lopenlight/co/camera/view/face/FaceViewHelper$1;->this$0:Lopenlight/co/camera/view/face/FaceViewHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 57
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_40

    goto :goto_3e

    .line 75
    :pswitch_6
    iget-object p1, p0, Lopenlight/co/camera/view/face/FaceViewHelper$1;->this$0:Lopenlight/co/camera/view/face/FaceViewHelper;

    iget-object v0, p0, Lopenlight/co/camera/view/face/FaceViewHelper$1;->this$0:Lopenlight/co/camera/view/face/FaceViewHelper;

    # getter for: Lopenlight/co/camera/view/face/FaceViewHelper;->mContainerLayout:Landroid/view/ViewGroup;
    invoke-static {v0}, Lopenlight/co/camera/view/face/FaceViewHelper;->access$400(Lopenlight/co/camera/view/face/FaceViewHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f090071

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/face/FaceView;

    # setter for: Lopenlight/co/camera/view/face/FaceViewHelper;->mFaceView:Lopenlight/co/camera/view/face/FaceView;
    invoke-static {p1, v0}, Lopenlight/co/camera/view/face/FaceViewHelper;->access$302(Lopenlight/co/camera/view/face/FaceViewHelper;Lopenlight/co/camera/view/face/FaceView;)Lopenlight/co/camera/view/face/FaceView;

    .line 76
    iget-object p0, p0, Lopenlight/co/camera/view/face/FaceViewHelper$1;->this$0:Lopenlight/co/camera/view/face/FaceViewHelper;

    # getter for: Lopenlight/co/camera/view/face/FaceViewHelper;->mFaceView:Lopenlight/co/camera/view/face/FaceView;
    invoke-static {p0}, Lopenlight/co/camera/view/face/FaceViewHelper;->access$300(Lopenlight/co/camera/view/face/FaceViewHelper;)Lopenlight/co/camera/view/face/FaceView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/face/FaceView;->setVisibility(I)V

    goto :goto_3e

    .line 71
    :pswitch_25
    iget-object p0, p0, Lopenlight/co/camera/view/face/FaceViewHelper$1;->this$0:Lopenlight/co/camera/view/face/FaceViewHelper;

    const/4 p1, 0x1

    # setter for: Lopenlight/co/camera/view/face/FaceViewHelper;->mProcessAndDrawFace:Z
    invoke-static {p0, p1}, Lopenlight/co/camera/view/face/FaceViewHelper;->access$202(Lopenlight/co/camera/view/face/FaceViewHelper;Z)Z

    goto :goto_3e

    :pswitch_2c
    const/16 p1, 0x65

    .line 61
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/face/FaceViewHelper$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 62
    # getter for: Lopenlight/co/camera/view/face/FaceViewHelper;->FACE_UI_UPDATE_REFRESH_PERIOD:J
    invoke-static {}, Lopenlight/co/camera/view/face/FaceViewHelper;->access$000()J

    move-result-wide v0

    .line 61
    invoke-virtual {p0, p1, v0, v1}, Lopenlight/co/camera/view/face/FaceViewHelper$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 64
    iget-object p0, p0, Lopenlight/co/camera/view/face/FaceViewHelper$1;->this$0:Lopenlight/co/camera/view/face/FaceViewHelper;

    # invokes: Lopenlight/co/camera/view/face/FaceViewHelper;->updateFaces()V
    invoke-static {p0}, Lopenlight/co/camera/view/face/FaceViewHelper;->access$100(Lopenlight/co/camera/view/face/FaceViewHelper;)V

    :goto_3e
    return-void

    nop

    :pswitch_data_40
    .packed-switch 0x64
        :pswitch_2c
        :pswitch_25
        :pswitch_6
    .end packed-switch
.end method
