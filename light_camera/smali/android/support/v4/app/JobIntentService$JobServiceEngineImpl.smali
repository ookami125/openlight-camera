.class final Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;
.super Landroid/app/job/JobServiceEngine;
.source "JobIntentService.java"

# interfaces
.implements Landroid/support/v4/app/JobIntentService$CompatJobEngine;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JobServiceEngineImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "JobServiceEngineImpl"


# instance fields
.field final mLock:Ljava/lang/Object;

.field mParams:Landroid/app/job/JobParameters;

.field final mService:Landroid/support/v4/app/JobIntentService;


# direct methods
.method constructor <init>(Landroid/support/v4/app/JobIntentService;)V
    .registers 3

    .line 269
    invoke-direct {p0, p1}, Landroid/app/job/JobServiceEngine;-><init>(Landroid/app/Service;)V

    .line 243
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    .line 270
    iput-object p1, p0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;->mService:Landroid/support/v4/app/JobIntentService;

    return-void
.end method


# virtual methods
.method public compatGetBinder()Landroid/os/IBinder;
    .registers 1

    .line 275
    invoke-virtual {p0}, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public dequeueWork()Landroid/support/v4/app/JobIntentService$GenericWorkItem;
    .registers 4

    .line 305
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_3
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 307
    monitor-exit v0

    return-object v2

    .line 309
    :cond_a
    iget-object v1, p0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v1}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    move-result-object v1

    .line 310
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_27

    if-eqz v1, :cond_26

    .line 312
    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;->mService:Landroid/support/v4/app/JobIntentService;

    invoke-virtual {v2}, Landroid/support/v4/app/JobIntentService;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 313
    new-instance v0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl$WrapperWorkItem;-><init>(Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;Landroid/app/job/JobWorkItem;)V

    return-object v0

    :cond_26
    return-object v2

    :catchall_27
    move-exception p0

    .line 310
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    .line 281
    iput-object p1, p0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    .line 283
    iget-object p0, p0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;->mService:Landroid/support/v4/app/JobIntentService;

    invoke-virtual {p0}, Landroid/support/v4/app/JobIntentService;->ensureProcessorRunningLocked()V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    .line 290
    iget-object p1, p0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;->mService:Landroid/support/v4/app/JobIntentService;

    invoke-virtual {p1}, Landroid/support/v4/app/JobIntentService;->doStopCurrentWork()Z

    move-result p1

    .line 291
    iget-object v0, p0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 294
    :try_start_a
    iput-object v1, p0, Landroid/support/v4/app/JobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    .line 295
    monitor-exit v0

    return p1

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_e

    throw p0
.end method
