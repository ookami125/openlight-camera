.class public Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder;
.super Ljava/lang/Object;
.source "GifBitmapWrapperStreamResourceDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder<",
        "Ljava/io/InputStream;",
        "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final gifBitmapDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/ResourceDecoder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "Lcom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder;->gifBitmapDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder;->gifBitmapDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    new-instance v0, Lcom/bumptech/glide/load/model/ImageVideoWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/model/ImageVideoWrapper;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {p0, v0, p2, p3}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder;->decode(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p0

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder;->gifBitmapDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {p0}, Lcom/bumptech/glide/load/ResourceDecoder;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
