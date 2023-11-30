.class Lopenlight/co/camera/utils/UsbMgr$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/utils/UsbMgr;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/utils/UsbMgr;


# direct methods
.method constructor <init>(Lopenlight/co/camera/utils/UsbMgr;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lopenlight/co/camera/utils/UsbMgr$1;->this$0:Lopenlight/co/camera/utils/UsbMgr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "connected"

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 95
    iget-object p2, p0, Lopenlight/co/camera/utils/UsbMgr$1;->this$0:Lopenlight/co/camera/utils/UsbMgr;

    invoke-static {p2}, Lopenlight/co/camera/utils/UsbMgr;->access$000(Lopenlight/co/camera/utils/UsbMgr;)Z

    move-result p2

    if-eq p1, p2, :cond_0

    .line 96
    iget-object p2, p0, Lopenlight/co/camera/utils/UsbMgr$1;->this$0:Lopenlight/co/camera/utils/UsbMgr;

    invoke-static {p2, p1}, Lopenlight/co/camera/utils/UsbMgr;->access$002(Lopenlight/co/camera/utils/UsbMgr;Z)Z

    .line 97
    iget-object p0, p0, Lopenlight/co/camera/utils/UsbMgr$1;->this$0:Lopenlight/co/camera/utils/UsbMgr;

    invoke-static {p0}, Lopenlight/co/camera/utils/UsbMgr;->access$100(Lopenlight/co/camera/utils/UsbMgr;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lopenlight/co/camera/utils/UsbMgr$OnUsbConnectedListener;

    .line 99
    :try_start_0
    invoke-interface {p2, p1}, Lopenlight/co/camera/utils/UsbMgr$OnUsbConnectedListener;->onUsbConnected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 101
    invoke-static {}, Lopenlight/co/camera/utils/UsbMgr;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception in listener"

    invoke-static {v0, v1, p2}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method
