.class public Lorg/apache/commons/io/ByteOrderMark;
.super Ljava/lang/Object;
.source "ByteOrderMark.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final UTF_16BE:Lorg/apache/commons/io/ByteOrderMark;

.field public static final UTF_16LE:Lorg/apache/commons/io/ByteOrderMark;

.field public static final UTF_32BE:Lorg/apache/commons/io/ByteOrderMark;

.field public static final UTF_32LE:Lorg/apache/commons/io/ByteOrderMark;

.field public static final UTF_8:Lorg/apache/commons/io/ByteOrderMark;

.field public static final UTF_BOM:C = '\ufeff'

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bytes:[I

.field private final charsetName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 36
    new-instance v0, Lorg/apache/commons/io/ByteOrderMark;

    const-string v1, "UTF-8"

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_4a

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    sput-object v0, Lorg/apache/commons/io/ByteOrderMark;->UTF_8:Lorg/apache/commons/io/ByteOrderMark;

    .line 39
    new-instance v0, Lorg/apache/commons/io/ByteOrderMark;

    const-string v1, "UTF-16BE"

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_54

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    sput-object v0, Lorg/apache/commons/io/ByteOrderMark;->UTF_16BE:Lorg/apache/commons/io/ByteOrderMark;

    .line 42
    new-instance v0, Lorg/apache/commons/io/ByteOrderMark;

    const-string v1, "UTF-16LE"

    new-array v2, v2, [I

    fill-array-data v2, :array_5c

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    sput-object v0, Lorg/apache/commons/io/ByteOrderMark;->UTF_16LE:Lorg/apache/commons/io/ByteOrderMark;

    .line 48
    new-instance v0, Lorg/apache/commons/io/ByteOrderMark;

    const-string v1, "UTF-32BE"

    const/4 v2, 0x4

    new-array v3, v2, [I

    fill-array-data v3, :array_64

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    sput-object v0, Lorg/apache/commons/io/ByteOrderMark;->UTF_32BE:Lorg/apache/commons/io/ByteOrderMark;

    .line 54
    new-instance v0, Lorg/apache/commons/io/ByteOrderMark;

    const-string v1, "UTF-32LE"

    new-array v2, v2, [I

    fill-array-data v2, :array_70

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    sput-object v0, Lorg/apache/commons/io/ByteOrderMark;->UTF_32LE:Lorg/apache/commons/io/ByteOrderMark;

    return-void

    :array_4a
    .array-data 4
        0xef
        0xbb
        0xbf
    .end array-data

    :array_54
    .array-data 4
        0xfe
        0xff
    .end array-data

    :array_5c
    .array-data 4
        0xff
        0xfe
    .end array-data

    :array_64
    .array-data 4
        0x0
        0x0
        0xfe
        0xff
    .end array-data

    :array_70
    .array-data 4
        0xff
        0xfe
        0x0
        0x0
    .end array-data
.end method

.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .registers 4

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_27

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    if-eqz p2, :cond_1f

    .line 80
    array-length v0, p2

    if-eqz v0, :cond_1f

    .line 83
    iput-object p1, p0, Lorg/apache/commons/io/ByteOrderMark;->charsetName:Ljava/lang/String;

    .line 84
    array-length p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    .line 85
    iget-object p0, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    array-length p1, p2

    const/4 v0, 0x0

    invoke-static {p2, v0, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 81
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No bytes specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No charsetName specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 138
    instance-of v0, p1, Lorg/apache/commons/io/ByteOrderMark;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 141
    :cond_6
    check-cast p1, Lorg/apache/commons/io/ByteOrderMark;

    .line 142
    iget-object v0, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    array-length v0, v0

    invoke-virtual {p1}, Lorg/apache/commons/io/ByteOrderMark;->length()I

    move-result v2

    if-eq v0, v2, :cond_12

    return v1

    :cond_12
    move v0, v1

    .line 145
    :goto_13
    iget-object v2, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    array-length v2, v2

    if-ge v0, v2, :cond_26

    .line 146
    iget-object v2, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    aget v2, v2, v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/io/ByteOrderMark;->get(I)I

    move-result v3

    if-eq v2, v3, :cond_23

    return v1

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_26
    const/4 p0, 0x1

    return p0
.end method

.method public get(I)I
    .registers 2

    .line 113
    iget-object p0, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    aget p0, p0, p1

    return p0
.end method

.method public getBytes()[B
    .registers 4

    .line 122
    iget-object v0, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    array-length v0, v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 123
    :goto_6
    iget-object v2, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    array-length v2, v2

    if-ge v1, v2, :cond_15

    .line 124
    iget-object v2, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    aget v2, v2, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_15
    return-object v0
.end method

.method public getCharsetName()Ljava/lang/String;
    .registers 1

    .line 94
    iget-object p0, p0, Lorg/apache/commons/io/ByteOrderMark;->charsetName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 5

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 162
    iget-object p0, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    array-length v1, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_14

    aget v3, p0, v2

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_14
    return v0
.end method

.method public length()I
    .registers 1

    .line 103
    iget-object p0, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    array-length p0, p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    iget-object v1, p0, Lorg/apache/commons/io/ByteOrderMark;->charsetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 180
    :goto_20
    iget-object v2, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    array-length v2, v2

    if-ge v1, v2, :cond_45

    if-lez v1, :cond_2c

    const-string v2, ","

    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    const-string v2, "0x"

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v2, p0, Lorg/apache/commons/io/ByteOrderMark;->bytes:[I

    aget v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_45
    const/16 p0, 0x5d

    .line 187
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
