.class Lcom/bumptech/glide/load/engine/EngineResource;
.super Ljava/lang/Object;
.source "EngineResource.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/Resource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/Resource<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private acquired:I

.field private final isCacheable:Z

.field private isRecycled:Z

.field private key:Lcom/bumptech/glide/load/Key;

.field private listener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

.field private final resource:Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/Resource;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TZ;>;Z)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_a

    .line 29
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineResource;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 30
    iput-boolean p2, p0, Lcom/bumptech/glide/load/engine/EngineResource;->isCacheable:Z

    return-void

    .line 27
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Wrapped resource must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method acquire()V
    .registers 3

    .line 74
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineResource;->isRecycled:Z

    if-nez v0, :cond_21

    .line 77
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 80
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineResource;->acquired:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineResource;->acquired:I

    return-void

    .line 78
    :cond_19
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string v0, "Must call acquire on the main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot acquire a recycled resource"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public get()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    .line 44
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/EngineResource;->resource:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/EngineResource;->resource:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/Resource;->getSize()I

    move-result p0

    return p0
.end method

.method isCacheable()Z
    .registers 1

    .line 39
    iget-boolean p0, p0, Lcom/bumptech/glide/load/engine/EngineResource;->isCacheable:Z

    return p0
.end method

.method public recycle()V
    .registers 2

    .line 54
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineResource;->acquired:I

    if-gtz v0, :cond_19

    .line 57
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineResource;->isRecycled:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineResource;->isRecycled:Z

    .line 61
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/EngineResource;->resource:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    return-void

    .line 58
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot recycle a resource that has already been recycled"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot recycle a resource while it is still acquired"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method release()V
    .registers 3

    .line 93
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineResource;->acquired:I

    if-lez v0, :cond_2a

    .line 96
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 99
    iget v0, p0, Lcom/bumptech/glide/load/engine/EngineResource;->acquired:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/load/engine/EngineResource;->acquired:I

    if-nez v0, :cond_21

    .line 100
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineResource;->listener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineResource;->key:Lcom/bumptech/glide/load/Key;

    invoke-interface {v0, v1, p0}, Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;->onResourceReleased(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    :cond_21
    return-void

    .line 97
    :cond_22
    new-instance p0, Ljava/lang/IllegalThreadStateException;

    const-string v0, "Must call release on the main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :cond_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot release a recycled or not yet acquired resource"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setResourceListener(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V
    .registers 3

    .line 34
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineResource;->key:Lcom/bumptech/glide/load/Key;

    .line 35
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/EngineResource;->listener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    return-void
.end method
