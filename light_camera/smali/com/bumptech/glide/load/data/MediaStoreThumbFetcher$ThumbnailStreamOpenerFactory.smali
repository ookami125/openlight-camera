.class Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpenerFactory;
.super Ljava/lang/Object;
.source "MediaStoreThumbFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThumbnailStreamOpenerFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/net/Uri;II)Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;
    .registers 4

    .line 253
    # invokes: Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->isMediaStoreUri(Landroid/net/Uri;)Z
    invoke-static {p1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->access$000(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_2b

    const/16 p0, 0x200

    if-gt p2, p0, :cond_2b

    const/16 p0, 0x180

    if-le p3, p0, :cond_f

    goto :goto_2b

    .line 255
    :cond_f
    # invokes: Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->isMediaStoreVideo(Landroid/net/Uri;)Z
    invoke-static {p1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;->access$100(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_20

    .line 256
    new-instance p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;

    new-instance p1, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$VideoThumbnailQuery;

    invoke-direct {p1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$VideoThumbnailQuery;-><init>()V

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;-><init>(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;)V

    return-object p0

    .line 258
    :cond_20
    new-instance p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;

    new-instance p1, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ImageThumbnailQuery;

    invoke-direct {p1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ImageThumbnailQuery;-><init>()V

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;-><init>(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;)V

    return-object p0

    :cond_2b
    :goto_2b
    const/4 p0, 0x0

    return-object p0
.end method
