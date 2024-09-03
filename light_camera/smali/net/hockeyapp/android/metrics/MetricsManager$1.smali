.class final Lnet/hockeyapp/android/metrics/MetricsManager$1;
.super Ljava/lang/Object;
.source "MetricsManager.java"

# interfaces
.implements Lnet/hockeyapp/android/PrivateEventManager$HockeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/metrics/MetricsManager;->register(Landroid/app/Application;Ljava/lang/String;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/Persistence;Lnet/hockeyapp/android/metrics/Channel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHockeyEvent(Lnet/hockeyapp/android/PrivateEventManager$Event;)V
    .registers 2

    .line 240
    invoke-virtual {p1}, Lnet/hockeyapp/android/PrivateEventManager$Event;->getType()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_e

    .line 241
    # getter for: Lnet/hockeyapp/android/metrics/MetricsManager;->sChannel:Lnet/hockeyapp/android/metrics/Channel;
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->access$000()Lnet/hockeyapp/android/metrics/Channel;

    move-result-object p0

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Channel;->synchronize()V

    :cond_e
    return-void
.end method
