.class public Lcom/bumptech/glide/manager/RequestTracker;
.super Ljava/lang/Object;
.source "RequestTracker.java"


# instance fields
.field private isPaused:Z

.field private final pendingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/Request;",
            ">;"
        }
    .end annotation
.end field

.field private final requests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/request/Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addRequest(Lcom/bumptech/glide/request/Request;)V
    .registers 2

    .line 45
    iget-object p0, p0, Lcom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearRequests()V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/Request;

    .line 94
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->clear()V

    goto :goto_a

    .line 96
    :cond_1a
    iget-object p0, p0, Lcom/bumptech/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public isPaused()Z
    .registers 1

    .line 60
    iget-boolean p0, p0, Lcom/bumptech/glide/manager/RequestTracker;->isPaused:Z

    return p0
.end method

.method public pauseRequests()V
    .registers 4

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->isPaused:Z

    .line 68
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/Request;

    .line 69
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 70
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->pause()V

    .line 71
    iget-object v2, p0, Lcom/bumptech/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_28
    return-void
.end method

.method public removeRequest(Lcom/bumptech/glide/request/Request;)V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 53
    iget-object p0, p0, Lcom/bumptech/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public restartRequests()V
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/Request;

    .line 104
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_a

    .line 106
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->pause()V

    .line 107
    iget-boolean v2, p0, Lcom/bumptech/glide/manager/RequestTracker;->isPaused:Z

    if-nez v2, :cond_2d

    .line 108
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->begin()V

    goto :goto_a

    .line 110
    :cond_2d
    iget-object v2, p0, Lcom/bumptech/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_33
    return-void
.end method

.method public resumeRequests()V
    .registers 4

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->isPaused:Z

    .line 81
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->getSnapshot(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/Request;

    .line 82
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isComplete()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->isRunning()Z

    move-result v2

    if-nez v2, :cond_d

    .line 83
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->begin()V

    goto :goto_d

    .line 86
    :cond_2f
    iget-object p0, p0, Lcom/bumptech/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public runRequest(Lcom/bumptech/glide/request/Request;)V
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->requests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    iget-boolean v0, p0, Lcom/bumptech/glide/manager/RequestTracker;->isPaused:Z

    if-nez v0, :cond_d

    .line 37
    invoke-interface {p1}, Lcom/bumptech/glide/request/Request;->begin()V

    goto :goto_12

    .line 39
    :cond_d
    iget-object p0, p0, Lcom/bumptech/glide/manager/RequestTracker;->pendingRequests:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_12
    return-void
.end method
