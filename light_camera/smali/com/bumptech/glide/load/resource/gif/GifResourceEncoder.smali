.class public Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;
.super Ljava/lang/Object;
.source "GifResourceEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceEncoder<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final FACTORY:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

.field private static final TAG:Ljava/lang/String; = "GifEncoder"


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final factory:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

.field private final provider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->FACTORY:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .registers 3

    .line 33
    sget-object v0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->FACTORY:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 39
    new-instance v0, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/gif/GifBitmapProvider;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->provider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 40
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->factory:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    return-void
.end method

.method private decodeHeaders([B)Lcom/bumptech/glide/gifdecoder/GifDecoder;
    .registers 4

    .line 101
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->factory:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;->buildParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->setData([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    .line 103
    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->parseHeader()Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->factory:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->provider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    invoke-virtual {v1, p0}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;->buildDecoder(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)Lcom/bumptech/glide/gifdecoder/GifDecoder;

    move-result-object p0

    .line 106
    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V

    .line 107
    invoke-virtual {p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->advance()V

    return-object p0
.end method

.method private getTransformedFrame(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/gif/GifDrawable;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->factory:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-virtual {v0, p1, p0}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;->buildFrameResource(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p0

    .line 116
    invoke-virtual {p3}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p3}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getIntrinsicHeight()I

    move-result p3

    invoke-interface {p2, p0, p1, p3}, Lcom/bumptech/glide/load/Transformation;->transform(Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p1

    .line 118
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d

    .line 119
    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    :cond_1d
    return-object p1
.end method

.method private writeDataDirect([BLjava/io/OutputStream;)Z
    .registers 3

    .line 90
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    goto :goto_17

    :catch_5
    move-exception p0

    const-string p1, "GifEncoder"

    const/4 p2, 0x3

    .line 92
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_16

    const-string p1, "GifEncoder"

    const-string p2, "Failed to write data to output stream in GifResourceEncoder"

    .line 93
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method


# virtual methods
.method public encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .line 45
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    .line 47
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 48
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getFrameTransformation()Lcom/bumptech/glide/load/Transformation;

    move-result-object v2

    .line 49
    instance-of v3, v2, Lcom/bumptech/glide/load/resource/UnitTransformation;

    if-eqz v3, :cond_1b

    .line 50
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getData()[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->writeDataDirect([BLjava/io/OutputStream;)Z

    move-result p0

    return p0

    .line 53
    :cond_1b
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getData()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->decodeHeaders([B)Lcom/bumptech/glide/gifdecoder/GifDecoder;

    move-result-object v3

    .line 55
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->factory:Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;->buildEncoder()Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;

    move-result-object v4

    .line 56
    invoke-virtual {v4, p2}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->start(Ljava/io/OutputStream;)Z

    move-result p2

    const/4 v5, 0x0

    if-nez p2, :cond_31

    return v5

    :cond_31
    move p2, v5

    .line 60
    :goto_32
    invoke-virtual {v3}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getFrameCount()I

    move-result v6

    if-ge p2, v6, :cond_69

    .line 61
    invoke-virtual {v3}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextFrame()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 62
    invoke-direct {p0, v6, v2, p1}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->getTransformedFrame(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/gif/GifDrawable;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v6

    .line 64
    :try_start_40
    invoke-interface {v6}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v7}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->addFrame(Landroid/graphics/Bitmap;)Z

    move-result v7
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_64

    if-nez v7, :cond_50

    .line 73
    invoke-interface {v6}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    return v5

    .line 67
    :cond_50
    :try_start_50
    invoke-virtual {v3}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getCurrentFrameIndex()I

    move-result v7

    .line 68
    invoke-virtual {v3, v7}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getDelay(I)I

    move-result v7

    .line 69
    invoke-virtual {v4, v7}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->setDelay(I)V

    .line 71
    invoke-virtual {v3}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->advance()V
    :try_end_5e
    .catchall {:try_start_50 .. :try_end_5e} :catchall_64

    .line 73
    invoke-interface {v6}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_32

    :catchall_64
    move-exception p0

    invoke-interface {v6}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    throw p0

    .line 77
    :cond_69
    invoke-virtual {v4}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->finish()Z

    move-result p0

    const-string p2, "GifEncoder"

    const/4 v2, 0x2

    .line 79
    invoke-static {p2, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_ae

    const-string p2, "GifEncoder"

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encoded gif with "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getFrameCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " frames and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getData()[B

    move-result-object p1

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ae
    return p0
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .registers 3

    .line 25
    check-cast p1, Lcom/bumptech/glide/load/engine/Resource;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/gif/GifResourceEncoder;->encode(Lcom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z

    move-result p0

    return p0
.end method

.method public getId()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method
