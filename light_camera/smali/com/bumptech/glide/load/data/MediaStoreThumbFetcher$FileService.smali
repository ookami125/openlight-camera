.class Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher$FileService;
.super Ljava/lang/Object;
.source "MediaStoreThumbFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/data/MediaStoreThumbFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileService"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exists(Ljava/io/File;)Z
    .registers 2

    .line 125
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 133
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public length(Ljava/io/File;)J
    .registers 2

    .line 129
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p0

    return-wide p0
.end method
