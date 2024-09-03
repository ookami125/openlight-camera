.class Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;
.super Ljava/lang/Object;
.source "GifResourceDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GifHeaderParserPool"
.end annotation


# instance fields
.field private final pool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bumptech/glide/gifdecoder/GifHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 136
    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;->pool:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public declared-synchronized obtain([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    .registers 3

    monitor-enter p0

    .line 139
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;->pool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    if-nez v0, :cond_10

    .line 141
    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    invoke-direct {v0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;-><init>()V

    .line 143
    :cond_10
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->setData([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object p1

    :catchall_16
    move-exception p1

    .line 138
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release(Lcom/bumptech/glide/gifdecoder/GifHeaderParser;)V
    .registers 3

    monitor-enter p0

    .line 147
    :try_start_1
    invoke-virtual {p1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->clear()V

    .line 148
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceDecoder$GifHeaderParserPool;->pool:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 149
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    .line 146
    monitor-exit p0

    throw p1
.end method
