.class public Lorg/apache/commons/io/input/TeeInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "TeeInputStream.java"


# instance fields
.field private final branch:Ljava/io/OutputStream;

.field private final closeBranch:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 4

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .registers 4

    .line 78
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 79
    iput-object p2, p0, Lorg/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;

    .line 80
    iput-boolean p3, p0, Lorg/apache/commons/io/input/TeeInputStream;->closeBranch:Z

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_d

    .line 95
    iget-boolean v0, p0, Lorg/apache/commons/io/input/TeeInputStream;->closeBranch:Z

    if-eqz v0, :cond_c

    .line 96
    iget-object p0, p0, Lorg/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    .line 95
    iget-boolean v1, p0, Lorg/apache/commons/io/input/TeeInputStream;->closeBranch:Z

    if-eqz v1, :cond_17

    .line 96
    iget-object p0, p0, Lorg/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    :cond_17
    throw v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-super {p0}, Lorg/apache/commons/io/input/ProxyInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 112
    iget-object p0, p0, Lorg/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_c
    return v0
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-super {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 148
    iget-object p0, p0, Lorg/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_d
    return v0
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/io/input/ProxyInputStream;->read([BII)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_c

    .line 131
    iget-object p0, p0, Lorg/apache/commons/io/input/TeeInputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_c
    return p3
.end method
