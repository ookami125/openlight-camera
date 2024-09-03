.class public Lorg/apache/commons/io/input/XmlStreamReader;
.super Ljava/io/Reader;
.source "XmlStreamReader.java"


# static fields
.field private static final BOMS:[Lorg/apache/commons/io/ByteOrderMark;

.field private static final BUFFER_SIZE:I = 0x1000

.field private static final CHARSET_PATTERN:Ljava/util/regex/Pattern;

.field private static final EBCDIC:Ljava/lang/String; = "CP1047"

.field public static final ENCODING_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTP_EX_1:Ljava/lang/String; = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be NULL"

.field private static final HTTP_EX_2:Ljava/lang/String; = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch"

.field private static final HTTP_EX_3:Ljava/lang/String; = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], Invalid MIME"

.field private static final RAW_EX_1:Ljava/lang/String; = "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"

.field private static final RAW_EX_2:Ljava/lang/String; = "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] unknown BOM"

.field private static final US_ASCII:Ljava/lang/String; = "US-ASCII"

.field private static final UTF_16:Ljava/lang/String; = "UTF-16"

.field private static final UTF_16BE:Ljava/lang/String; = "UTF-16BE"

.field private static final UTF_16LE:Ljava/lang/String; = "UTF-16LE"

.field private static final UTF_32:Ljava/lang/String; = "UTF-32"

.field private static final UTF_32BE:Ljava/lang/String; = "UTF-32BE"

.field private static final UTF_32LE:Ljava/lang/String; = "UTF-32LE"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field private static final XML_GUESS_BYTES:[Lorg/apache/commons/io/ByteOrderMark;


# instance fields
.field private final defaultEncoding:Ljava/lang/String;

.field private final encoding:Ljava/lang/String;

.field private final reader:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v0, 0x5

    .line 87
    new-array v1, v0, [Lorg/apache/commons/io/ByteOrderMark;

    sget-object v2, Lorg/apache/commons/io/ByteOrderMark;->UTF_8:Lorg/apache/commons/io/ByteOrderMark;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/commons/io/ByteOrderMark;->UTF_16BE:Lorg/apache/commons/io/ByteOrderMark;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lorg/apache/commons/io/ByteOrderMark;->UTF_16LE:Lorg/apache/commons/io/ByteOrderMark;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/commons/io/ByteOrderMark;->UTF_32BE:Lorg/apache/commons/io/ByteOrderMark;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/commons/io/ByteOrderMark;->UTF_32LE:Lorg/apache/commons/io/ByteOrderMark;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, Lorg/apache/commons/io/input/XmlStreamReader;->BOMS:[Lorg/apache/commons/io/ByteOrderMark;

    const/4 v1, 0x6

    .line 96
    new-array v1, v1, [Lorg/apache/commons/io/ByteOrderMark;

    new-instance v2, Lorg/apache/commons/io/ByteOrderMark;

    const-string v8, "UTF-8"

    new-array v9, v7, [I

    fill-array-data v9, :array_8c

    invoke-direct {v2, v8, v9}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/commons/io/ByteOrderMark;

    const-string v3, "UTF-16BE"

    new-array v8, v7, [I

    fill-array-data v8, :array_98

    invoke-direct {v2, v3, v8}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/commons/io/ByteOrderMark;

    const-string v3, "UTF-16LE"

    new-array v4, v7, [I

    fill-array-data v4, :array_a4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    aput-object v2, v1, v5

    new-instance v2, Lorg/apache/commons/io/ByteOrderMark;

    const-string v3, "UTF-32BE"

    const/16 v4, 0x10

    new-array v5, v4, [I

    fill-array-data v5, :array_b0

    invoke-direct {v2, v3, v5}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    aput-object v2, v1, v6

    new-instance v2, Lorg/apache/commons/io/ByteOrderMark;

    const-string v3, "UTF-32LE"

    new-array v4, v4, [I

    fill-array-data v4, :array_d4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    aput-object v2, v1, v7

    new-instance v2, Lorg/apache/commons/io/ByteOrderMark;

    const-string v3, "CP1047"

    new-array v4, v7, [I

    fill-array-data v4, :array_f8

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    aput-object v2, v1, v0

    sput-object v1, Lorg/apache/commons/io/input/XmlStreamReader;->XML_GUESS_BYTES:[Lorg/apache/commons/io/ByteOrderMark;

    const-string v0, "charset=[\"\']?([.[^; \"\']]*)[\"\']?"

    .line 669
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/input/XmlStreamReader;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "<\\?xml.*encoding[\\s]*=[\\s]*((?:\".[^\"]*\")|(?:\'.[^\']*\'))"

    const/16 v1, 0x8

    .line 693
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/input/XmlStreamReader;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    return-void

    :array_8c
    .array-data 4
        0x3c
        0x3f
        0x78
        0x6d
    .end array-data

    :array_98
    .array-data 4
        0x0
        0x3c
        0x0
        0x3f
    .end array-data

    :array_a4
    .array-data 4
        0x3c
        0x0
        0x3f
        0x0
    .end array-data

    :array_b0
    .array-data 4
        0x0
        0x0
        0x0
        0x3c
        0x0
        0x0
        0x0
        0x3f
        0x0
        0x0
        0x0
        0x78
        0x0
        0x0
        0x0
        0x6d
    .end array-data

    :array_d4
    .array-data 4
        0x3c
        0x0
        0x0
        0x0
        0x3f
        0x0
        0x0
        0x0
        0x78
        0x0
        0x0
        0x0
        0x6d
        0x0
        0x0
        0x0
    .end array-data

    :array_f8
    .array-data 4
        0x4c
        0x6f
        0xa7
        0x94
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 153
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 298
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 379
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 337
    iput-object p4, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    .line 338
    new-instance p4, Lorg/apache/commons/io/input/BOMInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    sget-object p1, Lorg/apache/commons/io/input/XmlStreamReader;->BOMS:[Lorg/apache/commons/io/ByteOrderMark;

    const/4 v1, 0x0

    invoke-direct {p4, v0, v1, p1}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V

    .line 339
    new-instance p1, Lorg/apache/commons/io/input/BOMInputStream;

    sget-object v0, Lorg/apache/commons/io/input/XmlStreamReader;->XML_GUESS_BYTES:[Lorg/apache/commons/io/ByteOrderMark;

    const/4 v1, 0x1

    invoke-direct {p1, p4, v1, v0}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V

    .line 340
    invoke-direct {p0, p4, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReader;->doHttpStream(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/input/BOMInputStream;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;

    .line 341
    new-instance p2, Ljava/io/InputStreamReader;

    iget-object p3, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/commons/io/input/XmlStreamReader;->reader:Ljava/io/Reader;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/io/InputStream;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZLjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 217
    iput-object p3, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    .line 218
    new-instance p3, Lorg/apache/commons/io/input/BOMInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v1, 0x1000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    sget-object p1, Lorg/apache/commons/io/input/XmlStreamReader;->BOMS:[Lorg/apache/commons/io/ByteOrderMark;

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1, p1}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V

    .line 219
    new-instance p1, Lorg/apache/commons/io/input/BOMInputStream;

    sget-object v0, Lorg/apache/commons/io/input/XmlStreamReader;->XML_GUESS_BYTES:[Lorg/apache/commons/io/ByteOrderMark;

    const/4 v1, 0x1

    invoke-direct {p1, p3, v1, v0}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V

    .line 220
    invoke-direct {p0, p3, p1, p2}, Lorg/apache/commons/io/input/XmlStreamReader;->doRawStream(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/input/BOMInputStream;Z)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;

    .line 221
    new-instance p2, Ljava/io/InputStreamReader;

    iget-object p3, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/commons/io/input/XmlStreamReader;->reader:Ljava/io/Reader;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/XmlStreamReader;-><init>(Ljava/net/URLConnection;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URLConnection;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 265
    iput-object p2, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    .line 267
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p2

    .line 268
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 269
    new-instance v1, Lorg/apache/commons/io/input/BOMInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v3, 0x1000

    invoke-direct {v2, v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    sget-object v0, Lorg/apache/commons/io/input/XmlStreamReader;->BOMS:[Lorg/apache/commons/io/ByteOrderMark;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V

    .line 270
    new-instance v0, Lorg/apache/commons/io/input/BOMInputStream;

    sget-object v2, Lorg/apache/commons/io/input/XmlStreamReader;->XML_GUESS_BYTES:[Lorg/apache/commons/io/ByteOrderMark;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/io/input/BOMInputStream;-><init>(Ljava/io/InputStream;Z[Lorg/apache/commons/io/ByteOrderMark;)V

    .line 271
    instance-of p1, p1, Ljava/net/HttpURLConnection;

    if-nez p1, :cond_32

    if-eqz p2, :cond_2b

    goto :goto_32

    .line 274
    :cond_2b
    invoke-direct {p0, v1, v0, v3}, Lorg/apache/commons/io/input/XmlStreamReader;->doRawStream(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/input/BOMInputStream;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;

    goto :goto_38

    .line 272
    :cond_32
    :goto_32
    invoke-direct {p0, v1, v0, p2, v3}, Lorg/apache/commons/io/input/XmlStreamReader;->doHttpStream(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/input/BOMInputStream;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;

    .line 276
    :goto_38
    new-instance p1, Ljava/io/InputStreamReader;

    iget-object p2, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/commons/io/input/XmlStreamReader;->reader:Ljava/io/Reader;

    return-void
.end method

.method private doHttpStream(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/input/BOMInputStream;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    invoke-virtual {p1}, Lorg/apache/commons/io/input/BOMInputStream;->getBOMCharsetName()Ljava/lang/String;

    move-result-object v2

    .line 454
    invoke-virtual {p2}, Lorg/apache/commons/io/input/BOMInputStream;->getBOMCharsetName()Ljava/lang/String;

    move-result-object v3

    .line 455
    invoke-static {p2, v3}, Lorg/apache/commons/io/input/XmlStreamReader;->getXmlProlog(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p3

    move v5, p4

    .line 457
    :try_start_f
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/io/input/XmlStreamReader;->calculateHttpEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catch Lorg/apache/commons/io/input/XmlStreamReaderException; {:try_start_f .. :try_end_13} :catch_14

    return-object p1

    :catch_14
    move-exception p1

    if-eqz p4, :cond_1c

    .line 461
    invoke-direct {p0, p3, p1}, Lorg/apache/commons/io/input/XmlStreamReader;->doLenientDetection(Ljava/lang/String;Lorg/apache/commons/io/input/XmlStreamReaderException;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 463
    :cond_1c
    throw p1
.end method

.method private doLenientDetection(Ljava/lang/String;Lorg/apache/commons/io/input/XmlStreamReaderException;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3a

    const-string v0, "text/html"

    .line 479
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "text/html"

    .line 480
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "text/xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 483
    :try_start_25
    invoke-virtual {p2}, Lorg/apache/commons/io/input/XmlStreamReaderException;->getBomEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/commons/io/input/XmlStreamReaderException;->getXmlGuessEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lorg/apache/commons/io/input/XmlStreamReaderException;->getXmlEncoding()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/io/input/XmlStreamReader;->calculateHttpEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_37
    .catch Lorg/apache/commons/io/input/XmlStreamReaderException; {:try_start_25 .. :try_end_37} :catch_38

    return-object p1

    :catch_38
    move-exception p1

    move-object p2, p1

    .line 489
    :cond_3a
    invoke-virtual {p2}, Lorg/apache/commons/io/input/XmlStreamReaderException;->getXmlEncoding()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_44

    .line 491
    invoke-virtual {p2}, Lorg/apache/commons/io/input/XmlStreamReaderException;->getContentTypeEncoding()Ljava/lang/String;

    move-result-object p1

    :cond_44
    if-nez p1, :cond_51

    .line 494
    iget-object p1, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    if-nez p1, :cond_4e

    const-string p0, "UTF-8"

    :goto_4c
    move-object p1, p0

    goto :goto_51

    :cond_4e
    iget-object p0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    goto :goto_4c

    :cond_51
    :goto_51
    return-object p1
.end method

.method private doRawStream(Lorg/apache/commons/io/input/BOMInputStream;Lorg/apache/commons/io/input/BOMInputStream;Z)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    invoke-virtual {p1}, Lorg/apache/commons/io/input/BOMInputStream;->getBOMCharsetName()Ljava/lang/String;

    move-result-object p1

    .line 427
    invoke-virtual {p2}, Lorg/apache/commons/io/input/BOMInputStream;->getBOMCharsetName()Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-static {p2, v0}, Lorg/apache/commons/io/input/XmlStreamReader;->getXmlProlog(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 430
    :try_start_c
    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/commons/io/input/XmlStreamReader;->calculateRawEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catch Lorg/apache/commons/io/input/XmlStreamReaderException; {:try_start_c .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception p1

    if-eqz p3, :cond_1a

    const/4 p2, 0x0

    .line 433
    invoke-direct {p0, p2, p1}, Lorg/apache/commons/io/input/XmlStreamReader;->doLenientDetection(Ljava/lang/String;Lorg/apache/commons/io/input/XmlStreamReaderException;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 435
    :cond_1a
    throw p1
.end method

.method static getContentTypeEncoding(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2d

    const-string v1, ";"

    .line 682
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_2d

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 684
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 685
    sget-object v1, Lorg/apache/commons/io/input/XmlStreamReader;->CHARSET_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 686
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_24

    :cond_23
    move-object p0, v0

    :goto_24
    if-eqz p0, :cond_2d

    .line 687
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    :cond_2d
    return-object v0
.end method

.method static getContentTypeMime(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_14

    const-string v0, ";"

    .line 658
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_f

    const/4 v1, 0x0

    .line 660
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 664
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return-object p0
.end method

.method private static getXmlProlog(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_9b

    const/16 v0, 0x1000

    .line 709
    new-array v1, v0, [B

    .line 710
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    const/4 v2, 0x0

    .line 713
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const-string v4, ""

    const/4 v5, -0x1

    move v7, v0

    move v6, v2

    move-object v8, v4

    move v4, v5

    :goto_15
    if-eq v3, v5, :cond_2d

    if-ne v4, v5, :cond_2d

    if-ge v6, v0, :cond_2d

    add-int/2addr v6, v3

    sub-int/2addr v7, v3

    .line 719
    invoke-virtual {p0, v1, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 720
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1, v2, v6, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/16 v4, 0x3e

    .line 721
    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    goto :goto_15

    :cond_2d
    if-ne v4, v5, :cond_55

    if-ne v3, v5, :cond_39

    .line 725
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unexpected end of XML stream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 727
    :cond_39
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "XML prolog or ROOT element not found on first "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_55
    if-lez v6, :cond_9b

    .line 734
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 735
    new-instance p0, Ljava/io/BufferedReader;

    new-instance p1, Ljava/io/StringReader;

    const/4 v0, 0x1

    add-int/2addr v4, v0

    invoke-virtual {v8, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 737
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 738
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_73
    if-eqz v1, :cond_7d

    .line 740
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 741
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_73

    .line 743
    :cond_7d
    sget-object p0, Lorg/apache/commons/io/input/XmlStreamReader;->ENCODING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 744
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 745
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 746
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_9c

    :cond_9b
    const/4 p0, 0x0

    :goto_9c
    return-object p0
.end method

.method static isAppXml(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_2c

    const-string v0, "application/xml"

    .line 761
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "application/xml-dtd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "application/xml-external-parsed-entity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "application/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2c

    :cond_2a
    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    return p0
.end method

.method static isTextXml(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_24

    const-string v0, "text/xml"

    .line 776
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "text/xml-external-parsed-entity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "text/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_24

    :cond_22
    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method


# virtual methods
.method calculateHttpEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p5, :cond_5

    if-eqz p4, :cond_5

    return-object p4

    .line 590
    :cond_5
    invoke-static {p1}, Lorg/apache/commons/io/input/XmlStreamReader;->getContentTypeMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 591
    invoke-static {p1}, Lorg/apache/commons/io/input/XmlStreamReader;->getContentTypeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 592
    invoke-static {v2}, Lorg/apache/commons/io/input/XmlStreamReader;->isAppXml(Ljava/lang/String;)Z

    move-result p1

    .line 593
    invoke-static {v2}, Lorg/apache/commons/io/input/XmlStreamReader;->isTextXml(Ljava/lang/String;)Z

    move-result p5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-nez p1, :cond_3c

    if-eqz p5, :cond_20

    goto :goto_3c

    .line 597
    :cond_20
    new-array p0, v7, [Ljava/lang/Object;

    aput-object v2, p0, v6

    aput-object v3, p0, v5

    aput-object p2, p0, v4

    aput-object p3, p0, v1

    aput-object p4, p0, v0

    const-string p1, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], Invalid MIME"

    invoke-static {p1, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 598
    new-instance p0, Lorg/apache/commons/io/input/XmlStreamReaderException;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_3c
    :goto_3c
    if-nez v3, :cond_4f

    if-eqz p1, :cond_45

    .line 604
    invoke-virtual {p0, p2, p3, p4}, Lorg/apache/commons/io/input/XmlStreamReader;->calculateRawEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 606
    :cond_45
    iget-object p1, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    if-nez p1, :cond_4c

    const-string p0, "US-ASCII"

    goto :goto_4e

    :cond_4c
    iget-object p0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    :goto_4e
    return-object p0

    :cond_4f
    const-string p0, "UTF-16BE"

    .line 611
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f0

    const-string p0, "UTF-16LE"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_61

    goto/16 :goto_f0

    :cond_61
    const-string p0, "UTF-16"

    .line 620
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_90

    if-eqz p2, :cond_74

    const-string p0, "UTF-16"

    .line 621
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_74

    return-object p2

    .line 624
    :cond_74
    new-array p0, v7, [Ljava/lang/Object;

    aput-object v2, p0, v6

    aput-object v3, p0, v5

    aput-object p2, p0, v4

    aput-object p3, p0, v1

    aput-object p4, p0, v0

    const-string p1, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch"

    invoke-static {p1, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 625
    new-instance p0, Lorg/apache/commons/io/input/XmlStreamReaderException;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_90
    const-string p0, "UTF-32BE"

    .line 629
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d1

    const-string p0, "UTF-32LE"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a1

    goto :goto_d1

    :cond_a1
    const-string p0, "UTF-32"

    .line 638
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d0

    if-eqz p2, :cond_b4

    const-string p0, "UTF-32"

    .line 639
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b4

    return-object p2

    .line 642
    :cond_b4
    new-array p0, v7, [Ljava/lang/Object;

    aput-object v2, p0, v6

    aput-object v3, p0, v5

    aput-object p2, p0, v4

    aput-object p3, p0, v1

    aput-object p4, p0, v0

    const-string p1, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch"

    invoke-static {p1, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 643
    new-instance p0, Lorg/apache/commons/io/input/XmlStreamReaderException;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_d0
    return-object v3

    :cond_d1
    :goto_d1
    if-nez p2, :cond_d4

    return-object v3

    .line 631
    :cond_d4
    new-array p0, v7, [Ljava/lang/Object;

    aput-object v2, p0, v6

    aput-object v3, p0, v5

    aput-object p2, p0, v4

    aput-object p3, p0, v1

    aput-object p4, p0, v0

    const-string p1, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be NULL"

    invoke-static {p1, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 632
    new-instance p0, Lorg/apache/commons/io/input/XmlStreamReaderException;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_f0
    :goto_f0
    if-nez p2, :cond_f3

    return-object v3

    .line 613
    :cond_f3
    new-array p0, v7, [Ljava/lang/Object;

    aput-object v2, p0, v6

    aput-object v3, p0, v5

    aput-object p2, p0, v4

    aput-object p3, p0, v1

    aput-object p4, p0, v0

    const-string p1, "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be NULL"

    invoke-static {p1, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 614
    new-instance p0, Lorg/apache/commons/io/input/XmlStreamReaderException;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method calculateRawEncoding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_2b

    if-eqz p2, :cond_21

    if-nez p3, :cond_7

    goto :goto_21

    :cond_7
    const-string p0, "UTF-16"

    .line 516
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    const-string p0, "UTF-16BE"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    const-string p0, "UTF-16LE"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    :cond_1f
    return-object p2

    :cond_20
    return-object p3

    .line 514
    :cond_21
    :goto_21
    iget-object p1, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    if-nez p1, :cond_28

    const-string p0, "UTF-8"

    goto :goto_2a

    :cond_28
    iget-object p0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    :goto_2a
    return-object p0

    :cond_2b
    const-string p0, "UTF-8"

    .line 524
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz p0, :cond_76

    if-eqz p2, :cond_56

    const-string p0, "UTF-8"

    .line 525
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    goto :goto_56

    .line 526
    :cond_42
    new-array p0, v3, [Ljava/lang/Object;

    aput-object p1, p0, v2

    aput-object p2, p0, v1

    aput-object p3, p0, v0

    const-string v0, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"

    invoke-static {v0, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 527
    new-instance v0, Lorg/apache/commons/io/input/XmlStreamReaderException;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_56
    :goto_56
    if-eqz p3, :cond_75

    const-string p0, "UTF-8"

    .line 529
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_61

    goto :goto_75

    .line 530
    :cond_61
    new-array p0, v3, [Ljava/lang/Object;

    aput-object p1, p0, v2

    aput-object p2, p0, v1

    aput-object p3, p0, v0

    const-string v0, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"

    invoke-static {v0, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 531
    new-instance v0, Lorg/apache/commons/io/input/XmlStreamReaderException;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_75
    :goto_75
    return-object p1

    :cond_76
    const-string p0, "UTF-16BE"

    .line 537
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ef

    const-string p0, "UTF-16LE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_87

    goto :goto_ef

    :cond_87
    const-string p0, "UTF-32BE"

    .line 550
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ac

    const-string p0, "UTF-32LE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_98

    goto :goto_ac

    .line 563
    :cond_98
    new-array p0, v3, [Ljava/lang/Object;

    aput-object p1, p0, v2

    aput-object p2, p0, v1

    aput-object p3, p0, v0

    const-string v0, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] unknown BOM"

    invoke-static {v0, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 564
    new-instance v0, Lorg/apache/commons/io/input/XmlStreamReaderException;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_ac
    :goto_ac
    if-eqz p2, :cond_c9

    .line 551
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b5

    goto :goto_c9

    .line 552
    :cond_b5
    new-array p0, v3, [Ljava/lang/Object;

    aput-object p1, p0, v2

    aput-object p2, p0, v1

    aput-object p3, p0, v0

    const-string v0, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"

    invoke-static {v0, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 553
    new-instance v0, Lorg/apache/commons/io/input/XmlStreamReaderException;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_c9
    :goto_c9
    if-eqz p3, :cond_ee

    const-string p0, "UTF-32"

    .line 555
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ee

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_da

    goto :goto_ee

    .line 556
    :cond_da
    new-array p0, v3, [Ljava/lang/Object;

    aput-object p1, p0, v2

    aput-object p2, p0, v1

    aput-object p3, p0, v0

    const-string v0, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"

    invoke-static {v0, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 557
    new-instance v0, Lorg/apache/commons/io/input/XmlStreamReaderException;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_ee
    :goto_ee
    return-object p1

    :cond_ef
    :goto_ef
    if-eqz p2, :cond_10c

    .line 538
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f8

    goto :goto_10c

    .line 539
    :cond_f8
    new-array p0, v3, [Ljava/lang/Object;

    aput-object p1, p0, v2

    aput-object p2, p0, v1

    aput-object p3, p0, v0

    const-string v0, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"

    invoke-static {v0, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 540
    new-instance v0, Lorg/apache/commons/io/input/XmlStreamReaderException;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_10c
    :goto_10c
    if-eqz p3, :cond_131

    const-string p0, "UTF-16"

    .line 542
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_131

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11d

    goto :goto_131

    .line 543
    :cond_11d
    new-array p0, v3, [Ljava/lang/Object;

    aput-object p1, p0, v2

    aput-object p2, p0, v1

    aput-object p3, p0, v0

    const-string v0, "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch"

    invoke-static {v0, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 544
    new-instance v0, Lorg/apache/commons/io/input/XmlStreamReaderException;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/io/input/XmlStreamReaderException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_131
    :goto_131
    return-object p1
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    iget-object p0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->reader:Ljava/io/Reader;

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public getDefaultEncoding()Ljava/lang/String;
    .registers 1

    .line 122
    iget-object p0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->defaultEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 1

    .line 388
    iget-object p0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->encoding:Ljava/lang/String;

    return-object p0
.end method

.method public read([CII)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    iget-object p0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->reader:Ljava/io/Reader;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result p0

    return p0
.end method
