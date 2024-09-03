.class public final Lokio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Lokio/BufferedSource;
.implements Lokio/BufferedSink;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DIGITS:[B

.field static final REPLACEMENT_CHARACTER:I = 0xfffd


# instance fields
.field head:Lokio/Segment;

.field size:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    .line 51
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lokio/Buffer;->DIGITS:[B

    return-void

    :array_a
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private digest(Ljava/lang/String;)Lokio/ByteString;
    .registers 7

    .line 1543
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 1544
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_31

    .line 1545
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->data:[B

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->pos:I

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->limit:I

    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v3, v3, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 1546
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    :goto_1e
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v0, v1, :cond_31

    .line 1547
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    iget v4, v0, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1e

    .line 1550
    :cond_31
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object p0
    :try_end_39
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_39} :catch_3a

    return-object p0

    .line 1552
    :catch_3a
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method private hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;
    .registers 7

    .line 1568
    :try_start_0
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 1569
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2}, Lokio/ByteString;->toByteArray()[B

    move-result-object p2

    invoke-direct {v1, p2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 1570
    iget-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz p1, :cond_3d

    .line 1571
    iget-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object p1, p1, Lokio/Segment;->data:[B

    iget-object p2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget p2, p2, Lokio/Segment;->pos:I

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->limit:I

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, p1, p2, v1}, Ljavax/crypto/Mac;->update([BII)V

    .line 1572
    iget-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    :goto_2a
    iget-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    iget-object p2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq p1, p2, :cond_3d

    .line 1573
    iget-object p2, p1, Lokio/Segment;->data:[B

    iget v1, p1, Lokio/Segment;->pos:I

    iget v2, p1, Lokio/Segment;->limit:I

    iget v3, p1, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, p2, v1, v2}, Ljavax/crypto/Mac;->update([BII)V

    goto :goto_2a

    .line 1576
    :cond_3d
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0

    invoke-static {p0}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object p0
    :try_end_45
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_45} :catch_4d
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_45} :catch_46

    return-object p0

    :catch_46
    move-exception p0

    .line 1580
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1578
    :catch_4d
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method private rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z
    .registers 10

    .line 1483
    iget p0, p1, Lokio/Segment;->limit:I

    .line 1484
    iget-object v0, p1, Lokio/Segment;->data:[B

    :goto_4
    if-ge p4, p5, :cond_23

    if-ne p2, p0, :cond_14

    .line 1488
    iget-object p0, p1, Lokio/Segment;->next:Lokio/Segment;

    .line 1489
    iget-object p1, p0, Lokio/Segment;->data:[B

    .line 1490
    iget p2, p0, Lokio/Segment;->pos:I

    .line 1491
    iget v0, p0, Lokio/Segment;->limit:I

    move-object v3, p1

    move-object p1, p0

    move p0, v0

    move-object v0, v3

    .line 1494
    :cond_14
    aget-byte v1, v0, p2

    invoke-virtual {p3, p4}, Lokio/ByteString;->getByte(I)B

    move-result v2

    if-eq v1, v2, :cond_1e

    const/4 p0, 0x0

    return p0

    :cond_1e
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_23
    const/4 p0, 0x1

    return p0
.end method

.method private readFrom(Ljava/io/InputStream;JZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3c

    :goto_2
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_c

    if-eqz p4, :cond_b

    goto :goto_c

    :cond_b
    return-void

    :cond_c
    :goto_c
    const/4 v0, 0x1

    .line 244
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 245
    iget v1, v0, Lokio/Segment;->limit:I

    rsub-int v1, v1, 0x2000

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 246
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->limit:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2f

    if-eqz p4, :cond_29

    return-void

    .line 249
    :cond_29
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 251
    :cond_2f
    iget v2, v0, Lokio/Segment;->limit:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->limit:I

    .line 252
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v0, v1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lokio/Buffer;->size:J

    sub-long/2addr p2, v0

    goto :goto_2

    .line 242
    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public buffer()Lokio/Buffer;
    .registers 1

    return-object p0
.end method

.method public clear()V
    .registers 3

    .line 802
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 804
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lokio/Buffer;
    .registers 6

    .line 1640
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 1641
    iget-wide v1, p0, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_e

    return-object v0

    .line 1643
    :cond_e
    new-instance v1, Lokio/Segment;

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    invoke-direct {v1, v2}, Lokio/Segment;-><init>(Lokio/Segment;)V

    iput-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1644
    iget-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v3, v0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v3, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 1645
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    :goto_23
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v1, v2, :cond_36

    .line 1646
    iget-object v2, v0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    new-instance v3, Lokio/Segment;

    invoke-direct {v3, v1}, Lokio/Segment;-><init>(Lokio/Segment;)V

    invoke-virtual {v2, v3}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    goto :goto_23

    .line 1648
    :cond_36
    iget-wide v1, p0, Lokio/Buffer;->size:J

    iput-wide v1, v0, Lokio/Buffer;->size:J

    return-object v0
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public completeSegmentByteCount()J
    .registers 6

    .line 263
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_9

    return-wide v2

    .line 267
    :cond_9
    iget-object p0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object p0, p0, Lokio/Segment;->prev:Lokio/Segment;

    .line 268
    iget v2, p0, Lokio/Segment;->limit:I

    const/16 v3, 0x2000

    if-ge v2, v3, :cond_1e

    iget-boolean v2, p0, Lokio/Segment;->owner:Z

    if-eqz v2, :cond_1e

    .line 269
    iget v2, p0, Lokio/Segment;->limit:I

    iget p0, p0, Lokio/Segment;->pos:I

    sub-int/2addr v2, p0

    int-to-long v2, v2

    sub-long/2addr v0, v2

    :cond_1e
    return-wide v0
.end method

.method public copyTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-wide v4, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_44

    .line 147
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_10

    return-object p0

    .line 151
    :cond_10
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 152
    :goto_12
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v3, p2, v3

    if-ltz v3, :cond_26

    .line 153
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    .line 152
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_12

    :cond_26
    :goto_26
    cmp-long v3, p4, v0

    if-lez v3, :cond_43

    .line 158
    iget v3, v2, Lokio/Segment;->pos:I

    int-to-long v3, v3

    add-long/2addr v3, p2

    long-to-int p2, v3

    .line 159
    iget p3, v2, Lokio/Segment;->limit:I

    sub-int/2addr p3, p2

    int-to-long v3, p3

    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int p3, v3

    .line 160
    iget-object v3, v2, Lokio/Segment;->data:[B

    invoke-virtual {p1, v3, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    .line 157
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-wide p2, v0

    goto :goto_26

    :cond_43
    return-object p0

    .line 146
    :cond_44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public copyTo(Lokio/Buffer;JJ)Lokio/Buffer;
    .registers 12

    if-eqz p1, :cond_65

    .line 171
    iget-wide v0, p0, Lokio/Buffer;->size:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_10

    return-object p0

    .line 174
    :cond_10
    iget-wide v2, p1, Lokio/Buffer;->size:J

    add-long/2addr v2, p4

    iput-wide v2, p1, Lokio/Buffer;->size:J

    .line 177
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 178
    :goto_17
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v3, p2, v3

    if-ltz v3, :cond_2b

    .line 179
    iget v3, v2, Lokio/Segment;->limit:I

    iget v4, v2, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr p2, v3

    .line 178
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_17

    :cond_2b
    :goto_2b
    cmp-long v3, p4, v0

    if-lez v3, :cond_64

    .line 184
    new-instance v3, Lokio/Segment;

    invoke-direct {v3, v2}, Lokio/Segment;-><init>(Lokio/Segment;)V

    .line 185
    iget v4, v3, Lokio/Segment;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    long-to-int p2, v4

    iput p2, v3, Lokio/Segment;->pos:I

    .line 186
    iget p2, v3, Lokio/Segment;->pos:I

    long-to-int p3, p4

    add-int/2addr p2, p3

    iget p3, v3, Lokio/Segment;->limit:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, v3, Lokio/Segment;->limit:I

    .line 187
    iget-object p2, p1, Lokio/Buffer;->head:Lokio/Segment;

    if-nez p2, :cond_52

    .line 188
    iput-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v3, v3, Lokio/Segment;->next:Lokio/Segment;

    iput-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    goto :goto_59

    .line 190
    :cond_52
    iget-object p2, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget-object p2, p2, Lokio/Segment;->prev:Lokio/Segment;

    invoke-virtual {p2, v3}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    .line 192
    :goto_59
    iget p2, v3, Lokio/Segment;->limit:I

    iget p3, v3, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    sub-long/2addr p4, p2

    .line 183
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-wide p2, v0

    goto :goto_2b

    :cond_64
    return-object p0

    .line 170
    :cond_65
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public emit()Lokio/BufferedSink;
    .registers 1

    return-object p0
.end method

.method public emitCompleteSegments()Lokio/Buffer;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic emitCompleteSegments()Lokio/BufferedSink;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lokio/Buffer;->emitCompleteSegments()Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 15

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1586
    :cond_4
    instance-of v1, p1, Lokio/Buffer;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1587
    :cond_a
    check-cast p1, Lokio/Buffer;

    .line 1588
    iget-wide v3, p0, Lokio/Buffer;->size:J

    iget-wide v5, p1, Lokio/Buffer;->size:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15

    return v2

    .line 1589
    :cond_15
    iget-wide v3, p0, Lokio/Buffer;->size:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_1e

    return v0

    .line 1591
    :cond_1e
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1592
    iget-object p1, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1593
    iget v3, v1, Lokio/Segment;->pos:I

    .line 1594
    iget v4, p1, Lokio/Segment;->pos:I

    .line 1596
    :goto_26
    iget-wide v7, p0, Lokio/Buffer;->size:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_6a

    .line 1597
    iget v7, v1, Lokio/Segment;->limit:I

    sub-int/2addr v7, v3

    iget v8, p1, Lokio/Segment;->limit:I

    sub-int/2addr v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v7, v7

    move v9, v4

    move v4, v3

    move v3, v2

    :goto_3a
    int-to-long v10, v3

    cmp-long v10, v10, v7

    if-gez v10, :cond_53

    .line 1600
    iget-object v10, v1, Lokio/Segment;->data:[B

    add-int/lit8 v11, v4, 0x1

    aget-byte v4, v10, v4

    iget-object v10, p1, Lokio/Segment;->data:[B

    add-int/lit8 v12, v9, 0x1

    aget-byte v9, v10, v9

    if-eq v4, v9, :cond_4e

    return v2

    :cond_4e
    add-int/lit8 v3, v3, 0x1

    move v4, v11

    move v9, v12

    goto :goto_3a

    .line 1603
    :cond_53
    iget v3, v1, Lokio/Segment;->limit:I

    if-ne v4, v3, :cond_5c

    .line 1604
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    .line 1605
    iget v3, v1, Lokio/Segment;->pos:I

    goto :goto_5d

    :cond_5c
    move v3, v4

    .line 1608
    :goto_5d
    iget v4, p1, Lokio/Segment;->limit:I

    if-ne v9, v4, :cond_66

    .line 1609
    iget-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    .line 1610
    iget v4, p1, Lokio/Segment;->pos:I

    goto :goto_67

    :cond_66
    move v4, v9

    :goto_67
    const/4 v9, 0x0

    add-long/2addr v5, v7

    goto :goto_26

    :cond_6a
    return v0
.end method

.method public exhausted()Z
    .registers 5

    .line 101
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public getByte(J)B
    .registers 9

    .line 298
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 299
    iget-object p0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 300
    :goto_a
    iget v0, p0, Lokio/Segment;->limit:I

    iget v1, p0, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1d

    .line 301
    iget-object v0, p0, Lokio/Segment;->data:[B

    iget p0, p0, Lokio/Segment;->pos:I

    long-to-int p1, p1

    add-int/2addr p0, p1

    aget-byte p0, v0, p0

    return p0

    :cond_1d
    const/4 v2, 0x0

    sub-long/2addr p1, v0

    .line 299
    iget-object p0, p0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_a
.end method

.method public hashCode()I
    .registers 6

    .line 1618
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 v1, 0x1

    .line 1622
    :cond_7
    iget v2, v0, Lokio/Segment;->pos:I

    iget v3, v0, Lokio/Segment;->limit:I

    :goto_b
    if-ge v2, v3, :cond_17

    mul-int/lit8 v1, v1, 0x1f

    .line 1623
    iget-object v4, v0, Lokio/Segment;->data:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1625
    :cond_17
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    .line 1626
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-ne v0, v2, :cond_7

    return v1
.end method

.method public hmacSha1(Lokio/ByteString;)Lokio/ByteString;
    .registers 3

    const-string v0, "HmacSHA1"

    .line 1558
    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public hmacSha256(Lokio/ByteString;)Lokio/ByteString;
    .registers 3

    const-string v0, "HmacSHA256"

    .line 1563
    invoke-direct {p0, v0, p1}, Lokio/Buffer;->hmac(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public indexOf(B)J
    .registers 4

    const-wide/16 v0, 0x0

    .line 1266
    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOf(BJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public indexOf(BJ)J
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_5e

    .line 1282
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    const-wide/16 v3, -0x1

    if-nez v2, :cond_d

    return-wide v3

    .line 1286
    :cond_d
    iget-wide v5, p0, Lokio/Buffer;->size:J

    sub-long/2addr v5, p2

    cmp-long v5, v5, p2

    if-gez v5, :cond_24

    .line 1288
    iget-wide v0, p0, Lokio/Buffer;->size:J

    :goto_16
    cmp-long v5, v0, p2

    if-lez v5, :cond_33

    .line 1290
    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 1291
    iget v5, v2, Lokio/Segment;->limit:I

    iget v6, v2, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    sub-long/2addr v0, v5

    goto :goto_16

    .line 1296
    :cond_24
    :goto_24
    iget v5, v2, Lokio/Segment;->limit:I

    iget v6, v2, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v0

    cmp-long v7, v5, p2

    if-gez v7, :cond_33

    .line 1297
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-wide v0, v5

    goto :goto_24

    .line 1304
    :cond_33
    :goto_33
    iget-wide v5, p0, Lokio/Buffer;->size:J

    cmp-long v5, v0, v5

    if-gez v5, :cond_5d

    .line 1305
    iget-object v5, v2, Lokio/Segment;->data:[B

    .line 1306
    iget v6, v2, Lokio/Segment;->pos:I

    int-to-long v6, v6

    add-long/2addr v6, p2

    sub-long/2addr v6, v0

    long-to-int p2, v6

    iget p3, v2, Lokio/Segment;->limit:I

    :goto_43
    if-ge p2, p3, :cond_52

    .line 1307
    aget-byte v6, v5, p2

    if-ne v6, p1, :cond_4f

    .line 1308
    iget p0, v2, Lokio/Segment;->pos:I

    sub-int/2addr p2, p0

    int-to-long p0, p2

    add-long/2addr p0, v0

    return-wide p0

    :cond_4f
    add-int/lit8 p2, p2, 0x1

    goto :goto_43

    .line 1313
    :cond_52
    iget p2, v2, Lokio/Segment;->limit:I

    iget p3, v2, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr p2, v0

    .line 1315
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-wide v0, p2

    goto :goto_33

    :cond_5d
    return-wide v3

    .line 1274
    :cond_5e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "fromIndex < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public indexOf(Lokio/ByteString;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1322
    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOf(Lokio/ByteString;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public indexOf(Lokio/ByteString;J)J
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 1326
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v2

    if-eqz v2, :cond_b2

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-ltz v4, :cond_aa

    .line 1335
    iget-object v4, v6, Lokio/Buffer;->head:Lokio/Segment;

    const-wide/16 v7, -0x1

    if-nez v4, :cond_15

    return-wide v7

    .line 1339
    :cond_15
    iget-wide v9, v6, Lokio/Buffer;->size:J

    sub-long v9, v9, p2

    cmp-long v5, v9, p2

    if-gez v5, :cond_2d

    .line 1341
    iget-wide v2, v6, Lokio/Buffer;->size:J

    :goto_1f
    cmp-long v5, v2, p2

    if-lez v5, :cond_3c

    .line 1343
    iget-object v4, v4, Lokio/Segment;->prev:Lokio/Segment;

    .line 1344
    iget v5, v4, Lokio/Segment;->limit:I

    iget v9, v4, Lokio/Segment;->pos:I

    sub-int/2addr v5, v9

    int-to-long v9, v5

    sub-long/2addr v2, v9

    goto :goto_1f

    .line 1349
    :cond_2d
    :goto_2d
    iget v5, v4, Lokio/Segment;->limit:I

    iget v9, v4, Lokio/Segment;->pos:I

    sub-int/2addr v5, v9

    int-to-long v9, v5

    add-long/2addr v9, v2

    cmp-long v5, v9, p2

    if-gez v5, :cond_3c

    .line 1350
    iget-object v4, v4, Lokio/Segment;->next:Lokio/Segment;

    move-wide v2, v9

    goto :goto_2d

    :cond_3c
    const/4 v5, 0x0

    move-object/from16 v9, p1

    .line 1358
    invoke-virtual {v9, v5}, Lokio/ByteString;->getByte(I)B

    move-result v10

    .line 1359
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    move-result v11

    .line 1360
    iget-wide v12, v6, Lokio/Buffer;->size:J

    int-to-long v14, v11

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    move-wide/from16 v0, p2

    move-wide v14, v2

    move-object v5, v4

    :goto_52
    cmp-long v2, v14, v12

    if-gez v2, :cond_a8

    .line 1363
    iget-object v4, v5, Lokio/Segment;->data:[B

    .line 1364
    iget v2, v5, Lokio/Segment;->limit:I

    int-to-long v2, v2

    iget v7, v5, Lokio/Segment;->pos:I

    int-to-long v7, v7

    add-long/2addr v7, v12

    sub-long/2addr v7, v14

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v7, v2

    .line 1365
    iget v2, v5, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    sub-long/2addr v2, v14

    long-to-int v0, v2

    move v8, v0

    :goto_6c
    if-ge v8, v7, :cond_98

    .line 1366
    aget-byte v0, v4, v8

    if-ne v0, v10, :cond_8d

    add-int/lit8 v2, v8, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v3, p1

    move-object/from16 v17, v4

    move/from16 v4, v16

    move-object v6, v5

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lokio/Buffer;->rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 1367
    iget v0, v6, Lokio/Segment;->pos:I

    sub-int/2addr v8, v0

    int-to-long v0, v8

    add-long/2addr v0, v14

    return-wide v0

    :cond_8d
    move-object/from16 v17, v4

    move-object v6, v5

    :cond_90
    add-int/lit8 v8, v8, 0x1

    move-object v5, v6

    move-object/from16 v4, v17

    move-object/from16 v6, p0

    goto :goto_6c

    :cond_98
    move-object v6, v5

    .line 1372
    iget v0, v6, Lokio/Segment;->limit:I

    iget v1, v6, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v14

    .line 1374
    iget-object v5, v6, Lokio/Segment;->next:Lokio/Segment;

    move-wide v14, v0

    move-object/from16 v6, p0

    const-wide/16 v7, -0x1

    goto :goto_52

    :cond_a8
    move-wide v0, v7

    return-wide v0

    .line 1327
    :cond_aa
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1326
    :cond_b2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public indexOfElement(Lokio/ByteString;)J
    .registers 4

    const-wide/16 v0, 0x0

    .line 1381
    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public indexOfElement(Lokio/ByteString;J)J
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_a9

    .line 1393
    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    const-wide/16 v3, -0x1

    if-nez v2, :cond_d

    return-wide v3

    .line 1397
    :cond_d
    iget-wide v5, p0, Lokio/Buffer;->size:J

    sub-long/2addr v5, p2

    cmp-long v5, v5, p2

    if-gez v5, :cond_24

    .line 1399
    iget-wide v0, p0, Lokio/Buffer;->size:J

    :goto_16
    cmp-long v5, v0, p2

    if-lez v5, :cond_33

    .line 1401
    iget-object v2, v2, Lokio/Segment;->prev:Lokio/Segment;

    .line 1402
    iget v5, v2, Lokio/Segment;->limit:I

    iget v6, v2, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    sub-long/2addr v0, v5

    goto :goto_16

    .line 1407
    :cond_24
    :goto_24
    iget v5, v2, Lokio/Segment;->limit:I

    iget v6, v2, Lokio/Segment;->pos:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v5, v0

    cmp-long v7, v5, p2

    if-gez v7, :cond_33

    .line 1408
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-wide v0, v5

    goto :goto_24

    .line 1417
    :cond_33
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ne v5, v6, :cond_71

    .line 1419
    invoke-virtual {p1, v7}, Lokio/ByteString;->getByte(I)B

    move-result v5

    const/4 v6, 0x1

    .line 1420
    invoke-virtual {p1, v6}, Lokio/ByteString;->getByte(I)B

    move-result p1

    .line 1421
    :goto_44
    iget-wide v6, p0, Lokio/Buffer;->size:J

    cmp-long v6, v0, v6

    if-gez v6, :cond_a8

    .line 1422
    iget-object v6, v2, Lokio/Segment;->data:[B

    .line 1423
    iget v7, v2, Lokio/Segment;->pos:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    sub-long/2addr v7, v0

    long-to-int p2, v7

    iget p3, v2, Lokio/Segment;->limit:I

    :goto_54
    if-ge p2, p3, :cond_66

    .line 1424
    aget-byte v7, v6, p2

    if-eq v7, v5, :cond_60

    if-ne v7, p1, :cond_5d

    goto :goto_60

    :cond_5d
    add-int/lit8 p2, p2, 0x1

    goto :goto_54

    .line 1426
    :cond_60
    :goto_60
    iget p0, v2, Lokio/Segment;->pos:I

    sub-int/2addr p2, p0

    int-to-long p0, p2

    add-long/2addr p0, v0

    return-wide p0

    .line 1431
    :cond_66
    iget p2, v2, Lokio/Segment;->limit:I

    iget p3, v2, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr p2, v0

    .line 1433
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-wide v0, p2

    goto :goto_44

    .line 1437
    :cond_71
    invoke-virtual {p1}, Lokio/ByteString;->internalArray()[B

    move-result-object p1

    .line 1438
    :goto_75
    iget-wide v5, p0, Lokio/Buffer;->size:J

    cmp-long v5, v0, v5

    if-gez v5, :cond_a8

    .line 1439
    iget-object v5, v2, Lokio/Segment;->data:[B

    .line 1440
    iget v6, v2, Lokio/Segment;->pos:I

    int-to-long v8, v6

    add-long/2addr v8, p2

    sub-long/2addr v8, v0

    long-to-int p2, v8

    iget p3, v2, Lokio/Segment;->limit:I

    :goto_85
    if-ge p2, p3, :cond_9d

    .line 1441
    aget-byte v6, v5, p2

    .line 1442
    array-length v8, p1

    move v9, v7

    :goto_8b
    if-ge v9, v8, :cond_9a

    aget-byte v10, p1, v9

    if-ne v6, v10, :cond_97

    .line 1443
    iget p0, v2, Lokio/Segment;->pos:I

    sub-int/2addr p2, p0

    int-to-long p0, p2

    add-long/2addr p0, v0

    return-wide p0

    :cond_97
    add-int/lit8 v9, v9, 0x1

    goto :goto_8b

    :cond_9a
    add-int/lit8 p2, p2, 0x1

    goto :goto_85

    .line 1448
    :cond_9d
    iget p2, v2, Lokio/Segment;->limit:I

    iget p3, v2, Lokio/Segment;->pos:I

    sub-int/2addr p2, p3

    int-to-long p2, p2

    add-long/2addr p2, v0

    .line 1450
    iget-object v2, v2, Lokio/Segment;->next:Lokio/Segment;

    move-wide v0, p2

    goto :goto_75

    :cond_a8
    return-wide v3

    .line 1385
    :cond_a9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "fromIndex < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public inputStream()Ljava/io/InputStream;
    .registers 2

    .line 113
    new-instance v0, Lokio/Buffer$2;

    invoke-direct {v0, p0}, Lokio/Buffer$2;-><init>(Lokio/Buffer;)V

    return-object v0
.end method

.method public md5()Lokio/ByteString;
    .registers 2

    const-string v0, "MD5"

    .line 1528
    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .registers 2

    .line 71
    new-instance v0, Lokio/Buffer$1;

    invoke-direct {v0, p0}, Lokio/Buffer$1;-><init>(Lokio/Buffer;)V

    return-object v0
.end method

.method public rangeEquals(JLokio/ByteString;)Z
    .registers 10

    .line 1458
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v5

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->rangeEquals(JLokio/ByteString;II)Z

    move-result p0

    return p0
.end method

.method public rangeEquals(JLokio/ByteString;II)Z
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_32

    if-ltz p4, :cond_32

    if-ltz p5, :cond_32

    .line 1462
    iget-wide v2, p0, Lokio/Buffer;->size:J

    sub-long/2addr v2, p1

    int-to-long v4, p5

    cmp-long v0, v2, v4

    if-ltz v0, :cond_32

    .line 1466
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    move-result v0

    sub-int/2addr v0, p4

    if-ge v0, p5, :cond_1b

    goto :goto_32

    :cond_1b
    move v0, v1

    :goto_1c
    if-ge v0, p5, :cond_30

    int-to-long v2, v0

    add-long/2addr v2, p1

    .line 1470
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v2

    add-int v3, p4, v0

    invoke-virtual {p3, v3}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-eq v2, v3, :cond_2d

    return v1

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_30
    const/4 p0, 0x1

    return p0

    :cond_32
    :goto_32
    return v1
.end method

.method public read([B)I
    .registers 4

    .line 765
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lokio/Buffer;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .registers 11

    .line 778
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 780
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_d

    const/4 p0, -0x1

    return p0

    .line 782
    :cond_d
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 783
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->pos:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 785
    iget p1, v0, Lokio/Segment;->pos:I

    add-int/2addr p1, p3

    iput p1, v0, Lokio/Segment;->pos:I

    .line 786
    iget-wide p1, p0, Lokio/Buffer;->size:J

    int-to-long v1, p3

    sub-long/2addr p1, v1

    iput-wide p1, p0, Lokio/Buffer;->size:J

    .line 788
    iget p1, v0, Lokio/Segment;->pos:I

    iget p2, v0, Lokio/Segment;->limit:I

    if-ne p1, p2, :cond_37

    .line 789
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 790
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_37
    return p3
.end method

.method public read(Lokio/Buffer;J)J
    .registers 8

    if-eqz p1, :cond_34

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1d

    .line 1259
    iget-wide v2, p0, Lokio/Buffer;->size:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_11

    const-wide/16 p0, -0x1

    return-wide p0

    .line 1260
    :cond_11
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_19

    iget-wide p2, p0, Lokio/Buffer;->size:J

    .line 1261
    :cond_19
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    return-wide p2

    .line 1258
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1257
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sink == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readAll(Lokio/Sink;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_b

    .line 583
    invoke-interface {p1, p0, v0, v1}, Lokio/Sink;->write(Lokio/Buffer;J)V

    :cond_b
    return-wide v0
.end method

.method public readByte()B
    .registers 10

    .line 276
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2a

    .line 278
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 279
    iget v1, v0, Lokio/Segment;->pos:I

    .line 280
    iget v2, v0, Lokio/Segment;->limit:I

    .line 282
    iget-object v3, v0, Lokio/Segment;->data:[B

    add-int/lit8 v4, v1, 0x1

    .line 283
    aget-byte v1, v3, v1

    .line 284
    iget-wide v5, p0, Lokio/Buffer;->size:J

    const-wide/16 v7, 0x1

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lokio/Buffer;->size:J

    if-ne v4, v2, :cond_27

    .line 287
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 288
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_29

    .line 290
    :cond_27
    iput v4, v0, Lokio/Segment;->pos:I

    :goto_29
    return v1

    .line 276
    :cond_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "size == 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readByteArray()[B
    .registers 3

    .line 747
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object p0
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 749
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public readByteArray(J)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 754
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_16

    long-to-int p1, p1

    .line 759
    new-array p1, p1, [B

    .line 760
    invoke-virtual {p0, p1}, Lokio/Buffer;->readFully([B)V

    return-object p1

    .line 756
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readByteString()Lokio/ByteString;
    .registers 2

    .line 528
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/Buffer;->readByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readByteString(J)Lokio/ByteString;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 532
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public readDecimalLong()J
    .registers 18

    move-object/from16 v0, p0

    .line 414
    iget-wide v1, v0, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_b6

    const-wide/16 v5, -0x7

    const/4 v7, 0x0

    move-wide v8, v5

    move v5, v7

    move v6, v5

    .line 426
    :cond_10
    iget-object v10, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 428
    iget-object v11, v10, Lokio/Segment;->data:[B

    .line 429
    iget v12, v10, Lokio/Segment;->pos:I

    .line 430
    iget v13, v10, Lokio/Segment;->limit:I

    :goto_18
    if-ge v12, v13, :cond_97

    .line 433
    aget-byte v15, v11, v12

    const/16 v14, 0x30

    if-lt v15, v14, :cond_69

    const/16 v1, 0x39

    if-gt v15, v1, :cond_69

    sub-int/2addr v14, v15

    const-wide v1, -0xcccccccccccccccL

    cmp-long v16, v3, v1

    if-ltz v16, :cond_3c

    if-nez v16, :cond_36

    int-to-long v1, v14

    cmp-long v1, v1, v8

    if-gez v1, :cond_36

    goto :goto_3c

    :cond_36
    const-wide/16 v1, 0xa

    mul-long/2addr v3, v1

    int-to-long v1, v14

    add-long/2addr v3, v1

    goto :goto_73

    .line 439
    :cond_3c
    :goto_3c
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, v3, v4}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object v0

    invoke-virtual {v0, v15}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    if-nez v5, :cond_4e

    .line 440
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    .line 441
    :cond_4e
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_69
    const/16 v1, 0x2d

    if-ne v15, v1, :cond_78

    if-nez v7, :cond_78

    const-wide/16 v1, 0x1

    sub-long/2addr v8, v1

    const/4 v5, 0x1

    :goto_73
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_78
    if-eqz v7, :cond_7c

    const/4 v6, 0x1

    goto :goto_97

    .line 450
    :cond_7c
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected leading [0-9] or \'-\' character but was 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_97
    :goto_97
    if-ne v12, v13, :cond_a3

    .line 460
    invoke-virtual {v10}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    .line 461
    invoke-static {v10}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_a5

    .line 463
    :cond_a3
    iput v12, v10, Lokio/Segment;->pos:I

    :goto_a5
    if-nez v6, :cond_ab

    .line 465
    iget-object v1, v0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_10

    .line 467
    :cond_ab
    iget-wide v1, v0, Lokio/Buffer;->size:J

    int-to-long v6, v7

    sub-long/2addr v1, v6

    iput-wide v1, v0, Lokio/Buffer;->size:J

    if-eqz v5, :cond_b4

    goto :goto_b5

    :cond_b4
    neg-long v3, v3

    :goto_b5
    return-wide v3

    .line 414
    :cond_b6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readFrom(Ljava/io/InputStream;)Lokio/Buffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x1

    .line 230
    invoke-direct {p0, p1, v0, v1, v2}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    return-object p0
.end method

.method public readFrom(Ljava/io/InputStream;J)Lokio/Buffer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_b

    const/4 v0, 0x0

    .line 237
    invoke-direct {p0, p1, p2, p3, v0}, Lokio/Buffer;->readFrom(Ljava/io/InputStream;JZ)V

    return-object p0

    .line 236
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readFully(Lokio/Buffer;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 573
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long v0, v0, p2

    if-ltz v0, :cond_a

    .line 577
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    return-void

    .line 574
    :cond_a
    iget-wide p2, p0, Lokio/Buffer;->size:J

    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 575
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public readFully([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 770
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_15

    .line 771
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_f

    add-int/2addr v0, v1

    goto :goto_1

    .line 772
    :cond_f
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_15
    return-void
.end method

.method public readHexadecimalUnsignedLong()J
    .registers 15

    .line 472
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_ad

    const/4 v0, 0x0

    move v1, v0

    move-wide v4, v2

    .line 479
    :cond_b
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 481
    iget-object v7, v6, Lokio/Segment;->data:[B

    .line 482
    iget v8, v6, Lokio/Segment;->pos:I

    .line 483
    iget v9, v6, Lokio/Segment;->limit:I

    :goto_13
    if-ge v8, v9, :cond_92

    .line 488
    aget-byte v10, v7, v8

    const/16 v11, 0x30

    if-lt v10, v11, :cond_22

    const/16 v11, 0x39

    if-gt v10, v11, :cond_22

    add-int/lit8 v11, v10, -0x30

    goto :goto_3b

    :cond_22
    const/16 v11, 0x61

    if-lt v10, v11, :cond_2f

    const/16 v11, 0x66

    if-gt v10, v11, :cond_2f

    add-int/lit8 v11, v10, -0x61

    add-int/lit8 v11, v11, 0xa

    goto :goto_3b

    :cond_2f
    const/16 v11, 0x41

    if-lt v10, v11, :cond_73

    const/16 v11, 0x46

    if-gt v10, v11, :cond_73

    add-int/lit8 v11, v10, -0x41

    add-int/lit8 v11, v11, 0xa

    :goto_3b
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v12, v4

    cmp-long v12, v12, v2

    if-nez v12, :cond_4b

    const/4 v10, 0x4

    shl-long/2addr v4, v10

    int-to-long v10, v11

    or-long/2addr v4, v10

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 507
    :cond_4b
    new-instance p0, Lokio/Buffer;

    invoke-direct {p0}, Lokio/Buffer;-><init>()V

    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object p0

    invoke-virtual {p0, v10}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p0

    .line 508
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    if-eqz v0, :cond_77

    const/4 v1, 0x1

    goto :goto_92

    .line 497
    :cond_77
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_92
    :goto_92
    if-ne v8, v9, :cond_9e

    .line 516
    invoke-virtual {v6}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v7

    iput-object v7, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 517
    invoke-static {v6}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_a0

    .line 519
    :cond_9e
    iput v8, v6, Lokio/Segment;->pos:I

    :goto_a0
    if-nez v1, :cond_a6

    .line 521
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v6, :cond_b

    .line 523
    :cond_a6
    iget-wide v1, p0, Lokio/Buffer;->size:J

    int-to-long v6, v0

    sub-long/2addr v1, v6

    iput-wide v1, p0, Lokio/Buffer;->size:J

    return-wide v4

    .line 472
    :cond_ad
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "size == 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readInt()I
    .registers 9

    .line 336
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6c

    .line 338
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 339
    iget v1, v0, Lokio/Segment;->pos:I

    .line 340
    iget v4, v0, Lokio/Segment;->limit:I

    sub-int v5, v4, v1

    const/4 v6, 0x4

    if-ge v5, v6, :cond_35

    .line 344
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 345
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 346
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 347
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0

    .line 350
    :cond_35
    iget-object v5, v0, Lokio/Segment;->data:[B

    add-int/lit8 v6, v1, 0x1

    .line 351
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v1, v6

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v1, v7

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 355
    iget-wide v5, p0, Lokio/Buffer;->size:J

    sub-long/2addr v5, v2

    iput-wide v5, p0, Lokio/Buffer;->size:J

    if-ne v7, v4, :cond_69

    .line 358
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 359
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_6b

    .line 361
    :cond_69
    iput v7, v0, Lokio/Segment;->pos:I

    :goto_6b
    return v1

    .line 336
    :cond_6c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readIntLe()I
    .registers 1

    .line 406
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result p0

    invoke-static {p0}, Lokio/Util;->reverseBytesInt(I)I

    move-result p0

    return p0
.end method

.method public readLong()J
    .registers 16

    .line 368
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8c

    .line 370
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 371
    iget v1, v0, Lokio/Segment;->pos:I

    .line 372
    iget v4, v0, Lokio/Segment;->limit:I

    sub-int v5, v4, v1

    const/16 v6, 0x20

    const/16 v7, 0x8

    if-ge v5, v7, :cond_2a

    .line 376
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    shl-long/2addr v0, v6

    .line 377
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result p0

    int-to-long v4, p0

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 380
    :cond_2a
    iget-object v5, v0, Lokio/Segment;->data:[B

    add-int/lit8 v8, v1, 0x1

    .line 381
    aget-byte v1, v5, v1

    int-to-long v9, v1

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    const/16 v1, 0x38

    shl-long/2addr v9, v1

    add-int/lit8 v1, v8, 0x1

    aget-byte v8, v5, v8

    int-to-long v13, v8

    and-long/2addr v13, v11

    const/16 v8, 0x30

    shl-long/2addr v13, v8

    or-long v8, v9, v13

    add-int/lit8 v10, v1, 0x1

    aget-byte v1, v5, v1

    int-to-long v13, v1

    and-long/2addr v13, v11

    const/16 v1, 0x28

    shl-long/2addr v13, v1

    or-long/2addr v8, v13

    add-int/lit8 v1, v10, 0x1

    aget-byte v10, v5, v10

    int-to-long v13, v10

    and-long/2addr v13, v11

    shl-long/2addr v13, v6

    or-long/2addr v8, v13

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v5, v1

    int-to-long v13, v1

    and-long/2addr v13, v11

    const/16 v1, 0x18

    shl-long/2addr v13, v1

    or-long/2addr v8, v13

    add-int/lit8 v1, v6, 0x1

    aget-byte v6, v5, v6

    int-to-long v13, v6

    and-long/2addr v13, v11

    const/16 v6, 0x10

    shl-long/2addr v13, v6

    or-long/2addr v8, v13

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, v5, v1

    int-to-long v13, v1

    and-long/2addr v13, v11

    shl-long/2addr v13, v7

    or-long v7, v8, v13

    add-int/lit8 v1, v6, 0x1

    aget-byte v5, v5, v6

    int-to-long v5, v5

    and-long/2addr v5, v11

    or-long/2addr v5, v7

    .line 389
    iget-wide v7, p0, Lokio/Buffer;->size:J

    sub-long/2addr v7, v2

    iput-wide v7, p0, Lokio/Buffer;->size:J

    if-ne v1, v4, :cond_89

    .line 392
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 393
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_8b

    .line 395
    :cond_89
    iput v1, v0, Lokio/Segment;->pos:I

    :goto_8b
    return-wide v5

    .line 368
    :cond_8c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 8: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readLongLe()J
    .registers 3

    .line 410
    invoke-virtual {p0}, Lokio/Buffer;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lokio/Util;->reverseBytesLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readShort()S
    .registers 9

    .line 307
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4a

    .line 309
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 310
    iget v1, v0, Lokio/Segment;->pos:I

    .line 311
    iget v4, v0, Lokio/Segment;->limit:I

    sub-int v5, v4, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_24

    .line 315
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 316
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0

    .line 320
    :cond_24
    iget-object v5, v0, Lokio/Segment;->data:[B

    add-int/lit8 v6, v1, 0x1

    .line 321
    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v7, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v1, v5

    .line 323
    iget-wide v5, p0, Lokio/Buffer;->size:J

    sub-long/2addr v5, v2

    iput-wide v5, p0, Lokio/Buffer;->size:J

    if-ne v7, v4, :cond_46

    .line 326
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 327
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_48

    .line 329
    :cond_46
    iput v7, v0, Lokio/Segment;->pos:I

    :goto_48
    int-to-short p0, v1

    return p0

    .line 307
    :cond_4a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readShortLe()S
    .registers 1

    .line 402
    invoke-virtual {p0}, Lokio/Buffer;->readShort()S

    move-result p0

    invoke-static {p0}, Lokio/Util;->reverseBytesShort(S)S

    move-result p0

    return p0
.end method

.method public readString(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 609
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    if-eqz p3, :cond_6e

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_57

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1a

    const-string p0, ""

    return-object p0

    .line 616
    :cond_1a
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 617
    iget v1, v0, Lokio/Segment;->pos:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    iget v3, v0, Lokio/Segment;->limit:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_31

    .line 619
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readByteArray(J)[B

    move-result-object p0

    invoke-direct {v0, p0, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 622
    :cond_31
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    long-to-int v4, p1

    invoke-direct {v1, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 623
    iget p3, v0, Lokio/Segment;->pos:I

    int-to-long v2, p3

    add-long/2addr v2, p1

    long-to-int p3, v2

    iput p3, v0, Lokio/Segment;->pos:I

    .line 624
    iget-wide v2, p0, Lokio/Buffer;->size:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lokio/Buffer;->size:J

    .line 626
    iget p1, v0, Lokio/Segment;->pos:I

    iget p2, v0, Lokio/Segment;->limit:I

    if-ne p1, p2, :cond_56

    .line 627
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 628
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    :cond_56
    return-object v1

    .line 612
    :cond_57
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 610
    :cond_6e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "charset == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    .line 602
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1, p1}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 604
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public readUtf8()Ljava/lang/String;
    .registers 4

    .line 590
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->size:J

    sget-object v2, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 592
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public readUtf8(J)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 597
    sget-object v0, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokio/Buffer;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readUtf8CodePoint()I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 671
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_ac

    .line 673
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x1

    const/16 v3, 0x80

    const v4, 0xfffd

    if-nez v1, :cond_1c

    and-int/lit8 v1, v0, 0x7f

    const/4 v5, 0x0

    move v6, v5

    move v5, v2

    goto :goto_3e

    :cond_1c
    and-int/lit16 v1, v0, 0xe0

    const/16 v5, 0xc0

    if-ne v1, v5, :cond_27

    and-int/lit8 v1, v0, 0x1f

    const/4 v5, 0x2

    move v6, v3

    goto :goto_3e

    :cond_27
    and-int/lit16 v1, v0, 0xf0

    const/16 v5, 0xe0

    if-ne v1, v5, :cond_33

    and-int/lit8 v1, v0, 0xf

    const/4 v5, 0x3

    const/16 v6, 0x800

    goto :goto_3e

    :cond_33
    and-int/lit16 v1, v0, 0xf8

    const/16 v5, 0xf0

    if-ne v1, v5, :cond_a6

    and-int/lit8 v1, v0, 0x7

    const/4 v5, 0x4

    const/high16 v6, 0x10000

    .line 708
    :goto_3e
    iget-wide v7, p0, Lokio/Buffer;->size:J

    int-to-long v9, v5

    cmp-long v7, v7, v9

    if-ltz v7, :cond_74

    :goto_45
    if-ge v2, v5, :cond_5c

    int-to-long v7, v2

    .line 717
    invoke-virtual {p0, v7, v8}, Lokio/Buffer;->getByte(J)B

    move-result v0

    and-int/lit16 v11, v0, 0xc0

    if-ne v11, v3, :cond_58

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 723
    :cond_58
    invoke-virtual {p0, v7, v8}, Lokio/Buffer;->skip(J)V

    return v4

    .line 728
    :cond_5c
    invoke-virtual {p0, v9, v10}, Lokio/Buffer;->skip(J)V

    const p0, 0x10ffff

    if-le v1, p0, :cond_65

    return v4

    :cond_65
    const p0, 0xd800

    if-lt v1, p0, :cond_70

    const p0, 0xdfff

    if-gt v1, p0, :cond_70

    return v4

    :cond_70
    if-ge v1, v6, :cond_73

    return v4

    :cond_73
    return v1

    .line 709
    :cond_74
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lokio/Buffer;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " (to read code point prefixed 0x"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a6
    const-wide/16 v0, 0x1

    .line 704
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    return v4

    .line 671
    :cond_ac
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public readUtf8Line()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 635
    invoke-virtual {p0, v0}, Lokio/Buffer;->indexOf(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1d

    .line 638
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return-object p0

    .line 641
    :cond_1d
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method readUtf8Line(J)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x1

    if-lez v0, :cond_1c

    sub-long v3, p1, v1

    .line 656
    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->getByte(J)B

    move-result v0

    const/16 v5, 0xd

    if-ne v0, v5, :cond_1c

    .line 658
    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    .line 659
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    return-object p1

    .line 664
    :cond_1c
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    .line 665
    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    return-object p1
.end method

.method public readUtf8LineStrict()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 645
    invoke-virtual {p0, v0}, Lokio/Buffer;->indexOf(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_11

    .line 652
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->readUtf8Line(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 647
    :cond_11
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x20

    .line 648
    iget-wide v4, p0, Lokio/Buffer;->size:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 649
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\n not found: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " content="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {v6}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->hex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\u2026"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public request(J)Z
    .registers 5

    .line 109
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long p0, v0, p1

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public require(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 105
    iget-wide v0, p0, Lokio/Buffer;->size:J

    cmp-long p0, v0, p1

    if-ltz p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method segmentSizes()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1517
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1518
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1519
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->limit:I

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v2, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1520
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    :goto_20
    iget-object v1, v1, Lokio/Segment;->next:Lokio/Segment;

    iget-object v2, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eq v1, v2, :cond_33

    .line 1521
    iget v2, v1, Lokio/Segment;->limit:I

    iget v3, v1, Lokio/Segment;->pos:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_33
    return-object v0
.end method

.method public select(Lokio/Options;)I
    .registers 12

    .line 536
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v6, :cond_b

    .line 537
    sget-object p0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-virtual {p1, p0}, Lokio/Options;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 539
    :cond_b
    iget-object p1, p1, Lokio/Options;->byteStrings:[Lokio/ByteString;

    const/4 v0, 0x0

    .line 540
    array-length v7, p1

    move v8, v0

    :goto_10
    if-ge v8, v7, :cond_42

    .line 541
    aget-object v9, p1, v8

    .line 542
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {v9}, Lokio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3f

    iget v2, v6, Lokio/Segment;->pos:I

    const/4 v4, 0x0

    invoke-virtual {v9}, Lokio/ByteString;->size()I

    move-result v5

    move-object v0, p0

    move-object v1, v6

    move-object v3, v9

    invoke-direct/range {v0 .. v5}, Lokio/Buffer;->rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 544
    :try_start_2f
    invoke-virtual {v9}, Lokio/ByteString;->size()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V
    :try_end_37
    .catch Ljava/io/EOFException; {:try_start_2f .. :try_end_37} :catch_38

    return v8

    :catch_38
    move-exception p0

    .line 547
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3f
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_42
    const/4 p0, -0x1

    return p0
.end method

.method selectPrefix(Lokio/Options;)I
    .registers 11

    .line 560
    iget-object v6, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 561
    iget-object p1, p1, Lokio/Options;->byteStrings:[Lokio/ByteString;

    .line 562
    array-length v7, p1

    const/4 v0, 0x0

    move v8, v0

    :goto_7
    if-ge v8, v7, :cond_29

    .line 563
    aget-object v3, p1, v8

    .line 564
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v5, v0

    if-eqz v5, :cond_28

    .line 565
    iget v2, v6, Lokio/Segment;->pos:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lokio/Buffer;->rangeEquals(Lokio/Segment;ILokio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_28

    :cond_25
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_28
    :goto_28
    return v8

    :cond_29
    const/4 p0, -0x1

    return p0
.end method

.method public sha1()Lokio/ByteString;
    .registers 2

    const-string v0, "SHA-1"

    .line 1533
    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public sha256()Lokio/ByteString;
    .registers 2

    const-string v0, "SHA-256"

    .line 1538
    invoke-direct {p0, v0}, Lokio/Buffer;->digest(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public size()J
    .registers 3

    .line 63
    iget-wide v0, p0, Lokio/Buffer;->size:J

    return-wide v0
.end method

.method public skip(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_43

    .line 811
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_3d

    .line 813
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->limit:I

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 814
    iget-wide v1, p0, Lokio/Buffer;->size:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lokio/Buffer;->size:J

    sub-long/2addr p1, v3

    .line 816
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v2, v1, Lokio/Segment;->pos:I

    add-int/2addr v2, v0

    iput v2, v1, Lokio/Segment;->pos:I

    .line 818
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->pos:I

    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->limit:I

    if-ne v0, v1, :cond_0

    .line 819
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 820
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 821
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_0

    .line 811
    :cond_3d
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_43
    return-void
.end method

.method public snapshot()Lokio/ByteString;
    .registers 5

    .line 1654
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_11

    .line 1657
    iget-wide v0, p0, Lokio/Buffer;->size:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->snapshot(I)Lokio/ByteString;

    move-result-object p0

    return-object p0

    .line 1655
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lokio/Buffer;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public snapshot(I)Lokio/ByteString;
    .registers 3

    if-nez p1, :cond_5

    .line 1664
    sget-object p0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    return-object p0

    .line 1665
    :cond_5
    new-instance v0, Lokio/SegmentedByteString;

    invoke-direct {v0, p0, p1}, Lokio/SegmentedByteString;-><init>(Lokio/Buffer;I)V

    return-object v0
.end method

.method public timeout()Lokio/Timeout;
    .registers 1

    .line 1512
    sget-object p0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 1635
    invoke-virtual {p0}, Lokio/Buffer;->snapshot()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method writableSegment(I)Lokio/Segment;
    .registers 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_32

    const/16 v0, 0x2000

    if-gt p1, v0, :cond_32

    .line 1153
    iget-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v1, :cond_1c

    .line 1154
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1155
    iget-object p1, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object p0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object p0, v0, Lokio/Segment;->prev:Lokio/Segment;

    iput-object p0, p1, Lokio/Segment;->next:Lokio/Segment;

    return-object p0

    .line 1158
    :cond_1c
    iget-object p0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object p0, p0, Lokio/Segment;->prev:Lokio/Segment;

    .line 1159
    iget v1, p0, Lokio/Segment;->limit:I

    add-int/2addr v1, p1

    if-gt v1, v0, :cond_29

    iget-boolean p1, p0, Lokio/Segment;->owner:Z

    if-nez p1, :cond_31

    .line 1160
    :cond_29
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object p0

    :cond_31
    return-object p0

    .line 1151
    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public write(Lokio/ByteString;)Lokio/Buffer;
    .registers 2

    if-eqz p1, :cond_6

    .line 828
    invoke-virtual {p1, p0}, Lokio/ByteString;->write(Lokio/Buffer;)V

    return-object p0

    .line 827
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "byteString == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write([B)Lokio/Buffer;
    .registers 4

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    .line 971
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object p0

    return-object p0

    .line 970
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write([BII)Lokio/Buffer;
    .registers 13

    if-eqz p1, :cond_30

    .line 976
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v7, p3

    move-wide v5, v7

    invoke-static/range {v1 .. v6}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    add-int/2addr p3, p2

    :goto_b
    if-ge p2, p3, :cond_2a

    const/4 v0, 0x1

    .line 980
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    sub-int v1, p3, p2

    .line 982
    iget v2, v0, Lokio/Segment;->limit:I

    rsub-int v2, v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 983
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->limit:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    .line 986
    iget v2, v0, Lokio/Segment;->limit:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->limit:I

    goto :goto_b

    .line 989
    :cond_2a
    iget-wide p1, p0, Lokio/Buffer;->size:J

    add-long/2addr p1, v7

    iput-wide p1, p0, Lokio/Buffer;->size:J

    return-object p0

    .line 975
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic write(Lokio/ByteString;)Lokio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public write(Lokio/Source;J)Lokio/BufferedSink;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_18

    .line 1004
    invoke-interface {p1, p0, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    sub-long/2addr p2, v0

    goto :goto_0

    .line 1005
    :cond_12
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_18
    return-object p0
.end method

.method public bridge synthetic write([B)Lokio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic write([BII)Lokio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 10

    if-eqz p1, :cond_9e

    if-eq p1, p0, :cond_96

    .line 1218
    iget-wide v0, p1, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    :goto_c
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_95

    .line 1222
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->limit:I

    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_5e

    .line 1223
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->prev:Lokio/Segment;

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    if-eqz v0, :cond_55

    .line 1224
    iget-boolean v1, v0, Lokio/Segment;->owner:Z

    if-eqz v1, :cond_55

    iget v1, v0, Lokio/Segment;->limit:I

    int-to-long v1, v1

    add-long/2addr v1, p2

    iget-boolean v3, v0, Lokio/Segment;->shared:Z

    if-eqz v3, :cond_3a

    const/4 v3, 0x0

    goto :goto_3c

    :cond_3a
    iget v3, v0, Lokio/Segment;->pos:I

    :goto_3c
    int-to-long v3, v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_55

    .line 1227
    iget-object v1, p1, Lokio/Buffer;->head:Lokio/Segment;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, Lokio/Segment;->writeTo(Lokio/Segment;I)V

    .line 1228
    iget-wide v0, p1, Lokio/Buffer;->size:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lokio/Buffer;->size:J

    .line 1229
    iget-wide v0, p0, Lokio/Buffer;->size:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    return-void

    .line 1234
    :cond_55
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lokio/Segment;->split(I)Lokio/Segment;

    move-result-object v0

    iput-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1239
    :cond_5e
    iget-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1240
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 1241
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v3

    iput-object v3, p1, Lokio/Buffer;->head:Lokio/Segment;

    .line 1242
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    if-nez v3, :cond_7d

    .line 1243
    iput-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 1244
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v4, p0, Lokio/Buffer;->head:Lokio/Segment;

    iput-object v4, v3, Lokio/Segment;->prev:Lokio/Segment;

    iput-object v4, v0, Lokio/Segment;->next:Lokio/Segment;

    goto :goto_88

    .line 1246
    :cond_7d
    iget-object v3, p0, Lokio/Buffer;->head:Lokio/Segment;

    iget-object v3, v3, Lokio/Segment;->prev:Lokio/Segment;

    .line 1247
    invoke-virtual {v3, v0}, Lokio/Segment;->push(Lokio/Segment;)Lokio/Segment;

    move-result-object v0

    .line 1248
    invoke-virtual {v0}, Lokio/Segment;->compact()V

    .line 1250
    :goto_88
    iget-wide v3, p1, Lokio/Buffer;->size:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Lokio/Buffer;->size:J

    .line 1251
    iget-wide v3, p0, Lokio/Buffer;->size:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lokio/Buffer;->size:J

    sub-long/2addr p2, v1

    goto/16 :goto_c

    :cond_95
    return-void

    .line 1217
    :cond_96
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source == this"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1216
    :cond_9e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeAll(Lokio/Source;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_13

    const-wide/16 v0, 0x0

    :goto_4
    const-wide/16 v2, 0x2000

    .line 996
    invoke-interface {p1, p0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_12

    add-long/2addr v0, v2

    goto :goto_4

    :cond_12
    return-wide v0

    .line 994
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeByte(I)Lokio/Buffer;
    .registers 6

    const/4 v0, 0x1

    .line 1012
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 1013
    iget-object v1, v0, Lokio/Segment;->data:[B

    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lokio/Segment;->limit:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    .line 1014
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeByte(I)Lokio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public writeDecimalLong(J)Lokio/Buffer;
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    const/16 p1, 0x30

    .line 1074
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p0

    return-object p0

    :cond_d
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_1e

    neg-long p1, p1

    cmp-long v2, p1, v0

    if-gez v2, :cond_1d

    const-string p1, "-9223372036854775808"

    .line 1081
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p0

    return-object p0

    :cond_1d
    move v3, v4

    :cond_1e
    const-wide/32 v5, 0x5f5e100

    cmp-long v2, p1, v5

    const-wide/16 v5, 0xa

    if-gez v2, :cond_6a

    const-wide/16 v7, 0x2710

    cmp-long v2, p1, v7

    if-gez v2, :cond_48

    const-wide/16 v7, 0x64

    cmp-long v2, p1, v7

    if-gez v2, :cond_3c

    cmp-long v2, p1, v5

    if-gez v2, :cond_39

    goto/16 :goto_e2

    :cond_39
    const/4 v4, 0x2

    goto/16 :goto_e2

    :cond_3c
    const-wide/16 v7, 0x3e8

    cmp-long v2, p1, v7

    if-gez v2, :cond_45

    const/4 v4, 0x3

    goto/16 :goto_e2

    :cond_45
    const/4 v4, 0x4

    goto/16 :goto_e2

    :cond_48
    const-wide/32 v7, 0xf4240

    cmp-long v2, p1, v7

    if-gez v2, :cond_5c

    const-wide/32 v7, 0x186a0

    cmp-long v2, p1, v7

    if-gez v2, :cond_59

    const/4 v4, 0x5

    goto/16 :goto_e2

    :cond_59
    const/4 v4, 0x6

    goto/16 :goto_e2

    :cond_5c
    const-wide/32 v7, 0x989680

    cmp-long v2, p1, v7

    if-gez v2, :cond_66

    const/4 v4, 0x7

    goto/16 :goto_e2

    :cond_66
    const/16 v4, 0x8

    goto/16 :goto_e2

    :cond_6a
    const-wide v7, 0xe8d4a51000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_98

    const-wide v7, 0x2540be400L

    cmp-long v2, p1, v7

    if-gez v2, :cond_89

    const-wide/32 v7, 0x3b9aca00

    cmp-long v2, p1, v7

    if-gez v2, :cond_86

    const/16 v4, 0x9

    goto :goto_e2

    :cond_86
    const/16 v4, 0xa

    goto :goto_e2

    :cond_89
    const-wide v7, 0x174876e800L

    cmp-long v2, p1, v7

    if-gez v2, :cond_95

    const/16 v4, 0xb

    goto :goto_e2

    :cond_95
    const/16 v4, 0xc

    goto :goto_e2

    :cond_98
    const-wide v7, 0x38d7ea4c68000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_bc

    const-wide v7, 0x9184e72a000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_ad

    const/16 v4, 0xd

    goto :goto_e2

    :cond_ad
    const-wide v7, 0x5af3107a4000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_b9

    const/16 v4, 0xe

    goto :goto_e2

    :cond_b9
    const/16 v4, 0xf

    goto :goto_e2

    :cond_bc
    const-wide v7, 0x16345785d8a0000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_d4

    const-wide v7, 0x2386f26fc10000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_d1

    const/16 v4, 0x10

    goto :goto_e2

    :cond_d1
    const/16 v4, 0x11

    goto :goto_e2

    :cond_d4
    const-wide v7, 0xde0b6b3a7640000L

    cmp-long v2, p1, v7

    if-gez v2, :cond_e0

    const/16 v4, 0x12

    goto :goto_e2

    :cond_e0
    const/16 v4, 0x13

    :goto_e2
    if-eqz v3, :cond_e6

    add-int/lit8 v4, v4, 0x1

    .line 1110
    :cond_e6
    invoke-virtual {p0, v4}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    .line 1111
    iget-object v7, v2, Lokio/Segment;->data:[B

    .line 1112
    iget v8, v2, Lokio/Segment;->limit:I

    add-int/2addr v8, v4

    :goto_ef
    cmp-long v9, p1, v0

    if-eqz v9, :cond_100

    .line 1114
    rem-long v9, p1, v5

    long-to-int v9, v9

    add-int/lit8 v8, v8, -0x1

    .line 1115
    sget-object v10, Lokio/Buffer;->DIGITS:[B

    aget-byte v9, v10, v9

    aput-byte v9, v7, v8

    .line 1116
    div-long/2addr p1, v5

    goto :goto_ef

    :cond_100
    if-eqz v3, :cond_108

    add-int/lit8 v8, v8, -0x1

    const/16 p1, 0x2d

    .line 1119
    aput-byte p1, v7, v8

    .line 1122
    :cond_108
    iget p1, v2, Lokio/Segment;->limit:I

    add-int/2addr p1, v4

    iput p1, v2, Lokio/Segment;->limit:I

    .line 1123
    iget-wide p1, p0, Lokio/Buffer;->size:J

    int-to-long v0, v4

    add-long/2addr p1, v0

    iput-wide p1, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeDecimalLong(J)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeDecimalLong(J)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public writeHexadecimalUnsignedLong(J)Lokio/Buffer;
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    const/16 p1, 0x30

    .line 1130
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object p0

    return-object p0

    .line 1133
    :cond_d
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    const/4 v1, 0x4

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 1135
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    .line 1136
    iget-object v3, v2, Lokio/Segment;->data:[B

    .line 1137
    iget v4, v2, Lokio/Segment;->limit:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    iget v5, v2, Lokio/Segment;->limit:I

    :goto_26
    if-lt v4, v5, :cond_36

    .line 1138
    sget-object v6, Lokio/Buffer;->DIGITS:[B

    const-wide/16 v7, 0xf

    and-long/2addr v7, p1

    long-to-int v7, v7

    aget-byte v6, v6, v7

    aput-byte v6, v3, v4

    ushr-long/2addr p1, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_26

    .line 1141
    :cond_36
    iget p1, v2, Lokio/Segment;->limit:I

    add-int/2addr p1, v0

    iput p1, v2, Lokio/Segment;->limit:I

    .line 1142
    iget-wide p1, p0, Lokio/Buffer;->size:J

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeHexadecimalUnsignedLong(J)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeHexadecimalUnsignedLong(J)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public writeInt(I)Lokio/Buffer;
    .registers 7

    const/4 v0, 0x4

    .line 1034
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 1035
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 1036
    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1037
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1038
    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1039
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1040
    aput-byte p1, v1, v3

    .line 1041
    iput v2, v0, Lokio/Segment;->limit:I

    .line 1042
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lokio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public writeIntLe(I)Lokio/Buffer;
    .registers 2

    .line 1047
    invoke-static {p1}, Lokio/Util;->reverseBytesInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic writeIntLe(I)Lokio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeIntLe(I)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public writeLong(J)Lokio/Buffer;
    .registers 12

    const/16 v0, 0x8

    .line 1051
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v1

    .line 1052
    iget-object v2, v1, Lokio/Segment;->data:[B

    .line 1053
    iget v3, v1, Lokio/Segment;->limit:I

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x38

    ushr-long v5, p1, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 1054
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x30

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 1055
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x28

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 1056
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x20

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 1057
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x18

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 1058
    aput-byte v5, v2, v3

    add-int/lit8 v3, v4, 0x1

    const/16 v5, 0x10

    ushr-long v5, p1, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 1059
    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    ushr-long v5, p1, v0

    and-long/2addr v5, v7

    long-to-int v0, v5

    int-to-byte v0, v0

    .line 1060
    aput-byte v0, v2, v3

    add-int/lit8 v0, v4, 0x1

    and-long/2addr p1, v7

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 1061
    aput-byte p1, v2, v4

    .line 1062
    iput v0, v1, Lokio/Segment;->limit:I

    .line 1063
    iget-wide p1, p0, Lokio/Buffer;->size:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeLong(J)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public writeLongLe(J)Lokio/Buffer;
    .registers 3

    .line 1068
    invoke-static {p1, p2}, Lokio/Util;->reverseBytesLong(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic writeLongLe(J)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeLongLe(J)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public writeShort(I)Lokio/Buffer;
    .registers 7

    const/4 v0, 0x2

    .line 1019
    invoke-virtual {p0, v0}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v0

    .line 1020
    iget-object v1, v0, Lokio/Segment;->data:[B

    .line 1021
    iget v2, v0, Lokio/Segment;->limit:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1022
    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1023
    aput-byte p1, v1, v3

    .line 1024
    iput v2, v0, Lokio/Segment;->limit:I

    .line 1025
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    return-object p0
.end method

.method public bridge synthetic writeShort(I)Lokio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public writeShortLe(I)Lokio/Buffer;
    .registers 2

    int-to-short p1, p1

    .line 1030
    invoke-static {p1}, Lokio/Util;->reverseBytesShort(S)S

    move-result p1

    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic writeShortLe(I)Lokio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeShortLe(I)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
    .registers 6

    if-eqz p1, :cond_8b

    if-ltz p2, :cond_74

    if-lt p3, p2, :cond_55

    .line 959
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_32

    if-eqz p4, :cond_2a

    .line 964
    sget-object v0, Lokio/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object p0

    return-object p0

    .line 965
    :cond_1b
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 p2, 0x0

    .line 966
    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object p0

    return-object p0

    .line 963
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "charset == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 960
    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "endIndex > string.length: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 957
    :cond_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "endIndex < beginIndex: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 955
    :cond_74
    new-instance p0, Ljava/lang/IllegalAccessError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "beginIndex < 0: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 954
    :cond_8b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "string == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;
    .registers 5

    .line 949
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/BufferedSink;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1, p2, p3, p4}, Lokio/Buffer;->writeString(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/BufferedSink;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Ljava/io/OutputStream;)Lokio/Buffer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-wide v0, p0, Lokio/Buffer;->size:J

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public writeTo(Ljava/io/OutputStream;J)Lokio/Buffer;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_42

    .line 207
    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 209
    iget-object v0, p0, Lokio/Buffer;->head:Lokio/Segment;

    :cond_c
    :goto_c
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_41

    .line 211
    iget v1, v0, Lokio/Segment;->limit:I

    iget v2, v0, Lokio/Segment;->pos:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 212
    iget-object v2, v0, Lokio/Segment;->data:[B

    iget v3, v0, Lokio/Segment;->pos:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 214
    iget v2, v0, Lokio/Segment;->pos:I

    add-int/2addr v2, v1

    iput v2, v0, Lokio/Segment;->pos:I

    .line 215
    iget-wide v2, p0, Lokio/Buffer;->size:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->size:J

    sub-long/2addr p2, v4

    .line 218
    iget v1, v0, Lokio/Segment;->pos:I

    iget v2, v0, Lokio/Segment;->limit:I

    if-ne v1, v2, :cond_c

    .line 220
    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->head:Lokio/Segment;

    .line 221
    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    move-object v0, v1

    goto :goto_c

    :cond_41
    return-object p0

    .line 206
    :cond_42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeUtf8(Ljava/lang/String;)Lokio/Buffer;
    .registers 4

    .line 833
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public writeUtf8(Ljava/lang/String;II)Lokio/Buffer;
    .registers 11

    if-eqz p1, :cond_12a

    if-ltz p2, :cond_113

    if-lt p3, p2, :cond_f4

    .line 842
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_d1

    :goto_c
    if-ge p2, p3, :cond_d0

    .line 849
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_4e

    const/4 v2, 0x1

    .line 852
    invoke-virtual {p0, v2}, Lokio/Buffer;->writableSegment(I)Lokio/Segment;

    move-result-object v2

    .line 853
    iget-object v3, v2, Lokio/Segment;->data:[B

    .line 854
    iget v4, v2, Lokio/Segment;->limit:I

    sub-int/2addr v4, p2

    rsub-int v5, v4, 0x2000

    .line 855
    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    .line 858
    aput-byte v0, v3, p2

    :goto_2c
    if-ge v6, v5, :cond_3d

    .line 863
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v1, :cond_35

    goto :goto_3d

    :cond_35
    add-int/lit8 v0, v6, 0x1

    add-int/2addr v6, v4

    int-to-byte p2, p2

    .line 865
    aput-byte p2, v3, v6

    move v6, v0

    goto :goto_2c

    :cond_3d
    :goto_3d
    add-int/2addr v4, v6

    .line 868
    iget p2, v2, Lokio/Segment;->limit:I

    sub-int/2addr v4, p2

    .line 869
    iget p2, v2, Lokio/Segment;->limit:I

    add-int/2addr p2, v4

    iput p2, v2, Lokio/Segment;->limit:I

    .line 870
    iget-wide v0, p0, Lokio/Buffer;->size:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->size:J

    move p2, v6

    goto :goto_c

    :cond_4e
    const/16 v2, 0x800

    if-ge v0, v2, :cond_62

    shr-int/lit8 v2, v0, 0x6

    or-int/lit16 v2, v2, 0xc0

    .line 874
    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 875
    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_62
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_b8

    const v2, 0xdfff

    if-le v0, v2, :cond_6f

    goto :goto_b8

    :cond_6f
    add-int/lit8 v4, p2, 0x1

    if-ge v4, p3, :cond_78

    .line 888
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_79

    :cond_78
    const/4 v5, 0x0

    :goto_79
    const v6, 0xdbff

    if-gt v0, v6, :cond_b2

    const v6, 0xdc00

    if-lt v5, v6, :cond_b2

    if-le v5, v2, :cond_86

    goto :goto_b2

    :cond_86
    const/high16 v2, 0x10000

    const v4, -0xd801

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0xa

    const v4, -0xdc01

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    add-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    .line 901
    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    shr-int/lit8 v2, v0, 0xc

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 902
    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 903
    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    .line 904
    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_c

    .line 890
    :cond_b2
    :goto_b2
    invoke-virtual {p0, v3}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move p2, v4

    goto/16 :goto_c

    :cond_b8
    :goto_b8
    shr-int/lit8 v2, v0, 0xc

    or-int/lit16 v2, v2, 0xe0

    .line 880
    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    .line 881
    invoke-virtual {p0, v2}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    .line 882
    invoke-virtual {p0, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_c

    :cond_d0
    return-object p0

    .line 843
    :cond_d1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > string.length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 840
    :cond_f4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex < beginIndex: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 838
    :cond_113
    new-instance p0, Ljava/lang/IllegalAccessError;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "beginIndex < 0: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 837
    :cond_12a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "string == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic writeUtf8(Ljava/lang/String;II)Lokio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method

.method public writeUtf8CodePoint(I)Lokio/Buffer;
    .registers 4

    const/16 v0, 0x80

    if-ge p1, v0, :cond_9

    .line 915
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto/16 :goto_7d

    :cond_9
    const/16 v1, 0x800

    if-ge p1, v1, :cond_1b

    shr-int/lit8 v1, p1, 0x6

    or-int/lit16 v1, v1, 0xc0

    .line 919
    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    .line 920
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_7d

    :cond_1b
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_5b

    const v1, 0xd800

    if-lt p1, v1, :cond_45

    const v1, 0xdfff

    if-le p1, v1, :cond_2a

    goto :goto_45

    .line 924
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected code point: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    :goto_45
    shr-int/lit8 v1, p1, 0xc

    or-int/lit16 v1, v1, 0xe0

    .line 929
    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    .line 930
    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    .line 931
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_7d

    :cond_5b
    const v1, 0x10ffff

    if-gt p1, v1, :cond_7e

    shr-int/lit8 v1, p1, 0x12

    or-int/lit16 v1, v1, 0xf0

    .line 935
    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    .line 936
    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v0

    .line 937
    invoke-virtual {p0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    .line 938
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    :goto_7d
    return-object p0

    .line 941
    :cond_7e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected code point: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic writeUtf8CodePoint(I)Lokio/BufferedSink;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    move-result-object p0

    return-object p0
.end method
