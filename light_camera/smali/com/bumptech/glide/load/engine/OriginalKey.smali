.class Lcom/bumptech/glide/load/engine/OriginalKey;
.super Ljava/lang/Object;
.source "OriginalKey.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field private final id:Ljava/lang/String;

.field private final signature:Lcom/bumptech/glide/load/Key;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/Key;)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 30
    :cond_12
    check-cast p1, Lcom/bumptech/glide/load/engine/OriginalKey;

    .line 32
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    return v1

    .line 35
    :cond_1f
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    iget-object p1, p1, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    return v1

    :cond_2a
    return v0

    :cond_2b
    :goto_2b
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 45
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->id:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 52
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/OriginalKey;->signature:Lcom/bumptech/glide/load/Key;

    invoke-interface {p0, p1}, Lcom/bumptech/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    return-void
.end method
