.class Lopenlight/co/lib/thermal/ThermalManager$2;
.super Ljava/lang/Object;
.source "ThermalManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 64
    iput-object p1, p0, Lopenlight/co/lib/thermal/ThermalManager$2;->this$0:Lopenlight/co/lib/thermal/ThermalManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCurrentLevelFromRemote()Lopenlight/co/thermalmonitor/ThermalIntent$Level;
    .locals 3

    .line 87
    sget-object v0, Lopenlight/co/thermalmonitor/ThermalIntent$Level;->SAFE:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    .line 88
    iget-object v1, p0, Lopenlight/co/lib/thermal/ThermalManager$2;->this$0:Lopenlight/co/lib/thermal/ThermalManager;

    invoke-static {v1}, Lopenlight/co/lib/thermal/ThermalManager;->access$400(Lopenlight/co/lib/thermal/ThermalManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    :try_start_0
    iget-object p0, p0, Lopenlight/co/lib/thermal/ThermalManager$2;->this$0:Lopenlight/co/lib/thermal/ThermalManager;

    invoke-static {p0}, Lopenlight/co/lib/thermal/ThermalManager;->access$300(Lopenlight/co/lib/thermal/ThermalManager;)Lopenlight/co/thermalmonitor/IThermalMonitorService;

    move-result-object p0

    .line 91
    invoke-interface {p0}, Lopenlight/co/thermalmonitor/IThermalMonitorService;->getCurrentLevel()Ljava/lang/String;

    move-result-object p0

    .line 90
    invoke-static {p0}, Lopenlight/co/thermalmonitor/ThermalIntent$Level;->valueOf(Ljava/lang/String;)Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 94
    invoke-static {}, Lopenlight/co/lib/thermal/ThermalManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cannot connect to Thermal Monitor Service, assuming safe"

    invoke-static {v1, v2, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 67
    iget-object p1, p0, Lopenlight/co/lib/thermal/ThermalManager$2;->this$0:Lopenlight/co/lib/thermal/ThermalManager;

    invoke-static {p2}, Lopenlight/co/thermalmonitor/IThermalMonitorService$Stub;->asInterface(Landroid/os/IBinder;)Lopenlight/co/thermalmonitor/IThermalMonitorService;

    move-result-object p2

    invoke-static {p1, p2}, Lopenlight/co/lib/thermal/ThermalManager;->access$302(Lopenlight/co/lib/thermal/ThermalManager;Lopenlight/co/thermalmonitor/IThermalMonitorService;)Lopenlight/co/thermalmonitor/IThermalMonitorService;

    .line 68
    invoke-static {}, Lopenlight/co/lib/thermal/ThermalManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Connected to Thermal Monitor Service"

    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lopenlight/co/lib/thermal/ThermalManager$2;->this$0:Lopenlight/co/lib/thermal/ThermalManager;

    invoke-direct {p0}, Lopenlight/co/lib/thermal/ThermalManager$2;->getCurrentLevelFromRemote()Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    move-result-object p2

    invoke-static {p1, p2}, Lopenlight/co/lib/thermal/ThermalManager;->access$102(Lopenlight/co/lib/thermal/ThermalManager;Lopenlight/co/thermalmonitor/ThermalIntent$Level;)Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    .line 71
    invoke-static {}, Lopenlight/co/lib/thermal/ThermalManager;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current Temperature: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lopenlight/co/lib/thermal/ThermalManager$2;->this$0:Lopenlight/co/lib/thermal/ThermalManager;

    invoke-static {v0}, Lopenlight/co/lib/thermal/ThermalManager;->access$100(Lopenlight/co/lib/thermal/ThermalManager;)Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lopenlight/co/lib/thermal/ThermalManager$2;->this$0:Lopenlight/co/lib/thermal/ThermalManager;

    invoke-static {p1}, Lopenlight/co/lib/thermal/ThermalManager;->access$200(Lopenlight/co/lib/thermal/ThermalManager;)V

    .line 76
    iget-object p0, p0, Lopenlight/co/lib/thermal/ThermalManager$2;->this$0:Lopenlight/co/lib/thermal/ThermalManager;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lopenlight/co/lib/thermal/ThermalManager;->access$402(Lopenlight/co/lib/thermal/ThermalManager;Z)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 82
    invoke-static {}, Lopenlight/co/lib/thermal/ThermalManager;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Disconnection from Thermal Monitor Service"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object p0, p0, Lopenlight/co/lib/thermal/ThermalManager$2;->this$0:Lopenlight/co/lib/thermal/ThermalManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lopenlight/co/lib/thermal/ThermalManager;->access$402(Lopenlight/co/lib/thermal/ThermalManager;Z)Z

    return-void
.end method
