.class Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RandomAccessReader"
.end annotation


# instance fields
.field private final data:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->data:Ljava/nio/ByteBuffer;

    .line 305
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->data:Ljava/nio/ByteBuffer;

    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getInt16(I)S
    .registers 2

    .line 321
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    return p0
.end method

.method public getInt32(I)I
    .registers 2

    .line 317
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    return p0
.end method

.method public length()I
    .registers 1

    .line 313
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public order(Ljava/nio/ByteOrder;)V
    .registers 2

    .line 309
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method
