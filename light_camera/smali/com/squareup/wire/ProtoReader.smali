.class public final Lcom/squareup/wire/ProtoReader;
.super Ljava/lang/Object;
.source "ProtoReader.java"


# static fields
.field private static final FIELD_ENCODING_MASK:I = 0x7

.field private static final RECURSION_LIMIT:I = 0x41

.field private static final STATE_END_GROUP:I = 0x4

.field private static final STATE_FIXED32:I = 0x5

.field private static final STATE_FIXED64:I = 0x1

.field private static final STATE_LENGTH_DELIMITED:I = 0x2

.field private static final STATE_PACKED_TAG:I = 0x7

.field private static final STATE_START_GROUP:I = 0x3

.field private static final STATE_TAG:I = 0x6

.field private static final STATE_VARINT:I = 0x0

.field static final TAG_FIELD_ENCODING_BITS:I = 0x3


# instance fields
.field private limit:J

.field private nextFieldEncoding:Lcom/squareup/wire/FieldEncoding;

.field private pos:J

.field private pushedLimit:J

.field private recursionDepth:I

.field private final source:Lokio/BufferedSource;

.field private state:I

.field private tag:I


# direct methods
.method public constructor <init>(Lokio/BufferedSource;)V
    .registers 4

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    const-wide v0, 0x7fffffffffffffffL

    .line 67
    iput-wide v0, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    const/4 v0, 0x2

    .line 71
    iput v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/squareup/wire/ProtoReader;->tag:I

    const-wide/16 v0, -0x1

    .line 75
    iput-wide v0, p0, Lcom/squareup/wire/ProtoReader;->pushedLimit:J

    .line 80
    iput-object p1, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    return-void
.end method

.method private afterPackableScalar(I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 v1, 0x6

    if-ne v0, p1, :cond_8

    .line 376
    iput v1, p0, Lcom/squareup/wire/ProtoReader;->state:I

    goto :goto_26

    .line 378
    :cond_8
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    cmp-long p1, v2, v4

    if-gtz p1, :cond_27

    .line 380
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_23

    .line 382
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pushedLimit:J

    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    const-wide/16 v2, -0x1

    .line 383
    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pushedLimit:J

    .line 384
    iput v1, p0, Lcom/squareup/wire/ProtoReader;->state:I

    goto :goto_26

    :cond_23
    const/4 p1, 0x7

    .line 386
    iput p1, p0, Lcom/squareup/wire/ProtoReader;->state:I

    :goto_26
    return-void

    .line 379
    :cond_27
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected to end at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private beforeLengthDelimitedScalar()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    .line 395
    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    sub-long/2addr v0, v2

    .line 396
    iget-object v2, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v2, v0, v1}, Lokio/BufferedSource;->require(J)V

    const/4 v2, 0x6

    .line 397
    iput v2, p0, Lcom/squareup/wire/ProtoReader;->state:I

    .line 399
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    .line 400
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pushedLimit:J

    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    const-wide/16 v2, -0x1

    .line 401
    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pushedLimit:J

    return-wide v0

    .line 393
    :cond_1f
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected LENGTH_DELIMITED but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private internalReadVarint32()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 285
    iget-wide v3, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    .line 286
    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    if-ltz v0, :cond_15

    return v0

    :cond_15
    and-int/lit8 v0, v0, 0x7f

    .line 291
    iget-object v3, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v3, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 292
    iget-wide v3, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    .line 293
    iget-object v3, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    if-ltz v3, :cond_2e

    shl-int/lit8 p0, v3, 0x7

    or-int/2addr p0, v0

    goto/16 :goto_a1

    :cond_2e
    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v0, v3

    .line 297
    iget-object v3, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v3, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 298
    iget-wide v3, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    .line 299
    iget-object v3, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    if-ltz v3, :cond_49

    shl-int/lit8 p0, v3, 0xe

    or-int/2addr p0, v0

    goto :goto_a1

    :cond_49
    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v0, v3

    .line 303
    iget-object v3, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v3, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 304
    iget-wide v3, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    .line 305
    iget-object v3, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    if-ltz v3, :cond_64

    shl-int/lit8 p0, v3, 0x15

    or-int/2addr p0, v0

    goto :goto_a1

    :cond_64
    and-int/lit8 v3, v3, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v0, v3

    .line 309
    iget-object v3, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v3, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 310
    iget-wide v3, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    .line 311
    iget-object v3, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    shl-int/lit8 v4, v3, 0x1c

    or-int/2addr v0, v4

    if-gez v3, :cond_a0

    const/4 v3, 0x0

    :goto_7f
    const/4 v4, 0x5

    if-ge v3, v4, :cond_98

    .line 315
    iget-object v4, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v4, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 316
    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    add-long/2addr v4, v1

    iput-wide v4, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    .line 317
    iget-object v4, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v4

    if-ltz v4, :cond_95

    return v0

    :cond_95
    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    .line 321
    :cond_98
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Malformed VARINT"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a0
    move p0, v0

    :goto_a1
    return p0
.end method

.method private skipGroup(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    :goto_0
    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_70

    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_70

    .line 218
    invoke-direct {p0}, Lcom/squareup/wire/ProtoReader;->internalReadVarint32()I

    move-result v0

    if-eqz v0, :cond_68

    shr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_76

    .line 247
    new-instance p0, Ljava/net/ProtocolException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected field encoding: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_34
    const/4 v0, 0x5

    .line 243
    iput v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    .line 244
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->readFixed32()I

    goto :goto_0

    :pswitch_3b
    if-ne v1, p1, :cond_3e

    return-void

    .line 228
    :cond_3e
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Unexpected end group"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 224
    :pswitch_46
    invoke-direct {p0, v1}, Lcom/squareup/wire/ProtoReader;->skipGroup(I)V

    goto :goto_0

    .line 230
    :pswitch_4a
    invoke-direct {p0}, Lcom/squareup/wire/ProtoReader;->internalReadVarint32()I

    move-result v0

    .line 231
    iget-wide v1, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    .line 232
    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v0, v3, v4}, Lokio/BufferedSource;->skip(J)V

    goto :goto_0

    :pswitch_5a
    const/4 v0, 0x1

    .line 239
    iput v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    .line 240
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->readFixed64()J

    goto :goto_0

    :pswitch_61
    const/4 v0, 0x0

    .line 235
    iput v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    .line 236
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->readVarint64()J

    goto :goto_0

    .line 219
    :cond_68
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Unexpected tag 0"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 250
    :cond_70
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_61
        :pswitch_5a
        :pswitch_4a
        :pswitch_46
        :pswitch_3b
        :pswitch_34
    .end packed-switch
.end method


# virtual methods
.method public beginMessage()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 92
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/wire/ProtoReader;->recursionDepth:I

    const/16 v1, 0x41

    if-gt v0, v1, :cond_19

    .line 97
    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->pushedLimit:J

    const-wide/16 v2, -0x1

    .line 98
    iput-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pushedLimit:J

    const/4 v2, 0x6

    .line 99
    iput v2, p0, Lcom/squareup/wire/ProtoReader;->state:I

    return-wide v0

    .line 93
    :cond_19
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Wire recursion limit exceeded"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected call to beginMessage()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public endMessage(J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_50

    .line 113
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/wire/ProtoReader;->recursionDepth:I

    if-ltz v0, :cond_48

    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->pushedLimit:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_48

    .line 116
    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_45

    iget v0, p0, Lcom/squareup/wire/ProtoReader;->recursionDepth:I

    if-nez v0, :cond_22

    goto :goto_45

    .line 117
    :cond_22
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected to end at "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " but was "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_45
    :goto_45
    iput-wide p1, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    return-void

    .line 114
    :cond_48
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No corresponding call to beginMessage()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 111
    :cond_50
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected call to endMessage()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public nextTag()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x7

    if-ne v0, v2, :cond_b

    .line 129
    iput v1, p0, Lcom/squareup/wire/ProtoReader;->state:I

    .line 130
    iget p0, p0, Lcom/squareup/wire/ProtoReader;->tag:I

    return p0

    .line 131
    :cond_b
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_c8

    .line 135
    :goto_10
    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_c6

    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    if-nez v0, :cond_c6

    .line 136
    invoke-direct {p0}, Lcom/squareup/wire/ProtoReader;->internalReadVarint32()I

    move-result v0

    if-eqz v0, :cond_be

    shr-int/lit8 v2, v0, 0x3

    .line 139
    iput v2, p0, Lcom/squareup/wire/ProtoReader;->tag:I

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_d0

    .line 177
    new-instance p0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected field encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 172
    :pswitch_46
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->FIXED32:Lcom/squareup/wire/FieldEncoding;

    iput-object v0, p0, Lcom/squareup/wire/ProtoReader;->nextFieldEncoding:Lcom/squareup/wire/FieldEncoding;

    const/4 v0, 0x5

    .line 173
    iput v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    .line 174
    iget p0, p0, Lcom/squareup/wire/ProtoReader;->tag:I

    return p0

    .line 147
    :pswitch_50
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Unexpected end group"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 143
    :pswitch_58
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->tag:I

    invoke-direct {p0, v0}, Lcom/squareup/wire/ProtoReader;->skipGroup(I)V

    goto :goto_10

    .line 150
    :pswitch_5e
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    iput-object v0, p0, Lcom/squareup/wire/ProtoReader;->nextFieldEncoding:Lcom/squareup/wire/FieldEncoding;

    .line 151
    iput v1, p0, Lcom/squareup/wire/ProtoReader;->state:I

    .line 152
    invoke-direct {p0}, Lcom/squareup/wire/ProtoReader;->internalReadVarint32()I

    move-result v0

    if-ltz v0, :cond_93

    .line 154
    iget-wide v1, p0, Lcom/squareup/wire/ProtoReader;->pushedLimit:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_8d

    .line 156
    iget-wide v1, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    iput-wide v1, p0, Lcom/squareup/wire/ProtoReader;->pushedLimit:J

    .line 157
    iget-wide v1, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    .line 158
    iget-wide v0, p0, Lcom/squareup/wire/ProtoReader;->limit:J

    iget-wide v2, p0, Lcom/squareup/wire/ProtoReader;->pushedLimit:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_87

    .line 159
    iget p0, p0, Lcom/squareup/wire/ProtoReader;->tag:I

    return p0

    .line 158
    :cond_87
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 154
    :cond_8d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 153
    :cond_93
    new-instance p0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 167
    :pswitch_aa
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->FIXED64:Lcom/squareup/wire/FieldEncoding;

    iput-object v0, p0, Lcom/squareup/wire/ProtoReader;->nextFieldEncoding:Lcom/squareup/wire/FieldEncoding;

    const/4 v0, 0x1

    .line 168
    iput v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    .line 169
    iget p0, p0, Lcom/squareup/wire/ProtoReader;->tag:I

    return p0

    .line 162
    :pswitch_b4
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iput-object v0, p0, Lcom/squareup/wire/ProtoReader;->nextFieldEncoding:Lcom/squareup/wire/FieldEncoding;

    const/4 v0, 0x0

    .line 163
    iput v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    .line 164
    iget p0, p0, Lcom/squareup/wire/ProtoReader;->tag:I

    return p0

    .line 137
    :cond_be
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "Unexpected tag 0"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c6
    const/4 p0, -0x1

    return p0

    .line 132
    :cond_c8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected call to nextTag()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_b4
        :pswitch_aa
        :pswitch_5e
        :pswitch_58
        :pswitch_50
        :pswitch_46
    .end packed-switch
.end method

.method public peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;
    .registers 1

    .line 188
    iget-object p0, p0, Lcom/squareup/wire/ProtoReader;->nextFieldEncoding:Lcom/squareup/wire/FieldEncoding;

    return-object p0
.end method

.method public readBytes()Lokio/ByteString;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    invoke-direct {p0}, Lcom/squareup/wire/ProtoReader;->beforeLengthDelimitedScalar()J

    move-result-wide v0

    .line 259
    iget-object v2, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v2, v0, v1}, Lokio/BufferedSource;->require(J)V

    .line 260
    iget-object p0, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public readFixed32()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_24

    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    goto :goto_24

    .line 353
    :cond_b
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected FIXED32 or LENGTH_DELIMITED but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    const-wide/16 v2, 0x4

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->require(J)V

    .line 356
    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    .line 357
    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    .line 358
    invoke-direct {p0, v1}, Lcom/squareup/wire/ProtoReader;->afterPackableScalar(I)V

    return v0
.end method

.method public readFixed64()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    goto :goto_24

    .line 365
    :cond_b
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected FIXED64 or LENGTH_DELIMITED but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    const-wide/16 v2, 0x8

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->require(J)V

    .line 368
    iget-wide v4, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    .line 369
    iget-object v0, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide v2

    .line 370
    invoke-direct {p0, v1}, Lcom/squareup/wire/ProtoReader;->afterPackableScalar(I)V

    return-wide v2
.end method

.method public readString()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    invoke-direct {p0}, Lcom/squareup/wire/ProtoReader;->beforeLengthDelimitedScalar()J

    move-result-wide v0

    .line 266
    iget-object v2, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v2, v0, v1}, Lokio/BufferedSource;->require(J)V

    .line 267
    iget-object p0, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readVarint32()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    goto :goto_23

    .line 276
    :cond_a
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected VARINT or LENGTH_DELIMITED but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_23
    :goto_23
    invoke-direct {p0}, Lcom/squareup/wire/ProtoReader;->internalReadVarint32()I

    move-result v0

    const/4 v1, 0x0

    .line 279
    invoke-direct {p0, v1}, Lcom/squareup/wire/ProtoReader;->afterPackableScalar(I)V

    return v0
.end method

.method public readVarint64()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    goto :goto_23

    .line 332
    :cond_a
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected VARINT or LENGTH_DELIMITED but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    :goto_23
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    move v0, v2

    :goto_28
    const/16 v1, 0x40

    if-ge v0, v1, :cond_4e

    .line 337
    iget-object v1, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    const-wide/16 v5, 0x1

    invoke-interface {v1, v5, v6}, Lokio/BufferedSource;->require(J)V

    .line 338
    iget-wide v7, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/squareup/wire/ProtoReader;->pos:J

    .line 339
    iget-object v1, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {v1}, Lokio/BufferedSource;->readByte()B

    move-result v1

    and-int/lit8 v5, v1, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v0

    or-long/2addr v3, v5

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_4b

    .line 342
    invoke-direct {p0, v2}, Lcom/squareup/wire/ProtoReader;->afterPackableScalar(I)V

    return-wide v3

    :cond_4b
    add-int/lit8 v0, v0, 0x7

    goto :goto_28

    .line 347
    :cond_4e
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "WireInput encountered a malformed varint"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public skip()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget v0, p0, Lcom/squareup/wire/ProtoReader;->state:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_22

    packed-switch v0, :pswitch_data_26

    .line 211
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected call to skip()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 198
    :pswitch_10
    invoke-direct {p0}, Lcom/squareup/wire/ProtoReader;->beforeLengthDelimitedScalar()J

    move-result-wide v0

    .line 199
    iget-object p0, p0, Lcom/squareup/wire/ProtoReader;->source:Lokio/BufferedSource;

    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    goto :goto_25

    .line 205
    :pswitch_1a
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->readFixed64()J

    goto :goto_25

    .line 202
    :pswitch_1e
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->readVarint64()J

    goto :goto_25

    .line 208
    :cond_22
    invoke-virtual {p0}, Lcom/squareup/wire/ProtoReader;->readFixed32()I

    :goto_25
    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1a
        :pswitch_10
    .end packed-switch
.end method
