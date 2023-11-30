.class public Lopenlight/co/camera/view/alerts/ThermalShutdownFragment;
.super Lopenlight/co/lib/view/LightFragment;
.source "ThermalShutdownFragment.java"

# interfaces
.implements Lopenlight/co/lib/thermal/ThermalManager$ThermalStateListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lopenlight/co/camera/view/alerts/ThermalShutdownFragment;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/view/alerts/ThermalShutdownFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lopenlight/co/lib/view/LightFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p0, 0x7f0b0034

    const/4 p3, 0x0

    .line 34
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 1

    .line 45
    invoke-super {p0}, Lopenlight/co/lib/view/LightFragment;->onPause()V

    .line 46
    invoke-static {}, Lopenlight/co/lib/thermal/ThermalManager;->get()Lopenlight/co/lib/thermal/ThermalManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lopenlight/co/lib/thermal/ThermalManager;->unregisterThermalStateListener(Lopenlight/co/lib/thermal/ThermalManager$ThermalStateListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 39
    invoke-super {p0}, Lopenlight/co/lib/view/LightFragment;->onResume()V

    .line 40
    invoke-static {}, Lopenlight/co/lib/thermal/ThermalManager;->get()Lopenlight/co/lib/thermal/ThermalManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lopenlight/co/lib/thermal/ThermalManager;->registerThermalStateListener(Lopenlight/co/lib/thermal/ThermalManager$ThermalStateListener;)V

    return-void
.end method

.method public onTemperatureChange(Lopenlight/co/thermalmonitor/ThermalIntent$Level;)V
    .locals 1

    .line 53
    sget-object v0, Lopenlight/co/thermalmonitor/ThermalIntent$Level;->SAFE:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    if-eq p1, v0, :cond_0

    sget-object v0, Lopenlight/co/thermalmonitor/ThermalIntent$Level;->COOLING:Lopenlight/co/thermalmonitor/ThermalIntent$Level;

    if-ne p1, v0, :cond_1

    .line 54
    :cond_0
    invoke-virtual {p0}, Lopenlight/co/camera/view/alerts/ThermalShutdownFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
