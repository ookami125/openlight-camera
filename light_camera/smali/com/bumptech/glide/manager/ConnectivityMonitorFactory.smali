.class public Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;
.super Ljava/lang/Object;
.source "ConnectivityMonitorFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lcom/bumptech/glide/manager/ConnectivityMonitor;
    .registers 3

    const-string p0, "android.permission.ACCESS_NETWORK_STATE"

    .line 13
    invoke-virtual {p1, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    if-eqz p0, :cond_13

    .line 16
    new-instance p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;-><init>(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)V

    return-object p0

    .line 18
    :cond_13
    new-instance p0, Lcom/bumptech/glide/manager/NullConnectivityMonitor;

    invoke-direct {p0}, Lcom/bumptech/glide/manager/NullConnectivityMonitor;-><init>()V

    return-object p0
.end method
