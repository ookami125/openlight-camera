.class Lopenlight/co/camera/utils/ImageEncipher;
.super Ljava/lang/Object;
.source "ImageEncipher.java"


# static fields
.field private static final COPY_BUFFER_LEN:I = 0x40000

.field private static final DATA_FILE_ENTRY_NAME:Ljava/lang/String; = "data.bin"

.field private static final KEY_INFO_ENTRY_NAME:Ljava/lang/String; = "key_info.bin"

.field private static final SECRET_KEY_ALG:Ljava/lang/String; = "AES"

.field private static final SECRET_KEY_XFORM:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final VALID_AUTH_TAG_LENS:[I

.field private static sUseGcm:Z


# instance fields
.field private mAuthenticationTagLen:I

.field private mBufferPtr:I

.field private mCopyBuffer:[B

.field private mInitVectorLen:I

.field private final mPublicKey:Ljava/security/PublicKey;

.field private final mPublicKeyAlg:Ljava/lang/String;

.field private mSecretKeyLen:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const-class v0, Lopenlight/co/camera/utils/ImageEncipher;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/utils/ImageEncipher;->TAG:Ljava/lang/String;

    .line 63
    sget-boolean v0, Lopenlight/co/camera/utils/ImageEncipher;->sUseGcm:Z

    if-eqz v0, :cond_f

    const-string v0, "AES/GCM/NoPadding"

    goto :goto_11

    :cond_f
    const-string v0, "AES/CBC/PKCS5Padding"

    :goto_11
    sput-object v0, Lopenlight/co/camera/utils/ImageEncipher;->SECRET_KEY_XFORM:Ljava/lang/String;

    const/4 v0, 0x5

    .line 69
    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lopenlight/co/camera/utils/ImageEncipher;->VALID_AUTH_TAG_LENS:[I

    return-void

    :array_1c
    .array-data 4
        0x60
        0x68
        0x70
        0x78
        0x80
    .end array-data
.end method

.method constructor <init>(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 4

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 79
    iput v0, p0, Lopenlight/co/camera/utils/ImageEncipher;->mSecretKeyLen:I

    .line 81
    sget-boolean v0, Lopenlight/co/camera/utils/ImageEncipher;->sUseGcm:Z

    if-eqz v0, :cond_e

    const/16 v0, 0xc

    goto :goto_10

    :cond_e
    const/16 v0, 0x10

    :goto_10
    iput v0, p0, Lopenlight/co/camera/utils/ImageEncipher;->mInitVectorLen:I

    const/16 v0, 0x80

    .line 83
    iput v0, p0, Lopenlight/co/camera/utils/ImageEncipher;->mAuthenticationTagLen:I

    .line 104
    iput-object p1, p0, Lopenlight/co/camera/utils/ImageEncipher;->mPublicKey:Ljava/security/PublicKey;

    .line 105
    iput-object p2, p0, Lopenlight/co/camera/utils/ImageEncipher;->mPublicKeyAlg:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/camera/utils/ImageEncipher;Ljava/io/OutputStream;Ljavax/crypto/Cipher;Ljava/nio/ByteBuffer;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lopenlight/co/camera/utils/ImageEncipher;->writeByteBuffer(Ljava/io/OutputStream;Ljavax/crypto/Cipher;Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lopenlight/co/camera/utils/ImageEncipher;Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/utils/ImageEncipher;->flush(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-void
.end method

.method static synthetic access$202(Lopenlight/co/camera/utils/ImageEncipher;[B)[B
    .registers 2

    .line 52
    iput-object p1, p0, Lopenlight/co/camera/utils/ImageEncipher;->mCopyBuffer:[B

    return-object p1
.end method

.method private static createCipher(ZLjavax/crypto/SecretKey;[BI)Ljavax/crypto/Cipher;
    .registers 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 283
    sget-object v0, Lopenlight/co/camera/utils/ImageEncipher;->SECRET_KEY_XFORM:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    if-eqz p0, :cond_e

    .line 284
    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-direct {v1, p3, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    goto :goto_13

    :cond_e
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    :goto_13
    const/4 p2, 0x1

    .line 287
    invoke-virtual {v0, p2, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p0, :cond_21

    .line 291
    new-array p0, p2, [B

    const/4 p1, 0x0

    aput-byte p1, p0, p1

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_21
    return-object v0
.end method

.method private createSecretKey(Ljava/security/SecureRandom;)Ljavax/crypto/SecretKey;
    .registers 3

    .line 274
    iget p0, p0, Lopenlight/co/camera/utils/ImageEncipher;->mSecretKeyLen:I

    new-array p0, p0, [B

    .line 275
    invoke-virtual {p1, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 276
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p1
.end method

.method private flush(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .line 264
    iget v0, p0, Lopenlight/co/camera/utils/ImageEncipher;->mBufferPtr:I

    if-lez v0, :cond_16

    .line 265
    iget-object v0, p0, Lopenlight/co/camera/utils/ImageEncipher;->mCopyBuffer:[B

    const/4 v1, 0x0

    iget v2, p0, Lopenlight/co/camera/utils/ImageEncipher;->mBufferPtr:I

    invoke-virtual {p2, v0, v1, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p2

    .line 266
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 267
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    const/4 p1, 0x0

    .line 269
    iput-object p1, p0, Lopenlight/co/camera/utils/ImageEncipher;->mCopyBuffer:[B

    :cond_16
    return-void
.end method

.method private writeByteBuffer(Ljava/io/OutputStream;Ljavax/crypto/Cipher;Ljava/nio/ByteBuffer;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lopenlight/co/camera/utils/ImageEncipher;->mCopyBuffer:[B

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const/high16 v0, 0x40000

    .line 236
    new-array v0, v0, [B

    iput-object v0, p0, Lopenlight/co/camera/utils/ImageEncipher;->mCopyBuffer:[B

    .line 237
    iput v1, p0, Lopenlight/co/camera/utils/ImageEncipher;->mBufferPtr:I

    .line 241
    :cond_d
    iget-object v0, p0, Lopenlight/co/camera/utils/ImageEncipher;->mCopyBuffer:[B

    array-length v0, v0

    move v2, v1

    .line 245
    :cond_11
    :goto_11
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_41

    .line 247
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    iget v4, p0, Lopenlight/co/camera/utils/ImageEncipher;->mBufferPtr:I

    sub-int v4, v0, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 248
    iget-object v4, p0, Lopenlight/co/camera/utils/ImageEncipher;->mCopyBuffer:[B

    iget v5, p0, Lopenlight/co/camera/utils/ImageEncipher;->mBufferPtr:I

    invoke-virtual {p3, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 249
    iget v4, p0, Lopenlight/co/camera/utils/ImageEncipher;->mBufferPtr:I

    add-int/2addr v4, v3

    iput v4, p0, Lopenlight/co/camera/utils/ImageEncipher;->mBufferPtr:I

    .line 251
    iget v3, p0, Lopenlight/co/camera/utils/ImageEncipher;->mBufferPtr:I

    if-ne v3, v0, :cond_11

    .line 252
    iget-object v3, p0, Lopenlight/co/camera/utils/ImageEncipher;->mCopyBuffer:[B

    invoke-virtual {p2, v3}, Ljavax/crypto/Cipher;->update([B)[B

    move-result-object v3

    .line 253
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 254
    array-length v3, v3

    add-int/2addr v2, v3

    .line 255
    iput v1, p0, Lopenlight/co/camera/utils/ImageEncipher;->mBufferPtr:I

    goto :goto_11

    :cond_41
    return v2
.end method

.method private writeKeyInfoEntry(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .registers 11
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 191
    invoke-direct {p0, v0}, Lopenlight/co/camera/utils/ImageEncipher;->createSecretKey(Ljava/security/SecureRandom;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 193
    iget v2, p0, Lopenlight/co/camera/utils/ImageEncipher;->mInitVectorLen:I

    new-array v2, v2, [B

    .line 194
    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 196
    sget-boolean v0, Lopenlight/co/camera/utils/ImageEncipher;->sUseGcm:Z

    iget v3, p0, Lopenlight/co/camera/utils/ImageEncipher;->mAuthenticationTagLen:I

    invoke-static {v0, v1, v2, v3}, Lopenlight/co/camera/utils/ImageEncipher;->createCipher(ZLjavax/crypto/SecretKey;[BI)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 198
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 199
    array-length v3, v2

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x4

    iget v4, p0, Lopenlight/co/camera/utils/ImageEncipher;->mSecretKeyLen:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x4

    array-length v4, p2

    add-int/2addr v3, v4

    .line 207
    new-array v3, v3, [B

    .line 208
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 209
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 210
    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 211
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 212
    iget v2, p0, Lopenlight/co/camera/utils/ImageEncipher;->mSecretKeyLen:I

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 213
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 214
    iget p0, p0, Lopenlight/co/camera/utils/ImageEncipher;->mAuthenticationTagLen:I

    invoke-virtual {v4, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 215
    array-length p0, p2

    invoke-virtual {v4, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 216
    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 218
    invoke-static {p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const/4 p2, 0x1

    .line 219
    invoke-virtual {p0, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 220
    invoke-virtual {p0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 222
    new-instance p2, Ljava/util/zip/ZipEntry;

    const-string p3, "key_info.bin"

    invoke-direct {p2, p3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 223
    array-length p3, p0

    int-to-long p3, p3

    invoke-virtual {p2, p3, p4}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 224
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 225
    invoke-virtual {p1, p0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 226
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-object v0
.end method


# virtual methods
.method authenticationTagLen(I)Lopenlight/co/camera/utils/ImageEncipher;
    .registers 4

    .line 119
    sget-object v0, Lopenlight/co/camera/utils/ImageEncipher;->VALID_AUTH_TAG_LENS:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_b

    .line 122
    iput p1, p0, Lopenlight/co/camera/utils/ImageEncipher;->mAuthenticationTagLen:I

    return-object p0

    .line 120
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid auth tag len "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method encrypt(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/io/File;)Lopenlight/co/camera/utils/ByteBufferWriter;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 147
    new-instance p3, Ljava/io/BufferedOutputStream;

    invoke-direct {p3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 150
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v0, p3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p3, 0x0

    .line 151
    invoke-virtual {v0, p3}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 154
    iget-object p3, p0, Lopenlight/co/camera/utils/ImageEncipher;->mPublicKey:Ljava/security/PublicKey;

    iget-object v1, p0, Lopenlight/co/camera/utils/ImageEncipher;->mPublicKeyAlg:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p3, v1}, Lopenlight/co/camera/utils/ImageEncipher;->writeKeyInfoEntry(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 157
    new-instance p3, Ljava/util/zip/ZipEntry;

    const-string v1, "data.bin"

    invoke-direct {p3, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 160
    invoke-direct {p0, v0, p2, p1}, Lopenlight/co/camera/utils/ImageEncipher;->writeByteBuffer(Ljava/io/OutputStream;Ljavax/crypto/Cipher;Ljava/nio/ByteBuffer;)I

    .line 163
    new-instance p1, Lopenlight/co/camera/utils/ImageEncipher$1;

    invoke-direct {p1, p0, v0, p2}, Lopenlight/co/camera/utils/ImageEncipher$1;-><init>(Lopenlight/co/camera/utils/ImageEncipher;Ljava/util/zip/ZipOutputStream;Ljavax/crypto/Cipher;)V

    return-object p1
.end method

.method initVectorLen(I)Lopenlight/co/camera/utils/ImageEncipher;
    .registers 2

    .line 114
    iput p1, p0, Lopenlight/co/camera/utils/ImageEncipher;->mInitVectorLen:I

    return-object p0
.end method

.method secretKeyLen(I)Lopenlight/co/camera/utils/ImageEncipher;
    .registers 2

    .line 109
    iput p1, p0, Lopenlight/co/camera/utils/ImageEncipher;->mSecretKeyLen:I

    return-object p0
.end method
