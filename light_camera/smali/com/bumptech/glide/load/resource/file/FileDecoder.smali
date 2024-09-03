.class public Lcom/bumptech/glide/load/resource/file/FileDecoder;
.super Ljava/lang/Object;
.source "FileDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder<",
        "Ljava/io/File;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Ljava/io/File;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance p0, Lcom/bumptech/glide/load/resource/file/FileResource;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/file/FileResource;-><init>(Ljava/io/File;)V

    return-object p0
.end method

.method public bridge synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/file/FileDecoder;->decode(Ljava/io/File;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p0

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method
