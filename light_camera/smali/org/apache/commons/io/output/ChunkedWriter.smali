.class public Lorg/apache/commons/io/output/ChunkedWriter;
.super Ljava/io/FilterWriter;
.source "ChunkedWriter.java"


# static fields
.field private static final DEFAULT_CHUNK_SIZE:I = 0x1000


# instance fields
.field private final chunkSize:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 3

    const/16 v0, 0x1000

    .line 62
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/output/ChunkedWriter;-><init>(Ljava/io/Writer;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .registers 3

    .line 50
    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    if-lez p2, :cond_8

    .line 54
    iput p2, p0, Lorg/apache/commons/io/output/ChunkedWriter;->chunkSize:I

    return-void

    .line 52
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public write([CII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_10

    .line 78
    iget v0, p0, Lorg/apache/commons/io/output/ChunkedWriter;->chunkSize:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 79
    iget-object v1, p0, Lorg/apache/commons/io/output/ChunkedWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/Writer;->write([CII)V

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_10
    return-void
.end method
