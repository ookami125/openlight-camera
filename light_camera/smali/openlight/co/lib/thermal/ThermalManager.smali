.class public Lopenlight/co/lib/thermal/ThermalManager;
.super Ljava/lang/Object;
.source "ThermalManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/lib/thermal/ThermalManager$ThermalStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThermalManager"

.field private static final sInstance:Lopenlight/co/lib/thermal/ThermalManager;


# instance fields
.field private volatile mCurrentTemperature:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

.field private final mRemoteServiceConnection:Landroid/content/ServiceConnection;

.field private volatile mServiceBound:Z

.field private final mThermalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mThermalMonitorService:Lopenlight/co/thermalmonitor/IThermalMonitorService;

.field private final mThermalStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lopenlight/co/lib/thermal/ThermalManager$ThermalStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lopenlight/co/lib/thermal/ThermalManager;

    invoke-direct {v0}, Lopenlight/co/lib/thermal/ThermalManager;-><init>()V

    sput-object v0, Lopenlight/co/lib/thermal/ThermalManager;->sInstance:Lopenlight/co/lib/thermal/ThermalManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lopenlight/co/lib/thermal/ThermalManager;->mThermalStateListeners:Ljava/util/List;

    .line 40
    sget-object v0, Lopenlight/co/thermalmonitor/ThermalIntent$Level;->SAFE:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    iput-object v0, p0, Lopenlight/co/lib/thermal/ThermalManager;->mCurrentTemperature:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    .line 48
    new-instance v0, Lopenlight/co/lib/thermal/ThermalManager$1;

    invoke-direct {v0, p0}, Lopenlight/co/lib/thermal/ThermalManager$1;-><init>(Lopenlight/co/lib/thermal/ThermalManager;)V

    iput-object v0, p0, Lopenlight/co/lib/thermal/ThermalManager;->mThermalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    new-instance v0, Lopenlight/co/lib/thermal/ThermalManager$2;

    invoke-direct {v0, p0}, Lopenlight/co/lib/thermal/ThermalManager$2;-><init>(Lopenlight/co/lib/thermal/ThermalManager;)V

    iput-object v0, p0, Lopenlight/co/lib/thermal/ThermalManager;->mRemoteServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 29
    sget-object v0, Lopenlight/co/lib/thermal/ThermalManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lopenlight/co/lib/thermal/ThermalManager;)Lopenlight/co/thermalmonitor/ThermalIntent$Level;
    .registers 1

    .line 29
    iget-object p0, p0, Lopenlight/co/lib/thermal/ThermalManager;->mCurrentTemperature:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    return-object p0
.end method

.method static synthetic access$102(Lopenlight/co/lib/thermal/ThermalManager;Lopenlight/co/thermalmonitor/ThermalIntent$Level;)Lopenlight/co/thermalmonitor/ThermalIntent$Level;
    .registers 2

    .line 29
    iput-object p1, p0, Lopenlight/co/lib/thermal/ThermalManager;->mCurrentTemperature:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    return-object p1
.end method

.method static synthetic access$200(Lopenlight/co/lib/thermal/ThermalManager;)V
    .registers 1

    .line 29
    invoke-direct {p0}, Lopenlight/co/lib/thermal/ThermalManager;->notifyListeners()V

    return-void
.end method

.method static synthetic access$300(Lopenlight/co/lib/thermal/ThermalManager;)Lopenlight/co/thermalmonitor/IThermalMonitorService;
    .registers 1

    .line 29
    iget-object p0, p0, Lopenlight/co/lib/thermal/ThermalManager;->mThermalMonitorService:Lopenlight/co/thermalmonitor/IThermalMonitorService;

    return-object p0
.end method

.method static synthetic access$302(Lopenlight/co/lib/thermal/ThermalManager;Lopenlight/co/thermalmonitor/IThermalMonitorService;)Lopenlight/co/thermalmonitor/IThermalMonitorService;
    .registers 2

    .line 29
    iput-object p1, p0, Lopenlight/co/lib/thermal/ThermalManager;->mThermalMonitorService:Lopenlight/co/thermalmonitor/IThermalMonitorService;

    return-object p1
.end method

.method static synthetic access$400(Lopenlight/co/lib/thermal/ThermalManager;)Z
    .registers 1

    .line 29
    iget-boolean p0, p0, Lopenlight/co/lib/thermal/ThermalManager;->mServiceBound:Z

    return p0
.end method

.method static synthetic access$402(Lopenlight/co/lib/thermal/ThermalManager;Z)Z
    .registers 2

    .line 29
    iput-boolean p1, p0, Lopenlight/co/lib/thermal/ThermalManager;->mServiceBound:Z

    return p1
.end method

.method public static get()Lopenlight/co/lib/thermal/ThermalManager;
    .registers 1

    .line 109
    sget-object v0, Lopenlight/co/lib/thermal/ThermalManager;->sInstance:Lopenlight/co/lib/thermal/ThermalManager;

    return-object v0
.end method

.method private declared-synchronized init()V
    .registers 5

    monitor-enter p0

    .line 117
    :try_start_1
    iget-boolean v0, p0, Lopenlight/co/lib/thermal/ThermalManager;->mServiceBound:Z

    if-nez v0, :cond_22

    .line 118
    sget-object v0, Lopenlight/co/lib/thermal/ThermalManager;->TAG:Ljava/lang/String;

    const-string v1, "Attempting to bind to ThermalMonitorService"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "openlight.co.thermalmonitor.ThermalService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "openlight.co.thermalmonitor"

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->getApp()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lopenlight/co/lib/thermal/ThermalManager;->mRemoteServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 123
    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    .line 116
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyListeners()V
    .registers 4

    monitor-enter p0

    .line 182
    :try_start_1
    sget-object v0, Lopenlight/co/lib/thermal/ThermalManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Temperature Change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lopenlight/co/lib/thermal/ThermalManager;->mCurrentTemperature:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Number of listeners: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lopenlight/co/lib/thermal/ThermalManager;->mThermalStateListeners:Ljava/util/List;

    .line 183
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lopenlight/co/lib/thermal/ThermalManager;->mThermalStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lopenlight/co/lib/thermal/ThermalManager$ThermalStateListener;

    .line 185
    iget-object v2, p0, Lopenlight/co/lib/thermal/ThermalManager;->mCurrentTemperature:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    invoke-interface {v1, v2}, Lopenlight/co/lib/thermal/ThermalManager$ThermalStateListener;->onTemperatureChange(Lopenlight/co/thermalmonitor/ThermalIntent$Level;)V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_41

    goto :goto_2d

    .line 187
    :cond_3f
    monitor-exit p0

    return-void

    :catchall_41
    move-exception v0

    .line 181
    monitor-exit p0

    throw v0
.end method

.method private release()V
    .registers 3

    .line 129
    iget-boolean v0, p0, Lopenlight/co/lib/thermal/ThermalManager;->mServiceBound:Z

    if-eqz v0, :cond_18

    .line 130
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->getApp()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lopenlight/co/lib/thermal/ThermalManager;->mRemoteServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lopenlight/co/lib/thermal/ThermalManager;->mServiceBound:Z

    .line 132
    sget-object p0, Lopenlight/co/lib/thermal/ThermalManager;->TAG:Ljava/lang/String;

    const-string v0, "Disconnected from remote ThermalMonitorService"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 134
    :cond_18
    sget-object p0, Lopenlight/co/lib/thermal/ThermalManager;->TAG:Ljava/lang/String;

    const-string v0, "ThermalMonitorService not bound to release"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1f
    return-void
.end method


# virtual methods
.method public getCurrentLevel()Lopenlight/co/thermalmonitor/ThermalIntent$Level;
    .registers 1

    .line 144
    iget-object p0, p0, Lopenlight/co/lib/thermal/ThermalManager;->mCurrentTemperature:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    return-object p0
.end method

.method public declared-synchronized registerThermalStateListener(Lopenlight/co/lib/thermal/ThermalManager$ThermalStateListener;)V
    .registers 6

    monitor-enter p0

    .line 151
    :try_start_1
    iget-object v0, p0, Lopenlight/co/lib/thermal/ThermalManager;->mThermalStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-direct {p0}, Lopenlight/co/lib/thermal/ThermalManager;->init()V

    .line 158
    iget-object v0, p0, Lopenlight/co/lib/thermal/ThermalManager;->mThermalStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 159
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->getApp()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lopenlight/co/lib/thermal/ThermalManager;->mThermalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "light_lens_modules_thermal_level_changed"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    :cond_22
    iget-object v0, p0, Lopenlight/co/lib/thermal/ThermalManager;->mCurrentTemperature:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    invoke-interface {p1, v0}, Lopenlight/co/lib/thermal/ThermalManager$ThermalStateListener;->onTemperatureChange(Lopenlight/co/thermalmonitor/ThermalIntent$Level;)V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 165
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    .line 150
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterThermalStateListener(Lopenlight/co/lib/thermal/ThermalManager$ThermalStateListener;)V
    .registers 3

    monitor-enter p0

    .line 169
    :try_start_1
    iget-object v0, p0, Lopenlight/co/lib/thermal/ThermalManager;->mThermalStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 170
    iget-object p1, p0, Lopenlight/co/lib/thermal/ThermalManager;->mThermalStateListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1a

    .line 171
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->getApp()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lopenlight/co/lib/thermal/ThermalManager;->mThermalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 174
    invoke-direct {p0}, Lopenlight/co/lib/thermal/ThermalManager;->release()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 176
    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    .line 168
    monitor-exit p0

    throw p1
.end method
