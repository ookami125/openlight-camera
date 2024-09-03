.class Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;
.super Ljava/lang/Object;
.source "MediaStoreThumbFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThumbnailStreamOpener"
.end annotation


# static fields
.field private static final DEFAULT_SERVICE:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;


# instance fields
.field private query:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;

.field private final service:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 142
    new-instance v0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    invoke-direct {v0}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->DEFAULT_SERVICE:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;)V
    .registers 3

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->service:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    .line 152
    iput-object p2, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->query:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;)V
    .registers 3

    .line 147
    sget-object v0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->DEFAULT_SERVICE:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;-><init>(Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;)V

    return-void
.end method

.method private parseThumbUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .registers 6

    const/4 v0, 0x0

    .line 199
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 201
    iget-object v0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->service:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 202
    iget-object v0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->service:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object p0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->service:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;->length(Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_2a

    .line 203
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    return-object p0
.end method


# virtual methods
.method public getOrientation(Landroid/content/Context;Landroid/net/Uri;)I
    .registers 7

    const/4 p0, 0x0

    .line 159
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_1f
    .catchall {:try_start_1 .. :try_end_9} :catchall_1a

    .line 160
    :try_start_9
    new-instance p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getOrientation()I

    move-result p0
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_18
    .catchall {:try_start_9 .. :try_end_12} :catchall_49

    if-eqz p1, :cond_48

    .line 168
    :try_start_14
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_48

    goto :goto_48

    :catch_18
    move-exception p0

    goto :goto_23

    :catchall_1a
    move-exception p1

    move-object v3, p1

    move-object p1, p0

    move-object p0, v3

    goto :goto_4a

    :catch_1f
    move-exception p1

    move-object v3, p1

    move-object p1, p0

    move-object p0, v3

    :goto_23
    :try_start_23
    const-string v0, "MediaStoreThumbFetcher"

    const/4 v1, 0x3

    .line 162
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "MediaStoreThumbFetcher"

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_23 .. :try_end_42} :catchall_49

    :cond_42
    if-eqz p1, :cond_47

    .line 168
    :try_start_44
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_47

    :catch_47
    :cond_47
    const/4 p0, -0x1

    :catch_48
    :cond_48
    :goto_48
    return p0

    :catchall_49
    move-exception p0

    :goto_4a
    if-eqz p1, :cond_4f

    :try_start_4c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_4f

    .line 171
    :catch_4f
    :cond_4f
    throw p0
.end method

.method public open(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->query:Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailQuery;->queryPath(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1b

    .line 183
    :try_start_9
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 184
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$ThumbnailStreamOpener;->parseThumbUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_14

    goto :goto_1c

    :catchall_14
    move-exception p0

    if-eqz p2, :cond_1a

    .line 188
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1a
    throw p0

    :cond_1b
    move-object p0, v0

    :goto_1c
    if-eqz p2, :cond_21

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_21
    if-eqz p0, :cond_2b

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    :cond_2b
    return-object v0
.end method
