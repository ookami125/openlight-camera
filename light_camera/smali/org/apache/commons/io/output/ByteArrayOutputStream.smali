.class public Lorg/apache/commons/io/output/ByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "ByteArrayOutputStream.java"


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# instance fields
.field private final buffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private count:I

.field private currentBuffer:[B

.field private currentBufferIndex:I

.field private filledBufferSum:I

.field private reuseBuffers:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 60
    new-array v0, v0, [B

    sput-object v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x400

    .line 80
    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 90
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->reuseBuffers:Z

    if-ltz p1, :cond_18

    .line 95
    monitor-enter p0

    .line 96
    :try_start_10
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    .line 97
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_15

    throw p1

    .line 92
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative initial size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private needNewBuffer(I)V
    .registers 4

    .line 107
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_27

    .line 109
    iget p1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    iget-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v0, v0

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    .line 111
    iget p1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    .line 112
    iget-object p1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    goto :goto_54

    .line 116
    :cond_27
    iget-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    if-nez v0, :cond_2f

    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    goto :goto_43

    .line 120
    :cond_2f
    iget-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 123
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    .line 126
    :goto_43
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    .line 127
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    .line 128
    iget-object p1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    iget-object p0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_54
    return-void
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 292
    invoke-static {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>(I)V

    .line 322
    invoke-virtual {v0, p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->write(Ljava/io/InputStream;)I

    .line 323
    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized reset()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 234
    :try_start_2
    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    .line 235
    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    .line 236
    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    .line 237
    iget-boolean v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->reuseBuffers:Z

    if-eqz v1, :cond_19

    .line 238
    iget-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBufferIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    goto :goto_30

    :cond_19
    const/4 v1, 0x0

    .line 241
    iput-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    .line 242
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    .line 243
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 244
    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    const/4 v0, 0x1

    .line 245
    iput-boolean v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->reuseBuffers:Z
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_32

    .line 247
    :goto_30
    monitor-exit p0

    return-void

    :catchall_32
    move-exception v0

    .line 233
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .registers 2

    monitor-enter p0

    .line 214
    :try_start_1
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toByteArray()[B
    .registers 8

    monitor-enter p0

    .line 362
    :try_start_1
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    if-nez v0, :cond_9

    .line 364
    sget-object v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->EMPTY_BYTE_ARRAY:[B
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2d

    monitor-exit p0

    return-object v0

    .line 366
    :cond_9
    :try_start_9
    new-array v1, v0, [B

    .line 368
    iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 369
    array-length v6, v5

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 370
    invoke-static {v5, v3, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_2d

    add-int/2addr v4, v6

    sub-int/2addr v0, v6

    if-nez v0, :cond_13

    .line 377
    :cond_2b
    monitor-exit p0

    return-object v1

    :catchall_2d
    move-exception v0

    .line 361
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toInputStream()Ljava/io/InputStream;
    .registers 8

    monitor-enter p0

    .line 337
    :try_start_1
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    if-nez v0, :cond_c

    .line 339
    new-instance v0, Lorg/apache/commons/io/input/ClosedInputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/input/ClosedInputStream;-><init>()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_47

    monitor-exit p0

    return-object v0

    .line 341
    :cond_c
    :try_start_c
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 342
    iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 343
    array-length v5, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 344
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v3, v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr v0, v5

    if-nez v0, :cond_1d

    .line 350
    :cond_3a
    iput-boolean v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->reuseBuffers:Z

    .line 351
    new-instance v0, Ljava/io/SequenceInputStream;

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/SequenceInputStream;-><init>(Ljava/util/Enumeration;)V
    :try_end_45
    .catchall {:try_start_c .. :try_end_45} :catchall_47

    monitor-exit p0

    return-object v0

    :catchall_47
    move-exception v0

    .line 336
    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 391
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 404
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    .line 417
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public declared-synchronized write(Ljava/io/InputStream;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 194
    :try_start_1
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    sub-int/2addr v0, v1

    .line 195
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v2, v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    :goto_13
    const/4 v4, -0x1

    if-eq v1, v4, :cond_34

    add-int/2addr v0, v1

    add-int/2addr v3, v1

    .line 199
    iget v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    .line 200
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v1, v1

    if-ne v3, v1, :cond_29

    .line 201
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v1, v1

    invoke-direct {p0, v1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    move v3, v2

    .line 204
    :cond_29
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    iget-object v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v4, v4

    sub-int/2addr v4, v3

    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_36

    goto :goto_13

    .line 206
    :cond_34
    monitor-exit p0

    return v0

    :catchall_36
    move-exception p1

    .line 192
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write(I)V
    .registers 4

    monitor-enter p0

    .line 172
    :try_start_1
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    sub-int/2addr v0, v1

    .line 173
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_13

    .line 174
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    const/4 v0, 0x0

    .line 177
    :cond_13
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    int-to-byte p1, p1

    aput-byte p1, v1, v0

    .line 178
    iget p1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 179
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    .line 171
    monitor-exit p0

    throw p1
.end method

.method public write([BII)V
    .registers 9

    if-ltz p2, :cond_39

    .line 140
    array-length v0, p1

    if-gt p2, v0, :cond_39

    if-ltz p3, :cond_39

    add-int/2addr p2, p3

    array-length v0, p1

    if-gt p2, v0, :cond_39

    if-ltz p2, :cond_39

    if-nez p3, :cond_10

    return-void

    .line 149
    :cond_10
    monitor-enter p0

    .line 150
    :try_start_11
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    add-int/2addr v0, p3

    .line 152
    iget v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    iget v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->filledBufferSum:I

    sub-int/2addr v1, v2

    :cond_19
    :goto_19
    if-lez p3, :cond_32

    .line 154
    iget-object v2, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int v3, p2, p3

    .line 155
    iget-object v4, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->currentBuffer:[B

    invoke-static {p1, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v2

    if-lez p3, :cond_19

    .line 158
    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->needNewBuffer(I)V

    const/4 v1, 0x0

    goto :goto_19

    .line 162
    :cond_32
    iput v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    .line 163
    monitor-exit p0

    return-void

    :catchall_36
    move-exception p1

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_11 .. :try_end_38} :catchall_36

    throw p1

    .line 145
    :cond_39
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 258
    :try_start_1
    iget v0, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->count:I

    .line 259
    iget-object v1, p0, Lorg/apache/commons/io/output/ByteArrayOutputStream;->buffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 260
    array-length v3, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    .line 261
    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_23

    sub-int/2addr v0, v3

    if-nez v0, :cond_9

    .line 267
    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    .line 257
    monitor-exit p0

    throw p1
.end method
