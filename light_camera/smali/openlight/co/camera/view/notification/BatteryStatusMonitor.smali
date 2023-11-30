.class public abstract Lopenlight/co/camera/view/notification/BatteryStatusMonitor;
.super Landroid/content/BroadcastReceiver;
.source "BatteryStatusMonitor.java"


# instance fields
.field private mBatteryLevel:I

.field private mChargingStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/16 v0, 0x64

    .line 16
    iput v0, p0, Lopenlight/co/camera/view/notification/BatteryStatusMonitor;->mBatteryLevel:I

    const/4 v0, 0x5

    .line 17
    iput v0, p0, Lopenlight/co/camera/view/notification/BatteryStatusMonitor;->mChargingStatus:I

    return-void
.end method

.method private getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 64
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 65
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public getBatteryLevel()I
    .locals 0

    .line 48
    iget p0, p0, Lopenlight/co/camera/view/notification/BatteryStatusMonitor;->mBatteryLevel:I

    return p0
.end method

.method public getChargingStatus()I
    .locals 0

    .line 52
    iget p0, p0, Lopenlight/co/camera/view/notification/BatteryStatusMonitor;->mChargingStatus:I

    return p0
.end method

.method public abstract onBatteryUpdate(II)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "level"

    const/4 v0, -0x1

    .line 23
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "status"

    .line 24
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    .line 29
    iget v3, p0, Lopenlight/co/camera/view/notification/BatteryStatusMonitor;->mBatteryLevel:I

    if-eq v3, p1, :cond_0

    .line 31
    iput p1, p0, Lopenlight/co/camera/view/notification/BatteryStatusMonitor;->mBatteryLevel:I

    move v1, v2

    :cond_0
    if-eq p2, v0, :cond_1

    .line 34
    iget v0, p0, Lopenlight/co/camera/view/notification/BatteryStatusMonitor;->mChargingStatus:I

    if-eq v0, p2, :cond_1

    .line 36
    iput p2, p0, Lopenlight/co/camera/view/notification/BatteryStatusMonitor;->mChargingStatus:I

    move v1, v2

    :cond_1
    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/view/notification/BatteryStatusMonitor;->onBatteryUpdate(II)V

    :cond_2
    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Lopenlight/co/camera/view/notification/BatteryStatusMonitor;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
