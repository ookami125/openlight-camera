.class Lopenlight/co/camera/utils/LocationManager$2;
.super Landroid/content/BroadcastReceiver;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/utils/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/utils/LocationManager;


# direct methods
.method constructor <init>(Lopenlight/co/camera/utils/LocationManager;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lopenlight/co/camera/utils/LocationManager$2;->this$0:Lopenlight/co/camera/utils/LocationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 101
    # getter for: Lopenlight/co/camera/utils/LocationManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/utils/LocationManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mScreenOnReceiver onReceive()"

    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object p0, p0, Lopenlight/co/camera/utils/LocationManager$2;->this$0:Lopenlight/co/camera/utils/LocationManager;

    invoke-virtual {p0}, Lopenlight/co/camera/utils/LocationManager;->requestLocationUpdate()V

    return-void
.end method
