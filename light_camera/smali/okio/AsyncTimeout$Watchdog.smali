.class final Lokio/AsyncTimeout$Watchdog;
.super Ljava/lang/Thread;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Watchdog"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Okio Watchdog"

    .line 302
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 303
    invoke-virtual {p0, v0}, Lokio/AsyncTimeout$Watchdog;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 310
    :catch_0
    :goto_0
    :try_start_0
    const-class p0, Lokio/AsyncTimeout;

    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_0

    .line 311
    :try_start_3
    invoke-static {}, Lokio/AsyncTimeout;->awaitTimeout()Lokio/AsyncTimeout;

    move-result-object v0

    if-nez v0, :cond_b

    .line 314
    monitor-exit p0

    goto :goto_0

    .line 318
    :cond_b
    # getter for: Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
    invoke-static {}, Lokio/AsyncTimeout;->access$000()Lokio/AsyncTimeout;

    move-result-object v1

    if-ne v0, v1, :cond_17

    const/4 v0, 0x0

    .line 319
    # setter for: Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;
    invoke-static {v0}, Lokio/AsyncTimeout;->access$002(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;

    .line 320
    monitor-exit p0

    return-void

    .line 322
    :cond_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    .line 325
    :try_start_18
    invoke-virtual {v0}, Lokio/AsyncTimeout;->timedOut()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_0

    goto :goto_0

    :catchall_1c
    move-exception v0

    .line 322
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    throw v0
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_1f} :catch_0
.end method
