.class public Lnet/hockeyapp/android/utils/SimpleMultipartEntity;
.super Ljava/lang/Object;
.source "SimpleMultipartEntity.java"


# static fields
.field private static final BOUNDARY_CHARS:[C


# instance fields
.field private mBoundary:Ljava/lang/String;

.field private mIsSetFirst:Z

.field private mIsSetLast:Z

.field private mOut:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->BOUNDARY_CHARS:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mIsSetFirst:Z

    .line 32
    iput-boolean v0, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mIsSetLast:Z

    .line 33
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mOut:Ljava/io/ByteArrayOutputStream;

    .line 36
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 37
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    :goto_19
    const/16 v3, 0x1e

    if-ge v0, v3, :cond_2e

    .line 40
    sget-object v3, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->BOUNDARY_CHARS:[C

    sget-object v4, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->BOUNDARY_CHARS:[C

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 42
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mBoundary:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Ljava/io/File;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, p1, v0, v1, p3}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)V

    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->writeFirstBoundaryIfNeeds()V

    .line 72
    iget-object v0, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mOut:Ljava/io/ByteArrayOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Disposition: form-data; name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"\r\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 73
    iget-object p1, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mOut:Ljava/io/ByteArrayOutputStream;

    const-string v0, "Content-Type: text/plain; charset=UTF-8\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 74
    iget-object p1, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mOut:Ljava/io/ByteArrayOutputStream;

    const-string v0, "Content-Transfer-Encoding: 8bit\r\n\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 75
    iget-object p1, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 76
    iget-object p1, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mOut:Ljava/io/ByteArrayOutputStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\r\n--"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mBoundary:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    return-void
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->writeFirstBoundaryIfNeeds()V

    .line 90
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\r\n"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 91
    iget-object v0, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mOut:Ljava/io/ByteArrayOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Disposition: form-data; name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"; filename=\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"\r\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 92
    iget-object p1, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 93
    iget-object p1, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mOut:Ljava/io/ByteArrayOutputStream;

    const-string p2, "Content-Transfer-Encoding: binary\r\n\r\n"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 p1, 0x1000

    .line 95
    new-array p1, p1, [B

    .line 97
    :goto_58
    invoke-virtual {p3, p1}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 p4, -0x1

    if-eq p2, p4, :cond_66

    .line 98
    iget-object p4, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mOut:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    invoke-virtual {p4, p1, v0, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_58

    .line 100
    :cond_66
    iget-object p1, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->flush()V

    if-eqz p5, :cond_71

    .line 104
    invoke-virtual {p0}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->writeLastBoundaryIfNeeds()V

    goto :goto_92

    .line 108
    :cond_71
    iget-object p1, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mOut:Ljava/io/ByteArrayOutputStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\r\n--"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mBoundary:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_92
    .catchall {:try_start_3 .. :try_end_92} :catchall_9b

    .line 113
    :goto_92
    :try_start_92
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96

    goto :goto_9a

    :catch_96
    move-exception p0

    .line 115
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_9a
    return-void

    :catchall_9b
    move-exception p0

    .line 113
    :try_start_9c
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0

    goto :goto_a4

    :catch_a0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 116
    :goto_a4
    throw p0
.end method

.method public addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v4, "application/octet-stream"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 84
    invoke-virtual/range {v0 .. v5}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Z)V

    return-void
.end method

.method public getBoundary()Ljava/lang/String;
    .registers 1

    .line 46
    iget-object p0, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mBoundary:Ljava/lang/String;

    return-object p0
.end method

.method public getContentLength()J
    .registers 3

    .line 121
    invoke-virtual {p0}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->writeLastBoundaryIfNeeds()V

    .line 122
    iget-object p0, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    array-length p0, p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multipart/form-data; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->getBoundary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOutputStream()Ljava/io/ByteArrayOutputStream;
    .registers 1

    .line 130
    invoke-virtual {p0}, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->writeLastBoundaryIfNeeds()V

    .line 131
    iget-object p0, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mOut:Ljava/io/ByteArrayOutputStream;

    return-object p0
.end method

.method public writeFirstBoundaryIfNeeds()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-boolean v0, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mIsSetFirst:Z

    if-nez v0, :cond_25

    .line 51
    iget-object v0, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mOut:Ljava/io/ByteArrayOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mBoundary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_25
    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mIsSetFirst:Z

    return-void
.end method

.method public writeLastBoundaryIfNeeds()V
    .registers 4

    .line 57
    iget-boolean v0, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mIsSetLast:Z

    if-eqz v0, :cond_5

    return-void

    .line 61
    :cond_5
    :try_start_5
    iget-object v0, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mOut:Ljava/io/ByteArrayOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r\n--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mBoundary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2b
    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lnet/hockeyapp/android/utils/SimpleMultipartEntity;->mIsSetLast:Z

    return-void
.end method
