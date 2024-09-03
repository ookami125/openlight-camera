.class Lopenlight/co/camera/BasePreviewFragment$5;
.super Lopenlight/co/camera/view/notification/BatteryStatusMonitor;
.source "BasePreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/BasePreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/BasePreviewFragment;


# direct methods
.method constructor <init>(Lopenlight/co/camera/BasePreviewFragment;)V
    .registers 2

    .line 387
    iput-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$5;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    invoke-direct {p0}, Lopenlight/co/camera/view/notification/BatteryStatusMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryUpdate(II)V
    .registers 4

    .line 390
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment$5;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    # invokes: Lopenlight/co/camera/BasePreviewFragment;->checkLowBattery(I)V
    invoke-static {v0, p1}, Lopenlight/co/camera/BasePreviewFragment;->access$200(Lopenlight/co/camera/BasePreviewFragment;I)V

    .line 391
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$5;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    # invokes: Lopenlight/co/camera/BasePreviewFragment;->updateBatteryInfo(II)V
    invoke-static {p0, p1, p2}, Lopenlight/co/camera/BasePreviewFragment;->access$300(Lopenlight/co/camera/BasePreviewFragment;II)V

    return-void
.end method
