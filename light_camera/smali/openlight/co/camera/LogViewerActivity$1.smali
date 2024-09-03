.class Lopenlight/co/camera/LogViewerActivity$1;
.super Landroid/os/Handler;
.source "LogViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/LogViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/LogViewerActivity;


# direct methods
.method constructor <init>(Lopenlight/co/camera/LogViewerActivity;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lopenlight/co/camera/LogViewerActivity$1;->this$0:Lopenlight/co/camera/LogViewerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 48
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_14

    goto :goto_13

    .line 53
    :pswitch_6
    iget-object p0, p0, Lopenlight/co/camera/LogViewerActivity$1;->this$0:Lopenlight/co/camera/LogViewerActivity;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lopenlight/co/camera/LogViewerActivity;->refresh(Z)V

    goto :goto_13

    .line 50
    :pswitch_d
    iget-object p0, p0, Lopenlight/co/camera/LogViewerActivity$1;->this$0:Lopenlight/co/camera/LogViewerActivity;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lopenlight/co/camera/LogViewerActivity;->refresh(Z)V

    :goto_13
    return-void

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
        :pswitch_6
    .end packed-switch
.end method
