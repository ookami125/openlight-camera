.class Lcom/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher;
.super Ljava/lang/Object;
.source "GifFrameModelLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/GifFrameModelLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GifFrameDataFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "Lcom/bumptech/glide/gifdecoder/GifDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field private final decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    return-void
.end method

.method public cleanup()V
    .registers 1

    return-void
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getCurrentFrameIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/gifdecoder/GifDecoder;
    .registers 2

    .line 24
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher;->decoder:Lcom/bumptech/glide/gifdecoder/GifDecoder;

    return-object p0
.end method

.method public bridge synthetic loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher;->loadData(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/gifdecoder/GifDecoder;

    move-result-object p0

    return-object p0
.end method
