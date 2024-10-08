.class public Lorg/apache/commons/io/input/Tailer;
.super Ljava/lang/Object;
.source "Tailer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_BUFSIZE:I = 0x1000

.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field private static final DEFAULT_DELAY_MILLIS:I = 0x3e8

.field private static final RAF_MODE:Ljava/lang/String; = "r"


# instance fields
.field private final cset:Ljava/nio/charset/Charset;

.field private final delayMillis:J

.field private final end:Z

.field private final file:Ljava/io/File;

.field private final inbuf:[B

.field private final listener:Lorg/apache/commons/io/input/TailerListener;

.field private final reOpen:Z

.field private volatile run:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 130
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/input/Tailer;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)V
    .registers 10

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    .line 255
    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    .line 256
    iput-wide p4, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    .line 257
    iput-boolean p6, p0, Lorg/apache/commons/io/input/Tailer;->end:Z

    .line 259
    new-array p1, p8, [B

    iput-object p1, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    .line 262
    iput-object p3, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    .line 263
    invoke-interface {p3, p0}, Lorg/apache/commons/io/input/TailerListener;->init(Lorg/apache/commons/io/input/Tailer;)V

    .line 264
    iput-boolean p7, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    .line 265
    iput-object p2, p0, Lorg/apache/commons/io/input/Tailer;->cset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)V
    .registers 5

    const-wide/16 v0, 0x3e8

    .line 178
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 188
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)V
    .registers 13

    const/16 v6, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    .line 199
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)V
    .registers 15

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v7, p6

    .line 225
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZ)V
    .registers 15

    const/16 v7, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    .line 212
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)V
    .registers 17

    .line 239
    sget-object v2, Lorg/apache/commons/io/input/Tailer;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    return-void
.end method

.method public static create(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;
    .registers 18

    .line 315
    new-instance v9, Lorg/apache/commons/io/input/Tailer;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/io/input/Tailer;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)V

    .line 316
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 318
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object v9
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;)Lorg/apache/commons/io/input/Tailer;
    .registers 5

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    .line 372
    invoke-static {p0, p1, v0, v1, v2}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;J)Lorg/apache/commons/io/input/Tailer;
    .registers 5

    const/4 v0, 0x0

    .line 360
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZ)Lorg/apache/commons/io/input/Tailer;
    .registers 11

    const/16 v5, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    .line 333
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZI)Lorg/apache/commons/io/input/Tailer;
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v6, p5

    .line 280
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZ)Lorg/apache/commons/io/input/Tailer;
    .registers 13

    const/16 v6, 0x1000

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    .line 348
    invoke-static/range {v0 .. v6}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/io/File;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;
    .registers 15

    .line 297
    sget-object v1, Lorg/apache/commons/io/input/Tailer;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/io/input/Tailer;->create(Ljava/io/File;Ljava/nio/charset/Charset;Lorg/apache/commons/io/input/TailerListener;JZZI)Lorg/apache/commons/io/input/Tailer;

    move-result-object p0

    return-object p0
.end method

.method private readLines(Ljava/io/RandomAccessFile;)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 518
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    const/4 v3, 0x0

    move-wide v5, v1

    move v4, v3

    .line 522
    :goto_e
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->getRun()Z

    move-result v7

    if-eqz v7, :cond_74

    iget-object v7, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    invoke-virtual {p1, v7}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_74

    move-wide v8, v1

    move v1, v3

    :goto_1f
    if-ge v1, v7, :cond_6e

    .line 524
    iget-object v2, p0, Lorg/apache/commons/io/input/Tailer;->inbuf:[B

    aget-byte v2, v2, v1

    const/16 v10, 0xa

    const-wide/16 v11, 0x1

    if-eq v2, v10, :cond_54

    const/16 v10, 0xd

    if-eq v2, v10, :cond_4c

    if-eqz v4, :cond_48

    .line 541
    iget-object v4, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iget-object v10, p0, Lorg/apache/commons/io/input/Tailer;->cset:Ljava/nio/charset/Charset;

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v4, v8}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    int-to-long v8, v1

    add-long/2addr v8, v5

    add-long/2addr v8, v11

    move v4, v3

    .line 545
    :cond_48
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_6b

    :cond_4c
    if-eqz v4, :cond_51

    .line 534
    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_51
    const/4 v2, 0x1

    move v4, v2

    goto :goto_6b

    .line 528
    :cond_54
    iget-object v2, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->cset:Ljava/nio/charset/Charset;

    invoke-direct {v4, v8, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v2, v4}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    int-to-long v8, v1

    add-long/2addr v8, v5

    add-long/2addr v8, v11

    move v4, v3

    :goto_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 548
    :cond_6e
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    move-wide v1, v8

    goto :goto_e

    .line 550
    :cond_74
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 551
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 553
    iget-object p1, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    instance-of p1, p1, Lorg/apache/commons/io/input/TailerListenerAdapter;

    if-eqz p1, :cond_87

    .line 554
    iget-object p0, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    check-cast p0, Lorg/apache/commons/io/input/TailerListenerAdapter;

    invoke-virtual {p0}, Lorg/apache/commons/io/input/TailerListenerAdapter;->endOfFileReached()V

    :cond_87
    return-wide v1
.end method

.method private stop(Ljava/lang/Exception;)V
    .registers 3

    .line 498
    iget-object v0, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v0, p1}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V

    .line 499
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->stop()V

    return-void
.end method


# virtual methods
.method public getDelay()J
    .registers 3

    .line 400
    iget-wide v0, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    return-wide v0
.end method

.method public getFile()Ljava/io/File;
    .registers 1

    .line 381
    iget-object p0, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    return-object p0
.end method

.method protected getRun()Z
    .registers 1

    .line 391
    iget-boolean p0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    return p0
.end method

.method public run()V
    .registers 13

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    move-wide v5, v3

    .line 412
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->getRun()Z

    move-result v7
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_9} :catch_d3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_cb
    .catchall {:try_start_5 .. :try_end_9} :catchall_c9

    if-eqz v7, :cond_3c

    if-nez v2, :cond_3c

    .line 414
    :try_start_d
    new-instance v7, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string v9, "r"

    invoke-direct {v7, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_16} :catch_18
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_16} :catch_d3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_cb
    .catchall {:try_start_d .. :try_end_16} :catchall_c9

    move-object v2, v7

    goto :goto_1d

    .line 416
    :catch_18
    :try_start_18
    iget-object v7, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v7}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V

    :goto_1d
    if-nez v2, :cond_25

    .line 419
    iget-wide v7, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_5

    .line 422
    :cond_25
    iget-boolean v3, p0, Lorg/apache/commons/io/input/Tailer;->end:Z

    if-eqz v3, :cond_31

    iget-object v3, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    move-wide v5, v3

    goto :goto_32

    :cond_31
    move-wide v5, v0

    .line 423
    :goto_32
    iget-object v3, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    .line 424
    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_5

    .line 427
    :cond_3c
    :goto_3c
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->getRun()Z

    move-result v7

    if-eqz v7, :cond_cf

    .line 428
    iget-object v7, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-static {v7, v3, v4}, Lorg/apache/commons/io/FileUtils;->isFileNewer(Ljava/io/File;J)Z

    move-result v7

    .line 430
    iget-object v8, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v8, v8, v5

    if-gez v8, :cond_86

    .line 433
    iget-object v7, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v7}, Lorg/apache/commons/io/input/TailerListener;->fileRotated()V
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_57} :catch_d3
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_57} :catch_cb
    .catchall {:try_start_18 .. :try_end_57} :catchall_c9

    .line 438
    :try_start_57
    new-instance v7, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string v9, "r"

    invoke-direct {v7, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_60} :catch_80
    .catch Ljava/lang/InterruptedException; {:try_start_57 .. :try_end_60} :catch_d3
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_60} :catch_cb
    .catchall {:try_start_57 .. :try_end_60} :catchall_c9

    .line 442
    :try_start_60
    invoke-direct {p0, v2}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_72
    .catch Ljava/io/FileNotFoundException; {:try_start_60 .. :try_end_63} :catch_70
    .catch Ljava/lang/InterruptedException; {:try_start_60 .. :try_end_63} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_68
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_78

    :catchall_64
    move-exception p0

    move-object v2, v7

    goto/16 :goto_e0

    :catch_68
    move-exception v0

    move-object v2, v7

    goto/16 :goto_cc

    :catch_6c
    move-exception v0

    move-object v2, v7

    goto/16 :goto_d4

    :catch_70
    :goto_70
    move-object v2, v7

    goto :goto_80

    :catch_72
    move-exception v8

    .line 444
    :try_start_73
    iget-object v9, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v9, v8}, Lorg/apache/commons/io/input/TailerListener;->handle(Ljava/lang/Exception;)V
    :try_end_78
    .catch Ljava/io/FileNotFoundException; {:try_start_73 .. :try_end_78} :catch_70
    .catch Ljava/lang/InterruptedException; {:try_start_73 .. :try_end_78} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_78} :catch_68
    .catchall {:try_start_73 .. :try_end_78} :catchall_64

    .line 448
    :goto_78
    :try_start_78
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_7b
    .catch Ljava/io/FileNotFoundException; {:try_start_78 .. :try_end_7b} :catch_7e
    .catch Ljava/lang/InterruptedException; {:try_start_78 .. :try_end_7b} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_68
    .catchall {:try_start_78 .. :try_end_7b} :catchall_64

    move-wide v5, v0

    :goto_7c
    move-object v2, v7

    goto :goto_3c

    :catch_7e
    move-wide v5, v0

    goto :goto_70

    .line 451
    :catch_80
    :goto_80
    :try_start_80
    iget-object v7, p0, Lorg/apache/commons/io/input/Tailer;->listener:Lorg/apache/commons/io/input/TailerListener;

    invoke-interface {v7}, Lorg/apache/commons/io/input/TailerListener;->fileNotFound()V

    goto :goto_3c

    :cond_86
    if-lez v8, :cond_96

    .line 459
    invoke-direct {p0, v2}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J

    move-result-wide v3

    .line 460
    iget-object v5, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    :goto_92
    move-wide v10, v3

    move-wide v3, v5

    move-wide v5, v10

    goto :goto_a6

    :cond_96
    if-eqz v7, :cond_a6

    .line 467
    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 470
    invoke-direct {p0, v2}, Lorg/apache/commons/io/input/Tailer;->readLines(Ljava/io/RandomAccessFile;)J

    move-result-wide v3

    .line 471
    iget-object v5, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    goto :goto_92

    .line 474
    :cond_a6
    :goto_a6
    iget-boolean v7, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    if-eqz v7, :cond_ad

    .line 475
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 477
    :cond_ad
    iget-wide v7, p0, Lorg/apache/commons/io/input/Tailer;->delayMillis:J

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 478
    invoke-virtual {p0}, Lorg/apache/commons/io/input/Tailer;->getRun()Z

    move-result v7

    if-eqz v7, :cond_3c

    iget-boolean v7, p0, Lorg/apache/commons/io/input/Tailer;->reOpen:Z

    if-eqz v7, :cond_3c

    .line 479
    new-instance v7, Ljava/io/RandomAccessFile;

    iget-object v8, p0, Lorg/apache/commons/io/input/Tailer;->file:Ljava/io/File;

    const-string v9, "r"

    invoke-direct {v7, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c5
    .catch Ljava/lang/InterruptedException; {:try_start_80 .. :try_end_c5} :catch_d3
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_c5} :catch_cb
    .catchall {:try_start_80 .. :try_end_c5} :catchall_c9

    .line 480
    :try_start_c5
    invoke-virtual {v7, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_c8
    .catch Ljava/lang/InterruptedException; {:try_start_c5 .. :try_end_c8} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c8} :catch_68
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_64

    goto :goto_7c

    :catchall_c9
    move-exception p0

    goto :goto_e0

    :catch_cb
    move-exception v0

    .line 487
    :goto_cc
    :try_start_cc
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/Tailer;->stop(Ljava/lang/Exception;)V
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_c9

    .line 489
    :cond_cf
    :goto_cf
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_df

    :catch_d3
    move-exception v0

    .line 484
    :goto_d4
    :try_start_d4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 485
    invoke-direct {p0, v0}, Lorg/apache/commons/io/input/Tailer;->stop(Ljava/lang/Exception;)V
    :try_end_de
    .catchall {:try_start_d4 .. :try_end_de} :catchall_c9

    goto :goto_cf

    :goto_df
    return-void

    .line 489
    :goto_e0
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    .line 506
    iput-boolean v0, p0, Lorg/apache/commons/io/input/Tailer;->run:Z

    return-void
.end method
