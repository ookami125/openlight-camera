.class public Lokio/AsyncTimeout;
.super Lokio/Timeout;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/AsyncTimeout$Watchdog;
    }
.end annotation


# static fields
.field private static final IDLE_TIMEOUT_MILLIS:J

.field private static final IDLE_TIMEOUT_NANOS:J

.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field private static head:Lokio/AsyncTimeout;


# instance fields
.field private inQueue:Z

.field private next:Lokio/AsyncTimeout;

.field private timeoutAt:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v1, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lokio/AsyncTimeout;
    .registers 1

    .line 40
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    return-object v0
.end method

.method static synthetic access$002(Lokio/AsyncTimeout;)Lokio/AsyncTimeout;
    .registers 1

    .line 40
    sput-object p0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    return-object p0
.end method

.method static awaitTimeout()Lokio/AsyncTimeout;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 341
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v0, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    const/4 v1, 0x0

    if-nez v0, :cond_26

    .line 345
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 346
    const-class v0, Lokio/AsyncTimeout;

    sget-wide v4, Lokio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 347
    sget-object v0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v0, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-nez v0, :cond_25

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sget-wide v2, Lokio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_25

    sget-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    :cond_25
    return-object v1

    .line 352
    :cond_26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_42

    const-wide/32 v4, 0xf4240

    .line 358
    div-long v6, v2, v4

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    .line 360
    const-class v0, Lokio/AsyncTimeout;

    long-to-int v2, v2

    invoke-virtual {v0, v6, v7, v2}, Ljava/lang/Object;->wait(JI)V

    return-object v1

    .line 365
    :cond_42
    sget-object v2, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    iget-object v3, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v3, v2, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 366
    iput-object v1, v0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    return-object v0
.end method

.method private static declared-synchronized cancelScheduledTimeout(Lokio/AsyncTimeout;)Z
    .registers 4

    const-class v0, Lokio/AsyncTimeout;

    monitor-enter v0

    .line 127
    :try_start_3
    sget-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    :goto_5
    if-eqz v1, :cond_18

    .line 128
    iget-object v2, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-ne v2, p0, :cond_15

    .line 129
    iget-object v2, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object v2, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    const/4 v1, 0x0

    .line 130
    iput-object v1, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1b

    const/4 p0, 0x0

    .line 131
    monitor-exit v0

    return p0

    .line 127
    :cond_15
    :try_start_15
    iget-object v1, v1, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_1b

    goto :goto_5

    :cond_18
    const/4 p0, 0x1

    .line 136
    monitor-exit v0

    return p0

    :catchall_1b
    move-exception p0

    .line 126
    monitor-exit v0

    throw p0
.end method

.method private remainingNanos(J)J
    .registers 5

    .line 144
    iget-wide v0, p0, Lokio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static declared-synchronized scheduleTimeout(Lokio/AsyncTimeout;JZ)V
    .registers 9

    const-class v0, Lokio/AsyncTimeout;

    monitor-enter v0

    .line 85
    :try_start_3
    sget-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-nez v1, :cond_16

    .line 86
    new-instance v1, Lokio/AsyncTimeout;

    invoke-direct {v1}, Lokio/AsyncTimeout;-><init>()V

    sput-object v1, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    .line 87
    new-instance v1, Lokio/AsyncTimeout$Watchdog;

    invoke-direct {v1}, Lokio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v1}, Lokio/AsyncTimeout$Watchdog;->start()V

    .line 90
    :cond_16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-eqz v3, :cond_31

    if-eqz p3, :cond_31

    .line 94
    invoke-virtual {p0}, Lokio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v3

    const/4 p3, 0x0

    sub-long/2addr v3, v1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const/4 p3, 0x0

    add-long/2addr p1, v1

    iput-wide p1, p0, Lokio/AsyncTimeout;->timeoutAt:J

    goto :goto_3f

    :cond_31
    if-eqz v3, :cond_37

    add-long/2addr p1, v1

    .line 96
    iput-wide p1, p0, Lokio/AsyncTimeout;->timeoutAt:J

    goto :goto_3f

    :cond_37
    if-eqz p3, :cond_68

    .line 98
    invoke-virtual {p0}, Lokio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lokio/AsyncTimeout;->timeoutAt:J

    .line 104
    :goto_3f
    invoke-direct {p0, v1, v2}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide p1

    .line 105
    sget-object p3, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    .line 106
    :goto_45
    iget-object v3, p3, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    if-eqz v3, :cond_57

    iget-object v3, p3, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    invoke-direct {v3, v1, v2}, Lokio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_54

    goto :goto_57

    .line 105
    :cond_54
    iget-object p3, p3, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    goto :goto_45

    .line 107
    :cond_57
    :goto_57
    iget-object p1, p3, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    iput-object p1, p0, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 108
    iput-object p0, p3, Lokio/AsyncTimeout;->next:Lokio/AsyncTimeout;

    .line 109
    sget-object p0, Lokio/AsyncTimeout;->head:Lokio/AsyncTimeout;

    if-ne p3, p0, :cond_66

    .line 110
    const-class p0, Lokio/AsyncTimeout;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_6e

    .line 115
    :cond_66
    monitor-exit v0

    return-void

    .line 100
    :cond_68
    :try_start_68
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
    :try_end_6e
    .catchall {:try_start_68 .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception p0

    .line 84
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final enter()V
    .registers 6

    .line 72
    iget-boolean v0, p0, Lokio/AsyncTimeout;->inQueue:Z

    if-nez v0, :cond_1c

    .line 73
    invoke-virtual {p0}, Lokio/AsyncTimeout;->timeoutNanos()J

    move-result-wide v0

    .line 74
    invoke-virtual {p0}, Lokio/AsyncTimeout;->hasDeadline()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_15

    if-nez v2, :cond_15

    return-void

    :cond_15
    const/4 v3, 0x1

    .line 78
    iput-boolean v3, p0, Lokio/AsyncTimeout;->inQueue:Z

    .line 79
    invoke-static {p0, v0, v1, v2}, Lokio/AsyncTimeout;->scheduleTimeout(Lokio/AsyncTimeout;JZ)V

    return-void

    .line 72
    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unbalanced enter/exit"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method final exit(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    .line 284
    :cond_7
    invoke-virtual {p0, p1}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    return-object p0
.end method

.method final exit(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez p1, :cond_9

    goto :goto_f

    :cond_9
    const/4 p1, 0x0

    .line 274
    invoke-virtual {p0, p1}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_f
    :goto_f
    return-void
.end method

.method public final exit()Z
    .registers 3

    .line 119
    iget-boolean v0, p0, Lokio/AsyncTimeout;->inQueue:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 120
    :cond_6
    iput-boolean v1, p0, Lokio/AsyncTimeout;->inQueue:Z

    .line 121
    invoke-static {p0}, Lokio/AsyncTimeout;->cancelScheduledTimeout(Lokio/AsyncTimeout;)Z

    move-result p0

    return p0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3

    .line 293
    new-instance p0, Ljava/io/InterruptedIOException;

    const-string v0, "timeout"

    invoke-direct {p0, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    .line 295
    invoke-virtual {p0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_c
    return-object p0
.end method

.method public final sink(Lokio/Sink;)Lokio/Sink;
    .registers 3

    .line 159
    new-instance v0, Lokio/AsyncTimeout$1;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$1;-><init>(Lokio/AsyncTimeout;Lokio/Sink;)V

    return-object v0
.end method

.method public final source(Lokio/Source;)Lokio/Source;
    .registers 3

    .line 231
    new-instance v0, Lokio/AsyncTimeout$2;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$2;-><init>(Lokio/AsyncTimeout;Lokio/Source;)V

    return-object v0
.end method

.method protected timedOut()V
    .registers 1

    return-void
.end method
