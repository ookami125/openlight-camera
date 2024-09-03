.class public Lorg/apache/commons/io/output/ProxyOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ProxyOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method protected afterWrite(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected beforeWrite(I)V
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

    .line 117
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    .line 119
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

    :goto_a
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    .line 106
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

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

    .line 166
    throw p1
.end method

.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 54
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->beforeWrite(I)V

    .line 55
    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 56
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->afterWrite(I)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p1

    .line 58
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

    :goto_11
    return-void
.end method

.method public write([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 70
    :try_start_2
    array-length v0, p1

    goto :goto_7

    :catch_4
    move-exception p1

    goto :goto_13

    :cond_6
    const/4 v0, 0x0

    .line 71
    :goto_7
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->beforeWrite(I)V

    .line 72
    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 73
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->afterWrite(I)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_4

    goto :goto_16

    .line 75
    :goto_13
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

    :goto_16
    return-void
.end method

.method public write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyOutputStream;->beforeWrite(I)V

    .line 90
    iget-object v0, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 91
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyOutputStream;->afterWrite(I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p1

    .line 93
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

    :goto_10
    return-void
.end method
