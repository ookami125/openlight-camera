.class Lopenlight/co/camera/utils/ImageEncipher$1;
.super Ljava/lang/Object;
.source "ImageEncipher.java"

# interfaces
.implements Lopenlight/co/camera/utils/ByteBufferWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/utils/ImageEncipher;->encrypt(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/io/File;)Lopenlight/co/camera/utils/ByteBufferWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/utils/ImageEncipher;

.field final synthetic val$secretCipher:Ljavax/crypto/Cipher;

.field final synthetic val$zipOutputStream:Ljava/util/zip/ZipOutputStream;


# direct methods
.method constructor <init>(Lopenlight/co/camera/utils/ImageEncipher;Ljava/util/zip/ZipOutputStream;Ljavax/crypto/Cipher;)V
    .registers 4

    .line 163
    iput-object p1, p0, Lopenlight/co/camera/utils/ImageEncipher$1;->this$0:Lopenlight/co/camera/utils/ImageEncipher;

    iput-object p2, p0, Lopenlight/co/camera/utils/ImageEncipher$1;->val$zipOutputStream:Ljava/util/zip/ZipOutputStream;

    iput-object p3, p0, Lopenlight/co/camera/utils/ImageEncipher$1;->val$secretCipher:Ljavax/crypto/Cipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    :try_start_0
    iget-object v0, p0, Lopenlight/co/camera/utils/ImageEncipher$1;->this$0:Lopenlight/co/camera/utils/ImageEncipher;

    iget-object v1, p0, Lopenlight/co/camera/utils/ImageEncipher$1;->val$zipOutputStream:Ljava/util/zip/ZipOutputStream;

    iget-object v2, p0, Lopenlight/co/camera/utils/ImageEncipher$1;->val$secretCipher:Ljavax/crypto/Cipher;

    # invokes: Lopenlight/co/camera/utils/ImageEncipher;->flush(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    invoke-static {v0, v1, v2}, Lopenlight/co/camera/utils/ImageEncipher;->access$100(Lopenlight/co/camera/utils/ImageEncipher;Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_9
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_9} :catch_1a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_9} :catch_1a

    .line 177
    iget-object v0, p0, Lopenlight/co/camera/utils/ImageEncipher$1;->val$zipOutputStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 178
    iget-object v0, p0, Lopenlight/co/camera/utils/ImageEncipher$1;->val$zipOutputStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 179
    iget-object p0, p0, Lopenlight/co/camera/utils/ImageEncipher$1;->this$0:Lopenlight/co/camera/utils/ImageEncipher;

    const/4 v0, 0x0

    # setter for: Lopenlight/co/camera/utils/ImageEncipher;->mCopyBuffer:[B
    invoke-static {p0, v0}, Lopenlight/co/camera/utils/ImageEncipher;->access$202(Lopenlight/co/camera/utils/ImageEncipher;[B)[B

    return-void

    :catch_1a
    move-exception p0

    .line 175
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lopenlight/co/camera/utils/ImageEncipher$1;->this$0:Lopenlight/co/camera/utils/ImageEncipher;

    iget-object v1, p0, Lopenlight/co/camera/utils/ImageEncipher$1;->val$zipOutputStream:Ljava/util/zip/ZipOutputStream;

    iget-object p0, p0, Lopenlight/co/camera/utils/ImageEncipher$1;->val$secretCipher:Ljavax/crypto/Cipher;

    # invokes: Lopenlight/co/camera/utils/ImageEncipher;->writeByteBuffer(Ljava/io/OutputStream;Ljavax/crypto/Cipher;Ljava/nio/ByteBuffer;)I
    invoke-static {v0, v1, p0, p1}, Lopenlight/co/camera/utils/ImageEncipher;->access$000(Lopenlight/co/camera/utils/ImageEncipher;Ljava/io/OutputStream;Ljavax/crypto/Cipher;Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method
