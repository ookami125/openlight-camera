.class public Lorg/apache/commons/io/LineIterator;
.super Ljava/lang/Object;
.source "LineIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final bufferedReader:Ljava/io/BufferedReader;

.field private cachedLine:Ljava/lang/String;

.field private finished:Z


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lorg/apache/commons/io/LineIterator;->finished:Z

    if-eqz p1, :cond_19

    .line 71
    instance-of v0, p1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_11

    .line 72
    check-cast p1, Ljava/io/BufferedReader;

    iput-object p1, p0, Lorg/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    goto :goto_18

    .line 74
    :cond_11
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    :goto_18
    return-void

    .line 69
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Reader must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static closeQuietly(Lorg/apache/commons/io/LineIterator;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 176
    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->close()V

    :cond_5
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lorg/apache/commons/io/LineIterator;->finished:Z

    .line 155
    iget-object v0, p0, Lorg/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    return-void
.end method

.method public hasNext()Z
    .registers 5

    .line 88
    iget-object v0, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 90
    :cond_6
    iget-boolean v0, p0, Lorg/apache/commons/io/LineIterator;->finished:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    return v2

    .line 95
    :cond_c
    :try_start_c
    iget-object v0, p0, Lorg/apache/commons/io/LineIterator;->bufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    .line 97
    iput-boolean v1, p0, Lorg/apache/commons/io/LineIterator;->finished:Z

    return v2

    .line 99
    :cond_17
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/LineIterator;->isValidLine(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 100
    iput-object v0, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1f} :catch_20

    return v1

    :catch_20
    move-exception v0

    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->close()V

    .line 106
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method protected isValidLine(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 1

    .line 50
    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->next()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public next()Ljava/lang/String;
    .registers 1

    .line 128
    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->nextLine()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nextLine()Ljava/lang/String;
    .registers 3

    .line 138
    invoke-virtual {p0}, Lorg/apache/commons/io/LineIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 141
    iget-object v0, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    const/4 v1, 0x0

    .line 142
    iput-object v1, p0, Lorg/apache/commons/io/LineIterator;->cachedLine:Ljava/lang/String;

    return-object v0

    .line 139
    :cond_c
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "No more lines"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public remove()V
    .registers 2

    .line 165
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Remove unsupported on LineIterator"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
