.class public Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;
.super Lcom/bumptech/glide/load/resource/drawable/DrawableResource;
.source "GifDrawableResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/resource/drawable/DrawableResource<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/gif/GifDrawable;)V
    .registers 2

    .line 11
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getSize()I
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getData()[B

    move-result-object v0

    array-length v0, v0

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getFirstFrame()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public recycle()V
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->stop()V

    .line 22
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifDrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->recycle()V

    return-void
.end method
