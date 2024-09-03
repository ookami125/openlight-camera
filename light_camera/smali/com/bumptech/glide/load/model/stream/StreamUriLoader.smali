.class public Lcom/bumptech/glide/load/model/stream/StreamUriLoader;
.super Lcom/bumptech/glide/load/model/UriLoader;
.source "StreamUriLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/stream/StreamModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/stream/StreamUriLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/model/UriLoader<",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/bumptech/glide/load/model/stream/StreamModelLoader<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 42
    const-class v0, Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-static {v0, p1}, Lcom/bumptech/glide/Glide;->buildStreamModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/model/stream/StreamUriLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/model/UriLoader;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V

    return-void
.end method


# virtual methods
.method protected getAssetPathFetcher(Landroid/content/Context;Ljava/lang/String;)Lcom/bumptech/glide/load/data/DataFetcher;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance p0, Lcom/bumptech/glide/load/data/StreamAssetPathFetcher;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/data/StreamAssetPathFetcher;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object p0
.end method

.method protected getLocalUriFetcher(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/data/DataFetcher;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance p0, Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/data/StreamLocalUriFetcher;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object p0
.end method
