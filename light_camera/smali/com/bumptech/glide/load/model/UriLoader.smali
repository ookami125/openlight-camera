.class public abstract Lcom/bumptech/glide/load/model/UriLoader;
.super Ljava/lang/Object;
.source "UriLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
        "Landroid/net/Uri;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final urlLoader:Lcom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/ModelLoader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "TT;>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/bumptech/glide/load/model/UriLoader;->context:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/bumptech/glide/load/model/UriLoader;->urlLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    return-void
.end method

.method private static isLocalUri(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "file"

    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "content"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "android.resource"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method


# virtual methods
.method protected abstract getAssetPathFetcher(Landroid/content/Context;Ljava/lang/String;)Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract getLocalUriFetcher(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final getResourceFetcher(Landroid/net/Uri;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II)",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "TT;>;"
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/bumptech/glide/load/model/UriLoader;->isLocalUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 31
    invoke-static {p1}, Lcom/bumptech/glide/load/model/AssetUriParser;->isAssetUri(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 32
    invoke-static {p1}, Lcom/bumptech/glide/load/model/AssetUriParser;->toAssetPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 33
    iget-object p2, p0, Lcom/bumptech/glide/load/model/UriLoader;->context:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Lcom/bumptech/glide/load/model/UriLoader;->getAssetPathFetcher(Landroid/content/Context;Ljava/lang/String;)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object p0

    goto :goto_47

    .line 35
    :cond_1b
    iget-object p2, p0, Lcom/bumptech/glide/load/model/UriLoader;->context:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Lcom/bumptech/glide/load/model/UriLoader;->getLocalUriFetcher(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object p0

    goto :goto_47

    .line 37
    :cond_22
    iget-object v1, p0, Lcom/bumptech/glide/load/model/UriLoader;->urlLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    if-eqz v1, :cond_46

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 38
    :cond_36
    iget-object p0, p0, Lcom/bumptech/glide/load/model/UriLoader;->urlLoader:Lcom/bumptech/glide/load/model/ModelLoader;

    new-instance v0, Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0, p2, p3}, Lcom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object p0

    goto :goto_47

    :cond_46
    const/4 p0, 0x0

    :goto_47
    return-object p0
.end method

.method public bridge synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;
    .registers 4

    .line 16
    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/model/UriLoader;->getResourceFetcher(Landroid/net/Uri;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object p0

    return-object p0
.end method
