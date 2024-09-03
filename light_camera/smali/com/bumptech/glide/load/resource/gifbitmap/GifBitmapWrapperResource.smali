.class public Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/Resource<",
        "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;)V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 18
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->data:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    return-void

    .line 16
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Data must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public get()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->data:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 11
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->get()Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->data:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getSize()I

    move-result p0

    return p0
.end method

.method public recycle()V
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->data:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getBitmapResource()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 35
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 37
    :cond_b
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;->data:Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getGifResource()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 39
    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    :cond_16
    return-void
.end method
