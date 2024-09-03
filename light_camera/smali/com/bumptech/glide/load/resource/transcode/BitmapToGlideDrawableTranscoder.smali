.class public Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;
.super Ljava/lang/Object;
.source "BitmapToGlideDrawableTranscoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
        "Landroid/graphics/Bitmap;",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final glideBitmapDrawableTranscoder:Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 21
    new-instance v0, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;-><init>(Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;->glideBitmapDrawableTranscoder:Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;->glideBitmapDrawableTranscoder:Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/transcode/BitmapToGlideDrawableTranscoder;->glideBitmapDrawableTranscoder:Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/transcode/GlideBitmapDrawableTranscoder;->transcode(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p0

    return-object p0
.end method
