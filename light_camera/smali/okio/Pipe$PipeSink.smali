.class final Lokio/Pipe$PipeSink;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeSink"
.end annotation


# instance fields
.field final synthetic this$0:Lokio/Pipe;

.field final timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokio/Pipe;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance p1, Lokio/Timeout;

    invoke-direct {p1}, Lokio/Timeout;-><init>()V

    iput-object p1, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v0

    .line 96
    :try_start_5
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v1, v1, Lokio/Pipe;->sinkClosed:Z

    if-eqz v1, :cond_d

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_2b

    return-void

    :cond_d
    const/4 v1, 0x1

    .line 98
    :try_start_e
    invoke-virtual {p0}, Lokio/Pipe$PipeSink;->flush()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_1e

    .line 100
    :try_start_11
    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iput-boolean v1, v2, Lokio/Pipe;->sinkClosed:Z

    .line 101
    iget-object p0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object p0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 103
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v2

    .line 100
    iget-object v3, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iput-boolean v1, v3, Lokio/Pipe;->sinkClosed:Z

    .line 101
    iget-object p0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object p0, p0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    throw v2

    :catchall_2b
    move-exception p0

    .line 103
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public flush()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v0

    .line 85
    :try_start_5
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v1, v1, Lokio/Pipe;->sinkClosed:Z

    if-nez v1, :cond_33

    .line 87
    :goto_b
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v1, v1, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_31

    .line 88
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v1, v1, Lokio/Pipe;->sourceClosed:Z

    if-nez v1, :cond_29

    .line 89
    iget-object v1, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/Timeout;

    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v2, v2, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v1, v2}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_b

    .line 88
    :cond_29
    new-instance p0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_31
    monitor-exit v0

    return-void

    .line 85
    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_3b
    move-exception p0

    .line 91
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public timeout()Lokio/Timeout;
    .registers 1

    .line 107
    iget-object p0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/Timeout;

    return-object p0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v0

    .line 64
    :try_start_5
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v1, v1, Lokio/Pipe;->sinkClosed:Z

    if-nez v1, :cond_52

    :goto_b
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_50

    .line 67
    iget-object v3, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v3, v3, Lokio/Pipe;->sourceClosed:Z

    if-nez v3, :cond_48

    .line 69
    iget-object v3, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-wide v3, v3, Lokio/Pipe;->maxBufferSize:J

    iget-object v5, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v5, v5, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v5

    const/4 v7, 0x0

    sub-long/2addr v3, v5

    cmp-long v1, v3, v1

    if-nez v1, :cond_33

    .line 71
    iget-object v1, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/Timeout;

    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v2, v2, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v1, v2}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_b

    .line 75
    :cond_33
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 76
    iget-object v3, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v3, v3, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v3, p1, v1, v2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    const/4 v3, 0x0

    sub-long/2addr p2, v1

    .line 78
    iget-object v1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v1, v1, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_b

    .line 67
    :cond_48
    new-instance p0, Ljava/io/IOException;

    const-string p1, "source is closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 80
    :cond_50
    monitor-exit v0

    return-void

    .line 64
    :cond_52
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_5a
    move-exception p0

    .line 80
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5 .. :try_end_5c} :catchall_5a

    throw p0
.end method
