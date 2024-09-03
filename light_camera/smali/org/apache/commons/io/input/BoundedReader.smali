.class public Lorg/apache/commons/io/input/BoundedReader;
.super Ljava/io/Reader;
.source "BoundedReader.java"


# static fields
.field private static final INVALID:I = -0x1


# instance fields
.field private charsRead:I

.field private markedAt:I

.field private final maxCharsFromTargetReader:I

.field private readAheadLimit:I

.field private final target:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lorg/apache/commons/io/input/BoundedReader;->charsRead:I

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lorg/apache/commons/io/input/BoundedReader;->markedAt:I

    .line 61
    iput-object p1, p0, Lorg/apache/commons/io/input/BoundedReader;->target:Ljava/io/Reader;

    .line 62
    iput p2, p0, Lorg/apache/commons/io/input/BoundedReader;->maxCharsFromTargetReader:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object p0, p0, Lorg/apache/commons/io/input/BoundedReader;->target:Ljava/io/Reader;

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public mark(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget v0, p0, Lorg/apache/commons/io/input/BoundedReader;->charsRead:I

    sub-int v0, p1, v0

    iput v0, p0, Lorg/apache/commons/io/input/BoundedReader;->readAheadLimit:I

    .line 102
    iget v0, p0, Lorg/apache/commons/io/input/BoundedReader;->charsRead:I

    iput v0, p0, Lorg/apache/commons/io/input/BoundedReader;->markedAt:I

    .line 104
    iget-object p0, p0, Lorg/apache/commons/io/input/BoundedReader;->target:Ljava/io/Reader;

    invoke-virtual {p0, p1}, Ljava/io/Reader;->mark(I)V

    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget v0, p0, Lorg/apache/commons/io/input/BoundedReader;->charsRead:I

    iget v1, p0, Lorg/apache/commons/io/input/BoundedReader;->maxCharsFromTargetReader:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_8

    return v2

    .line 120
    :cond_8
    iget v0, p0, Lorg/apache/commons/io/input/BoundedReader;->markedAt:I

    if-ltz v0, :cond_16

    iget v0, p0, Lorg/apache/commons/io/input/BoundedReader;->charsRead:I

    iget v1, p0, Lorg/apache/commons/io/input/BoundedReader;->markedAt:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/io/input/BoundedReader;->readAheadLimit:I

    if-lt v0, v1, :cond_16

    return v2

    .line 123
    :cond_16
    iget v0, p0, Lorg/apache/commons/io/input/BoundedReader;->charsRead:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/io/input/BoundedReader;->charsRead:I

    .line 124
    iget-object p0, p0, Lorg/apache/commons/io/input/BoundedReader;->target:Ljava/io/Reader;

    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result p0

    return p0
.end method

.method public read([CII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_13

    .line 140
    invoke-virtual {p0}, Lorg/apache/commons/io/input/BoundedReader;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    return v0

    :cond_b
    add-int v2, p2, v0

    int-to-char v1, v1

    .line 144
    aput-char v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return p3
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget v0, p0, Lorg/apache/commons/io/input/BoundedReader;->markedAt:I

    iput v0, p0, Lorg/apache/commons/io/input/BoundedReader;->charsRead:I

    .line 83
    iget-object p0, p0, Lorg/apache/commons/io/input/BoundedReader;->target:Ljava/io/Reader;

    invoke-virtual {p0}, Ljava/io/Reader;->reset()V

    return-void
.end method
