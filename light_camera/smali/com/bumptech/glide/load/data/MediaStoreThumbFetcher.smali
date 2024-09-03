.class public Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;
.super Ljava/lang/Object;
.source "MediaStoreThumbFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;,
        Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$VideoThumbnailQuery;,
        Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ImageThumbnailQuery;,
        Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;,
        Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;,
        Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

.field private static final MINI_HEIGHT:I = 0x180

.field private static final MINI_WIDTH:I = 0x200

.field private static final TAG:Ljava/lang/String; = "MediaStoreThumbFetcher"


# instance fields
.field private final context:Landroid/content/Context;

.field private final defaultFetcher:Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final factory:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

.field private final height:I

.field private inputStream:Ljava/io/InputStream;

.field private final mediaStoreUri:Landroid/net/Uri;

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/DataFetcher;II)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "Ljava/io/InputStream;",
            ">;II)V"
        }
    .end annotation

    .line 42
    sget-object v6, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/DataFetcher;IILcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/data/DataFetcher;IILcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "Ljava/io/InputStream;",
            ">;II",
            "Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->context:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->mediaStoreUri:Landroid/net/Uri;

    .line 49
    iput-object p3, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->defaultFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    .line 50
    iput p4, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->width:I

    .line 51
    iput p5, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->height:I

    .line 52
    iput-object p6, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->factory:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

    return-void
.end method

.method static synthetic access$000(Landroid/net/Uri;)Z
    .registers 1

    .line 26
    invoke-static {p0}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Landroid/net/Uri;)Z
    .registers 1

    .line 26
    invoke-static {p0}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->isMediaStoreVideo(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method private static isMediaStoreUri(Landroid/net/Uri;)Z
    .registers 3

    if-eqz p0, :cond_1c

    const-string v0, "content"

    .line 114
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "media"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method private static isMediaStoreVideo(Landroid/net/Uri;)Z
    .registers 2

    .line 120
    invoke-static {p0}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const-string v0, "video"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private openThumbInputStream(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;)Ljava/io/InputStream;
    .registers 5

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->mediaStoreUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->open(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_1b

    :catch_9
    move-exception v0

    const-string v1, "MediaStoreThumbFetcher"

    const/4 v2, 0x3

    .line 75
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "MediaStoreThumbFetcher"

    const-string v2, "Failed to find thumbnail file"

    .line 76
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    const/4 v1, -0x1

    if-eqz v0, :cond_27

    .line 82
    iget-object v2, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->mediaStoreUri:Landroid/net/Uri;

    invoke-virtual {p1, v2, p0}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result p0

    goto :goto_28

    :cond_27
    move p0, v1

    :goto_28
    if-eq p0, v1, :cond_30

    .line 86
    new-instance p1, Lcom/bumptech/glide/load/data/ExifOrientationStream;

    invoke-direct {p1, v0, p0}, Lcom/bumptech/glide/load/data/ExifOrientationStream;-><init>(Ljava/io/InputStream;I)V

    goto :goto_31

    :cond_30
    move-object p1, v0

    :goto_31
    return-object p1
.end method


# virtual methods
.method public cancel()V
    .registers 1

    return-void
.end method

.method public cleanup()V
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    .line 95
    :try_start_4
    iget-object v0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_9

    .line 100
    :catch_9
    :cond_9
    iget-object p0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->defaultFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {p0}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->mediaStoreUri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->factory:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;

    iget-object v1, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->mediaStoreUri:Landroid/net/Uri;

    iget v2, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->width:I

    iget v3, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->height:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;->build(Landroid/net/Uri;II)Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 60
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->openThumbInputStream(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->inputStream:Ljava/io/InputStream;

    .line 63
    :cond_14
    iget-object v0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_22

    .line 64
    iget-object v0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->defaultFetcher:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/data/DataFetcher;->loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    iput-object p1, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->inputStream:Ljava/io/InputStream;

    .line 67
    :cond_22
    iget-object p0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->inputStream:Ljava/io/InputStream;

    return-object p0
.end method

.method public bridge synthetic loadData(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->loadData(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method
