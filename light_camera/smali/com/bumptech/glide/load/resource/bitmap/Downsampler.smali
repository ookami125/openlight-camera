.class public abstract Lcom/bumptech/glide/load/resource/bitmap/Downsampler;
.super Ljava/lang/Object;
.source "Downsampler.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/BitmapDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/bitmap/BitmapDecoder<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final AT_LEAST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field public static final AT_MOST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field private static final MARK_POSITION:I = 0x500000

.field public static final NONE:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

.field private static final OPTIONS_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Downsampler"

.field private static final TYPES_THAT_USE_POOL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 29
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->TYPES_THAT_USE_POOL:Ljava/util/Set;

    const/4 v0, 0x0

    .line 32
    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    .line 38
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->AT_LEAST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 54
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$2;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$2;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->AT_MOST:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 72
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$3;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler$3;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->NONE:Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeStream(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6

    .line 315
    iget-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_a

    const/high16 p1, 0x500000

    .line 321
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->mark(I)V

    goto :goto_d

    .line 326
    :cond_a
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fixMarkLimit()V

    :goto_d
    const/4 p1, 0x0

    .line 329
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 332
    :try_start_12
    iget-boolean v0, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_46

    .line 333
    invoke-virtual {p0}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;->reset()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_19} :catch_1a

    goto :goto_46

    :catch_1a
    move-exception p0

    const-string v0, "Downsampler"

    const/4 v1, 0x6

    .line 336
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_46

    const-string v0, "Downsampler"

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception loading inDecodeBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " sample="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_46
    :goto_46
    return-object p1
.end method

.method private downsampleWithSize(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IIILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .registers 11

    .line 211
    invoke-static {p1, p8}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getConfig(Ljava/io/InputStream;Lcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap$Config;

    move-result-object p0

    .line 212
    iput p7, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 213
    iput-object p0, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 214
    iget p8, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x1

    if-eq p8, v0, :cond_13

    const/16 p8, 0x13

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt p8, v0, :cond_2f

    :cond_13
    invoke-static {p1}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->shouldUsePool(Ljava/io/InputStream;)Z

    move-result p8

    if-eqz p8, :cond_2f

    int-to-double v0, p5

    int-to-double p7, p7

    div-double/2addr v0, p7

    .line 215
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p5, v0

    int-to-double v0, p6

    div-double/2addr v0, p7

    .line 216
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p6

    double-to-int p6, p6

    .line 218
    invoke-interface {p4, p5, p6, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->setInBitmap(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V

    .line 220
    :cond_2f
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getConfig(Ljava/io/InputStream;Lcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap$Config;
    .registers 8

    .line 254
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->ALWAYS_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq p1, v0, :cond_88

    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-eq p1, v0, :cond_88

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_10

    goto/16 :goto_88

    :cond_10
    const/4 v0, 0x0

    const/16 v1, 0x400

    .line 261
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    const/4 v1, 0x5

    .line 263
    :try_start_17
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    invoke-direct {v2, p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->hasAlpha()Z

    move-result v2
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_20} :catch_38
    .catchall {:try_start_17 .. :try_end_20} :catchall_36

    .line 270
    :try_start_20
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_34

    :catch_24
    move-exception p0

    const-string p1, "Downsampler"

    .line 272
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_34

    const-string p1, "Downsampler"

    const-string v0, "Cannot reset the input stream"

    .line 273
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_34
    :goto_34
    move v0, v2

    goto :goto_6b

    :catchall_36
    move-exception p1

    goto :goto_73

    :catch_38
    move-exception v2

    :try_start_39
    const-string v3, "Downsampler"

    .line 265
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_57

    const-string v3, "Downsampler"

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot determine whether the image has alpha or not from header for format "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_39 .. :try_end_57} :catchall_36

    .line 270
    :cond_57
    :try_start_57
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_6b

    :catch_5b
    move-exception p0

    const-string p1, "Downsampler"

    .line 272
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6b

    const-string p1, "Downsampler"

    const-string v1, "Cannot reset the input stream"

    .line 273
    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6b
    :goto_6b
    if-eqz v0, :cond_70

    .line 278
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_72

    :cond_70
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_72
    return-object p0

    .line 270
    :goto_73
    :try_start_73
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_87

    :catch_77
    move-exception p0

    const-string v0, "Downsampler"

    .line 272
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_87

    const-string v0, "Downsampler"

    const-string v1, "Cannot reset the input stream"

    .line 273
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    :cond_87
    :goto_87
    throw p1

    .line 256
    :cond_88
    :goto_88
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method private static declared-synchronized getDefaultOptions()Landroid/graphics/BitmapFactory$Options;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-class v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;

    monitor-enter v0

    .line 355
    :try_start_3
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1e

    .line 356
    :try_start_6
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/BitmapFactory$Options;

    .line 357
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_1b

    if-nez v2, :cond_19

    .line 359
    :try_start_11
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 360
    invoke-static {v2}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1e

    .line 363
    :cond_19
    monitor-exit v0

    return-object v2

    :catchall_1b
    move-exception v2

    .line 357
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v1

    .line 354
    monitor-exit v0

    throw v1
.end method

.method private getRoundedSampleSize(IIIII)I
    .registers 7

    const/high16 v0, -0x80000000

    if-ne p5, v0, :cond_5

    move p5, p3

    :cond_5
    if-ne p4, v0, :cond_8

    move p4, p2

    :cond_8
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_16

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_11

    goto :goto_16

    .line 194
    :cond_11
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getSampleSize(IIII)I

    move-result p0

    goto :goto_1a

    .line 192
    :cond_16
    :goto_16
    invoke-virtual {p0, p3, p2, p4, p5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getSampleSize(IIII)I

    move-result p0

    :goto_1a
    if-nez p0, :cond_1e

    const/4 p0, 0x0

    goto :goto_22

    .line 201
    :cond_1e
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    :goto_22
    const/4 p1, 0x1

    .line 204
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static releaseOptions(Landroid/graphics/BitmapFactory$Options;)V
    .registers 3

    .line 367
    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->resetOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 368
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    monitor-enter v0

    .line 369
    :try_start_6
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    invoke-interface {v1, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 370
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw p0
.end method

.method private static resetOptions(Landroid/graphics/BitmapFactory$Options;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x0

    .line 375
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    const/4 v1, 0x0

    .line 376
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 377
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    const/4 v2, 0x1

    .line 378
    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 379
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 380
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 381
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 382
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 383
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 385
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-gt v3, v1, :cond_1f

    .line 386
    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 387
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    :cond_1f
    return-void
.end method

.method private static setInBitmap(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 347
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-gt v1, v0, :cond_8

    .line 348
    iput-object p1, p0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_8
    return-void
.end method

.method private static shouldUsePool(Ljava/io/InputStream;)Z
    .registers 5

    .line 225
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v1, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/16 v0, 0x400

    .line 229
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    const/4 v0, 0x5

    .line 231
    :try_start_e
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getType()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v1

    .line 234
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->TYPES_THAT_USE_POOL:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1d} :catch_34
    .catchall {:try_start_e .. :try_end_1d} :catchall_32

    .line 241
    :try_start_1d
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_31

    :catch_21
    move-exception p0

    const-string v2, "Downsampler"

    .line 243
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "Downsampler"

    const-string v2, "Cannot reset the input stream"

    .line 244
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    :goto_31
    return v1

    :catchall_32
    move-exception v1

    goto :goto_5a

    :catch_34
    move-exception v1

    :try_start_35
    const-string v2, "Downsampler"

    .line 236
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string v2, "Downsampler"

    const-string v3, "Cannot determine the image type from header"

    .line 237
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_35 .. :try_end_44} :catchall_32

    .line 241
    :cond_44
    :try_start_44
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_58

    :catch_48
    move-exception p0

    const-string v1, "Downsampler"

    .line 243
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_58

    const-string v0, "Downsampler"

    const-string v1, "Cannot reset the input stream"

    .line 244
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_58
    :goto_58
    const/4 p0, 0x0

    return p0

    .line 241
    :goto_5a
    :try_start_5a
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_6e

    :catch_5e
    move-exception p0

    const-string v2, "Downsampler"

    .line 243
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6e

    const-string v0, "Downsampler"

    const-string v2, "Cannot reset the input stream"

    .line 244
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    :cond_6e
    :goto_6e
    throw v1
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .registers 24

    move-object/from16 v10, p2

    .line 108
    invoke-static {}, Lcom/bumptech/glide/util/ByteArrayPool;->get()Lcom/bumptech/glide/util/ByteArrayPool;

    move-result-object v11

    .line 109
    invoke-virtual {v11}, Lcom/bumptech/glide/util/ByteArrayPool;->getBytes()[B

    move-result-object v12

    .line 110
    invoke-virtual {v11}, Lcom/bumptech/glide/util/ByteArrayPool;->getBytes()[B

    move-result-object v13

    .line 111
    invoke-static {}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDefaultOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v14

    .line 114
    new-instance v3, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v13}, Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;[B)V

    .line 119
    invoke-static {v3}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->obtain(Ljava/io/InputStream;)Lcom/bumptech/glide/util/ExceptionCatchingInputStream;

    move-result-object v15

    .line 124
    new-instance v2, Lcom/bumptech/glide/util/MarkEnforcingInputStream;

    invoke-direct {v2, v15}, Lcom/bumptech/glide/util/MarkEnforcingInputStream;-><init>(Ljava/io/InputStream;)V

    const/high16 v0, 0x500000

    .line 126
    :try_start_24
    invoke-virtual {v15, v0}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->mark(I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_e6

    const/4 v1, 0x0

    const/4 v4, 0x5

    .line 129
    :try_start_29
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    invoke-direct {v0, v15}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getOrientation()I

    move-result v5
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_32} :catch_4d
    .catchall {:try_start_29 .. :try_end_32} :catchall_49

    .line 136
    :try_start_32
    invoke-virtual {v15}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->reset()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_36
    .catchall {:try_start_32 .. :try_end_35} :catchall_e6

    goto :goto_47

    :catch_36
    move-exception v0

    move-object v6, v0

    :try_start_38
    const-string v0, "Downsampler"

    .line 138
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_47

    const-string v0, "Downsampler"

    const-string v4, "Cannot reset the input stream"

    .line 139
    invoke-static {v0, v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_e6

    :cond_47
    :goto_47
    move v0, v5

    goto :goto_73

    :catchall_49
    move-exception v0

    move-object v1, v0

    goto/16 :goto_d0

    :catch_4d
    move-exception v0

    :try_start_4e
    const-string v5, "Downsampler"

    .line 131
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5d

    const-string v5, "Downsampler"

    const-string v6, "Cannot determine the image orientation from header"

    .line 132
    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_4e .. :try_end_5d} :catchall_49

    .line 136
    :cond_5d
    :try_start_5d
    invoke-virtual {v15}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->reset()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61
    .catchall {:try_start_5d .. :try_end_60} :catchall_e6

    goto :goto_72

    :catch_61
    move-exception v0

    move-object v5, v0

    :try_start_63
    const-string v0, "Downsampler"

    .line 138
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_72

    const-string v0, "Downsampler"

    const-string v4, "Cannot reset the input stream"

    .line 139
    invoke-static {v0, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_72
    :goto_72
    move v0, v1

    .line 144
    :goto_73
    iput-object v12, v14, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    move-object/from16 v9, p0

    .line 146
    invoke-virtual {v9, v2, v3, v14}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getDimensions(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)[I

    move-result-object v4

    .line 147
    aget v16, v4, v1

    const/4 v1, 0x1

    .line 148
    aget v17, v4, v1

    .line 150
    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getExifOrientationDegrees(I)I

    move-result v5

    move-object/from16 v4, p0

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, p3

    move/from16 v9, p4

    .line 151
    invoke-direct/range {v4 .. v9}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->getRoundedSampleSize(IIIII)I

    move-result v8

    move-object/from16 v1, p0

    move-object v4, v14

    move-object/from16 v5, p2

    move/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v9, p5

    .line 153
    invoke-direct/range {v1 .. v9}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->downsampleWithSize(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IIILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 160
    invoke-virtual {v15}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->getException()Ljava/io/IOException;

    move-result-object v2

    if-nez v2, :cond_ca

    const/4 v2, 0x0

    if-eqz v1, :cond_bd

    .line 167
    invoke-static {v1, v10, v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->rotateImageExif(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bd

    invoke-interface {v10, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_bd

    .line 170
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_bd
    .catchall {:try_start_63 .. :try_end_bd} :catchall_e6

    .line 176
    :cond_bd
    invoke-virtual {v11, v12}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    .line 177
    invoke-virtual {v11, v13}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    .line 178
    invoke-virtual {v15}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->release()V

    .line 179
    invoke-static {v14}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    return-object v2

    .line 162
    :cond_ca
    :try_start_ca
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_d0
    .catchall {:try_start_ca .. :try_end_d0} :catchall_e6

    .line 136
    :goto_d0
    :try_start_d0
    invoke-virtual {v15}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->reset()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d4
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_e6

    goto :goto_e5

    :catch_d4
    move-exception v0

    move-object v2, v0

    :try_start_d6
    const-string v0, "Downsampler"

    .line 138
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e5

    const-string v0, "Downsampler"

    const-string v3, "Cannot reset the input stream"

    .line 139
    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    :cond_e5
    :goto_e5
    throw v1
    :try_end_e6
    .catchall {:try_start_d6 .. :try_end_e6} :catchall_e6

    :catchall_e6
    move-exception v0

    .line 176
    invoke-virtual {v11, v12}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    .line 177
    invoke-virtual {v11, v13}, Lcom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    .line 178
    invoke-virtual {v15}, Lcom/bumptech/glide/util/ExceptionCatchingInputStream;->release()V

    .line 179
    invoke-static {v14}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->releaseOptions(Landroid/graphics/BitmapFactory$Options;)V

    throw v0
.end method

.method public bridge synthetic decode(Ljava/lang/Object;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual/range {p0 .. p5}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getDimensions(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)[I
    .registers 5

    const/4 p0, 0x1

    .line 307
    iput-boolean p0, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 308
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Lcom/bumptech/glide/util/MarkEnforcingInputStream;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 309
    iput-boolean p1, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 p2, 0x2

    .line 310
    new-array p2, p2, [I

    iget v0, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v0, p2, p1

    iget p1, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput p1, p2, p0

    return-object p2
.end method

.method protected abstract getSampleSize(IIII)I
.end method
