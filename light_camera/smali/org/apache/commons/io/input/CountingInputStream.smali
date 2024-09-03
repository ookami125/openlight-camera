.class public Lorg/apache/commons/io/input/CountingInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "CountingInputStream.java"


# instance fields
.field private count:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized afterRead(I)V
    .registers 6

    monitor-enter p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_e

    .line 74
    :try_start_4
    iget-wide v0, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_b

    goto :goto_e

    :catchall_b
    move-exception p1

    .line 72
    monitor-exit p0

    throw p1

    .line 76
    :cond_e
    :goto_e
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getByteCount()J
    .registers 3

    monitor-enter p0

    .line 126
    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCount()I
    .registers 5

    .line 90
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CountingInputStream;->getByteCount()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gtz p0, :cond_d

    long-to-int p0, v0

    return p0

    .line 92
    :cond_d
    new-instance p0, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The byte count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " is too large to be converted to an int"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized resetByteCount()J
    .registers 5

    monitor-enter p0

    .line 140
    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    const-wide/16 v2, 0x0

    .line 141
    iput-wide v2, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 142
    monitor-exit p0

    return-wide v0

    :catchall_9
    move-exception v0

    .line 139
    monitor-exit p0

    throw v0
.end method

.method public resetCount()I
    .registers 5

    .line 108
    invoke-virtual {p0}, Lorg/apache/commons/io/input/CountingInputStream;->resetByteCount()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gtz p0, :cond_d

    long-to-int p0, v0

    return p0

    .line 110
    :cond_d
    new-instance p0, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The byte count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " is too large to be converted to an int"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized skip(J)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 60
    :try_start_1
    invoke-super {p0, p1, p2}, Lorg/apache/commons/io/input/ProxyInputStream;->skip(J)J

    move-result-wide p1

    .line 61
    iget-wide v0, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J

    const/4 v2, 0x0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/io/input/CountingInputStream;->count:J
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 62
    monitor-exit p0

    return-wide p1

    :catchall_d
    move-exception p1

    .line 59
    monitor-exit p0

    throw p1
.end method
