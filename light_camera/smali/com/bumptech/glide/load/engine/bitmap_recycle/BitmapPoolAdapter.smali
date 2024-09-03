.class public Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;
.super Ljava/lang/Object;
.source "BitmapPoolAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMemory()V
    .registers 1

    return-void
.end method

.method public get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaxSize()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public put(Landroid/graphics/Bitmap;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public setSizeMultiplier(F)V
    .registers 2

    return-void
.end method

.method public trimMemory(I)V
    .registers 2

    return-void
.end method
