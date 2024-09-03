.class public Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource;
.super Lcom/bumptech/glide/load/resource/drawable/DrawableResource;
.source "GlideBitmapDrawableResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/resource/drawable/DrawableResource<",
        "Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/DrawableResource;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    return-void
.end method


# virtual methods
.method public getSize()I
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public recycle()V
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)Z

    return-void
.end method
