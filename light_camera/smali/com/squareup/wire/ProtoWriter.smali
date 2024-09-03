.class public final Lcom/squareup/wire/ProtoWriter;
.super Ljava/lang/Object;
.source "ProtoWriter.java"


# instance fields
.field private final sink:Lokio/BufferedSink;


# direct methods
.method public constructor <init>(Lokio/BufferedSink;)V
    .registers 2

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/squareup/wire/ProtoWriter;->sink:Lokio/BufferedSink;

    return-void
.end method

.method static decodeZigZag32(I)I
    .registers 2

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    xor-int/2addr p0, v0

    return p0
.end method

.method static decodeZigZag64(J)J
    .registers 6

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method static encodeZigZag32(I)I
    .registers 2

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method static encodeZigZag64(J)J
    .registers 5

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method static int32Size(I)I
    .registers 1

    if-ltz p0, :cond_7

    .line 100
    invoke-static {p0}, Lcom/squareup/wire/ProtoWriter;->varint32Size(I)I

    move-result p0

    return p0

    :cond_7
    const/16 p0, 0xa

    return p0
.end method

.method private static makeTag(ILcom/squareup/wire/FieldEncoding;)I
    .registers 2

    shl-int/lit8 p0, p0, 0x3

    .line 63
    iget p1, p1, Lcom/squareup/wire/FieldEncoding;->value:I

    or-int/2addr p0, p1

    return p0
.end method

.method static tagSize(I)I
    .registers 2

    .line 68
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    invoke-static {p0, v0}, Lcom/squareup/wire/ProtoWriter;->makeTag(ILcom/squareup/wire/FieldEncoding;)I

    move-result p0

    invoke-static {p0}, Lcom/squareup/wire/ProtoWriter;->varint32Size(I)I

    move-result p0

    return p0
.end method

.method static utf8Length(Ljava/lang/String;)I
    .registers 8

    .line 73
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_49

    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_13

    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_13
    const/16 v4, 0x800

    if-ge v3, v4, :cond_1a

    add-int/lit8 v2, v2, 0x2

    goto :goto_46

    :cond_1a
    const v4, 0xd800

    if-lt v3, v4, :cond_44

    const v4, 0xdfff

    if-le v3, v4, :cond_25

    goto :goto_44

    :cond_25
    const v5, 0xdbff

    if-gt v3, v5, :cond_41

    add-int/lit8 v3, v1, 0x1

    if-ge v3, v0, :cond_41

    .line 82
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xdc00

    if-lt v5, v6, :cond_41

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-gt v5, v4, :cond_41

    add-int/lit8 v2, v2, 0x4

    move v1, v3

    goto :goto_46

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_44
    :goto_44
    add-int/lit8 v2, v2, 0x3

    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_49
    return v2
.end method

.method static varint32Size(I)I
    .registers 2

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 p0, 0x3

    return p0

    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    const/4 p0, 0x4

    return p0

    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method static varint64Size(J)I
    .registers 6

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/4 p0, 0x2

    return p0

    :cond_14
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    const/4 p0, 0x3

    return p0

    :cond_1e
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    const/4 p0, 0x4

    return p0

    :cond_28
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    const/4 p0, 0x5

    return p0

    :cond_34
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_40

    const/4 p0, 0x6

    return p0

    :cond_40
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_49

    const/4 p0, 0x7

    return p0

    :cond_49
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_53

    const/16 p0, 0x8

    return p0

    :cond_53
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_5d

    const/16 p0, 0x9

    return p0

    :cond_5d
    const/16 p0, 0xa

    return p0
.end method


# virtual methods
.method public writeBytes(Lokio/ByteString;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    iget-object p0, p0, Lcom/squareup/wire/ProtoWriter;->sink:Lokio/BufferedSink;

    invoke-interface {p0, p1}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    return-void
.end method

.method public writeFixed32(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-object p0, p0, Lcom/squareup/wire/ProtoWriter;->sink:Lokio/BufferedSink;

    invoke-interface {p0, p1}, Lokio/BufferedSink;->writeIntLe(I)Lokio/BufferedSink;

    return-void
.end method

.method public writeFixed64(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    iget-object p0, p0, Lcom/squareup/wire/ProtoWriter;->sink:Lokio/BufferedSink;

    invoke-interface {p0, p1, p2}, Lokio/BufferedSink;->writeLongLe(J)Lokio/BufferedSink;

    return-void
.end method

.method writeSignedVarint32(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_6

    .line 209
    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoWriter;->writeVarint32(I)V

    goto :goto_a

    :cond_6
    int-to-long v0, p1

    .line 212
    invoke-virtual {p0, v0, v1}, Lcom/squareup/wire/ProtoWriter;->writeVarint64(J)V

    :goto_a
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    iget-object p0, p0, Lcom/squareup/wire/ProtoWriter;->sink:Lokio/BufferedSink;

    invoke-interface {p0, p1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    return-void
.end method

.method public writeTag(ILcom/squareup/wire/FieldEncoding;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    invoke-static {p1, p2}, Lcom/squareup/wire/ProtoWriter;->makeTag(ILcom/squareup/wire/FieldEncoding;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoWriter;->writeVarint32(I)V

    return-void
.end method

.method public writeVarint32(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-eqz v0, :cond_10

    .line 222
    iget-object v0, p0, Lcom/squareup/wire/ProtoWriter;->sink:Lokio/BufferedSink;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 225
    :cond_10
    iget-object p0, p0, Lcom/squareup/wire/ProtoWriter;->sink:Lokio/BufferedSink;

    invoke-interface {p0, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    return-void
.end method

.method public writeVarint64(J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    .line 231
    iget-object v0, p0, Lcom/squareup/wire/ProtoWriter;->sink:Lokio/BufferedSink;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    .line 234
    :cond_16
    iget-object p0, p0, Lcom/squareup/wire/ProtoWriter;->sink:Lokio/BufferedSink;

    long-to-int p1, p1

    invoke-interface {p0, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    return-void
.end method
