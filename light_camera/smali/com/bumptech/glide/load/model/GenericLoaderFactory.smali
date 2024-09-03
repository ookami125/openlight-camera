.class public Lcom/bumptech/glide/load/model/GenericLoaderFactory;
.super Ljava/lang/Object;
.source "GenericLoaderFactory.java"


# static fields
.field private static final NULL_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;


# instance fields
.field private final cachedModelLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/bumptech/glide/load/model/ModelLoader;",
            ">;>;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final modelClassToResourceFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lcom/bumptech/glide/load/model/GenericLoaderFactory$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/GenericLoaderFactory$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->NULL_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->context:Landroid/content/Context;

    return-void
.end method

.method private cacheModelLoader(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TT;TY;>;)V"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_14

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    iget-object p0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_14
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private cacheNullLoader(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;)V"
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->NULL_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cacheModelLoader(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;)V

    return-void
.end method

.method private getCachedLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TT;TY;>;"
        }
    .end annotation

    .line 163
    iget-object p0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_11

    .line 166
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/model/ModelLoader;

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method private getFactory(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "TT;TY;>;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_11

    .line 176
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-nez v0, :cond_42

    .line 180
    iget-object v1, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 186
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 187
    iget-object v3, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_1e

    .line 190
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    if-eqz v0, :cond_1e

    :cond_42
    return-object v0
.end method


# virtual methods
.method public declared-synchronized buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TT;TY;>;"
        }
    .end annotation

    monitor-enter p0

    .line 126
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->getCachedLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 131
    sget-object p1, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->NULL_MODEL_LOADER:Lcom/bumptech/glide/load/model/ModelLoader;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_29

    if-eqz p1, :cond_12

    const/4 p1, 0x0

    .line 132
    monitor-exit p0

    return-object p1

    .line 134
    :cond_12
    monitor-exit p0

    return-object v0

    .line 138
    :cond_14
    :try_start_14
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->getFactory(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 140
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->context:Landroid/content/Context;

    invoke-interface {v1, v0, p0}, Lcom/bumptech/glide/load/model/ModelLoaderFactory;->build(Landroid/content/Context;Lcom/bumptech/glide/load/model/GenericLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    .line 141
    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cacheModelLoader(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoader;)V

    goto :goto_27

    .line 144
    :cond_24
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cacheNullLoader(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_29

    .line 146
    :goto_27
    monitor-exit p0

    return-object v0

    :catchall_29
    move-exception p1

    .line 125
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "TT;TY;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 112
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object p1

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "TT;TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "TT;TY;>;"
        }
    .end annotation

    monitor-enter p0

    .line 73
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 75
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1a

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_1a
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/model/ModelLoaderFactory;

    if-eqz p1, :cond_3f

    .line 86
    iget-object p2, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    .line 87
    invoke-interface {p3, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p3
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_41

    if-eqz p3, :cond_2c

    const/4 p1, 0x0

    .line 94
    :cond_3f
    monitor-exit p0

    return-object p1

    :catchall_41
    move-exception p1

    .line 72
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregister(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;)",
            "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
            "TT;TY;>;"
        }
    .end annotation

    monitor-enter p0

    .line 50
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->cachedModelLoaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 53
    iget-object v1, p0, Lcom/bumptech/glide/load/model/GenericLoaderFactory;->modelClassToResourceFactories:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_18

    .line 55
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/load/model/ModelLoaderFactory;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 57
    :cond_18
    monitor-exit p0

    return-object v0

    :catchall_1a
    move-exception p1

    .line 49
    monitor-exit p0

    throw p1
.end method
