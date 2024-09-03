.class public Lorg/apache/commons/io/input/NullInputStream;
.super Ljava/io/InputStream;
.source "NullInputStream.java"


# instance fields
.field private eof:Z

.field private mark:J

.field private final markSupported:Z

.field private position:J

.field private readlimit:J

.field private final size:J

.field private final throwEofException:Z


# direct methods
.method public constructor <init>(J)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/NullInputStream;-><init>(JZZ)V

    return-void
.end method

.method public constructor <init>(JZZ)V
    .registers 7

    .line 96
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, -0x1

    .line 69
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    .line 97
    iput-wide p1, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    .line 98
    iput-boolean p3, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    .line 99
    iput-boolean p4, p0, Lorg/apache/commons/io/input/NullInputStream;->throwEofException:Z

    return-void
.end method

.method private doEndOfFile()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 333
    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    .line 334
    iget-boolean p0, p0, Lorg/apache/commons/io/input/NullInputStream;->throwEofException:Z

    if-nez p0, :cond_9

    const/4 p0, -0x1

    return p0

    .line 335
    :cond_9
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method


# virtual methods
.method public available()I
    .registers 5

    .line 127
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-lez p0, :cond_18

    const p0, 0x7fffffff

    return p0

    :cond_18
    long-to-int p0, v0

    return p0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 145
    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    const-wide/16 v0, 0x0

    .line 146
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    const-wide/16 v0, -0x1

    .line 147
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    return-void
.end method

.method public getPosition()J
    .registers 3

    .line 108
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    return-wide v0
.end method

.method public getSize()J
    .registers 3

    .line 117
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .registers 4

    monitor-enter p0

    .line 159
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    if-eqz v0, :cond_e

    .line 162
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    int-to-long v0, p1

    .line 163
    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->readlimit:J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 164
    monitor-exit p0

    return-void

    .line 160
    :cond_e
    :try_start_e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Mark not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_16

    :catchall_16
    move-exception p1

    .line 158
    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .registers 1

    .line 173
    iget-boolean p0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    return p0
.end method

.method protected processByte()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected processBytes([BII)V
    .registers 4

    return-void
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    if-nez v0, :cond_1d

    .line 191
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 192
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->doEndOfFile()I

    move-result p0

    return p0

    .line 194
    :cond_11
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 195
    invoke-virtual {p0}, Lorg/apache/commons/io/input/NullInputStream;->processByte()I

    move-result p0

    return p0

    .line 189
    :cond_1d
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Read after end of file"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/io/input/NullInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    if-nez v0, :cond_2e

    .line 232
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 233
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->doEndOfFile()I

    move-result p0

    return p0

    .line 235
    :cond_11
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 237
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2a

    .line 238
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    sub-int/2addr p3, v0

    .line 239
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 241
    :cond_2a
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/input/NullInputStream;->processBytes([BII)V

    return p3

    .line 230
    :cond_2e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Read after end of file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized reset()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 255
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->markSupported:Z

    if-eqz v0, :cond_52

    .line 258
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4a

    .line 261
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    iget-wide v4, p0, Lorg/apache/commons/io/input/NullInputStream;->readlimit:J

    const/4 v6, 0x0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gtz v0, :cond_22

    .line 266
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    const/4 v0, 0x0

    .line 267
    iput-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_5a

    .line 268
    monitor-exit p0

    return-void

    .line 262
    :cond_22
    :try_start_22
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marked position ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->mark:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] is no longer valid - passed the read limit ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->readlimit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_4a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No position has been marked"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5a
    .catchall {:try_start_22 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception v0

    .line 254
    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget-boolean v0, p0, Lorg/apache/commons/io/input/NullInputStream;->eof:Z

    if-nez v0, :cond_2a

    .line 286
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 287
    invoke-direct {p0}, Lorg/apache/commons/io/input/NullInputStream;->doEndOfFile()I

    move-result p0

    int-to-long p0, p0

    return-wide p0

    .line 289
    :cond_12
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    .line 291
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_29

    .line 292
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    iget-wide v2, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    sub-long/2addr v0, v2

    sub-long/2addr p1, v0

    .line 293
    iget-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->size:J

    iput-wide v0, p0, Lorg/apache/commons/io/input/NullInputStream;->position:J

    :cond_29
    return-wide p1

    .line 284
    :cond_2a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Skip after end of file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
