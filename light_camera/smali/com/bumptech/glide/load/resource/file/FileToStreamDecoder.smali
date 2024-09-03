.class public Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;
.super Ljava/lang/Object;
.source "FileToStreamDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder<",
        "Ljava/io/File;",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FILE_OPENER:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;


# instance fields
.field private final fileOpener:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

.field private streamDecoder:Lcom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->DEFAULT_FILE_OPENER:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/ResourceDecoder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "TT;>;)V"
        }
    .end annotation

    .line 24
    sget-object v0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->DEFAULT_FILE_OPENER:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/ResourceDecoder;Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "TT;>;",
            "Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->streamDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    .line 30
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->fileOpener:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    return-void
.end method


# virtual methods
.method public decode(Ljava/io/File;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    :try_start_1
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->fileOpener:Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder$FileOpener;->open(Ljava/io/File;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_15

    .line 39
    :try_start_7
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->streamDecoder:Lcom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {p0, p1, p2, p3}, Lcom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_13

    if-eqz p1, :cond_12

    .line 43
    :try_start_f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    return-object p0

    :catchall_13
    move-exception p0

    goto :goto_17

    :catchall_15
    move-exception p0

    move-object p1, v0

    :goto_17
    if-eqz p1, :cond_1c

    :try_start_19
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1c

    .line 46
    :catch_1c
    :cond_1c
    throw p0
.end method

.method public bridge synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/file/FileToStreamDecoder;->decode(Ljava/io/File;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p0

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method
