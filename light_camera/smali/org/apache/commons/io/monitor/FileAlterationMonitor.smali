.class public final Lorg/apache/commons/io/monitor/FileAlterationMonitor;
.super Ljava/lang/Object;
.source "FileAlterationMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final interval:J

.field private final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/io/monitor/FileAlterationObserver;",
            ">;"
        }
    .end annotation
.end field

.field private volatile running:Z

.field private thread:Ljava/lang/Thread;

.field private threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x2710

    .line 43
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/io/monitor/FileAlterationMonitor;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    .line 53
    iput-wide p1, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->interval:J

    return-void
.end method

.method public varargs constructor <init>(J[Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
    .registers 5

    .line 64
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/io/monitor/FileAlterationMonitor;-><init>(J)V

    if-eqz p3, :cond_11

    .line 66
    array-length p1, p3

    const/4 p2, 0x0

    :goto_7
    if-ge p2, p1, :cond_11

    aget-object v0, p3, p2

    .line 67
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->addObserver(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_11
    return-void
.end method


# virtual methods
.method public addObserver(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 97
    iget-object p0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public getInterval()J
    .registers 3

    .line 78
    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->interval:J

    return-wide v0
.end method

.method public getObservers()Ljava/lang/Iterable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/io/monitor/FileAlterationObserver;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object p0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    return-object p0
.end method

.method public removeObserver(Lorg/apache/commons/io/monitor/FileAlterationObserver;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 108
    :goto_2
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2

    :cond_b
    return-void
.end method

.method public run()V
    .registers 3

    .line 180
    :catch_0
    :goto_0
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    if-eqz v0, :cond_25

    .line 181
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 182
    invoke-virtual {v1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->checkAndNotify()V

    goto :goto_a

    .line 184
    :cond_1a
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    if-nez v0, :cond_1f

    goto :goto_25

    .line 188
    :cond_1f
    :try_start_1f
    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->interval:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_24} :catch_0

    goto :goto_0

    :cond_25
    :goto_25
    return-void
.end method

.method public declared-synchronized setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V
    .registers 2

    monitor-enter p0

    .line 87
    :try_start_1
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->threadFactory:Ljava/util/concurrent/ThreadFactory;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 88
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    .line 86
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 129
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    if-nez v0, :cond_39

    .line 132
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 133
    invoke-virtual {v1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->initialize()V

    goto :goto_b

    :cond_1b
    const/4 v0, 0x1

    .line 135
    iput-boolean v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    .line 136
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    if-eqz v0, :cond_2b

    .line 137
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;

    goto :goto_32

    .line 139
    :cond_2b
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;

    .line 141
    :goto_32
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_41

    .line 142
    monitor-exit p0

    return-void

    .line 130
    :cond_39
    :try_start_39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Monitor is already running"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v0

    .line 128
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 150
    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->interval:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->stop(J)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 151
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    .line 149
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 162
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->running:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_35

    .line 167
    :try_start_8
    iget-object v0, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->thread:Ljava/lang/Thread;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Thread;->join(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_d} :catch_e
    .catchall {:try_start_8 .. :try_end_d} :catchall_35

    goto :goto_15

    .line 169
    :catch_e
    :try_start_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 171
    :goto_15
    iget-object p1, p0, Lorg/apache/commons/io/monitor/FileAlterationMonitor;->observers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 172
    invoke-virtual {p2}, Lorg/apache/commons/io/monitor/FileAlterationObserver;->destroy()V
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_35

    goto :goto_1b

    .line 174
    :cond_2b
    monitor-exit p0

    return-void

    .line 163
    :cond_2d
    :try_start_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Monitor is not running"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_35

    :catchall_35
    move-exception p1

    .line 161
    monitor-exit p0

    throw p1
.end method
