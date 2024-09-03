.class public Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    }
.end annotation


# static fields
.field private static final BYTES_PER_FORMAT:[I

.field private static final EXIF_MAGIC_NUMBER:I = 0xffd8

.field private static final EXIF_SEGMENT_TYPE:I = 0xe1

.field private static final GIF_HEADER:I = 0x474946

.field private static final INTEL_TIFF_MAGIC_NUMBER:I = 0x4949

.field private static final JPEG_EXIF_SEGMENT_PREAMBLE:Ljava/lang/String; = "Exif\u0000\u0000"

.field private static final JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

.field private static final MARKER_EOI:I = 0xd9

.field private static final MOTOROLA_TIFF_MAGIC_NUMBER:I = 0x4d4d

.field private static final ORIENTATION_TAG_TYPE:I = 0x112

.field private static final PNG_HEADER:I = -0x76afb1b9

.field private static final SEGMENT_SOS:I = 0xda

.field private static final SEGMENT_START_ID:I = 0xff

.field private static final TAG:Ljava/lang/String; = "ImageHeaderParser"


# instance fields
.field private final streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xd

    .line 62
    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->BYTES_PER_FORMAT:[I

    const/4 v0, 0x0

    .line 67
    new-array v0, v0, [B

    :try_start_c
    const-string v1, "Exif\u0000\u0000"

    const-string v2, "UTF-8"

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_14} :catch_15

    move-object v0, v1

    .line 73
    :catch_15
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    return-void

    :array_18
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    return-void
.end method

.method private static calcTagOffset(II)I
    .registers 2

    add-int/lit8 p0, p0, 0x2

    mul-int/lit8 p1, p1, 0xc

    add-int/2addr p0, p1

    return p0
.end method

.method private getExifSegment()[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt8()S

    move-result v0

    const/16 v1, 0xff

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2b

    const-string p0, "ImageHeaderParser"

    .line 153
    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2a

    const-string p0, "ImageHeaderParser"

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown segmentId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-object v3

    .line 159
    :cond_2b
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt8()S

    move-result v0

    const/16 v1, 0xda

    if-ne v0, v1, :cond_36

    return-object v3

    :cond_36
    const/16 v1, 0xd9

    if-ne v0, v1, :cond_4a

    const-string p0, "ImageHeaderParser"

    .line 164
    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_49

    const-string p0, "ImageHeaderParser"

    const-string v0, "Found MARKER_EOI in exif segment"

    .line 165
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    return-object v3

    .line 171
    :cond_4a
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v4, 0xe1

    if-eq v0, v4, :cond_90

    .line 174
    iget-object v4, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->skip(J)J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-eqz v4, :cond_0

    const-string p0, "ImageHeaderParser"

    .line 176
    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_8f

    const-string p0, "ImageHeaderParser"

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to skip enough data, type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", wanted to skip: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but actually skipped: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    return-object v3

    .line 185
    :cond_90
    new-array v4, v1, [B

    .line 186
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {p0, v4}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->read([B)I

    move-result p0

    if-eq p0, v1, :cond_c9

    const-string v4, "ImageHeaderParser"

    .line 188
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_c8

    const-string v2, "ImageHeaderParser"

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read segment data, type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", length: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", actually read: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c8
    return-object v3

    :cond_c9
    return-object v4
.end method

.method private static handles(I)Z
    .registers 3

    const v0, 0xffd8

    and-int v1, p0, v0

    if-eq v1, v0, :cond_12

    const/16 v0, 0x4d4d

    if-eq p0, v0, :cond_12

    const/16 v0, 0x4949

    if-ne p0, v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p0, 0x1

    :goto_13
    return p0
.end method

.method private static parseExifSegment(Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;)I
    .registers 12

    const-string v0, "Exif\u0000\u0000"

    .line 203
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 205
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v1

    const/4 v2, 0x3

    const/16 v3, 0x4d4d

    if-ne v1, v3, :cond_12

    .line 208
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_39

    :cond_12
    const/16 v3, 0x4949

    if-ne v1, v3, :cond_19

    .line 210
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_39

    :cond_19
    const-string v3, "ImageHeaderParser"

    .line 212
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_37

    const-string v3, "ImageHeaderParser"

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown endianness = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_37
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 218
    :goto_39
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->order(Ljava/nio/ByteOrder;)V

    add-int/lit8 v1, v0, 0x4

    .line 220
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt32(I)I

    move-result v1

    add-int/2addr v1, v0

    .line 221
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v0

    const/4 v3, 0x0

    :goto_48
    if-ge v3, v0, :cond_160

    .line 225
    invoke-static {v1, v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->calcTagOffset(II)I

    move-result v4

    .line 227
    invoke-virtual {p0, v4}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v5

    const/16 v6, 0x112

    if-eq v5, v6, :cond_58

    goto/16 :goto_15c

    :cond_58
    add-int/lit8 v6, v4, 0x2

    .line 234
    invoke-virtual {p0, v6}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_13e

    const/16 v7, 0xc

    if-le v6, v7, :cond_67

    goto/16 :goto_13e

    :cond_67
    add-int/lit8 v7, v4, 0x4

    .line 244
    invoke-virtual {p0, v7}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt32(I)I

    move-result v7

    if-gez v7, :cond_80

    const-string v4, "ImageHeaderParser"

    .line 247
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_15c

    const-string v4, "ImageHeaderParser"

    const-string v5, "Negative tiff component count"

    .line 248
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15c

    :cond_80
    const-string v8, "ImageHeaderParser"

    .line 253
    invoke-static {v8, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_b6

    const-string v8, "ImageHeaderParser"

    .line 254
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got tagIndex="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " tagType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " formatCode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " componentCount="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_b6
    sget-object v8, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->BYTES_PER_FORMAT:[I

    aget v8, v8, v6

    add-int/2addr v7, v8

    const/4 v8, 0x4

    if-le v7, v8, :cond_de

    const-string v4, "ImageHeaderParser"

    .line 261
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_15c

    const-string v4, "ImageHeaderParser"

    .line 262
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got byte count > 4, not orientation, continuing, formatCode="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15c

    :cond_de
    add-int/lit8 v4, v4, 0x8

    if-ltz v4, :cond_117

    .line 269
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->length()I

    move-result v6

    if-le v4, v6, :cond_e9

    goto :goto_117

    :cond_e9
    if-ltz v7, :cond_f8

    add-int/2addr v7, v4

    .line 276
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->length()I

    move-result v6

    if-le v7, v6, :cond_f3

    goto :goto_f8

    .line 284
    :cond_f3
    invoke-virtual {p0, v4}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result p0

    return p0

    :cond_f8
    :goto_f8
    const-string v4, "ImageHeaderParser"

    .line 277
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_15c

    const-string v4, "ImageHeaderParser"

    .line 278
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal number of bytes for TI tag data tagType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15c

    :cond_117
    :goto_117
    const-string v6, "ImageHeaderParser"

    .line 270
    invoke-static {v6, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_15c

    const-string v6, "ImageHeaderParser"

    .line 271
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal tagValueOffset="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " tagType="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15c

    :cond_13e
    :goto_13e
    const-string v4, "ImageHeaderParser"

    .line 238
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_15c

    const-string v4, "ImageHeaderParser"

    .line 239
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got invalid format code="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15c
    :goto_15c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_48

    :cond_160
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public getOrientation()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v0

    .line 122
    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->handles(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_e

    return v1

    .line 125
    :cond_e
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getExifSegment()[B

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    .line 126
    array-length v2, p0

    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    array-length v3, v3

    if-le v2, v3, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    move v2, v0

    :goto_1e
    if-eqz v2, :cond_32

    move v3, v0

    .line 130
    :goto_21
    sget-object v4, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    array-length v4, v4

    if-ge v3, v4, :cond_32

    .line 131
    aget-byte v4, p0, v3

    sget-object v5, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    aget-byte v5, v5, v3

    if-eq v4, v5, :cond_2f

    goto :goto_33

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_32
    move v0, v2

    :goto_33
    if-eqz v0, :cond_3f

    .line 139
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;-><init>([B)V

    invoke-static {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->parseExifSegment(Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;)I

    move-result p0

    return p0

    :cond_3f
    return v1
.end method

.method public getType()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v0

    const v1, 0xffd8

    if-ne v0, v1, :cond_e

    .line 91
    sget-object p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-object p0

    :cond_e
    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    .line 94
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const v1, -0x76afb1b9

    if-ne v0, v1, :cond_39

    .line 98
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    const-wide/16 v1, 0x15

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->skip(J)J

    .line 99
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getByte()I

    move-result p0

    const/4 v0, 0x3

    if-lt p0, v0, :cond_36

    .line 101
    sget-object p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto :goto_38

    :cond_36
    sget-object p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    :goto_38
    return-object p0

    :cond_39
    shr-int/lit8 p0, v0, 0x8

    const v0, 0x474946

    if-ne p0, v0, :cond_43

    .line 106
    sget-object p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-object p0

    .line 109
    :cond_43
    sget-object p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-object p0
.end method

.method public hasAlpha()Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getType()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->hasAlpha()Z

    move-result p0

    return p0
.end method
