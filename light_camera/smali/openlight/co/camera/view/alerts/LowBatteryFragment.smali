.class public Lopenlight/co/camera/view/alerts/LowBatteryFragment;
.super Lopenlight/co/lib/view/LightFragment;
.source "LowBatteryFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LowBatteryFragment"


# instance fields
.field private final mBatteryStatusMonitor:Lopenlight/co/camera/view/notification/BatteryStatusMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lopenlight/co/lib/view/LightFragment;-><init>()V

    .line 30
    new-instance v0, Lopenlight/co/camera/view/alerts/LowBatteryFragment$1;

    invoke-direct {v0, p0}, Lopenlight/co/camera/view/alerts/LowBatteryFragment$1;-><init>(Lopenlight/co/camera/view/alerts/LowBatteryFragment;)V

    iput-object v0, p0, Lopenlight/co/camera/view/alerts/LowBatteryFragment;->mBatteryStatusMonitor:Lopenlight/co/camera/view/notification/BatteryStatusMonitor;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const p0, 0x7f0b0033

    const/4 p3, 0x0

    .line 43
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 1

    .line 56
    invoke-super {p0}, Lopenlight/co/lib/view/LightFragment;->onPause()V

    .line 57
    iget-object v0, p0, Lopenlight/co/camera/view/alerts/LowBatteryFragment;->mBatteryStatusMonitor:Lopenlight/co/camera/view/notification/BatteryStatusMonitor;

    invoke-virtual {p0}, Lopenlight/co/camera/view/alerts/LowBatteryFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/notification/BatteryStatusMonitor;->unregister(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 48
    invoke-super {p0}, Lopenlight/co/lib/view/LightFragment;->onResume()V

    .line 50
    iget-object v0, p0, Lopenlight/co/camera/view/alerts/LowBatteryFragment;->mBatteryStatusMonitor:Lopenlight/co/camera/view/notification/BatteryStatusMonitor;

    invoke-virtual {p0}, Lopenlight/co/camera/view/alerts/LowBatteryFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/notification/BatteryStatusMonitor;->register(Landroid/content/Context;)V

    .line 51
    invoke-static {}, Lopenlight/co/camera/metrics/Metrics;->get()Lopenlight/co/camera/metrics/Metrics;

    move-result-object p0

    const-string v0, "event_low_battery_warning"

    invoke-virtual {p0, v0}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;)V

    return-void
.end method
