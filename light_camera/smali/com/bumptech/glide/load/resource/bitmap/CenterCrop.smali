.class public Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "CenterCrop.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 1

    const-string p0, "CenterCrop.com.bumptech.glide.load.resource.bitmap"

    return-object p0
.end method

.method protected transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 5

    .line 28
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    goto :goto_d

    :cond_b
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_d
    invoke-interface {p1, p3, p4, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 30
    invoke-static {p0, p2, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->centerCrop(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p0, :cond_22

    if-eq p0, p2, :cond_22

    .line 31
    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 32
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_22
    return-object p2
.end method
