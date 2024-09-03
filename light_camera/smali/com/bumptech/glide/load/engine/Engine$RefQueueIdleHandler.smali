.class Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefQueueIdleHandler"
.end annotation


# instance fields
.field private final activeResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;>;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;>;)V"
        }
    .end annotation

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;->activeResources:Ljava/util/Map;

    .line 352
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;->queue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .registers 2

    .line 357
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;

    if-eqz v0, :cond_13

    .line 359
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;->activeResources:Ljava/util/Map;

    # getter for: Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;->key:Lcom/bumptech/glide/load/Key;
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;->access$000(Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;)Lcom/bumptech/glide/load/Key;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    const/4 p0, 0x1

    return p0
.end method
