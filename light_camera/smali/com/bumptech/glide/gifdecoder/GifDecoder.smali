.class public Lcom/bumptech/glide/gifdecoder/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;
    }
.end annotation


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final DISPOSAL_BACKGROUND:I = 0x2

.field private static final DISPOSAL_NONE:I = 0x1

.field private static final DISPOSAL_PREVIOUS:I = 0x3

.field private static final DISPOSAL_UNSPECIFIED:I = 0x0

.field private static final INITIAL_FRAME_POINTER:I = -0x1

.field private static final MAX_STACK_SIZE:I = 0x1000

.field private static final NULL_CODE:I = -0x1

.field public static final STATUS_FORMAT_ERROR:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_OPEN_ERROR:I = 0x2

.field public static final STATUS_PARTIAL_DECODE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GifDecoder"


# instance fields
.field private act:[I

.field private bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field private final block:[B

.field private data:[B

.field private framePointer:I

.field private header:Lcom/bumptech/glide/gifdecoder/GifHeader;

.field private mainPixels:[B

.field private mainScratch:[I

.field private parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

.field private pixelStack:[B

.field private prefix:[S

.field private previousImage:Landroid/graphics/Bitmap;

.field private rawData:Ljava/nio/ByteBuffer;

.field private savePrevious:Z

.field private status:I

.field private suffix:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 104
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V
    .registers 3

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 114
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    .line 155
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 156
    new-instance p1, Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {p1}, Lcom/bumptech/glide/gifdecoder/GifHeader;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    return-void
.end method

.method private decodeBitmapData(Lcom/bumptech/glide/gifdecoder/GifFrame;)V
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_d

    .line 527
    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    iget v3, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->bufferFrameStart:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_d
    if-nez v1, :cond_19

    .line 530
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr v1, v2

    goto :goto_1e

    :cond_19
    iget v2, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    mul-int/2addr v1, v2

    .line 534
    :goto_1e
    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    if-eqz v2, :cond_27

    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    array-length v2, v2

    if-ge v2, v1, :cond_2b

    .line 536
    :cond_27
    new-array v2, v1, [B

    iput-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 538
    :cond_2b
    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    const/16 v3, 0x1000

    if-nez v2, :cond_35

    .line 539
    new-array v2, v3, [S

    iput-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    .line 541
    :cond_35
    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    if-nez v2, :cond_3d

    .line 542
    new-array v2, v3, [B

    iput-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    .line 544
    :cond_3d
    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    if-nez v2, :cond_47

    const/16 v2, 0x1001

    .line 545
    new-array v2, v2, [B

    iput-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    .line 549
    :cond_47
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->read()I

    move-result v2

    const/4 v4, 0x1

    shl-int v5, v4, v2

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v7, v5, 0x2

    add-int/2addr v2, v4

    shl-int v8, v4, v2

    sub-int/2addr v8, v4

    const/4 v9, 0x0

    move v10, v9

    :goto_58
    if-ge v10, v5, :cond_66

    .line 558
    iget-object v11, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    aput-short v9, v11, v10

    .line 559
    iget-object v11, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    int-to-byte v12, v10

    aput-byte v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_58

    :cond_66
    const/4 v10, -0x1

    move/from16 v21, v2

    move/from16 v19, v7

    move/from16 v20, v8

    move v11, v9

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v22, v10

    :goto_7a
    if-ge v11, v1, :cond_177

    const/4 v9, 0x3

    if-nez v12, :cond_8a

    .line 568
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->readBlock()I

    move-result v12

    if-gtz v12, :cond_89

    .line 570
    iput v9, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    goto/16 :goto_177

    :cond_89
    const/4 v15, 0x0

    .line 576
    :cond_8a
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    aget-byte v3, v3, v15

    and-int/lit16 v3, v3, 0xff

    shl-int v3, v3, v16

    add-int/2addr v14, v3

    add-int/lit8 v16, v16, 0x8

    add-int/2addr v15, v4

    add-int/2addr v12, v10

    move/from16 v3, v16

    move/from16 v23, v17

    move/from16 v4, v22

    move/from16 v16, v11

    move/from16 v17, v13

    move/from16 v13, v19

    move/from16 v11, v21

    :goto_a5
    if-lt v3, v11, :cond_15b

    and-int v10, v14, v20

    shr-int/2addr v14, v11

    sub-int/2addr v3, v11

    if-ne v10, v5, :cond_b4

    move v11, v2

    move v13, v7

    move/from16 v20, v8

    const/4 v4, -0x1

    :goto_b2
    const/4 v10, -0x1

    goto :goto_a5

    :cond_b4
    if-le v10, v13, :cond_b9

    .line 598
    iput v9, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    goto :goto_bb

    :cond_b9
    if-ne v10, v6, :cond_ce

    :goto_bb
    move/from16 v22, v4

    move/from16 v21, v11

    move/from16 v19, v13

    move/from16 v11, v16

    move/from16 v13, v17

    move/from16 v17, v23

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    move/from16 v16, v3

    goto/16 :goto_173

    :cond_ce
    const/4 v9, -0x1

    if-ne v4, v9, :cond_e2

    .line 607
    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v19, v18, 0x1

    iget-object v9, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    aget-byte v9, v9, v10

    aput-byte v9, v4, v18

    move v4, v10

    move/from16 v23, v4

    move/from16 v18, v19

    :goto_e0
    const/4 v9, 0x3

    goto :goto_b2

    :cond_e2
    if-lt v10, v13, :cond_f3

    .line 614
    iget-object v9, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v19, v18, 0x1

    move/from16 v24, v2

    move/from16 v2, v23

    int-to-byte v2, v2

    aput-byte v2, v9, v18

    move v2, v4

    move/from16 v18, v19

    goto :goto_f6

    :cond_f3
    move/from16 v24, v2

    move v2, v10

    :goto_f6
    if-lt v2, v5, :cond_10d

    .line 618
    iget-object v9, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v19, v18, 0x1

    move/from16 v25, v3

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    aget-byte v3, v3, v2

    aput-byte v3, v9, v18

    .line 619
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    aget-short v2, v3, v2

    move/from16 v18, v19

    move/from16 v3, v25

    goto :goto_f6

    :cond_10d
    move/from16 v25, v3

    .line 621
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    .line 622
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    add-int/lit8 v9, v18, 0x1

    move/from16 v26, v5

    int-to-byte v5, v2

    aput-byte v5, v3, v18

    const/16 v3, 0x1000

    if-ge v13, v3, :cond_13c

    .line 626
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->prefix:[S

    int-to-short v4, v4

    aput-short v4, v3, v13

    .line 627
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->suffix:[B

    aput-byte v5, v3, v13

    add-int/lit8 v13, v13, 0x1

    and-int v3, v13, v20

    if-nez v3, :cond_13a

    const/16 v3, 0x1000

    if-ge v13, v3, :cond_13c

    add-int/lit8 v11, v11, 0x1

    add-int v20, v20, v13

    goto :goto_13c

    :cond_13a
    const/16 v3, 0x1000

    :cond_13c
    :goto_13c
    move/from16 v18, v9

    :goto_13e
    if-lez v18, :cond_151

    add-int/lit8 v18, v18, -0x1

    .line 639
    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    add-int/lit8 v5, v17, 0x1

    iget-object v9, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->pixelStack:[B

    aget-byte v9, v9, v18

    aput-byte v9, v4, v17

    add-int/lit8 v16, v16, 0x1

    move/from16 v17, v5

    goto :goto_13e

    :cond_151
    move/from16 v23, v2

    move v4, v10

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v5, v26

    goto :goto_e0

    :cond_15b
    move/from16 v24, v2

    move/from16 v26, v5

    move/from16 v2, v23

    move/from16 v22, v4

    move/from16 v21, v11

    move/from16 v19, v13

    move/from16 v11, v16

    move/from16 v13, v17

    const/4 v4, 0x1

    const/4 v9, 0x0

    move/from16 v17, v2

    move/from16 v16, v3

    move/from16 v2, v24

    :goto_173
    const/16 v3, 0x1000

    goto/16 :goto_7a

    :cond_177
    :goto_177
    if-ge v13, v1, :cond_181

    .line 647
    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    const/4 v3, 0x0

    aput-byte v3, v2, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_177

    :cond_181
    return-void
.end method

.method private getHeaderParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    .registers 2

    .line 384
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    if-nez v0, :cond_b

    .line 385
    new-instance v0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    invoke-direct {v0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    .line 387
    :cond_b
    iget-object p0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->parser:Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    return-object p0
.end method

.method private getNextBitmap()Landroid/graphics/Bitmap;
    .registers 5

    .line 690
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    sget-object v3, Lcom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-interface {v0, v1, v2, v3}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_20

    .line 692
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object p0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget p0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    sget-object v1, Lcom/bumptech/glide/gifdecoder/GifDecoder;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 694
    :cond_20
    invoke-static {v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setAlpha(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private read()I
    .registers 2

    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_9

    and-int/lit16 p0, v0, 0xff

    goto :goto_d

    :catch_9
    const/4 v0, 0x1

    .line 659
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private readBlock()I
    .registers 6

    .line 670
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->read()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1f

    :goto_7
    if-ge v1, v0, :cond_1f

    sub-int v2, v0, v1

    .line 677
    :try_start_b
    iget-object v3, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->block:[B

    invoke-virtual {v3, v4, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_14

    add-int/2addr v1, v2

    goto :goto_7

    :catch_14
    move-exception v0

    .line 682
    sget-object v2, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string v3, "Error Reading Block"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    .line 683
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    :cond_1f
    return v1
.end method

.method private static setAlpha(Landroid/graphics/Bitmap;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .line 700
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    .line 701
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_a
    return-void
.end method

.method private setPixels(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;
    .registers 16

    .line 427
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    .line 428
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v9, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    .line 431
    iget-object v10, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz p2, :cond_39

    .line 434
    iget v1, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-lez v1, :cond_39

    .line 437
    iget v1, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-ne v1, v11, :cond_24

    .line 440
    iget-boolean p2, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    if-nez p2, :cond_1f

    .line 441
    iget-object p2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget p2, p2, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgColor:I

    goto :goto_20

    :cond_1f
    move p2, v12

    .line 443
    :goto_20
    invoke-static {v10, p2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_39

    .line 444
    :cond_24
    iget p2, p2, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v1, 0x3

    if-ne p2, v1, :cond_39

    iget-object p2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_39

    .line 446
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    move v4, v0

    move v7, v0

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 451
    :cond_39
    :goto_39
    invoke-direct {p0, p1}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->decodeBitmapData(Lcom/bumptech/glide/gifdecoder/GifFrame;)V

    const/16 p2, 0x8

    const/4 v1, 0x1

    move v3, p2

    move v2, v1

    move p2, v12

    .line 457
    :goto_42
    iget v4, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    if-ge v12, v4, :cond_9e

    .line 459
    iget-boolean v4, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->interlace:Z

    if-eqz v4, :cond_5f

    .line 460
    iget v4, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ih:I

    const/4 v5, 0x4

    if-lt p2, v4, :cond_5c

    add-int/lit8 v2, v2, 0x1

    packed-switch v2, :pswitch_data_d0

    goto :goto_5c

    :pswitch_55
    move p2, v1

    move v3, v11

    goto :goto_5c

    :pswitch_58
    move v3, v5

    move p2, v11

    goto :goto_5c

    :pswitch_5b
    move p2, v5

    :cond_5c
    :goto_5c
    add-int v4, p2, v3

    goto :goto_61

    :cond_5f
    move v4, p2

    move p2, v12

    .line 481
    :goto_61
    iget v5, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iy:I

    add-int/2addr p2, v5

    .line 482
    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    if-ge p2, v5, :cond_9a

    .line 483
    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    mul-int/2addr p2, v5

    .line 485
    iget v5, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->ix:I

    add-int/2addr v5, p2

    .line 487
    iget v6, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    add-int/2addr v6, v5

    .line 488
    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v7, v7, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    add-int/2addr v7, p2

    if-ge v7, v6, :cond_81

    .line 490
    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v6, v6, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    add-int/2addr v6, p2

    .line 493
    :cond_81
    iget p2, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->iw:I

    mul-int/2addr p2, v12

    :goto_84
    if-ge v5, v6, :cond_9a

    .line 496
    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    add-int/lit8 v8, p2, 0x1

    aget-byte p2, v7, p2

    and-int/lit16 p2, p2, 0xff

    .line 497
    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    aget p2, v7, p2

    if-eqz p2, :cond_96

    .line 499
    aput p2, v10, v5

    :cond_96
    add-int/lit8 v5, v5, 0x1

    move p2, v8

    goto :goto_84

    :cond_9a
    add-int/lit8 v12, v12, 0x1

    move p2, v4

    goto :goto_42

    .line 507
    :cond_9e
    iget-boolean p2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    if-eqz p2, :cond_c0

    iget p2, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-eqz p2, :cond_aa

    iget p1, p1, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    if-ne p1, v1, :cond_c0

    .line 509
    :cond_aa
    iget-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-nez p1, :cond_b4

    .line 510
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 512
    :cond_b4
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    move v4, v0

    move v7, v0

    move v8, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 516
    :cond_c0
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getNextBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v10

    move v4, v0

    move v7, v0

    move v8, v9

    .line 517
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p0

    :pswitch_data_d0
    .packed-switch 0x2
        :pswitch_5b
        :pswitch_58
        :pswitch_55
    .end packed-switch
.end method


# virtual methods
.method public advance()V
    .registers 3

    .line 187
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    return-void
.end method

.method public clear()V
    .registers 4

    const/4 v0, 0x0

    .line 347
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 348
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    .line 349
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 350
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    .line 351
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_14

    .line 352
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->bitmapProvider:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->release(Landroid/graphics/Bitmap;)V

    .line 354
    :cond_14
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->previousImage:Landroid/graphics/Bitmap;

    .line 355
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public getCurrentFrameIndex()I
    .registers 1

    .line 230
    iget p0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    return p0
.end method

.method public getData()[B
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    return-object p0
.end method

.method public getDelay(I)I
    .registers 3

    if-ltz p1, :cond_15

    .line 198
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-ge p1, v0, :cond_15

    .line 199
    iget-object p0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object p0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget p0, p0, Lcom/bumptech/glide/gifdecoder/GifFrame;->delay:I

    goto :goto_16

    :cond_15
    const/4 p0, -0x1

    :goto_16
    return p0
.end method

.method public getFrameCount()I
    .registers 1

    .line 221
    iget-object p0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget p0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    return p0
.end method

.method public getHeight()I
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget p0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    return p0
.end method

.method public getLoopCount()I
    .registers 1

    .line 243
    iget-object p0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget p0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->loopCount:I

    return p0
.end method

.method public getNextDelay()I
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    if-lez v0, :cond_12

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    if-gez v0, :cond_b

    goto :goto_12

    .line 212
    :cond_b
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getDelay(I)I

    move-result p0

    return p0

    :cond_12
    :goto_12
    const/4 p0, -0x1

    return p0
.end method

.method public declared-synchronized getNextFrame()Landroid/graphics/Bitmap;
    .registers 10

    monitor-enter p0

    .line 252
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_d

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    if-gez v0, :cond_3b

    .line 253
    :cond_d
    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 254
    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to decode frame, frameCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->frameCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " framePointer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_39
    iput v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 258
    :cond_3b
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_ba

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_47

    goto/16 :goto_ba

    :cond_47
    const/4 v0, 0x0

    .line 264
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    .line 266
    iget-object v4, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v4, v4, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    iget v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 268
    iget v5, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    sub-int/2addr v5, v2

    if-ltz v5, :cond_66

    .line 270
    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v6, v6, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/gifdecoder/GifFrame;

    goto :goto_67

    :cond_66
    move-object v5, v3

    .line 274
    :goto_67
    iget-object v6, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    if-nez v6, :cond_72

    .line 275
    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v6, v6, Lcom/bumptech/glide/gifdecoder/GifHeader;->gct:[I

    iput-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    goto :goto_82

    .line 277
    :cond_72
    iget-object v6, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->lct:[I

    iput-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    .line 278
    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v6, v6, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgIndex:I

    iget v7, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    if-ne v6, v7, :cond_82

    .line 279
    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iput v0, v6, Lcom/bumptech/glide/gifdecoder/GifHeader;->bgColor:I

    .line 284
    :cond_82
    :goto_82
    iget-boolean v6, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    if-eqz v6, :cond_93

    .line 285
    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    iget v7, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    aget v6, v6, v7

    .line 287
    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    iget v8, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    aput v0, v7, v8

    move v0, v6

    .line 289
    :cond_93
    iget-object v6, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    if-nez v6, :cond_aa

    .line 290
    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 291
    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string v1, "No Valid Color Table"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_a6
    iput v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I
    :try_end_a8
    .catchall {:try_start_1 .. :try_end_a8} :catchall_dc

    .line 295
    monitor-exit p0

    return-object v3

    .line 299
    :cond_aa
    :try_start_aa
    invoke-direct {p0, v4, v5}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->setPixels(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 302
    iget-boolean v2, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->transparency:Z

    if-eqz v2, :cond_b8

    .line 303
    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->act:[I

    iget v3, v4, Lcom/bumptech/glide/gifdecoder/GifFrame;->transIndex:I

    aput v0, v2, v3
    :try_end_b8
    .catchall {:try_start_aa .. :try_end_b8} :catchall_dc

    .line 306
    :cond_b8
    monitor-exit p0

    return-object v1

    .line 259
    :cond_ba
    :goto_ba
    :try_start_ba
    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_da

    .line 260
    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode frame, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catchall {:try_start_ba .. :try_end_da} :catchall_dc

    .line 262
    :cond_da
    monitor-exit p0

    return-object v3

    :catchall_dc
    move-exception v0

    .line 251
    monitor-exit p0

    throw v0
.end method

.method public getStatus()I
    .registers 1

    .line 180
    iget p0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget p0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    return p0
.end method

.method public read(Ljava/io/InputStream;I)I
    .registers 7

    if-eqz p1, :cond_32

    const/16 v0, 0x4000

    if-lez p2, :cond_9

    add-int/lit16 p2, p2, 0x1000

    goto :goto_a

    :cond_9
    move p2, v0

    .line 319
    :goto_a
    :try_start_a
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 321
    new-array p2, v0, [B

    .line 322
    :goto_11
    array-length v0, p2

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1e

    .line 323
    invoke-virtual {v1, p2, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_11

    .line 325
    :cond_1e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 327
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->read([B)I
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_28} :catch_29

    goto :goto_35

    :catch_29
    move-exception p2

    .line 329
    sget-object v0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string v1, "Error reading data from stream"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    :cond_32
    const/4 p2, 0x2

    .line 332
    iput p2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    :goto_35
    if-eqz p1, :cond_43

    .line 337
    :try_start_37
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_43

    :catch_3b
    move-exception p1

    .line 340
    sget-object p2, Lcom/bumptech/glide/gifdecoder/GifDecoder;->TAG:Ljava/lang/String;

    const-string v0, "Error closing stream"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    :cond_43
    :goto_43
    iget p0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    return p0
.end method

.method public read([B)I
    .registers 4

    .line 397
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    .line 398
    invoke-direct {p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder;->getHeaderParser()Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->setData([B)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->parseHeader()Lcom/bumptech/glide/gifdecoder/GifHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    if-eqz p1, :cond_5d

    .line 401
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 402
    iget-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 403
    iget-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 406
    iget-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget p1, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr p1, v0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 407
    iget-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget p1, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr p1, v0

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    const/4 p1, 0x0

    .line 410
    iput-boolean p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    .line 411
    iget-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object p1, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_49
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 412
    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_49

    const/4 p1, 0x1

    .line 413
    iput-boolean p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    .line 419
    :cond_5d
    iget p0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    return p0
.end method

.method public resetFrameIndex()V
    .registers 2

    const/4 v0, -0x1

    .line 234
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    return-void
.end method

.method public setData(Lcom/bumptech/glide/gifdecoder/GifHeader;[B)V
    .registers 5

    .line 359
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->header:Lcom/bumptech/glide/gifdecoder/GifHeader;

    .line 360
    iput-object p2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->data:[B

    const/4 v0, 0x0

    .line 361
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->status:I

    const/4 v1, -0x1

    .line 362
    iput v1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->framePointer:I

    .line 364
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    .line 365
    iget-object p2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 366
    iget-object p2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->rawData:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 370
    iput-boolean v0, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    .line 371
    iget-object p2, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->frames:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_24
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifFrame;

    .line 372
    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifFrame;->dispose:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    const/4 p2, 0x1

    .line 373
    iput-boolean p2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->savePrevious:Z

    .line 379
    :cond_38
    iget p2, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget v0, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr p2, v0

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainPixels:[B

    .line 380
    iget p2, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->width:I

    iget p1, p1, Lcom/bumptech/glide/gifdecoder/GifHeader;->height:I

    mul-int/2addr p2, p1

    new-array p1, p2, [I

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/GifDecoder;->mainScratch:[I

    return-void
.end method
