.class public Lcom/bumptech/glide/signature/MediaStoreSignature;
.super Ljava/lang/Object;
.source "MediaStoreSignature.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field private final dateModified:J

.field private final mimeType:Ljava/lang/String;

.field private final orientation:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JI)V
    .registers 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    .line 32
    iput-wide p2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    .line 33
    iput p4, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_39

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_39

    .line 45
    :cond_12
    check-cast p1, Lcom/bumptech/glide/signature/MediaStoreSignature;

    .line 47
    iget-wide v2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    iget-wide v4, p1, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1d

    return v1

    .line 50
    :cond_1d
    iget v2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    iget v3, p1, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    if-eq v2, v3, :cond_24

    return v1

    .line 53
    :cond_24
    iget-object v2, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    if-eqz v2, :cond_33

    iget-object p0, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    iget-object p1, p1, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto :goto_37

    :cond_33
    iget-object p0, p1, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    if-eqz p0, :cond_38

    :goto_37
    return v1

    :cond_38
    return v0

    :cond_39
    :goto_39
    return v1
.end method

.method public hashCode()I
    .registers 7

    .line 62
    iget-object v0, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget-wide v1, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    iget-wide v3, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 64
    iget p0, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    add-int/2addr v0, p0

    return v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v0, 0xc

    .line 70
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->dateModified:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->orientation:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 74
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 75
    iget-object p0, p0, Lcom/bumptech/glide/signature/MediaStoreSignature;->mimeType:Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
