.class Lopenlight/co/lib/utils/LifecycleLogger$1;
.super Ljava/lang/Object;
.source "LifecycleLogger.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/lib/utils/LifecycleLogger;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/lib/utils/LifecycleLogger;


# direct methods
.method constructor <init>(Lopenlight/co/lib/utils/LifecycleLogger;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lopenlight/co/lib/utils/LifecycleLogger$1;->this$0:Lopenlight/co/lib/utils/LifecycleLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 58
    iget-object p0, p0, Lopenlight/co/lib/utils/LifecycleLogger$1;->this$0:Lopenlight/co/lib/utils/LifecycleLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 88
    iget-object p0, p0, Lopenlight/co/lib/utils/LifecycleLogger$1;->this$0:Lopenlight/co/lib/utils/LifecycleLogger;

    const-string v0, "onDestroy()"

    invoke-virtual {p0, p1, v0}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 73
    iget-object p0, p0, Lopenlight/co/lib/utils/LifecycleLogger$1;->this$0:Lopenlight/co/lib/utils/LifecycleLogger;

    const-string v0, "onPause()"

    invoke-virtual {p0, p1, v0}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 68
    iget-object p0, p0, Lopenlight/co/lib/utils/LifecycleLogger$1;->this$0:Lopenlight/co/lib/utils/LifecycleLogger;

    const-string v0, "onResume()"

    invoke-virtual {p0, p1, v0}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 83
    iget-object p0, p0, Lopenlight/co/lib/utils/LifecycleLogger$1;->this$0:Lopenlight/co/lib/utils/LifecycleLogger;

    const-string p2, "onSaveInstanceState()"

    invoke-virtual {p0, p1, p2}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 63
    iget-object p0, p0, Lopenlight/co/lib/utils/LifecycleLogger$1;->this$0:Lopenlight/co/lib/utils/LifecycleLogger;

    const-string v0, "onStart()"

    invoke-virtual {p0, p1, v0}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 78
    iget-object p0, p0, Lopenlight/co/lib/utils/LifecycleLogger$1;->this$0:Lopenlight/co/lib/utils/LifecycleLogger;

    const-string v0, "onStop()"

    invoke-virtual {p0, p1, v0}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
