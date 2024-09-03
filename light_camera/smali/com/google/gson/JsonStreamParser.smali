.class public final Lcom/google/gson/JsonStreamParser;
.super Ljava/lang/Object;
.source "JsonStreamParser.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final parser:Lcom/google/gson/stream/JsonReader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/google/gson/JsonStreamParser;->parser:Lcom/google/gson/stream/JsonReader;

    .line 70
    iget-object p1, p0, Lcom/google/gson/JsonStreamParser;->parser:Lcom/google/gson/stream/JsonReader;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 71
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/JsonStreamParser;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 61
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/gson/JsonStreamParser;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/google/gson/JsonStreamParser;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_3
    iget-object p0, p0, Lcom/google/gson/JsonStreamParser;->parser:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object p0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;
    :try_end_b
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_3 .. :try_end_b} :catch_1b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_14
    .catchall {:try_start_3 .. :try_end_b} :catchall_12

    if-eq p0, v1, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    :try_start_10
    monitor-exit v0

    return p0

    :catchall_12
    move-exception p0

    goto :goto_22

    :catch_14
    move-exception p0

    .line 109
    new-instance v1, Lcom/google/gson/JsonIOException;

    invoke-direct {v1, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1b
    move-exception p0

    .line 107
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, p0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 111
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_12

    throw p0
.end method

.method public next()Lcom/google/gson/JsonElement;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/google/gson/JsonStreamParser;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 87
    :try_start_6
    iget-object p0, p0, Lcom/google/gson/JsonStreamParser;->parser:Lcom/google/gson/stream/JsonReader;

    invoke-static {p0}, Lcom/google/gson/internal/Streams;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/StackOverflowError; {:try_start_6 .. :try_end_c} :catch_25
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_c} :catch_1c
    .catch Lcom/google/gson/JsonParseException; {:try_start_6 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 93
    invoke-virtual {p0}, Lcom/google/gson/JsonParseException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/EOFException;

    if-eqz v0, :cond_1b

    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    :cond_1b
    throw p0

    :catch_1c
    move-exception p0

    .line 91
    new-instance v0, Lcom/google/gson/JsonParseException;

    const-string v1, "Failed parsing JSON source to Json"

    invoke-direct {v0, v1, p0}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_25
    move-exception p0

    .line 89
    new-instance v0, Lcom/google/gson/JsonParseException;

    const-string v1, "Failed parsing JSON source to Json"

    invoke-direct {v0, v1, p0}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 83
    :cond_2e
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 1

    .line 52
    invoke-virtual {p0}, Lcom/google/gson/JsonStreamParser;->next()Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .registers 1

    .line 120
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
