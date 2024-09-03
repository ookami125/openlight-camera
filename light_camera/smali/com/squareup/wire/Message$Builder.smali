.class public abstract Lcom/squareup/wire/Message$Builder;
.super Ljava/lang/Object;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message<",
        "TM;TB;>;B:",
        "Lcom/squareup/wire/Message$Builder<",
        "TM;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field transient unknownFieldsBuffer:Lokio/Buffer;

.field transient unknownFieldsByteString:Lokio/ByteString;

.field transient unknownFieldsWriter:Lcom/squareup/wire/ProtoWriter;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsByteString:Lokio/ByteString;

    return-void
.end method

.method private prepareForNewUnknownFields()V
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsBuffer:Lokio/Buffer;

    if-nez v0, :cond_26

    .line 175
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsBuffer:Lokio/Buffer;

    .line 176
    new-instance v0, Lcom/squareup/wire/ProtoWriter;

    iget-object v1, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsBuffer:Lokio/Buffer;

    invoke-direct {v0, v1}, Lcom/squareup/wire/ProtoWriter;-><init>(Lokio/BufferedSink;)V

    iput-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsWriter:Lcom/squareup/wire/ProtoWriter;

    .line 179
    :try_start_14
    iget-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsWriter:Lcom/squareup/wire/ProtoWriter;

    iget-object v1, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsByteString:Lokio/ByteString;

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1b} :catch_20

    .line 183
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsByteString:Lokio/ByteString;

    goto :goto_26

    .line 181
    :catch_20
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_26
    :goto_26
    return-void
.end method


# virtual methods
.method public final addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/squareup/wire/FieldEncoding;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/squareup/wire/Message$Builder<",
            "TM;TB;>;"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;->prepareForNewUnknownFields()V

    .line 138
    :try_start_3
    invoke-virtual {p2}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object p2

    .line 139
    iget-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsWriter:Lcom/squareup/wire/ProtoWriter;

    invoke-virtual {p2, v0, p1, p3}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_c} :catch_d

    return-object p0

    .line 141
    :catch_d
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public final addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/ByteString;",
            ")",
            "Lcom/squareup/wire/Message$Builder<",
            "TM;TB;>;"
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 125
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;->prepareForNewUnknownFields()V

    .line 127
    :try_start_9
    iget-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsWriter:Lcom/squareup/wire/ProtoWriter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_15

    .line 129
    :catch_f
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_15
    :goto_15
    return-object p0
.end method

.method public abstract build()Lcom/squareup/wire/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation
.end method

.method public final buildUnknownFields()Lokio/ByteString;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsBuffer:Lokio/Buffer;

    if-eqz v0, :cond_11

    .line 163
    iget-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsByteString:Lokio/ByteString;

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsBuffer:Lokio/Buffer;

    .line 165
    iput-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsWriter:Lcom/squareup/wire/ProtoWriter;

    .line 167
    :cond_11
    iget-object p0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsByteString:Lokio/ByteString;

    return-object p0
.end method

.method public final clearUnknownFields()Lcom/squareup/wire/Message$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/Message$Builder<",
            "TM;TB;>;"
        }
    .end annotation

    .line 147
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsByteString:Lokio/ByteString;

    .line 148
    iget-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsBuffer:Lokio/Buffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 149
    iget-object v0, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsBuffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->clear()V

    .line 150
    iput-object v1, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsBuffer:Lokio/Buffer;

    .line 152
    :cond_10
    iput-object v1, p0, Lcom/squareup/wire/Message$Builder;->unknownFieldsWriter:Lcom/squareup/wire/ProtoWriter;

    return-object p0
.end method
