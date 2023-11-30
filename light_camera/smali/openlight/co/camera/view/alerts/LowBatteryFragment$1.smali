.class Lopenlight/co/camera/view/alerts/LowBatteryFragment$1;
.super Lopenlight/co/camera/view/notification/BatteryStatusMonitor;
.source "LowBatteryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/alerts/LowBatteryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/alerts/LowBatteryFragment;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/alerts/LowBatteryFragment;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lopenlight/co/camera/view/alerts/LowBatteryFragment$1;->this$0:Lopenlight/co/camera/view/alerts/LowBatteryFragment;

    invoke-direct {p0}, Lopenlight/co/camera/view/notification/BatteryStatusMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryUpdate(II)V
    .locals 0

    const/16 p2, 0xc

    if-lt p1, p2, :cond_0

    .line 34
    iget-object p0, p0, Lopenlight/co/camera/view/alerts/LowBatteryFragment$1;->this$0:Lopenlight/co/camera/view/alerts/LowBatteryFragment;

    invoke-virtual {p0}, Lopenlight/co/camera/view/alerts/LowBatteryFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
