.class public Lcom/bumptech/glide/load/engine/cache/LruResourceCache;
.super Lcom/bumptech/glide/util/LruCache;
.source "LruResourceCache.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/MemoryCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/util/LruCache<",
        "Lcom/bumptech/glide/load/Key;",
        "Lcom/bumptech/glide/load/engine/Resource<",
        "*>;>;",
        "Lcom/bumptech/glide/load/engine/cache/MemoryCache;"
    }
.end annotation


# instance fields
.field private listener:Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/bumptech/glide/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected getSize(Lcom/bumptech/glide/load/engine/Resource;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;)I"
        }
    .end annotation

    .line 38
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->getSize()I

    move-result p0

    return p0
.end method

.method protected bridge synthetic getSize(Ljava/lang/Object;)I
    .registers 2

    .line 12
    check-cast p1, Lcom/bumptech/glide/load/engine/Resource;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->getSize(Lcom/bumptech/glide/load/engine/Resource;)I

    move-result p0

    return p0
.end method

.method protected onItemEvicted(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;)V"
        }
    .end annotation

    .line 31
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->listener:Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    if-eqz p1, :cond_9

    .line 32
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->listener:Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    invoke-interface {p0, p2}, Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;->onResourceRemoved(Lcom/bumptech/glide/load/engine/Resource;)V

    :cond_9
    return-void
.end method

.method protected bridge synthetic onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 12
    check-cast p1, Lcom/bumptech/glide/load/Key;

    check-cast p2, Lcom/bumptech/glide/load/engine/Resource;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->onItemEvicted(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)V

    return-void
.end method

.method public bridge synthetic put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 3

    .line 12
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/engine/Resource;

    return-object p0
.end method

.method public bridge synthetic remove(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 2

    .line 12
    invoke-super {p0, p1}, Lcom/bumptech/glide/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/engine/Resource;

    return-object p0
.end method

.method public setResourceRemovedListener(Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->listener:Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    return-void
.end method

.method public trimMemory(I)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_8

    .line 47
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->clearMemory()V

    goto :goto_15

    :cond_8
    const/16 v0, 0x28

    if-lt p1, v0, :cond_15

    .line 51
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->getCurrentSize()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->trimToSize(I)V

    :cond_15
    :goto_15
    return-void
.end method
