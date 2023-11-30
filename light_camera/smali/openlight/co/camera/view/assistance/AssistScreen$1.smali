.class Lopenlight/co/camera/view/assistance/AssistScreen$1;
.super Landroid/os/Handler;
.source "AssistScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/assistance/AssistScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/assistance/AssistScreen;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/assistance/AssistScreen;Landroid/os/Looper;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lopenlight/co/camera/view/assistance/AssistScreen$1;->this$0:Lopenlight/co/camera/view/assistance/AssistScreen;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 59
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Lopenlight/co/camera/view/assistance/AssistScreen;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Remove warning assist view text"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lopenlight/co/camera/view/assistance/AssistScreen$1;->this$0:Lopenlight/co/camera/view/assistance/AssistScreen;

    iget-object p0, p0, Lopenlight/co/camera/view/assistance/AssistScreen$1;->this$0:Lopenlight/co/camera/view/assistance/AssistScreen;

    invoke-static {p0}, Lopenlight/co/camera/view/assistance/AssistScreen;->access$100(Lopenlight/co/camera/view/assistance/AssistScreen;)Landroid/widget/TextView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lopenlight/co/camera/view/assistance/AssistScreen;->access$200(Lopenlight/co/camera/view/assistance/AssistScreen;Landroid/view/View;Z)V

    :goto_0
    return-void
.end method
