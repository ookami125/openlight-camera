.class public Lnet/hockeyapp/android/utils/AsyncTaskUtils;
.super Ljava/lang/Object;
.source "AsyncTaskUtils.java"


# static fields
.field private static sCustomExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Landroid/os/AsyncTask;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "**>;)V"
        }
    .end annotation

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-gt v0, v2, :cond_d

    .line 22
    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1b

    .line 24
    :cond_d
    sget-object v0, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->sCustomExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_14

    sget-object v0, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->sCustomExecutor:Ljava/util/concurrent/Executor;

    goto :goto_16

    :cond_14
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    :goto_16
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1b
    return-void
.end method

.method public static getCustomExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 29
    sget-object v0, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->sCustomExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static setCustomExecutor(Ljava/util/concurrent/Executor;)V
    .registers 1

    .line 33
    sput-object p0, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->sCustomExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method
