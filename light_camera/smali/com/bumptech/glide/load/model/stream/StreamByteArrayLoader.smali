.class public Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;
.super Ljava/lang/Object;
.source "StreamByteArrayLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/stream/StreamModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/stream/StreamModelLoader<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, ""

    .line 21
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .registers 4

    .line 17
    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;->getResourceFetcher([BII)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object p0

    return-object p0
.end method

.method public getResourceFetcher([BII)Lcom/bumptech/glide/load/data/DataFetcher;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance p2, Lcom/bumptech/glide/load/data/ByteArrayFetcher;

    iget-object p0, p0, Lcom/bumptech/glide/load/model/stream/StreamByteArrayLoader;->id:Ljava/lang/String;

    invoke-direct {p2, p1, p0}, Lcom/bumptech/glide/load/data/ByteArrayFetcher;-><init>([BLjava/lang/String;)V

    return-object p2
.end method
