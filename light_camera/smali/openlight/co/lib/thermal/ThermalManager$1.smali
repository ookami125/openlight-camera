.class Lopenlight/co/lib/thermal/ThermalManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ThermalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/lib/thermal/ThermalManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/lib/thermal/ThermalManager;


# direct methods
.method constructor <init>(Lopenlight/co/lib/thermal/ThermalManager;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lopenlight/co/lib/thermal/ThermalManager$1;->this$0:Lopenlight/co/lib/thermal/ThermalManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 52
    invoke-static {}, Lopenlight/co/lib/thermal/ThermalManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object p1, p0, Lopenlight/co/lib/thermal/ThermalManager$1;->this$0:Lopenlight/co/lib/thermal/ThermalManager;

    const-string v0, "extra_thermal_level"

    .line 54
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    .line 53
    invoke-static {p1, p2}, Lopenlight/co/lib/thermal/ThermalManager;->access$102(Lopenlight/co/lib/thermal/ThermalManager;Lopenlight/co/thermalmonitor/ThermalIntent$Level;)Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    .line 55
    invoke-static {}, Lopenlight/co/lib/thermal/ThermalManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got Temperature Update: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lopenlight/co/lib/thermal/ThermalManager$1;->this$0:Lopenlight/co/lib/thermal/ThermalManager;

    invoke-static {v0}, Lopenlight/co/lib/thermal/ThermalManager;->access$100(Lopenlight/co/lib/thermal/ThermalManager;)Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object p0, p0, Lopenlight/co/lib/thermal/ThermalManager$1;->this$0:Lopenlight/co/lib/thermal/ThermalManager;

    invoke-static {p0}, Lopenlight/co/lib/thermal/ThermalManager;->access$200(Lopenlight/co/lib/thermal/ThermalManager;)V

    return-void
.end method
