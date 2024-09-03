.class public abstract Lorg/apache/commons/io/input/ProxyReader;
.super Ljava/io/FilterReader;
.source "ProxyReader.java"


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method protected afterRead(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected beforeRead(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    .line 167
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    :goto_a
    return-void
.end method

.method protected handleIOException(Ljava/io/IOException;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    throw p1
.end method

.method public declared-synchronized mark(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 179
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->mark(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    goto :goto_d

    :catchall_7
    move-exception p1

    goto :goto_f

    :catch_9
    move-exception p1

    .line 181
    :try_start_a
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_7

    .line 183
    :goto_d
    monitor-exit p0

    return-void

    .line 178
    :goto_f
    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .registers 1

    .line 204
    iget-object p0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {p0}, Ljava/io/Reader;->markSupported()Z

    move-result p0

    return p0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 57
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 58
    iget-object v2, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->read()I

    move-result v2

    if-eq v2, v1, :cond_e

    goto :goto_f

    :cond_e
    move v0, v1

    .line 59
    :goto_f
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_13

    return v2

    :catch_13
    move-exception v0

    .line 62
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    return v1
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 117
    :try_start_2
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->length()I

    move-result v0

    goto :goto_a

    :catch_7
    move-exception p1

    goto :goto_17

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 118
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->read(Ljava/nio/CharBuffer;)I

    move-result p1

    .line 119
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_16} :catch_7

    return p1

    .line 122
    :goto_17
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    const/4 p0, -0x1

    return p0
.end method

.method public read([C)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 76
    :try_start_2
    array-length v0, p1

    goto :goto_7

    :catch_4
    move-exception p1

    goto :goto_14

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 77
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->read([C)I

    move-result p1

    .line 78
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_4

    return p1

    .line 81
    :goto_14
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    const/4 p0, -0x1

    return p0
.end method

.method public read([CII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 98
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result p1

    .line 99
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return p1

    :catch_d
    move-exception p1

    .line 102
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    const/4 p0, -0x1

    return p0
.end method

.method public ready()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    .line 153
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 192
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->reset()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    goto :goto_d

    :catchall_7
    move-exception v0

    goto :goto_f

    :catch_9
    move-exception v0

    .line 194
    :try_start_a
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_7

    .line 196
    :goto_d
    monitor-exit p0

    return-void

    .line 191
    :goto_f
    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide p1

    :catch_7
    move-exception p1

    .line 138
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method
