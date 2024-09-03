.class public Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;
.super Ljava/lang/Object;
.source "AnimatedGifEncoder.java"


# static fields
.field private static final MIN_TRANSPARENT_PERCENTAGE:D = 4.0

.field private static final TAG:Ljava/lang/String; = "AnimatedGifEncoder"


# instance fields
.field private closeStream:Z

.field private colorDepth:I

.field private colorTab:[B

.field private delay:I

.field private dispose:I

.field private firstFrame:Z

.field private hasTransparentPixels:Z

.field private height:I

.field private image:Landroid/graphics/Bitmap;

.field private indexedPixels:[B

.field private out:Ljava/io/OutputStream;

.field private palSize:I

.field private pixels:[B

.field private repeat:I

.field private sample:I

.field private sizeSet:Z

.field private started:Z

.field private transIndex:I

.field private transparent:Ljava/lang/Integer;

.field private usedEntry:[Z

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->repeat:I

    const/4 v1, 0x0

    .line 54
    iput v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->delay:I

    .line 56
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    const/16 v2, 0x100

    .line 70
    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->usedEntry:[Z

    const/4 v2, 0x7

    .line 72
    iput v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->palSize:I

    .line 74
    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->dispose:I

    .line 76
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    .line 80
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sizeSet:Z

    const/16 v0, 0xa

    .line 82
    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sample:I

    return-void
.end method

.method private analyzePixels()V
    .registers 10

    .line 311
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    array-length v0, v0

    .line 312
    div-int/lit8 v1, v0, 0x3

    .line 313
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->indexedPixels:[B

    .line 314
    new-instance v2, Lcom/bumptech/glide/gifencoder/NeuQuant;

    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    iget v4, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sample:I

    invoke-direct {v2, v3, v0, v4}, Lcom/bumptech/glide/gifencoder/NeuQuant;-><init>([BII)V

    .line 316
    invoke-virtual {v2}, Lcom/bumptech/glide/gifencoder/NeuQuant;->process()[B

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    const/4 v0, 0x0

    move v3, v0

    .line 318
    :goto_1a
    iget-object v4, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    array-length v4, v4

    if-ge v3, v4, :cond_3a

    .line 319
    iget-object v4, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    aget-byte v4, v4, v3

    .line 320
    iget-object v5, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v7, v3, 0x2

    aget-byte v6, v6, v7

    aput-byte v6, v5, v3

    .line 321
    iget-object v5, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    aput-byte v4, v5, v7

    .line 322
    iget-object v4, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->usedEntry:[Z

    div-int/lit8 v5, v3, 0x3

    aput-boolean v0, v4, v5

    add-int/lit8 v3, v3, 0x3

    goto :goto_1a

    :cond_3a
    move v3, v0

    move v4, v3

    :goto_3c
    if-ge v3, v1, :cond_68

    .line 327
    iget-object v5, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v8, v7, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v2, v4, v5, v6}, Lcom/bumptech/glide/gifencoder/NeuQuant;->map(III)I

    move-result v4

    .line 328
    iget-object v5, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->usedEntry:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v4

    .line 329
    iget-object v5, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->indexedPixels:[B

    int-to-byte v4, v4

    aput-byte v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    move v4, v8

    goto :goto_3c

    :cond_68
    const/4 v1, 0x0

    .line 331
    iput-object v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    const/16 v1, 0x8

    .line 332
    iput v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorDepth:I

    const/4 v1, 0x7

    .line 333
    iput v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->palSize:I

    .line 335
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    if-eqz v1, :cond_83

    .line 336
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->findClosest(I)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transIndex:I

    goto :goto_8d

    .line 337
    :cond_83
    iget-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->hasTransparentPixels:Z

    if-eqz v1, :cond_8d

    .line 338
    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->findClosest(I)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transIndex:I

    :cond_8d
    :goto_8d
    return-void
.end method

.method private findClosest(I)I
    .registers 11

    .line 347
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 349
    :cond_6
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 350
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 351
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/high16 v2, 0x1000000

    .line 354
    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    array-length v3, v3

    const/4 v4, 0x0

    move v5, v2

    move v2, v4

    :goto_1a
    if-ge v4, v3, :cond_4c

    .line 356
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, v6, v4

    and-int/lit16 v4, v4, 0xff

    sub-int v4, v0, v4

    .line 357
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v8, v7, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    sub-int v6, v1, v6

    .line 358
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    sub-int v7, p1, v7

    mul-int/2addr v4, v4

    mul-int/2addr v6, v6

    add-int/2addr v4, v6

    mul-int/2addr v7, v7

    add-int/2addr v4, v7

    .line 360
    div-int/lit8 v6, v8, 0x3

    .line 361
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->usedEntry:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_49

    if-ge v4, v5, :cond_49

    move v5, v4

    move v2, v6

    :cond_49
    add-int/lit8 v4, v8, 0x1

    goto :goto_1a

    :cond_4c
    return v2
.end method

.method private getImagePixels()V
    .registers 12

    .line 374
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 375
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 377
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    if-ne v7, v0, :cond_14

    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    if-eq v8, v0, :cond_2a

    .line 379
    :cond_14
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    iget v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 380
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 381
    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 382
    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    :cond_2a
    mul-int v0, v7, v8

    .line 384
    new-array v0, v0, [I

    .line 385
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 388
    array-length v1, v0

    const/4 v2, 0x3

    mul-int/2addr v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    const/4 v1, 0x0

    .line 391
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->hasTransparentPixels:Z

    .line 393
    array-length v3, v0

    move v4, v1

    move v5, v4

    move v6, v5

    :goto_46
    if-ge v4, v3, :cond_71

    aget v7, v0, v4

    if-nez v7, :cond_4e

    add-int/lit8 v5, v5, 0x1

    .line 397
    :cond_4e
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v9, v6, 0x1

    and-int/lit16 v10, v7, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v6

    .line 398
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v8, v9, 0x1

    shr-int/lit8 v10, v7, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v6, v9

    .line 399
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v9, v8, 0x1

    shr-int/lit8 v7, v7, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v8

    add-int/lit8 v4, v4, 0x1

    move v6, v9

    goto :goto_46

    :cond_71
    mul-int/lit8 v5, v5, 0x64

    int-to-double v3, v5

    .line 402
    array-length v0, v0

    int-to-double v5, v0

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_7e

    const/4 v1, 0x1

    .line 405
    :cond_7e
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->hasTransparentPixels:Z

    const-string p0, "AnimatedGifEncoder"

    .line 406
    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_a3

    const-string p0, "AnimatedGifEncoder"

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got pixels for frame with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "% transparent pixels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a3
    return-void
.end method

.method private writeGraphicCtrlExt()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 416
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0xf9

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 417
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 419
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->hasTransparentPixels:Z

    if-nez v0, :cond_21

    move v0, v2

    move v3, v0

    goto :goto_24

    :cond_21
    const/4 v0, 0x1

    move v3, v0

    move v0, v1

    .line 426
    :goto_24
    iget v4, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->dispose:I

    if-ltz v4, :cond_2c

    .line 427
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->dispose:I

    and-int/lit8 v0, v0, 0x7

    :cond_2c
    shl-int/2addr v0, v1

    .line 432
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    or-int/2addr v0, v2

    or-int/2addr v0, v2

    or-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 437
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->delay:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 438
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transIndex:I

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 439
    iget-object p0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private writeImageDesc()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x0

    .line 447
    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 448
    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 449
    iget v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    invoke-direct {p0, v1}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 450
    iget v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    invoke-direct {p0, v1}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 452
    iget-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    if-eqz v1, :cond_22

    .line 454
    iget-object p0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2b

    .line 457
    :cond_22
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget p0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->palSize:I

    or-int/lit16 p0, p0, 0x80

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write(I)V

    :goto_2b
    return-void
.end method

.method private writeLSD()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 471
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 473
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->palSize:I

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 478
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 479
    iget-object p0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private writeNetscapeExt()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 487
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 488
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const-string v0, "NETSCAPE2.0"

    .line 489
    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeString(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 491
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 492
    iget v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->repeat:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeShort(I)V

    .line 493
    iget-object p0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private writePalette()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 501
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    array-length v0, v0

    rsub-int v0, v0, 0x300

    move v1, v3

    :goto_11
    if-ge v1, v0, :cond_1b

    .line 503
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1b
    return-void
.end method

.method private writePixels()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    new-instance v0, Lcom/bumptech/glide/gifencoder/LZWEncoder;

    iget v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    iget v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->indexedPixels:[B

    iget v4, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorDepth:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/gifencoder/LZWEncoder;-><init>(II[BI)V

    .line 512
    iget-object p0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->encode(Ljava/io/OutputStream;)V

    return-void
.end method

.method private writeShort(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 520
    iget-object p0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private writeString(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 527
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 528
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    return-void
.end method


# virtual methods
.method public addFrame(Landroid/graphics/Bitmap;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_45

    .line 151
    iget-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    if-nez v1, :cond_8

    goto :goto_45

    :cond_8
    const/4 v1, 0x1

    .line 156
    :try_start_9
    iget-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sizeSet:Z

    if-nez v2, :cond_18

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->setSize(II)V

    .line 160
    :cond_18
    iput-object p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    .line 161
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->getImagePixels()V

    .line 162
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->analyzePixels()V

    .line 163
    iget-boolean p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    if-eqz p1, :cond_31

    .line 164
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeLSD()V

    .line 165
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writePalette()V

    .line 166
    iget p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->repeat:I

    if-ltz p1, :cond_31

    .line 168
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeNetscapeExt()V

    .line 171
    :cond_31
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeGraphicCtrlExt()V

    .line 172
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeImageDesc()V

    .line 173
    iget-boolean p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    if-nez p1, :cond_3e

    .line 174
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writePalette()V

    .line 176
    :cond_3e
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writePixels()V

    .line 177
    iput-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_43} :catch_44

    move v0, v1

    :catch_44
    return v0

    :cond_45
    :goto_45
    return v0
.end method

.method public finish()Z
    .registers 5

    .line 190
    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 193
    :cond_6
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    const/4 v0, 0x1

    .line 195
    :try_start_9
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 196
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 197
    iget-boolean v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z

    if-eqz v2, :cond_1e

    .line 198
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1e} :catch_20

    :cond_1e
    move v2, v0

    goto :goto_21

    :catch_20
    move v2, v1

    .line 205
    :goto_21
    iput v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transIndex:I

    const/4 v3, 0x0

    .line 206
    iput-object v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    .line 207
    iput-object v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    .line 208
    iput-object v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->pixels:[B

    .line 209
    iput-object v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->indexedPixels:[B

    .line 210
    iput-object v3, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->colorTab:[B

    .line 211
    iput-boolean v1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z

    .line 212
    iput-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    return v2
.end method

.method public setDelay(I)V
    .registers 3

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p1, v0

    .line 94
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->delay:I

    return-void
.end method

.method public setDispose(I)V
    .registers 2

    if-ltz p1, :cond_4

    .line 107
    iput p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->dispose:I

    :cond_4
    return-void
.end method

.method public setFrameRate(F)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_e

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    .line 226
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->delay:I

    :cond_e
    return-void
.end method

.method public setQuality(I)V
    .registers 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    move p1, v0

    .line 242
    :cond_4
    iput p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sample:I

    return-void
.end method

.method public setRepeat(I)V
    .registers 2

    if-ltz p1, :cond_4

    .line 121
    iput p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->repeat:I

    :cond_4
    return-void
.end method

.method public setSize(II)V
    .registers 4

    .line 255
    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->firstFrame:Z

    if-nez v0, :cond_9

    return-void

    .line 257
    :cond_9
    iput p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    .line 258
    iput p2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    .line 259
    iget p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    const/4 p2, 0x1

    if-ge p1, p2, :cond_16

    const/16 p1, 0x140

    .line 260
    iput p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->width:I

    .line 261
    :cond_16
    iget p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    if-ge p1, p2, :cond_1e

    const/16 p1, 0xf0

    .line 262
    iput p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->height:I

    .line 263
    :cond_1e
    iput-boolean p2, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->sizeSet:Z

    return-void
.end method

.method public setTransparent(I)V
    .registers 2

    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->transparent:Ljava/lang/Integer;

    return-void
.end method

.method public start(Ljava/io/OutputStream;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    .line 278
    iput-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z

    .line 279
    iput-object p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    :try_start_9
    const-string p1, "GIF89a"

    .line 281
    invoke-direct {p0, p1}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->writeString(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_f

    move v0, v1

    .line 285
    :catch_f
    iput-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    return v0
.end method

.method public start(Ljava/lang/String;)Z
    .registers 4

    .line 298
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    .line 299
    iget-object p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->start(Ljava/io/OutputStream;)Z

    move-result p1

    const/4 v0, 0x1

    .line 300
    iput-boolean v0, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->closeStream:Z
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_17

    :catch_16
    const/4 p1, 0x0

    .line 304
    :goto_17
    iput-boolean p1, p0, Lcom/bumptech/glide/gifencoder/AnimatedGifEncoder;->started:Z

    return p1
.end method
