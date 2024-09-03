.class public Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
.super Ljava/io/InputStream;
.source "ExceptionCatchingInputStream.java"


# static fields
.field private static final QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bumptech/glide/util/ExceptionCatchingInputStream;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private exception:Ljava/io/IOException;

.field private wrapped:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 16
    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->QUEUE:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method static clearQueue()V
    .registers 1

    .line 35
    :goto_0
    sget-object v0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->QUEUE:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 36
    sget-object v0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->QUEUE:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_e
    return-void
.end method

.method public static obtain(Ljava/io/InputStream;)Lcom/bumptech/glide/util/ExceptionCatchingInputStream;
    .registers 3

    .line 23
    sget-object v0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->QUEUE:Ljava/util/Queue;

    monitor-enter v0

    .line 24
    :try_start_3
    sget-object v1, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->QUEUE:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;

    .line 25
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    if-nez v1, :cond_13

    .line 27
    new-instance v1, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;

    invoke-direct {v1}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;-><init>()V

    .line 29
    :cond_13
    invoke-virtual {v1, p0}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->setInputStream(Ljava/io/InputStream;)V

    return-object v1

    :catchall_17
    move-exception p0

    .line 25
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p0
.end method


# virtual methods
.method public available()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object p0, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object p0, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getException()Ljava/io/IOException;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->exception:Ljava/io/IOException;

    return-object p0
.end method

.method public mark(I)V
    .registers 2

    .line 60
    iget-object p0, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result p0

    return p0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    .line 115
    iput-object v0, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->exception:Ljava/io/IOException;

    const/4 v0, -0x1

    :goto_b
    return v0
.end method

.method public read([B)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_b

    :catch_7
    move-exception p1

    .line 74
    iput-object p1, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->exception:Ljava/io/IOException;

    const/4 p1, -0x1

    :goto_b
    return p1
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_b

    :catch_7
    move-exception p1

    .line 86
    iput-object p1, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->exception:Ljava/io/IOException;

    const/4 p1, -0x1

    :goto_b
    return p1
.end method

.method public release()V
    .registers 3

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->exception:Ljava/io/IOException;

    .line 127
    iput-object v0, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    .line 128
    sget-object v0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->QUEUE:Ljava/util/Queue;

    monitor-enter v0

    .line 129
    :try_start_8
    sget-object v1, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->QUEUE:Ljava/util/Queue;

    invoke-interface {v1, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 130
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public declared-synchronized reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 95
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    .line 93
    monitor-exit p0

    throw v0
.end method

.method setInputStream(Ljava/io/InputStream;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    return-void
.end method

.method public skip(J)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_c

    :catch_7
    move-exception p1

    .line 103
    iput-object p1, p0, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->exception:Ljava/io/IOException;

    const-wide/16 p1, 0x0

    :goto_c
    return-wide p1
.end method
