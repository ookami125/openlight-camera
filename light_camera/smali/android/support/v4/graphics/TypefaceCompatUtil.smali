.class public Landroid/support/v4/graphics/TypefaceCompatUtil;
.super Ljava/lang/Object;
.source "TypefaceCompatUtil.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CACHE_FILE_PREFIX:Ljava/lang/String; = ".font"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 159
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static copyToDirectBuffer(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;
    .registers 4
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .line 108
    invoke-static {p0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 113
    :cond_8
    :try_start_8
    invoke-static {p0, p1, p2}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z

    move-result p1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_1a

    if-nez p1, :cond_12

    .line 118
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-object v0

    .line 116
    :cond_12
    :try_start_12
    invoke-static {p0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_1a

    .line 118
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-object p1

    :catchall_1a
    move-exception p1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    throw p1
.end method

.method public static copyToFile(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .registers 3

    .line 149
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_e

    .line 150
    :try_start_4
    invoke-static {p0, p1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 152
    invoke-static {p1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    return p0

    :catchall_c
    move-exception p0

    goto :goto_10

    :catchall_e
    move-exception p0

    const/4 p1, 0x0

    :goto_10
    invoke-static {p1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static copyToFile(Ljava/io/File;Ljava/io/InputStream;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 128
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_23
    .catchall {:try_start_2 .. :try_end_7} :catchall_21

    const/16 p0, 0x400

    .line 129
    :try_start_9
    new-array p0, p0, [B

    .line 131
    :goto_b
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_16

    .line 132
    invoke-virtual {v2, p0, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_15} :catch_1e
    .catchall {:try_start_9 .. :try_end_15} :catchall_1b

    goto :goto_b

    :cond_16
    const/4 p0, 0x1

    .line 139
    invoke-static {v2}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    return p0

    :catchall_1b
    move-exception p0

    move-object v1, v2

    goto :goto_42

    :catch_1e
    move-exception p0

    move-object v1, v2

    goto :goto_24

    :catchall_21
    move-exception p0

    goto :goto_42

    :catch_23
    move-exception p0

    :goto_24
    :try_start_24
    const-string p1, "TypefaceCompatUtil"

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error copying resource contents to temp file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_24 .. :try_end_3e} :catchall_21

    .line 139
    invoke-static {v1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :goto_42
    invoke-static {v1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static getTempFile(Landroid/content/Context;)Ljava/io/File;
    .registers 6

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".font"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_27
    const/16 v2, 0x64

    if-ge v1, v2, :cond_4d

    .line 61
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    :try_start_43
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v3
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_47} :catch_4a

    if-eqz v3, :cond_4a

    return-object v2

    :catch_4a
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_4d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;
    .registers 11
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_5
    const-string v1, "r"

    .line 93
    invoke-virtual {p0, p2, v1, p1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_5f

    .line 94
    :try_start_b
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_14} :catch_48
    .catchall {:try_start_b .. :try_end_14} :catchall_45

    .line 95
    :try_start_14
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    .line 97
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p2
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_24} :catch_30
    .catchall {:try_start_14 .. :try_end_24} :catchall_2d

    .line 98
    :try_start_24
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_27} :catch_48
    .catchall {:try_start_24 .. :try_end_27} :catchall_45

    if-eqz p0, :cond_2c

    :try_start_29
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_5f

    :cond_2c
    return-object p2

    :catchall_2d
    move-exception p2

    move-object v1, v0

    goto :goto_36

    :catch_30
    move-exception p2

    .line 93
    :try_start_31
    throw p2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v1

    move-object v7, v1

    move-object v1, p2

    move-object p2, v7

    :goto_36
    if-eqz v1, :cond_41

    .line 98
    :try_start_38
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_3c
    .catchall {:try_start_38 .. :try_end_3b} :catchall_45

    goto :goto_44

    :catch_3c
    move-exception p1

    :try_start_3d
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_44

    :cond_41
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    :goto_44
    throw p2
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_45} :catch_48
    .catchall {:try_start_3d .. :try_end_45} :catchall_45

    :catchall_45
    move-exception p1

    move-object p2, v0

    goto :goto_4e

    :catch_48
    move-exception p1

    .line 93
    :try_start_49
    throw p1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception p2

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_4e
    if-eqz p0, :cond_5e

    if-eqz p2, :cond_5b

    .line 98
    :try_start_52
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_55} :catch_56
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_5f

    goto :goto_5e

    :catch_56
    move-exception p0

    :try_start_57
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5e

    :cond_5b
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_5e
    :goto_5e
    throw p1
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5f} :catch_5f

    :catch_5f
    return-object v0
.end method

.method private static mmap(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .registers 10
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    const/4 v0, 0x0

    .line 78
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_32

    .line 79
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 81
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_16} :catch_1d
    .catchall {:try_start_6 .. :try_end_16} :catchall_1a

    .line 82
    :try_start_16
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_32

    return-object p0

    :catchall_1a
    move-exception p0

    move-object v2, v0

    goto :goto_23

    :catch_1d
    move-exception p0

    .line 78
    :try_start_1e
    throw p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v2

    move-object v8, v2

    move-object v2, p0

    move-object p0, v8

    :goto_23
    if-eqz v2, :cond_2e

    .line 82
    :try_start_25
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_28} :catch_29
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_32

    goto :goto_31

    :catch_29
    move-exception v1

    :try_start_2a
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_31

    :cond_2e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :goto_31
    throw p0
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_32} :catch_32

    :catch_32
    return-object v0
.end method
