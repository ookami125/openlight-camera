.class public Lopenlight/co/camera/proto/LightHeader;
.super Ljava/lang/Object;
.source "LightHeader.java"


# static fields
.field private static final HEADER_LENGTH:I

.field private static final MAGIC_ID:[B

.field private static final RESERVED:[B

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_GPS_DATA:B = 0x2t

.field public static final TYPE_VIEW_PREFS:B = 0x1t


# instance fields
.field public final message:Lcom/squareup/wire/Message;

.field public final type:B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 20
    const-class v0, Lopenlight/co/camera/proto/LightHeader;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/proto/LightHeader;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    .line 25
    new-array v1, v0, [B

    fill-array-data v1, :array_24

    sput-object v1, Lopenlight/co/camera/proto/LightHeader;->MAGIC_ID:[B

    const/4 v1, 0x7

    .line 26
    new-array v2, v1, [B

    sput-object v2, Lopenlight/co/camera/proto/LightHeader;->RESERVED:[B

    .line 29
    sget-object v2, Lopenlight/co/camera/proto/LightHeader;->MAGIC_ID:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v1

    sput v2, Lopenlight/co/camera/proto/LightHeader;->HEADER_LENGTH:I

    return-void

    nop

    :array_24
    .array-data 1
        0x4ct
        0x45t
        0x4ct
        0x52t
    .end array-data
.end method

.method public constructor <init>(Lcom/squareup/wire/Message;B)V
    .registers 3
    .param p1    # Lcom/squareup/wire/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lopenlight/co/camera/proto/LightHeader;->message:Lcom/squareup/wire/Message;

    .line 43
    iput-byte p2, p0, Lopenlight/co/camera/proto/LightHeader;->type:B

    return-void
.end method

.method private dump(Lcom/squareup/wire/Message;)V
    .registers 8

    .line 84
    sget-object p0, Lopenlight/co/camera/proto/LightHeader;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Protobuf "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->encode()[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_2a
    if-ge v2, v0, :cond_43

    aget-byte v3, p1, v2

    const-string v4, "%02x "

    const/4 v5, 0x1

    .line 87
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_43
    const/16 p1, 0xa

    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    sget-object p1, Lopenlight/co/camera/proto/LightHeader;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private printByteInfo(B)V
    .registers 6

    .line 112
    sget-object p0, Lopenlight/co/camera/proto/LightHeader;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PROTO: Byte info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%02x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private printIntInfo(I)V
    .registers 9

    const/4 p0, 0x4

    .line 94
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 96
    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-ge v1, p1, :cond_3c

    aget-byte v2, p0, v1

    .line 97
    sget-object v3, Lopenlight/co/camera/proto/LightHeader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PROTO: Int info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_3c
    return-void
.end method

.method private printLongInfo(J)V
    .registers 9

    const/16 p0, 0x8

    .line 103
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 105
    array-length p1, p0

    const/4 p2, 0x0

    move v0, p2

    :goto_11
    if-ge v0, p1, :cond_3d

    aget-byte v1, p0, v0

    .line 106
    sget-object v2, Lopenlight/co/camera/proto/LightHeader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PROTO: Long info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v5, p2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_3d
    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .registers 7

    .line 54
    iget-object v0, p0, Lopenlight/co/camera/proto/LightHeader;->message:Lcom/squareup/wire/Message;

    invoke-virtual {v0}, Lcom/squareup/wire/Message;->encode()[B

    move-result-object v0

    .line 55
    array-length v1, v0

    .line 57
    sget v2, Lopenlight/co/camera/proto/LightHeader;->HEADER_LENGTH:I

    add-int/2addr v2, v1

    int-to-long v2, v2

    long-to-int v4, v2

    .line 58
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 67
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 69
    sget-object v5, Lopenlight/co/camera/proto/LightHeader;->MAGIC_ID:[B

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {v4, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 71
    sget v2, Lopenlight/co/camera/proto/LightHeader;->HEADER_LENGTH:I

    int-to-long v2, v2

    invoke-virtual {v4, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 73
    iget-byte p0, p0, Lopenlight/co/camera/proto/LightHeader;->type:B

    invoke-virtual {v4, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 74
    sget-object p0, Lopenlight/co/camera/proto/LightHeader;->RESERVED:[B

    invoke-virtual {v4, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 77
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v4
.end method
