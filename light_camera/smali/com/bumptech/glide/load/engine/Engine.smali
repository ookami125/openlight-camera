.class public Lcom/bumptech/glide/load/engine/Engine;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/EngineJobListener;
.implements Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;
.implements Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;,
        Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;,
        Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;,
        Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;,
        Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Engine"


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

.field private final cache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private final diskCacheProvider:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

.field private final engineJobFactory:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

.field private final jobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/EngineJob;",
            ">;"
        }
    .end annotation
.end field

.field private final keyFactory:Lcom/bumptech/glide/load/engine/EngineKeyFactory;

.field private final resourceRecycler:Lcom/bumptech/glide/load/engine/ResourceRecycler;

.field private resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .registers 15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 63
    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/load/engine/Engine;-><init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lcom/bumptech/glide/load/engine/EngineKeyFactory;Ljava/util/Map;Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;Lcom/bumptech/glide/load/engine/ResourceRecycler;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lcom/bumptech/glide/load/engine/EngineKeyFactory;Ljava/util/Map;Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;Lcom/bumptech/glide/load/engine/ResourceRecycler;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/cache/MemoryCache;",
            "Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/EngineJob;",
            ">;",
            "Lcom/bumptech/glide/load/engine/EngineKeyFactory;",
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;>;>;",
            "Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;",
            "Lcom/bumptech/glide/load/engine/ResourceRecycler;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine;->cache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 72
    new-instance v0, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;-><init>(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->diskCacheProvider:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    if-nez p7, :cond_13

    .line 75
    new-instance p7, Ljava/util/HashMap;

    invoke-direct {p7}, Ljava/util/HashMap;-><init>()V

    .line 77
    :cond_13
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    if-nez p6, :cond_1c

    .line 80
    new-instance p6, Lcom/bumptech/glide/load/engine/EngineKeyFactory;

    invoke-direct {p6}, Lcom/bumptech/glide/load/engine/EngineKeyFactory;-><init>()V

    .line 82
    :cond_1c
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/Engine;->keyFactory:Lcom/bumptech/glide/load/engine/EngineKeyFactory;

    if-nez p5, :cond_25

    .line 85
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 87
    :cond_25
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    if-nez p8, :cond_2e

    .line 90
    new-instance p8, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    invoke-direct {p8, p3, p4, p0}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/bumptech/glide/load/engine/EngineJobListener;)V

    .line 92
    :cond_2e
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/Engine;->engineJobFactory:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    if-nez p9, :cond_37

    .line 95
    new-instance p9, Lcom/bumptech/glide/load/engine/ResourceRecycler;

    invoke-direct {p9}, Lcom/bumptech/glide/load/engine/ResourceRecycler;-><init>()V

    .line 97
    :cond_37
    iput-object p9, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceRecycler:Lcom/bumptech/glide/load/engine/ResourceRecycler;

    .line 99
    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->setResourceRemovedListener(Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V

    return-void
.end method

.method private getEngineResourceFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/EngineResource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation

    .line 232
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine;->cache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {p0, p1}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->remove(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_18

    .line 237
    :cond_a
    instance-of p1, p0, Lcom/bumptech/glide/load/engine/EngineResource;

    if-eqz p1, :cond_11

    .line 239
    check-cast p0, Lcom/bumptech/glide/load/engine/EngineResource;

    goto :goto_18

    .line 241
    :cond_11
    new-instance p1, Lcom/bumptech/glide/load/engine/EngineResource;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/bumptech/glide/load/engine/EngineResource;-><init>(Lcom/bumptech/glide/load/engine/Resource;Z)V

    move-object p0, p1

    :goto_18
    return-object p0
.end method

.method private getReferenceQueue()Ljava/lang/ref/ReferenceQueue;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;>;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_1b

    .line 303
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 304
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 305
    new-instance v1, Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;-><init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 307
    :cond_1b
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-object p0
.end method

.method private loadFromActiveResources(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineResource;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Z)",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    .line 204
    :cond_4
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_20

    .line 206
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/bumptech/glide/load/engine/EngineResource;

    if-eqz v0, :cond_1b

    .line 208
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineResource;->acquire()V

    goto :goto_20

    .line 210
    :cond_1b
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    :goto_20
    return-object v0
.end method

.method private loadFromCache(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineResource;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Z)",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation

    if-nez p2, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 222
    :cond_4
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/Engine;->getEngineResourceFromCache(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 224
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/EngineResource;->acquire()V

    .line 225
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    new-instance v1, Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/Engine;->getReferenceQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object p0

    invoke-direct {v1, p1, p2, p0}, Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    return-object p2
.end method

.method private static logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V
    .registers 6

    const-string v0, "Engine"

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "ms, key: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clearDiskCache()V
    .registers 1

    .line 298
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine;->diskCacheProvider:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->getDiskCache()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object p0

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->clear()V

    return-void
.end method

.method public load(Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/Priority;ZLcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/request/ResourceCallback;)Lcom/bumptech/glide/load/engine/Engine$LoadStatus;
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Key;",
            "II",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "TT;>;",
            "Lcom/bumptech/glide/provider/DataLoadProvider<",
            "TT;TZ;>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TZ;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Z",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Lcom/bumptech/glide/request/ResourceCallback;",
            ")",
            "Lcom/bumptech/glide/load/engine/Engine$LoadStatus;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p9

    move-object/from16 v2, p11

    .line 145
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 146
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v3

    .line 148
    invoke-interface/range {p4 .. p4}, Lcom/bumptech/glide/load/data/DataFetcher;->getId()Ljava/lang/String;

    move-result-object v6

    .line 149
    iget-object v5, v0, Lcom/bumptech/glide/load/engine/Engine;->keyFactory:Lcom/bumptech/glide/load/engine/EngineKeyFactory;

    invoke-interface/range {p5 .. p5}, Lcom/bumptech/glide/provider/DataLoadProvider;->getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v10

    invoke-interface/range {p5 .. p5}, Lcom/bumptech/glide/provider/DataLoadProvider;->getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v11

    invoke-interface/range {p5 .. p5}, Lcom/bumptech/glide/provider/DataLoadProvider;->getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v13

    invoke-interface/range {p5 .. p5}, Lcom/bumptech/glide/provider/DataLoadProvider;->getSourceEncoder()Lcom/bumptech/glide/load/Encoder;

    move-result-object v15

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v12, p6

    move-object/from16 v14, p7

    invoke-virtual/range {v5 .. v15}, Lcom/bumptech/glide/load/engine/EngineKeyFactory;->buildKey(Ljava/lang/String;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/Encoder;)Lcom/bumptech/glide/load/engine/EngineKey;

    move-result-object v5

    .line 153
    invoke-direct {v0, v5, v1}, Lcom/bumptech/glide/load/engine/Engine;->loadFromCache(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eqz v6, :cond_4a

    .line 155
    invoke-interface {v2, v6}, Lcom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V

    const-string v0, "Engine"

    .line 156
    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "Loaded resource from cache"

    .line 157
    invoke-static {v0, v3, v4, v5}, Lcom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    :cond_49
    return-object v7

    .line 162
    :cond_4a
    invoke-direct {v0, v5, v1}, Lcom/bumptech/glide/load/engine/Engine;->loadFromActiveResources(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object v6

    if-eqz v6, :cond_61

    .line 164
    invoke-interface {v2, v6}, Lcom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V

    const-string v0, "Engine"

    .line 165
    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string v0, "Loaded resource from active resources"

    .line 166
    invoke-static {v0, v3, v4, v5}, Lcom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    :cond_60
    return-object v7

    .line 171
    :cond_61
    iget-object v6, v0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/load/engine/EngineJob;

    if-eqz v6, :cond_81

    .line 173
    invoke-virtual {v6, v2}, Lcom/bumptech/glide/load/engine/EngineJob;->addCallback(Lcom/bumptech/glide/request/ResourceCallback;)V

    const-string v0, "Engine"

    .line 174
    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7b

    const-string v0, "Added to existing load"

    .line 175
    invoke-static {v0, v3, v4, v5}, Lcom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    .line 177
    :cond_7b
    new-instance v0, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    invoke-direct {v0, v2, v6}, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;-><init>(Lcom/bumptech/glide/request/ResourceCallback;Lcom/bumptech/glide/load/engine/EngineJob;)V

    return-object v0

    .line 180
    :cond_81
    iget-object v6, v0, Lcom/bumptech/glide/load/engine/Engine;->engineJobFactory:Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    invoke-virtual {v6, v5, v1}, Lcom/bumptech/glide/load/engine/Engine$EngineJobFactory;->build(Lcom/bumptech/glide/load/Key;Z)Lcom/bumptech/glide/load/engine/EngineJob;

    move-result-object v1

    .line 181
    new-instance v6, Lcom/bumptech/glide/load/engine/DecodeJob;

    iget-object v7, v0, Lcom/bumptech/glide/load/engine/Engine;->diskCacheProvider:Lcom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    move-object/from16 v16, v6

    move-object/from16 v17, v5

    move/from16 v18, p2

    move/from16 v19, p3

    move-object/from16 v20, p4

    move-object/from16 v21, p5

    move-object/from16 v22, p6

    move-object/from16 v23, p7

    move-object/from16 v24, v7

    move-object/from16 v25, p10

    move-object/from16 v26, p8

    invoke-direct/range {v16 .. v26}, Lcom/bumptech/glide/load/engine/DecodeJob;-><init>(Lcom/bumptech/glide/load/engine/EngineKey;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;)V

    .line 183
    new-instance v7, Lcom/bumptech/glide/load/engine/EngineRunnable;

    move-object/from16 v9, p8

    invoke-direct {v7, v1, v6, v9}, Lcom/bumptech/glide/load/engine/EngineRunnable;-><init>(Lcom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;Lcom/bumptech/glide/load/engine/DecodeJob;Lcom/bumptech/glide/Priority;)V

    .line 184
    iget-object v0, v0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/EngineJob;->addCallback(Lcom/bumptech/glide/request/ResourceCallback;)V

    .line 186
    invoke-virtual {v1, v7}, Lcom/bumptech/glide/load/engine/EngineJob;->start(Lcom/bumptech/glide/load/engine/EngineRunnable;)V

    const-string v0, "Engine"

    .line 188
    invoke-static {v0, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c3

    const-string v0, "Started new load"

    .line 189
    invoke-static {v0, v3, v4, v5}, Lcom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/bumptech/glide/load/Key;)V

    .line 191
    :cond_c3
    new-instance v0, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;-><init>(Lcom/bumptech/glide/request/ResourceCallback;Lcom/bumptech/glide/load/engine/EngineJob;)V

    return-object v0
.end method

.method public onEngineJobCancelled(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;)V
    .registers 4

    .line 273
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 274
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/EngineJob;

    .line 275
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 276
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-void
.end method

.method public onEngineJobComplete(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/EngineResource<",
            "*>;)V"
        }
    .end annotation

    .line 258
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    if-eqz p2, :cond_1c

    .line 261
    invoke-virtual {p2, p1, p0}, Lcom/bumptech/glide/load/engine/EngineResource;->setResourceListener(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V

    .line 263
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/EngineResource;->isCacheable()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 264
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    new-instance v1, Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/Engine;->getReferenceQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/bumptech/glide/load/engine/Engine$ResourceWeakReference;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_1c
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onResourceReleased(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V
    .registers 4

    .line 288
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 289
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/EngineResource;->isCacheable()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 291
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine;->cache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {p0, p1, p2}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    goto :goto_19

    .line 293
    :cond_14
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceRecycler:Lcom/bumptech/glide/load/engine/ResourceRecycler;

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/load/engine/ResourceRecycler;->recycle(Lcom/bumptech/glide/load/engine/Resource;)V

    :goto_19
    return-void
.end method

.method public onResourceRemoved(Lcom/bumptech/glide/load/engine/Resource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;)V"
        }
    .end annotation

    .line 282
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 283
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine;->resourceRecycler:Lcom/bumptech/glide/load/engine/ResourceRecycler;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/ResourceRecycler;->recycle(Lcom/bumptech/glide/load/engine/Resource;)V

    return-void
.end method

.method public release(Lcom/bumptech/glide/load/engine/Resource;)V
    .registers 2

    .line 247
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 248
    instance-of p0, p1, Lcom/bumptech/glide/load/engine/EngineResource;

    if-eqz p0, :cond_d

    .line 249
    check-cast p1, Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/EngineResource;->release()V

    return-void

    .line 251
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot release anything but an EngineResource"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
