.class Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
.super Ljava/lang/Object;
.source "GifResourceEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildDecoder(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)Lcom/bumptech/glide/gifdecoder/GifDecoder;
    .registers 2

    .line 133
    new-instance p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V

    return-object p0
.end method

.method public buildEncoder()Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    .registers 1

    .line 141
    new-instance p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;

    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;-><init>()V

    return-object p0
.end method

.method public buildFrameResource(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    return-object p0
.end method

.method public buildParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    .registers 1

    .line 137
    new-instance p0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;-><init>()V

    return-object p0
.end method
