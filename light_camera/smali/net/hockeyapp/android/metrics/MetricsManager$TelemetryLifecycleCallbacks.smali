.class Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;
.super Ljava/lang/Object;
.source "MetricsManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/hockeyapp/android/metrics/MetricsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelemetryLifecycleCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/metrics/MetricsManager;


# direct methods
.method private constructor <init>(Lnet/hockeyapp/android/metrics/MetricsManager;)V
    .registers 2

    .line 502
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;->this$0:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/hockeyapp/android/metrics/MetricsManager;Lnet/hockeyapp/android/metrics/MetricsManager$1;)V
    .registers 3

    .line 502
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;-><init>(Lnet/hockeyapp/android/metrics/MetricsManager;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 4

    .line 527
    sget-object p0, Lnet/hockeyapp/android/metrics/MetricsManager;->LAST_BACKGROUND:Ljava/util/concurrent/atomic/AtomicLong;

    # invokes: Lnet/hockeyapp/android/metrics/MetricsManager;->getTime()J
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->access$300()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    .line 520
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;->this$0:Lnet/hockeyapp/android/metrics/MetricsManager;

    # invokes: Lnet/hockeyapp/android/metrics/MetricsManager;->updateSession()V
    invoke-static {p0}, Lnet/hockeyapp/android/metrics/MetricsManager;->access$200(Lnet/hockeyapp/android/metrics/MetricsManager;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
