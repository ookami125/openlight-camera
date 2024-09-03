.class public Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
.super Ljava/lang/Object;
.source "BitmapEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceEncoder<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_COMPRESSION_QUALITY:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "BitmapEncoder"


# instance fields
.field private compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private quality:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x5a

    .line 32
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>(Landroid/graphics/Bitmap$CompressFormat;I)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap$CompressFormat;I)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 37
    iput p2, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->quality:I

    return-void
.end method

.method private getFormat(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$CompressFormat;
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    if-eqz v0, :cond_7

    .line 61
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 62
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result p0

    if-eqz p0, :cond_10

    .line 63
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    .line 65
    :cond_10
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method


# virtual methods
.method public encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .line 42
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 44
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    .line 45
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->getFormat(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v2

    .line 46
    iget p0, p0, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->quality:I

    invoke-virtual {p1, v2, p0, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string p0, "BitmapEncoder"

    const/4 p2, 0x2

    .line 47
    invoke-static {p0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_4a

    const-string p0, "BitmapEncoder"

    .line 48
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compressed with type: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " of size "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .registers 3

    .line 25
    check-cast p1, Lcom/bumptech/glide/load/engine/Resource;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z

    move-result p0

    return p0
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    const-string p0, "BitmapEncoder.com.bumptech.glide.load.resource.bitmap"

    return-object p0
.end method
