.class public Lorg/apache/commons/io/output/LockableFileWriter;
.super Ljava/io/Writer;
.source "LockableFileWriter.java"


# static fields
.field private static final LCK:Ljava/lang/String; = ".lck"


# instance fields
.field private final lockFile:Ljava/io/File;

.field private final out:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/io/output/LockableFileWriter;-><init>(Ljava/io/File;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 164
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/output/LockableFileWriter;-><init>(Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/io/output/LockableFileWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/output/LockableFileWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;ZLjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 182
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    .line 183
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 184
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->forceMkdir(Ljava/io/File;)V

    .line 186
    :cond_14
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_53

    if-nez p4, :cond_22

    const-string p4, "java.io.tmpdir"

    .line 192
    invoke-static {p4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 194
    :cond_22
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->forceMkdir(Ljava/io/File;)V

    .line 196
    invoke-direct {p0, v0}, Lorg/apache/commons/io/output/LockableFileWriter;->testLockDir(Ljava/io/File;)V

    .line 197
    new-instance p4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".lck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p4, p0, Lorg/apache/commons/io/output/LockableFileWriter;->lockFile:Ljava/io/File;

    .line 200
    invoke-direct {p0}, Lorg/apache/commons/io/output/LockableFileWriter;->createLock()V

    .line 203
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/io/output/LockableFileWriter;->initWriter(Ljava/io/File;Ljava/nio/charset/Charset;Z)Ljava/io/Writer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/output/LockableFileWriter;->out:Ljava/io/Writer;

    return-void

    .line 187
    :cond_53
    new-instance p0, Ljava/io/IOException;

    const-string p1, "File specified is a directory"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/output/LockableFileWriter;-><init>(Ljava/io/File;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/commons/io/output/LockableFileWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/io/output/LockableFileWriter;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/output/LockableFileWriter;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/commons/io/output/LockableFileWriter;-><init>(Ljava/io/File;ZLjava/lang/String;)V

    return-void
.end method

.method private createLock()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    const-class v0, Lorg/apache/commons/io/output/LockableFileWriter;

    monitor-enter v0

    .line 250
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/io/output/LockableFileWriter;->lockFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 254
    iget-object p0, p0, Lorg/apache/commons/io/output/LockableFileWriter;->lockFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    .line 255
    monitor-exit v0

    return-void

    .line 251
    :cond_12
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t write file, lock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/io/output/LockableFileWriter;->lockFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exists"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_34
    move-exception p0

    .line 255
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p0
.end method

.method private initWriter(Ljava/io/File;Ljava/nio/charset/Charset;Z)Ljava/io/Writer;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    .line 273
    :try_start_5
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_2f
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_e} :catch_1c

    .line 274
    :try_start_e
    new-instance p3, Ljava/io/OutputStreamWriter;

    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p3, v2, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_17} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_17} :catch_18

    return-object p3

    :catch_18
    move-exception p2

    goto :goto_1e

    :catch_1a
    move-exception p2

    goto :goto_31

    :catch_1c
    move-exception p2

    move-object v2, v1

    .line 284
    :goto_1e
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 285
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 286
    iget-object p0, p0, Lorg/apache/commons/io/output/LockableFileWriter;->lockFile:Ljava/io/File;

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    if-nez v0, :cond_2e

    .line 288
    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 290
    :cond_2e
    throw p2

    :catch_2f
    move-exception p2

    move-object v2, v1

    .line 276
    :goto_31
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    .line 277
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 278
    iget-object p0, p0, Lorg/apache/commons/io/output/LockableFileWriter;->lockFile:Ljava/io/File;

    invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    if-nez v0, :cond_41

    .line 280
    invoke-static {p1}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 282
    :cond_41
    throw p2
.end method

.method private testLockDir(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_28

    .line 237
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p0

    if-eqz p0, :cond_d

    return-void

    .line 238
    :cond_d
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not write to lockDir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 234
    :cond_28
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find lockDir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/output/LockableFileWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 306
    iget-object p0, p0, Lorg/apache/commons/io/output/LockableFileWriter;->lockFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    :catchall_b
    move-exception v0

    iget-object p0, p0, Lorg/apache/commons/io/output/LockableFileWriter;->lockFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    iget-object p0, p0, Lorg/apache/commons/io/output/LockableFileWriter;->out:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public write(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    iget-object p0, p0, Lorg/apache/commons/io/output/LockableFileWriter;->out:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(I)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    iget-object p0, p0, Lorg/apache/commons/io/output/LockableFileWriter;->out:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    iget-object p0, p0, Lorg/apache/commons/io/output/LockableFileWriter;->out:Ljava/io/Writer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public write([C)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    iget-object p0, p0, Lorg/apache/commons/io/output/LockableFileWriter;->out:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write([C)V

    return-void
.end method

.method public write([CII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 340
    iget-object p0, p0, Lorg/apache/commons/io/output/LockableFileWriter;->out:Ljava/io/Writer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    return-void
.end method
