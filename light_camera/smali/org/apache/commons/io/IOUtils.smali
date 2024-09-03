.class public Lorg/apache/commons/io/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final DIR_SEPARATOR:C

.field public static final DIR_SEPARATOR_UNIX:C = '/'

.field public static final DIR_SEPARATOR_WINDOWS:C = '\\'

.field public static final EOF:I = -0x1

.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field public static final LINE_SEPARATOR_UNIX:Ljava/lang/String; = "\n"

.field public static final LINE_SEPARATOR_WINDOWS:Ljava/lang/String; = "\r\n"

.field private static final SKIP_BUFFER_SIZE:I = 0x800

.field private static SKIP_BYTE_BUFFER:[B

.field private static SKIP_CHAR_BUFFER:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 122
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lorg/apache/commons/io/IOUtils;->DIR_SEPARATOR:C

    .line 138
    new-instance v0, Lorg/apache/commons/io/output/StringBuilderWriter;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/apache/commons/io/output/StringBuilderWriter;-><init>(I)V

    .line 139
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 140
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 141
    invoke-virtual {v0}, Lorg/apache/commons/io/output/StringBuilderWriter;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 142
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buffer(Ljava/io/InputStream;)Ljava/io/BufferedInputStream;
    .registers 2

    if-eqz p0, :cond_10

    .line 682
    instance-of v0, p0, Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_9

    check-cast p0, Ljava/io/BufferedInputStream;

    goto :goto_f

    :cond_9
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v0

    :goto_f
    return-object p0

    .line 680
    :cond_10
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static buffer(Ljava/io/InputStream;I)Ljava/io/BufferedInputStream;
    .registers 3

    if-eqz p0, :cond_10

    .line 701
    instance-of v0, p0, Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_9

    check-cast p0, Ljava/io/BufferedInputStream;

    goto :goto_f

    :cond_9
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p0, v0

    :goto_f
    return-object p0

    .line 699
    :cond_10
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static buffer(Ljava/io/OutputStream;)Ljava/io/BufferedOutputStream;
    .registers 2

    if-eqz p0, :cond_10

    .line 645
    instance-of v0, p0, Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_9

    check-cast p0, Ljava/io/BufferedOutputStream;

    goto :goto_f

    :cond_9
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    :goto_f
    return-object p0

    .line 643
    :cond_10
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static buffer(Ljava/io/OutputStream;I)Ljava/io/BufferedOutputStream;
    .registers 3

    if-eqz p0, :cond_10

    .line 664
    instance-of v0, p0, Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_9

    check-cast p0, Ljava/io/BufferedOutputStream;

    goto :goto_f

    :cond_9
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object p0, v0

    :goto_f
    return-object p0

    .line 662
    :cond_10
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static buffer(Ljava/io/Reader;)Ljava/io/BufferedReader;
    .registers 2

    .line 587
    instance-of v0, p0, Ljava/io/BufferedReader;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/io/BufferedReader;

    goto :goto_d

    :cond_7
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p0, v0

    :goto_d
    return-object p0
.end method

.method public static buffer(Ljava/io/Reader;I)Ljava/io/BufferedReader;
    .registers 3

    .line 601
    instance-of v0, p0, Ljava/io/BufferedReader;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/io/BufferedReader;

    goto :goto_d

    :cond_7
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object p0, v0

    :goto_d
    return-object p0
.end method

.method public static buffer(Ljava/io/Writer;)Ljava/io/BufferedWriter;
    .registers 2

    .line 614
    instance-of v0, p0, Ljava/io/BufferedWriter;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/io/BufferedWriter;

    goto :goto_d

    :cond_7
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, p0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object p0, v0

    :goto_d
    return-object p0
.end method

.method public static buffer(Ljava/io/Writer;I)Ljava/io/BufferedWriter;
    .registers 3

    .line 628
    instance-of v0, p0, Ljava/io/BufferedWriter;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/io/BufferedWriter;

    goto :goto_d

    :cond_7
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object p0, v0

    :goto_d
    return-object p0
.end method

.method public static close(Ljava/net/URLConnection;)V
    .registers 2

    .line 188
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_9

    .line 189
    check-cast p0, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 339
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .registers 1

    .line 270
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public static closeQuietly(Ljava/io/OutputStream;)V
    .registers 1

    .line 298
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Reader;)V
    .registers 1

    .line 217
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Writer;)V
    .registers 1

    .line 243
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method public static closeQuietly(Ljava/net/ServerSocket;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 490
    :try_start_2
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static closeQuietly(Ljava/net/Socket;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 424
    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static closeQuietly(Ljava/nio/channels/Selector;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 457
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/channels/Selector;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_5

    :catch_5
    :cond_5
    return-void
.end method

.method public static varargs closeQuietly([Ljava/io/Closeable;)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    .line 393
    :cond_3
    array-length v0, p0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_f

    aget-object v2, p0, v1

    .line 394
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    return-void
.end method

.method public static contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 2556
    :cond_4
    instance-of v1, p0, Ljava/io/BufferedInputStream;

    if-nez v1, :cond_e

    .line 2557
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v1

    .line 2559
    :cond_e
    instance-of v1, p1, Ljava/io/BufferedInputStream;

    if-nez v1, :cond_18

    .line 2560
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v1

    .line 2563
    :cond_18
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    :goto_1c
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v3, v1, :cond_2c

    .line 2565
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    if-eq v1, v3, :cond_27

    return v2

    .line 2569
    :cond_27
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_1c

    .line 2572
    :cond_2c
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ne p0, v3, :cond_33

    goto :goto_34

    :cond_33
    move v0, v2

    :goto_34
    return v0
.end method

.method public static contentEquals(Ljava/io/Reader;Ljava/io/Reader;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 2597
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;

    move-result-object p0

    .line 2598
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;

    move-result-object p1

    .line 2600
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v1

    :goto_10
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v3, v1, :cond_20

    .line 2602
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v3

    if-eq v1, v3, :cond_1b

    return v2

    .line 2606
    :cond_1b
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v1

    goto :goto_10

    .line 2609
    :cond_20
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result p0

    if-ne p0, v3, :cond_27

    goto :goto_28

    :cond_27
    move v0, v2

    :goto_28
    return v0
.end method

.method public static contentEqualsIgnoreEOL(Ljava/io/Reader;Ljava/io/Reader;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 2632
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;

    move-result-object p0

    .line 2633
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;

    move-result-object p1

    .line 2635
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 2636
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_14
    if-eqz v1, :cond_27

    if-eqz v2, :cond_27

    .line 2637
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 2638
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 2639
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :cond_27
    if-nez v1, :cond_2e

    if-nez v2, :cond_2c

    goto :goto_32

    :cond_2c
    const/4 v0, 0x0

    goto :goto_32

    .line 2641
    :cond_2e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_32
    return v0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2078
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide p0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_d

    const/4 p0, -0x1

    return p0

    :cond_d
    long-to-int p0, p0

    return p0
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2325
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J

    move-result-wide p0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_d

    const/4 p0, -0x1

    return p0

    :cond_d
    long-to-int p0, p0

    return p0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2102
    new-array p2, p2, [B

    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2251
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2300
    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2272
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 2273
    invoke-static {v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2468
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2531
    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2496
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 2497
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 2500
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    return-void
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 2123
    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 2179
    new-array v7, v0, [B

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_9

    .line 2209
    invoke-static {p0, p2, p3}, Lorg/apache/commons/io/IOUtils;->skipFully(Ljava/io/InputStream;J)V

    :cond_9
    cmp-long p2, p4, v0

    if-nez p2, :cond_e

    return-wide v0

    .line 2214
    :cond_e
    array-length p3, p6

    if-lez p2, :cond_18

    int-to-long v2, p3

    cmp-long v2, p4, v2

    if-gez v2, :cond_18

    long-to-int v2, p4

    goto :goto_19

    :cond_18
    move v2, p3

    :cond_19
    :goto_19
    if-lez v2, :cond_33

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 2221
    invoke-virtual {p0, p6, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v3, v5, :cond_33

    .line 2222
    invoke-virtual {p1, p6, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v5

    add-long/2addr v0, v3

    if-lez p2, :cond_19

    sub-long v2, p4, v0

    int-to-long v4, p3

    .line 2226
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_19

    :cond_33
    return-wide v0
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    :goto_2
    const/4 v2, -0x1

    .line 2146
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_10

    const/4 v2, 0x0

    .line 2147
    invoke-virtual {p1, p2, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v3

    add-long/2addr v0, v2

    goto :goto_2

    :cond_10
    return-wide v0
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 2348
    new-array v0, v0, [C

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;[C)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ)J
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 2397
    new-array v7, v0, [C

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v1 .. v7}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J

    move-result-wide p0

    return-wide p0
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_9

    .line 2423
    invoke-static {p0, p2, p3}, Lorg/apache/commons/io/IOUtils;->skipFully(Ljava/io/Reader;J)V

    :cond_9
    cmp-long p2, p4, v0

    if-nez p2, :cond_e

    return-wide v0

    .line 2428
    :cond_e
    array-length p3, p6

    if-lez p2, :cond_18

    .line 2429
    array-length v2, p6

    int-to-long v2, v2

    cmp-long v2, p4, v2

    if-gez v2, :cond_18

    long-to-int p3, p4

    :cond_18
    :goto_18
    if-lez p3, :cond_33

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 2434
    invoke-virtual {p0, p6, v3, p3}, Ljava/io/Reader;->read([CII)I

    move-result v4

    if-eq v2, v4, :cond_33

    .line 2435
    invoke-virtual {p1, p6, v3, v4}, Ljava/io/Writer;->write([CII)V

    int-to-long v2, v4

    add-long/2addr v0, v2

    if-lez p2, :cond_18

    sub-long v2, p4, v0

    .line 2439
    array-length p3, p6

    int-to-long v4, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    goto :goto_18

    :cond_33
    return-wide v0
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;[C)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    :goto_2
    const/4 v2, -0x1

    .line 2369
    invoke-virtual {p0, p2}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-eq v2, v3, :cond_10

    const/4 v2, 0x0

    .line 2370
    invoke-virtual {p1, p2, v2, v3}, Ljava/io/Writer;->write([CII)V

    int-to-long v2, v3

    add-long/2addr v0, v2

    goto :goto_2

    :cond_10
    return-wide v0
.end method

.method public static lineIterator(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1401
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->lineIterator(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/apache/commons/io/LineIterator;

    move-result-object p0

    return-object p0
.end method

.method public static lineIterator(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/apache/commons/io/LineIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1364
    new-instance v0, Lorg/apache/commons/io/LineIterator;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/apache/commons/io/LineIterator;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static lineIterator(Ljava/io/Reader;)Lorg/apache/commons/io/LineIterator;
    .registers 2

    .line 1330
    new-instance v0, Lorg/apache/commons/io/LineIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/LineIterator;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static read(Ljava/io/InputStream;[B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2931
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/io/IOUtils;->read(Ljava/io/InputStream;[BII)I

    move-result p0

    return p0
.end method

.method public static read(Ljava/io/InputStream;[BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p3, :cond_14

    move v0, p3

    :goto_3
    if-lez v0, :cond_12

    sub-int v1, p3, v0

    add-int/2addr v1, p2

    .line 2909
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_10

    goto :goto_12

    :cond_10
    sub-int/2addr v0, v1

    goto :goto_3

    :cond_12
    :goto_12
    sub-int/2addr p3, v0

    return p3

    .line 2904
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Length must not be negative: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static read(Ljava/io/Reader;[C)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2884
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/io/IOUtils;->read(Ljava/io/Reader;[CII)I

    move-result p0

    return p0
.end method

.method public static read(Ljava/io/Reader;[CII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p3, :cond_14

    move v0, p3

    :goto_3
    if-lez v0, :cond_12

    sub-int v1, p3, v0

    add-int/2addr v1, p2

    .line 2862
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_10

    goto :goto_12

    :cond_10
    sub-int/2addr v0, v1

    goto :goto_3

    :cond_12
    :goto_12
    sub-int/2addr p3, v0

    return p3

    .line 2857
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Length must not be negative: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static read(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2948
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 2949
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_11

    .line 2950
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v2, v1, :cond_4

    .line 2955
    :cond_11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public static readFully(Ljava/io/InputStream;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3035
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/io/IOUtils;->readFully(Ljava/io/InputStream;[BII)V

    return-void
.end method

.method public static readFully(Ljava/io/InputStream;[BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3015
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->read(Ljava/io/InputStream;[BII)I

    move-result p0

    if-ne p0, p3, :cond_7

    return-void

    .line 3017
    :cond_7
    new-instance p1, Ljava/io/EOFException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length to read: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " actual: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static readFully(Ljava/io/Reader;[C)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2995
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/io/IOUtils;->readFully(Ljava/io/Reader;[CII)V

    return-void
.end method

.method public static readFully(Ljava/io/Reader;[CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2975
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->read(Ljava/io/Reader;[CII)I

    move-result p0

    if-ne p0, p3, :cond_7

    return-void

    .line 2977
    :cond_7
    new-instance p1, Ljava/io/EOFException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length to read: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " actual: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static readFully(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3071
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 3072
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    move-result p0

    if-ne p0, v0, :cond_b

    return-void

    .line 3074
    :cond_b
    new-instance p1, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length to read: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " actual: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static readFully(Ljava/io/InputStream;I)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3053
    new-array p1, p1, [B

    .line 3054
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/io/IOUtils;->readFully(Ljava/io/InputStream;[BII)V

    return-object p1
.end method

.method public static readLines(Ljava/io/InputStream;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1229
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static readLines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1272
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1247
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 1248
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static readLines(Ljava/io/Reader;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1289
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;

    move-result-object p0

    .line 1290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1291
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_d
    if-eqz v1, :cond_17

    .line 1293
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1294
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_17
    return-object v0
.end method

.method public static skip(Ljava/io/InputStream;J)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2f

    .line 2674
    sget-object v2, Lorg/apache/commons/io/IOUtils;->SKIP_BYTE_BUFFER:[B

    if-nez v2, :cond_10

    const/16 v2, 0x800

    .line 2675
    new-array v2, v2, [B

    sput-object v2, Lorg/apache/commons/io/IOUtils;->SKIP_BYTE_BUFFER:[B

    :cond_10
    move-wide v2, p1

    :goto_11
    cmp-long v4, v2, v0

    if-lez v4, :cond_2c

    .line 2680
    sget-object v4, Lorg/apache/commons/io/IOUtils;->SKIP_BYTE_BUFFER:[B

    const/4 v5, 0x0

    const-wide/16 v6, 0x800

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {p0, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v4, v0

    if-gez v6, :cond_29

    goto :goto_2c

    :cond_29
    const/4 v6, 0x0

    sub-long/2addr v2, v4

    goto :goto_11

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    sub-long/2addr p1, v2

    return-wide p1

    .line 2667
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip count must be non-negative, actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static skip(Ljava/io/Reader;J)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2f

    .line 2749
    sget-object v2, Lorg/apache/commons/io/IOUtils;->SKIP_CHAR_BUFFER:[C

    if-nez v2, :cond_10

    const/16 v2, 0x800

    .line 2750
    new-array v2, v2, [C

    sput-object v2, Lorg/apache/commons/io/IOUtils;->SKIP_CHAR_BUFFER:[C

    :cond_10
    move-wide v2, p1

    :goto_11
    cmp-long v4, v2, v0

    if-lez v4, :cond_2c

    .line 2755
    sget-object v4, Lorg/apache/commons/io/IOUtils;->SKIP_CHAR_BUFFER:[C

    const/4 v5, 0x0

    const-wide/16 v6, 0x800

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {p0, v4, v5, v6}, Ljava/io/Reader;->read([CII)I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v4, v0

    if-gez v6, :cond_29

    goto :goto_2c

    :cond_29
    const/4 v6, 0x0

    sub-long/2addr v2, v4

    goto :goto_11

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    sub-long/2addr p1, v2

    return-wide p1

    .line 2742
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip count must be non-negative, actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static skip(Ljava/nio/channels/ReadableByteChannel;J)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_30

    const-wide/16 v2, 0x800

    .line 2705
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-wide v5, p1

    :goto_12
    cmp-long v7, v5, v0

    if-lez v7, :cond_2d

    const/4 v7, 0x0

    .line 2708
    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2709
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2710
    invoke-interface {p0, v4}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2a

    goto :goto_2d

    :cond_2a
    int-to-long v7, v7

    sub-long/2addr v5, v7

    goto :goto_12

    :cond_2d
    :goto_2d
    const/4 p0, 0x0

    sub-long/2addr p1, v5

    return-wide p1

    .line 2703
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip count must be non-negative, actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static skipFully(Ljava/io/InputStream;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2e

    .line 2787
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-nez p0, :cond_f

    return-void

    .line 2789
    :cond_f
    new-instance p0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bytes to skip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " actual: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2785
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bytes to skip must not be negative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static skipFully(Ljava/io/Reader;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2833
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/IOUtils;->skip(Ljava/io/Reader;J)J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-nez p0, :cond_9

    return-void

    .line 2835
    :cond_9
    new-instance p0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chars to skip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " actual: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static skipFully(Ljava/nio/channels/ReadableByteChannel;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2e

    .line 2807
    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/IOUtils;->skip(Ljava/nio/channels/ReadableByteChannel;J)J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-nez p0, :cond_f

    return-void

    .line 2809
    :cond_f
    new-instance p0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bytes to skip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " actual: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2805
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bytes to skip must not be negative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 519
    invoke-static {p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    invoke-static {p0, p1}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toBufferedInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;
    .registers 2

    .line 559
    instance-of v0, p0, Ljava/io/BufferedReader;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/io/BufferedReader;

    goto :goto_d

    :cond_7
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p0, v0

    :goto_d
    return-object p0
.end method

.method public static toBufferedReader(Ljava/io/Reader;I)Ljava/io/BufferedReader;
    .registers 3

    .line 574
    instance-of v0, p0, Ljava/io/BufferedReader;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/io/BufferedReader;

    goto :goto_d

    :cond_7
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object p0, v0

    :goto_d
    return-object p0
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 720
    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    .line 721
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 722
    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/io/InputStream;I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_39

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 771
    new-array p0, v0, [B

    return-object p0

    .line 774
    :cond_8
    new-array v1, p1, [B

    :goto_a
    if-ge v0, p1, :cond_17

    sub-int v2, p1, v0

    .line 778
    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    add-int/2addr v0, v2

    goto :goto_a

    :cond_17
    if-ne v0, p1, :cond_1a

    return-object v1

    .line 783
    :cond_1a
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected readed size. current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", excepted: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 767
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size must be equal or greater than zero: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toByteArray(Ljava/io/InputStream;J)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_d

    long-to-int p1, p1

    .line 748
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0

    .line 745
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Size cannot be greater than Integer max value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toByteArray(Ljava/io/Reader;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 804
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/Reader;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 848
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/Reader;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/io/Reader;Ljava/nio/charset/Charset;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 822
    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    .line 823
    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 824
    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 866
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/net/URI;)[B
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 879
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/net/URL;)[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/net/URL;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 892
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    .line 894
    :try_start_4
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/net/URLConnection;)[B

    move-result-object v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 896
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->close(Ljava/net/URLConnection;)V

    return-object v0

    :catchall_c
    move-exception v0

    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->close(Ljava/net/URLConnection;)V

    throw v0
.end method

.method public static toByteArray(Ljava/net/URLConnection;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 910
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 912
    :try_start_4
    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 914
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_c
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static toCharArray(Ljava/io/InputStream;)[C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 937
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toCharArray(Ljava/io/InputStream;Ljava/nio/charset/Charset;)[C

    move-result-object p0

    return-object p0
.end method

.method public static toCharArray(Ljava/io/InputStream;Ljava/lang/String;)[C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 982
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->toCharArray(Ljava/io/InputStream;Ljava/nio/charset/Charset;)[C

    move-result-object p0

    return-object p0
.end method

.method public static toCharArray(Ljava/io/InputStream;Ljava/nio/charset/Charset;)[C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 956
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 957
    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V

    .line 958
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object p0

    return-object p0
.end method

.method public static toCharArray(Ljava/io/Reader;)[C
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 998
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 999
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 1000
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object p0

    return-object p0
.end method

.method public static toInputStream(Ljava/lang/CharSequence;)Ljava/io/InputStream;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1417
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toInputStream(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static toInputStream(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1450
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->toInputStream(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static toInputStream(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/io/InputStream;
    .registers 2

    .line 1430
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->toInputStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static toInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1466
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toInputStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static toInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1499
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 1500
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1
.end method

.method public static toInputStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/InputStream;
    .registers 3

    .line 1479
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1021
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1066
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1040
    new-instance v0, Lorg/apache/commons/io/output/StringBuilderWriter;

    invoke-direct {v0}, Lorg/apache/commons/io/output/StringBuilderWriter;-><init>()V

    .line 1041
    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V

    .line 1042
    invoke-virtual {v0}, Lorg/apache/commons/io/output/StringBuilderWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/io/Reader;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1081
    new-instance v0, Lorg/apache/commons/io/output/StringBuilderWriter;

    invoke-direct {v0}, Lorg/apache/commons/io/output/StringBuilderWriter;-><init>()V

    .line 1082
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 1083
    invoke-virtual {v0}, Lorg/apache/commons/io/output/StringBuilderWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/net/URI;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1097
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/net/URI;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1126
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/net/URI;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/net/URI;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1110
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p0

    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/net/URL;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1140
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1174
    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1153
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    .line 1155
    :try_start_4
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 1157
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object p1

    :catchall_c
    move-exception p1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw p1
.end method

.method public static toString([B)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1190
    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1207
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static write(Ljava/lang/CharSequence;Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1758
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1801
    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_9

    .line 1777
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    :cond_9
    return-void
.end method

.method public static write(Ljava/lang/CharSequence;Ljava/io/Writer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_9

    .line 1737
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/Writer;)V

    :cond_9
    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1839
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1881
    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_d

    .line 1857
    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_d
    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/io/Writer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 1818
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1922
    check-cast v0, Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public static write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_11

    .line 1948
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_11
    return-void
.end method

.method public static write(Ljava/lang/StringBuffer;Ljava/io/Writer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_9

    .line 1901
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static write([BLjava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 1519
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_5
    return-void
.end method

.method public static write([BLjava/io/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1565
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->write([BLjava/io/Writer;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static write([BLjava/io/Writer;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1609
    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/IOUtils;->write([BLjava/io/Writer;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static write([BLjava/io/Writer;Ljava/nio/charset/Charset;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_e

    .line 1584
    new-instance v0, Ljava/lang/String;

    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {v0, p0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public static write([CLjava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1674
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->write([CLjava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static write([CLjava/io/OutputStream;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1720
    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/IOUtils;->write([CLjava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static write([CLjava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_12

    .line 1694
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_12
    return-void
.end method

.method public static write([CLjava/io/Writer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 1627
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write([C)V

    :cond_5
    return-void
.end method

.method public static writeChunked([BLjava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_12

    .line 1538
    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-lez v0, :cond_12

    const/16 v2, 0x1000

    .line 1541
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1542
    invoke-virtual {p1, p0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v0, v2

    add-int/2addr v1, v2

    goto :goto_4

    :cond_12
    return-void
.end method

.method public static writeChunked([CLjava/io/Writer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_12

    .line 1645
    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-lez v0, :cond_12

    const/16 v2, 0x1000

    .line 1648
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1649
    invoke-virtual {p1, p0, v1, v2}, Ljava/io/Writer;->write([CII)V

    sub-int/2addr v0, v2

    add-int/2addr v1, v2

    goto :goto_4

    :cond_12
    return-void
.end method

.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1971
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/io/IOUtils;->writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2025
    invoke-static {p3}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-nez p1, :cond_7

    .line 1993
    sget-object p1, Lorg/apache/commons/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 1995
    :cond_7
    invoke-static {p3}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object p3

    .line 1996
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 1998
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2000
    :cond_26
    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_f

    :cond_2e
    return-void
.end method

.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/Writer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-nez p1, :cond_7

    .line 2045
    sget-object p1, Lorg/apache/commons/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 2047
    :cond_7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 2049
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2051
    :cond_1e
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_b

    :cond_22
    return-void
.end method
