.class Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "DefaultConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 20
    iget-object p2, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    # getter for: Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected:Z
    invoke-static {p2}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$000(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Z

    move-result p2

    .line 21
    iget-object v0, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    iget-object v1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    # invokes: Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected(Landroid/content/Context;)Z
    invoke-static {v1, p1}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$100(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;Landroid/content/Context;)Z

    move-result p1

    # setter for: Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected:Z
    invoke-static {v0, p1}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$002(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;Z)Z

    .line 22
    iget-object p1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    # getter for: Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected:Z
    invoke-static {p1}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$000(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Z

    move-result p1

    if-eq p2, p1, :cond_28

    .line 23
    iget-object p1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    # getter for: Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->listener:Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;
    invoke-static {p1}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$200(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    move-result-object p1

    iget-object p0, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    # getter for: Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected:Z
    invoke-static {p0}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->access$000(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;->onConnectivityChanged(Z)V

    :cond_28
    return-void
.end method
