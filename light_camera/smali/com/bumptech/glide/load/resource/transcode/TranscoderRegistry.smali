.class public Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;
.super Ljava/lang/Object;
.source "TranscoderRegistry.java"


# static fields
.field private static final GET_KEY:Lcom/bumptech/glide/util/MultiClassKey;


# instance fields
.field private final factories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/util/MultiClassKey;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
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

    sput-object v0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->GET_KEY:Lcom/bumptech/glide/util/MultiClassKey;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->factories:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TR;>;"
        }
    .end annotation

    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 45
    invoke-static {}, Lcom/bumptech/glide/load/resource/transcode/UnitTranscoder;->get()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object p0

    return-object p0

    .line 48
    :cond_b
    sget-object v0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->GET_KEY:Lcom/bumptech/glide/util/MultiClassKey;

    monitor-enter v0

    .line 49
    :try_start_e
    sget-object v1, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->GET_KEY:Lcom/bumptech/glide/util/MultiClassKey;

    invoke-virtual {v1, p1, p2}, Lcom/bumptech/glide/util/MultiClassKey;->set(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 50
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->factories:Ljava/util/Map;

    sget-object v1, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->GET_KEY:Lcom/bumptech/glide/util/MultiClassKey;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 51
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_40

    if-eqz p0, :cond_21

    return-object p0

    .line 53
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No transcoder registered for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_40
    move-exception p0

    .line 51
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TR;>;)V"
        }
    .end annotation

    .line 29
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/transcode/TranscoderRegistry;->factories:Ljava/util/Map;

    new-instance v0, Lcom/bumptech/glide/util/MultiClassKey;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/util/MultiClassKey;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {p0, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
