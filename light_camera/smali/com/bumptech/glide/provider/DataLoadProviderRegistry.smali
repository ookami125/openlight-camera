.class public Lcom/bumptech/glide/provider/DataLoadProviderRegistry;
.super Ljava/lang/Object;
.source "DataLoadProviderRegistry.java"


# static fields
.field private static final GET_KEY:Lcom/bumptech/glide/util/MultiClassKey;


# instance fields
.field private final providers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/util/MultiClassKey;",
            "Lcom/bumptech/glide/provider/DataLoadProvider<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Lcom/bumptech/glide/util/MultiClassKey;

    invoke-direct {v0}, Lcom/bumptech/glide/util/MultiClassKey;-><init>()V

    sput-object v0, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->GET_KEY:Lcom/bumptech/glide/util/MultiClassKey;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->providers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/provider/DataLoadProvider;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lcom/bumptech/glide/provider/DataLoadProvider<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->GET_KEY:Lcom/bumptech/glide/util/MultiClassKey;

    monitor-enter v0

    .line 45
    :try_start_3
    sget-object v1, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->GET_KEY:Lcom/bumptech/glide/util/MultiClassKey;

    invoke-virtual {v1, p1, p2}, Lcom/bumptech/glide/util/MultiClassKey;->set(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 46
    iget-object p0, p0, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->providers:Ljava/util/Map;

    sget-object p1, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->GET_KEY:Lcom/bumptech/glide/util/MultiClassKey;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/provider/DataLoadProvider;

    .line 47
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1a

    if-nez p0, :cond_19

    .line 49
    invoke-static {}, Lcom/bumptech/glide/provider/EmptyDataLoadProvider;->get()Lcom/bumptech/glide/provider/DataLoadProvider;

    move-result-object p0

    :cond_19
    return-object p0

    :catchall_1a
    move-exception p0

    .line 47
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/provider/DataLoadProvider;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Lcom/bumptech/glide/provider/DataLoadProvider<",
            "TT;TZ;>;)V"
        }
    .end annotation

    .line 30
    iget-object p0, p0, Lcom/bumptech/glide/provider/DataLoadProviderRegistry;->providers:Ljava/util/Map;

    new-instance v0, Lcom/bumptech/glide/util/MultiClassKey;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/util/MultiClassKey;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {p0, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
