.class public Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;
.super Ljava/lang/Object;
.source "DiskCacheAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 1

    return-void
.end method

.method public delete(Lcom/bumptech/glide/load/Key;)V
    .registers 2

    return-void
.end method

.method public get(Lcom/bumptech/glide/load/Key;)Ljava/io/File;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V
    .registers 3

    return-void
.end method
