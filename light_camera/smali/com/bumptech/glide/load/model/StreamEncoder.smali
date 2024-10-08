.class public Lcom/bumptech/glide/load/model/StreamEncoder;
.super Ljava/lang/Object;
.source "StreamEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/Encoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/Encoder<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamEncoder"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .registers 6

    .line 20
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/util/ByteArrayPool;->getBytes()[B

    move-result-object p0

    :goto_8
    const/4 v0, 0x0

    .line 23
    :try_start_9
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_14

    .line 24
    invoke-virtual {p2, p0, v0, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_1f
    .catchall {:try_start_9 .. :try_end_13} :catchall_1d

    goto :goto_8

    :cond_14
    const/4 p1, 0x1

    .line 33
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    return p1

    :catchall_1d
    move-exception p1

    goto :goto_38

    :catch_1f
    move-exception p1

    :try_start_20
    const-string p2, "StreamEncoder"

    const/4 v1, 0x3

    .line 28
    invoke-static {p2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_30

    const-string p2, "StreamEncoder"

    const-string v1, "Failed to encode data onto the OutputStream"

    .line 29
    invoke-static {p2, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_1d

    .line 33
    :cond_30
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    return v0

    :goto_38
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    throw p1
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .registers 3

    .line 15
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/model/StreamEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result p0

    return p0
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method
