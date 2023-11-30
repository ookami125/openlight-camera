.class public Lopenlight/co/lib/view/HistogramView$HistogramHelper;
.super Landroid/os/AsyncTask;
.source "HistogramView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/lib/view/HistogramView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistogramHelper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[F>;"
    }
.end annotation


# static fields
.field private static final MAX_BITMAP_SIZE:I = 0x320


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCounts:[F

.field private mCropBottom:I

.field private mCropLeft:I

.field private mCropRight:I

.field private mCropTop:I

.field private final mHistogram:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lopenlight/co/lib/view/HistogramView;",
            ">;"
        }
    .end annotation
.end field

.field private mImage:Landroid/media/Image;

.field private mImagePath:Ljava/lang/String;

.field private final mListener:Lopenlight/co/lib/view/HistogramView$OnDrawListener;

.field private final mRecycleBitmap:Z


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Lopenlight/co/lib/view/HistogramView;ZLopenlight/co/lib/view/HistogramView$OnDrawListener;IIII)V
    .locals 1

    .line 346
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, -0x1

    .line 327
    iput v0, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropLeft:I

    .line 328
    iput v0, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropTop:I

    .line 329
    iput v0, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropRight:I

    .line 330
    iput v0, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropBottom:I

    .line 347
    iput-object p1, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mBitmap:Landroid/graphics/Bitmap;

    .line 348
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mHistogram:Ljava/lang/ref/WeakReference;

    .line 349
    iput-boolean p3, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mRecycleBitmap:Z

    .line 350
    iput-object p4, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mListener:Lopenlight/co/lib/view/HistogramView$OnDrawListener;

    .line 351
    iput p5, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropLeft:I

    .line 352
    iput p6, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropTop:I

    .line 353
    iput p7, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropRight:I

    .line 354
    iput p8, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropBottom:I

    return-void
.end method

.method constructor <init>(Landroid/media/Image;Lopenlight/co/lib/view/HistogramView;ZLopenlight/co/lib/view/HistogramView$OnDrawListener;)V
    .locals 1

    .line 337
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, -0x1

    .line 327
    iput v0, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropLeft:I

    .line 328
    iput v0, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropTop:I

    .line 329
    iput v0, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropRight:I

    .line 330
    iput v0, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropBottom:I

    .line 338
    iput-object p1, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mImage:Landroid/media/Image;

    .line 339
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mHistogram:Ljava/lang/ref/WeakReference;

    .line 340
    iput-boolean p3, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mRecycleBitmap:Z

    .line 341
    iput-object p4, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mListener:Lopenlight/co/lib/view/HistogramView$OnDrawListener;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lopenlight/co/lib/view/HistogramView;Lopenlight/co/lib/view/HistogramView$OnDrawListener;)V
    .locals 1

    .line 365
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, -0x1

    .line 327
    iput v0, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropLeft:I

    .line 328
    iput v0, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropTop:I

    .line 329
    iput v0, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropRight:I

    .line 330
    iput v0, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropBottom:I

    .line 366
    iput-object p1, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mImagePath:Ljava/lang/String;

    .line 367
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mHistogram:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    .line 368
    iput-boolean p1, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mRecycleBitmap:Z

    .line 369
    iput-object p3, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mListener:Lopenlight/co/lib/view/HistogramView$OnDrawListener;

    return-void
.end method

.method constructor <init>([FLopenlight/co/lib/view/HistogramView;ZLopenlight/co/lib/view/HistogramView$OnDrawListener;)V
    .locals 1

    .line 358
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, -0x1

    .line 327
    iput v0, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropLeft:I

    .line 328
    iput v0, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropTop:I

    .line 329
    iput v0, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropRight:I

    .line 330
    iput v0, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropBottom:I

    .line 359
    iput-object p1, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCounts:[F

    .line 360
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mHistogram:Ljava/lang/ref/WeakReference;

    .line 361
    iput-boolean p3, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mRecycleBitmap:Z

    .line 362
    iput-object p4, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mListener:Lopenlight/co/lib/view/HistogramView$OnDrawListener;

    return-void
.end method

.method private getCountsFromBitmap(Landroid/graphics/Bitmap;Z)[F
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 412
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 413
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 417
    iget v5, v1, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropLeft:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ltz v5, :cond_1

    iget v5, v1, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropLeft:I

    if-nez v5, :cond_0

    iget v5, v1, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropTop:I

    if-nez v5, :cond_0

    iget v5, v1, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropRight:I

    if-ne v5, v0, :cond_0

    iget v5, v1, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropBottom:I

    if-eq v5, v4, :cond_1

    :cond_0
    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v7

    :goto_0
    if-eqz v5, :cond_2

    .line 423
    iget v5, v1, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropLeft:I

    .line 424
    iget v8, v1, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropTop:I

    .line 425
    iget v9, v1, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropRight:I

    sub-int/2addr v9, v5

    .line 426
    iget v10, v1, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCropBottom:I

    sub-int/2addr v10, v8

    goto :goto_1

    :cond_2
    move v9, v0

    move v10, v4

    move v5, v7

    move v8, v5

    :goto_1
    const/16 v11, 0x320

    if-gt v9, v11, :cond_4

    if-le v10, v11, :cond_3

    goto :goto_2

    :cond_3
    move v11, v7

    goto :goto_3

    :cond_4
    :goto_2
    move v11, v6

    :goto_3
    if-eqz v11, :cond_6

    const/high16 v12, 0x44480000    # 800.0f

    .line 436
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    int-to-float v0, v0

    mul-float/2addr v0, v12

    .line 438
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v4, v4

    mul-float/2addr v4, v12

    .line 439
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 440
    invoke-static {v2, v0, v4, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    int-to-float v4, v5

    mul-float/2addr v4, v12

    .line 444
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v4, v8

    mul-float/2addr v4, v12

    .line 445
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v4, v9

    mul-float/2addr v4, v12

    .line 446
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v4, v10

    mul-float/2addr v12, v4

    .line 447
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    if-eqz p2, :cond_5

    .line 450
    invoke-direct {v1, v2, v6}, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->recycleBitmap(Landroid/graphics/Bitmap;Z)V

    :cond_5
    move-object v4, v0

    goto :goto_4

    :cond_6
    move-object v4, v2

    :goto_4
    move/from16 v16, v5

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    mul-int v0, v18, v19

    .line 454
    new-array v5, v0, [I

    const/4 v14, 0x0

    move-object v12, v4

    move-object v13, v5

    move/from16 v15, v18

    .line 456
    :try_start_0
    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 458
    invoke-static {}, Lopenlight/co/lib/view/HistogramView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v9, "Couldn\'t read pixels from bitmap"

    invoke-static {v0, v9, v8}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_5
    if-nez p2, :cond_7

    if-eqz v11, :cond_9

    :cond_7
    if-ne v4, v2, :cond_8

    move v0, v6

    goto :goto_6

    :cond_8
    move v0, v7

    .line 462
    :goto_6
    invoke-direct {v1, v4, v0}, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->recycleBitmap(Landroid/graphics/Bitmap;Z)V

    :cond_9
    const/16 v0, 0x400

    .line 465
    new-array v0, v0, [F

    .line 467
    array-length v1, v5

    :goto_7
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_a

    .line 468
    aget v2, v5, v1

    .line 469
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 470
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 471
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v8, v3

    const v9, 0x3e99999a    # 0.3f

    mul-float/2addr v8, v9

    int-to-float v9, v4

    const v10, 0x3f170a3d    # 0.59f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    int-to-float v9, v2

    const v10, 0x3de147ae    # 0.11f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    .line 472
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v7

    .line 474
    aget v9, v0, v3

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v9, v10

    aput v9, v0, v3

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v6

    .line 475
    aget v3, v0, v4

    add-float/2addr v3, v10

    aput v3, v0, v4

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x2

    .line 476
    aget v3, v0, v2

    add-float/2addr v3, v10

    aput v3, v0, v2

    mul-int/lit8 v8, v8, 0x4

    add-int/lit8 v8, v8, 0x3

    .line 477
    aget v2, v0, v8

    add-float/2addr v2, v10

    aput v2, v0, v8

    goto :goto_7

    :cond_a
    return-object v0
.end method

.method private getCountsFromImage(Landroid/media/Image;)[F
    .locals 23

    move-object/from16 v0, p0

    .line 496
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 498
    iget-object v1, v0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mImage:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 499
    iget-object v1, v0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mListener:Lopenlight/co/lib/view/HistogramView$OnDrawListener;

    if-eqz v1, :cond_0

    .line 500
    iget-object v0, v0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mListener:Lopenlight/co/lib/view/HistogramView$OnDrawListener;

    invoke-interface {v0, v3}, Lopenlight/co/lib/view/HistogramView$OnDrawListener;->onDone(Z)V

    :cond_0
    return-object v2

    .line 505
    :cond_1
    aget-object v4, v1, v3

    .line 506
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    if-nez v5, :cond_3

    .line 507
    iget-object v1, v0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mImage:Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 508
    iget-object v1, v0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mListener:Lopenlight/co/lib/view/HistogramView$OnDrawListener;

    if-eqz v1, :cond_2

    .line 509
    iget-object v0, v0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mListener:Lopenlight/co/lib/view/HistogramView$OnDrawListener;

    invoke-interface {v0, v3}, Lopenlight/co/lib/view/HistogramView$OnDrawListener;->onDone(Z)V

    :cond_2
    return-object v2

    :cond_3
    const/4 v2, 0x1

    .line 514
    aget-object v5, v1, v2

    const/4 v6, 0x2

    .line 515
    aget-object v1, v1, v6

    .line 517
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getWidth()I

    move-result v7

    .line 518
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v8

    const/16 v9, 0x400

    .line 520
    new-array v9, v9, [F

    .line 522
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    .line 525
    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v11

    .line 526
    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v12

    .line 532
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 533
    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 534
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 538
    new-array v10, v10, [B

    .line 539
    new-array v13, v12, [B

    .line 540
    new-array v12, v12, [B

    move v14, v3

    :goto_0
    if-ge v14, v8, :cond_10

    .line 545
    array-length v15, v10

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v15, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v4, v10, v3, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    and-int/lit8 v6, v14, 0x1

    if-nez v6, :cond_4

    .line 547
    array-length v6, v13

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v15

    invoke-static {v6, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v5, v13, v3, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 548
    array-length v6, v12

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v15

    invoke-static {v6, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v1, v12, v3, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :cond_4
    move v6, v3

    move v15, v6

    move/from16 v16, v15

    :goto_1
    if-ge v6, v7, :cond_f

    .line 558
    aget-byte v2, v10, v6

    if-gez v2, :cond_5

    add-int/lit16 v2, v2, 0x100

    :cond_5
    and-int/lit8 v17, v6, 0x1

    if-nez v17, :cond_8

    .line 566
    div-int/lit8 v15, v6, 0x2

    mul-int/2addr v15, v11

    .line 567
    aget-byte v3, v13, v15

    if-ltz v3, :cond_6

    add-int/lit8 v3, v3, -0x80

    goto :goto_2

    :cond_6
    add-int/lit16 v3, v3, 0x80

    .line 575
    :goto_2
    aget-byte v15, v12, v15

    if-ltz v15, :cond_7

    add-int/lit8 v15, v15, -0x80

    :goto_3
    move-object/from16 v18, v1

    goto :goto_4

    :cond_7
    add-int/lit16 v15, v15, 0x80

    goto :goto_3

    :cond_8
    move-object/from16 v18, v1

    move v3, v15

    move/from16 v15, v16

    :goto_4
    int-to-float v1, v2

    const v16, 0x3faf7343

    move-object/from16 v19, v4

    int-to-float v4, v15

    mul-float v16, v16, v4

    move-object/from16 v20, v5

    add-float v5, v1, v16

    float-to-int v5, v5

    move/from16 v21, v7

    const/16 v7, 0xff

    if-gez v5, :cond_9

    const/4 v5, 0x0

    goto :goto_5

    :cond_9
    if-le v5, v7, :cond_a

    move v5, v7

    :cond_a
    :goto_5
    const v16, 0x3f32b032

    mul-float v4, v4, v16

    sub-float v4, v1, v4

    const v16, 0x3eacde3c

    int-to-float v7, v3

    mul-float v16, v16, v7

    sub-float v4, v4, v16

    float-to-int v4, v4

    if-gez v4, :cond_b

    move/from16 v22, v3

    const/16 v3, 0xff

    const/4 v4, 0x0

    goto :goto_6

    :cond_b
    move/from16 v22, v3

    const/16 v3, 0xff

    if-le v4, v3, :cond_c

    move v4, v3

    :cond_c
    :goto_6
    const v16, 0x3fddc0ca

    mul-float v7, v7, v16

    add-float/2addr v1, v7

    float-to-int v1, v1

    if-gez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_7

    :cond_d
    if-le v1, v3, :cond_e

    move v1, v3

    :cond_e
    :goto_7
    mul-int/lit8 v5, v5, 0x4

    const/4 v3, 0x0

    add-int/2addr v5, v3

    .line 594
    aget v7, v9, v5

    const/high16 v16, 0x3f800000    # 1.0f

    add-float v7, v7, v16

    aput v7, v9, v5

    mul-int/lit8 v4, v4, 0x4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 595
    aget v5, v9, v4

    add-float v5, v5, v16

    aput v5, v9, v4

    mul-int/lit8 v1, v1, 0x4

    const/4 v4, 0x2

    add-int/2addr v1, v4

    .line 596
    aget v5, v9, v1

    add-float v5, v5, v16

    aput v5, v9, v1

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x3

    .line 597
    aget v1, v9, v2

    add-float v1, v1, v16

    aput v1, v9, v2

    add-int/lit8 v6, v6, 0x1

    move/from16 v16, v15

    move-object/from16 v1, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v7, v21

    move/from16 v15, v22

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_f
    move-object/from16 v18, v1

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v7

    const/4 v4, 0x2

    add-int/lit8 v14, v14, 0x1

    move v6, v4

    move-object/from16 v4, v19

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 601
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->close()V

    .line 602
    iget-object v1, v0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mListener:Lopenlight/co/lib/view/HistogramView$OnDrawListener;

    if-eqz v1, :cond_11

    .line 603
    iget-object v0, v0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mListener:Lopenlight/co/lib/view/HistogramView$OnDrawListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lopenlight/co/lib/view/HistogramView$OnDrawListener;->onDone(Z)V

    :cond_11
    return-object v9
.end method

.method private getCountsFromLibCpCounts([F)[F
    .locals 0

    return-object p1
.end method

.method private getCountsFromPath(Ljava/lang/String;)[F
    .locals 4

    .line 399
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 400
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 401
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mBitmap:Landroid/graphics/Bitmap;

    .line 402
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x44480000    # 800.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 403
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    .line 404
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 405
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 406
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 407
    invoke-direct {p0, p1, v1}, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->getCountsFromBitmap(Landroid/graphics/Bitmap;Z)[F

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private recycleBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 484
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz p2, :cond_0

    .line 485
    iget-object p1, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mListener:Lopenlight/co/lib/view/HistogramView$OnDrawListener;

    if-eqz p1, :cond_0

    .line 486
    iget-object p0, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mListener:Lopenlight/co/lib/view/HistogramView$OnDrawListener;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lopenlight/co/lib/view/HistogramView$OnDrawListener;->onDone(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 316
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->doInBackground([Ljava/lang/Void;)[F

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[F
    .locals 1

    .line 374
    iget-object p1, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mImage:Landroid/media/Image;

    if-eqz p1, :cond_0

    .line 375
    iget-object p1, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mImage:Landroid/media/Image;

    invoke-direct {p0, p1}, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->getCountsFromImage(Landroid/media/Image;)[F

    move-result-object p0

    return-object p0

    .line 376
    :cond_0
    iget-object p1, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCounts:[F

    if-eqz p1, :cond_1

    .line 377
    iget-object p1, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mCounts:[F

    invoke-direct {p0, p1}, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->getCountsFromLibCpCounts([F)[F

    move-result-object p0

    return-object p0

    .line 378
    :cond_1
    iget-object p1, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    .line 379
    iget-object p1, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mBitmap:Landroid/graphics/Bitmap;

    iget-boolean v0, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mRecycleBitmap:Z

    invoke-direct {p0, p1, v0}, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->getCountsFromBitmap(Landroid/graphics/Bitmap;Z)[F

    move-result-object p0

    return-object p0

    .line 380
    :cond_2
    iget-object p1, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mImagePath:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 381
    iget-object p1, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mImagePath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->getCountsFromPath(Ljava/lang/String;)[F

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 316
    check-cast p1, [F

    invoke-virtual {p0, p1}, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->onPostExecute([F)V

    return-void
.end method

.method protected onPostExecute([F)V
    .locals 1

    .line 388
    iget-object v0, p0, Lopenlight/co/lib/view/HistogramView$HistogramHelper;->mHistogram:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/lib/view/HistogramView;

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0, p0}, Lopenlight/co/lib/view/HistogramView;->helperFinished(Lopenlight/co/lib/view/HistogramView$HistogramHelper;)V

    if-eqz p1, :cond_0

    .line 392
    invoke-virtual {v0, p1}, Lopenlight/co/lib/view/HistogramView;->setCounts([F)V

    :cond_0
    return-void
.end method
