.class public Lorg/apache/commons/io/output/CountingOutputStream;
.super Lorg/apache/commons/io/output/ProxyOutputStream;
.source "CountingOutputStream.java"


# instance fields
.field private count:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4

    .line 41
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J

    return-void
.end method


# virtual methods
.method protected declared-synchronized beforeWrite(I)V
    .registers 6

    monitor-enter p0

    .line 54
    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 55
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    .line 53
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getByteCount()J
    .registers 3

    monitor-enter p0

    .line 105
    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J
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

    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/io/output/CountingOutputStream;->getByteCount()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gtz p0, :cond_d

    long-to-int p0, v0

    return p0

    .line 71
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

    .line 119
    :try_start_1
    iget-wide v0, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J

    const-wide/16 v2, 0x0

    .line 120
    iput-wide v2, p0, Lorg/apache/commons/io/output/CountingOutputStream;->count:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 121
    monitor-exit p0

    return-wide v0

    :catchall_9
    move-exception v0

    .line 118
    monitor-exit p0

    throw v0
.end method

.method public resetCount()I
    .registers 5

    .line 87
    invoke-virtual {p0}, Lorg/apache/commons/io/output/CountingOutputStream;->resetByteCount()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gtz p0, :cond_d

    long-to-int p0, v0

    return p0

    .line 89
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
