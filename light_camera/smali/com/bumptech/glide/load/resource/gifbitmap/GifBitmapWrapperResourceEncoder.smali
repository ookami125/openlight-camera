.class public Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResourceEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceEncoder<",
        "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapEncoder:Lcom/bumptech/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceEncoder<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final gifEncoder:Lcom/bumptech/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceEncoder<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/ResourceEncoder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceEncoder<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/ResourceEncoder<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->bitmapEncoder:Lcom/bumptech/glide/load/ResourceEncoder;

    .line 23
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->gifEncoder:Lcom/bumptech/glide/load/ResourceEncoder;

    return-void
.end method


# virtual methods
.method public encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .line 28
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    .line 29
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getBitmapResource()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 32
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->bitmapEncoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {p0, v0, p2}, Lcom/bumptech/glide/load/ResourceEncoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result p0

    return p0

    .line 34
    :cond_13
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->gifEncoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getGifResource()Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/bumptech/glide/load/ResourceEncoder;->encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .registers 3

    .line 15
    check-cast p1, Lcom/bumptech/glide/load/engine/Resource;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z

    move-result p0

    return p0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->id:Ljava/lang/String;

    if-nez v0, :cond_21

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->bitmapEncoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->gifEncoder:Lcom/bumptech/glide/load/ResourceEncoder;

    invoke-interface {v1}, Lcom/bumptech/glide/load/ResourceEncoder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->id:Ljava/lang/String;

    .line 43
    :cond_21
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;->id:Ljava/lang/String;

    return-object p0
.end method
