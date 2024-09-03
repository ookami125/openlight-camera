.class final Lcom/squareup/wire/RuntimeMessageAdapter;
.super Lcom/squareup/wire/ProtoAdapter;
.source "RuntimeMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/squareup/wire/Message<",
        "TM;TB;>;B:",
        "Lcom/squareup/wire/Message$Builder<",
        "TM;TB;>;>",
        "Lcom/squareup/wire/ProtoAdapter<",
        "TM;>;"
    }
.end annotation


# static fields
.field private static final REDACTED:Ljava/lang/String; = "\u2588\u2588"


# instance fields
.field private final builderType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TB;>;"
        }
    .end annotation
.end field

.field private final fieldBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/wire/FieldBinding<",
            "TM;TB;>;>;"
        }
    .end annotation
.end field

.field private final messageType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TM;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TM;>;",
            "Ljava/lang/Class<",
            "TB;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/wire/FieldBinding<",
            "TM;TB;>;>;)V"
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    invoke-direct {p0, v0, p1}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    .line 57
    iput-object p1, p0, Lcom/squareup/wire/RuntimeMessageAdapter;->messageType:Ljava/lang/Class;

    .line 58
    iput-object p2, p0, Lcom/squareup/wire/RuntimeMessageAdapter;->builderType:Ljava/lang/Class;

    .line 59
    iput-object p3, p0, Lcom/squareup/wire/RuntimeMessageAdapter;->fieldBindings:Ljava/util/Map;

    return-void
.end method

.method static create(Ljava/lang/Class;)Lcom/squareup/wire/RuntimeMessageAdapter;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;TB;>;B:",
            "Lcom/squareup/wire/Message$Builder<",
            "TM;TB;>;>(",
            "Ljava/lang/Class<",
            "TM;>;)",
            "Lcom/squareup/wire/RuntimeMessageAdapter<",
            "TM;TB;>;"
        }
    .end annotation

    .line 34
    invoke-static {p0}, Lcom/squareup/wire/RuntimeMessageAdapter;->getBuilderType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 35
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 38
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_30

    aget-object v5, v2, v4

    .line 39
    const-class v6, Lcom/squareup/wire/WireField;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/squareup/wire/WireField;

    if-eqz v6, :cond_2d

    .line 41
    invoke-interface {v6}, Lcom/squareup/wire/WireField;->tag()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/squareup/wire/FieldBinding;

    invoke-direct {v8, v6, v5, v0}, Lcom/squareup/wire/FieldBinding;-><init>(Lcom/squareup/wire/WireField;Ljava/lang/reflect/Field;Ljava/lang/Class;)V

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 46
    :cond_30
    new-instance v2, Lcom/squareup/wire/RuntimeMessageAdapter;

    .line 47
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v2, p0, v0, v1}, Lcom/squareup/wire/RuntimeMessageAdapter;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)V

    return-object v2
.end method

.method private static getBuilderType(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;TB;>;B:",
            "Lcom/squareup/wire/Message$Builder<",
            "TM;TB;>;>(",
            "Ljava/lang/Class<",
            "TM;>;)",
            "Ljava/lang/Class<",
            "TB;>;"
        }
    .end annotation

    .line 78
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$Builder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_19} :catch_1a

    return-object v0

    .line 80
    :catch_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No builder class found for message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public decode(Lcom/squareup/wire/ProtoReader;)Lcom/squareup/wire/Message;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ProtoReader;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Lcom/squareup/wire/RuntimeMessageAdapter;->newBuilder()Lcom/squareup/wire/Message$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v1

    .line 166
    :goto_8
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_53

    .line 167
    iget-object v4, p0, Lcom/squareup/wire/RuntimeMessageAdapter;->fieldBindings:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/wire/FieldBinding;

    if-eqz v4, :cond_36

    .line 170
    :try_start_1d
    invoke-virtual {v4}, Lcom/squareup/wire/FieldBinding;->isMap()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 171
    invoke-virtual {v4}, Lcom/squareup/wire/FieldBinding;->adapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    goto :goto_2c

    .line 172
    :cond_28
    invoke-virtual {v4}, Lcom/squareup/wire/FieldBinding;->singleAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    .line 173
    :goto_2c
    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    .line 174
    invoke-virtual {v4, v0, v5}, Lcom/squareup/wire/FieldBinding;->value(Lcom/squareup/wire/Message$Builder;Ljava/lang/Object;)V

    goto :goto_8

    :catch_34
    move-exception v4

    goto :goto_46

    .line 176
    :cond_36
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v4

    .line 177
    invoke-virtual {v4}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v5

    .line 178
    invoke-virtual {v0, v3, v4, v5}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;
    :try_end_45
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_1d .. :try_end_45} :catch_34

    goto :goto_8

    .line 182
    :goto_46
    sget-object v5, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v4, v4, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v5, v4}, Lcom/squareup/wire/Message$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_8

    .line 185
    :cond_53
    invoke-virtual {p1, v1, v2}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 187
    invoke-virtual {v0}, Lcom/squareup/wire/Message$Builder;->build()Lcom/squareup/wire/Message;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1}, Lcom/squareup/wire/RuntimeMessageAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Lcom/squareup/wire/Message;

    move-result-object p0

    return-object p0
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lcom/squareup/wire/Message;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ProtoWriter;",
            "TM;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object p0, p0, Lcom/squareup/wire/RuntimeMessageAdapter;->fieldBindings:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/FieldBinding;

    .line 103
    invoke-virtual {v0, p2}, Lcom/squareup/wire/FieldBinding;->get(Lcom/squareup/wire/Message;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1d

    goto :goto_a

    .line 105
    :cond_1d
    invoke-virtual {v0}, Lcom/squareup/wire/FieldBinding;->adapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v2

    iget v0, v0, Lcom/squareup/wire/FieldBinding;->tag:I

    invoke-virtual {v2, p1, v0, v1}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    goto :goto_a

    .line 107
    :cond_27
    invoke-virtual {p2}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    check-cast p2, Lcom/squareup/wire/Message;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/wire/RuntimeMessageAdapter;->encode(Lcom/squareup/wire/ProtoWriter;Lcom/squareup/wire/Message;)V

    return-void
.end method

.method public encodedSize(Lcom/squareup/wire/Message;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation

    .line 86
    iget v0, p1, Lcom/squareup/wire/Message;->cachedSerializedSize:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    const/4 v0, 0x0

    .line 90
    iget-object p0, p0, Lcom/squareup/wire/RuntimeMessageAdapter;->fieldBindings:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/FieldBinding;

    .line 91
    invoke-virtual {v1, p1}, Lcom/squareup/wire/FieldBinding;->get(Lcom/squareup/wire/Message;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_23

    goto :goto_10

    .line 93
    :cond_23
    invoke-virtual {v1}, Lcom/squareup/wire/FieldBinding;->adapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v3

    iget v1, v1, Lcom/squareup/wire/FieldBinding;->tag:I

    invoke-virtual {v3, v1, v2}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_10

    .line 95
    :cond_2f
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->unknownFields()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->size()I

    move-result p0

    add-int/2addr v0, p0

    .line 97
    iput v0, p1, Lcom/squareup/wire/Message;->cachedSerializedSize:I

    return v0
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 2

    .line 28
    check-cast p1, Lcom/squareup/wire/Message;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/RuntimeMessageAdapter;->encodedSize(Lcom/squareup/wire/Message;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 138
    instance-of v0, p1, Lcom/squareup/wire/RuntimeMessageAdapter;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/squareup/wire/RuntimeMessageAdapter;

    iget-object p1, p1, Lcom/squareup/wire/RuntimeMessageAdapter;->messageType:Ljava/lang/Class;

    iget-object p0, p0, Lcom/squareup/wire/RuntimeMessageAdapter;->messageType:Ljava/lang/Class;

    if-ne p1, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method fieldBindings()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/wire/FieldBinding<",
            "TM;TB;>;>;"
        }
    .end annotation

    .line 63
    iget-object p0, p0, Lcom/squareup/wire/RuntimeMessageAdapter;->fieldBindings:Ljava/util/Map;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 143
    iget-object p0, p0, Lcom/squareup/wire/RuntimeMessageAdapter;->messageType:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method newBuilder()Lcom/squareup/wire/Message$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 68
    :try_start_0
    iget-object p0, p0, Lcom/squareup/wire/RuntimeMessageAdapter;->builderType:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/wire/Message$Builder;
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_8} :catch_9
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    .line 70
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public redact(Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)TM;"
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Lcom/squareup/wire/Message;->newBuilder()Lcom/squareup/wire/Message$Builder;

    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/squareup/wire/RuntimeMessageAdapter;->fieldBindings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/wire/FieldBinding;

    .line 113
    iget-boolean v2, v1, Lcom/squareup/wire/FieldBinding;->redacted:Z

    if-eqz v2, :cond_42

    iget-object v2, v1, Lcom/squareup/wire/FieldBinding;->label:Lcom/squareup/wire/WireField$Label;

    sget-object v3, Lcom/squareup/wire/WireField$Label;->REQUIRED:Lcom/squareup/wire/WireField$Label;

    if-eq v2, v3, :cond_25

    goto :goto_42

    .line 114
    :cond_25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v1, v1, Lcom/squareup/wire/FieldBinding;->name:Ljava/lang/String;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/squareup/wire/RuntimeMessageAdapter;->javaType:Ljava/lang/Class;

    .line 116
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Field \'%s\' in %s is required and cannot be redacted."

    .line 114
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_42
    :goto_42
    const-class v2, Lcom/squareup/wire/Message;

    invoke-virtual {v1}, Lcom/squareup/wire/FieldBinding;->singleAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v3

    iget-object v3, v3, Lcom/squareup/wire/ProtoAdapter;->javaType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    .line 119
    iget-boolean v3, v1, Lcom/squareup/wire/FieldBinding;->redacted:Z

    if-nez v3, :cond_75

    if-eqz v2, :cond_5d

    iget-object v3, v1, Lcom/squareup/wire/FieldBinding;->label:Lcom/squareup/wire/WireField$Label;

    invoke-virtual {v3}, Lcom/squareup/wire/WireField$Label;->isRepeated()Z

    move-result v3

    if-nez v3, :cond_5d

    goto :goto_75

    :cond_5d
    if-eqz v2, :cond_e

    .line 125
    iget-object v2, v1, Lcom/squareup/wire/FieldBinding;->label:Lcom/squareup/wire/WireField$Label;

    invoke-virtual {v2}, Lcom/squareup/wire/WireField$Label;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 127
    invoke-virtual {v1, p1}, Lcom/squareup/wire/FieldBinding;->getFromBuilder(Lcom/squareup/wire/Message$Builder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 129
    invoke-virtual {v1}, Lcom/squareup/wire/FieldBinding;->singleAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    .line 130
    invoke-static {v2, v1}, Lcom/squareup/wire/internal/Internal;->redactElements(Ljava/util/List;Lcom/squareup/wire/ProtoAdapter;)V

    goto :goto_e

    .line 120
    :cond_75
    :goto_75
    invoke-virtual {v1, p1}, Lcom/squareup/wire/FieldBinding;->getFromBuilder(Lcom/squareup/wire/Message$Builder;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 122
    invoke-virtual {v1}, Lcom/squareup/wire/FieldBinding;->adapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 123
    invoke-virtual {v1, p1, v2}, Lcom/squareup/wire/FieldBinding;->set(Lcom/squareup/wire/Message$Builder;Ljava/lang/Object;)V

    goto :goto_e

    .line 133
    :cond_87
    invoke-virtual {p1}, Lcom/squareup/wire/Message$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 134
    invoke-virtual {p1}, Lcom/squareup/wire/Message$Builder;->build()Lcom/squareup/wire/Message;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 28
    check-cast p1, Lcom/squareup/wire/Message;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/RuntimeMessageAdapter;->redact(Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;

    move-result-object p0

    return-object p0
.end method

.method public toString(Lcom/squareup/wire/Message;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    iget-object v1, p0, Lcom/squareup/wire/RuntimeMessageAdapter;->fieldBindings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/wire/FieldBinding;

    .line 149
    invoke-virtual {v2, p1}, Lcom/squareup/wire/FieldBinding;->get(Lcom/squareup/wire/Message;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_f

    const-string v4, ", "

    .line 151
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/squareup/wire/FieldBinding;->name:Ljava/lang/String;

    .line 152
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    .line 153
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v2, v2, Lcom/squareup/wire/FieldBinding;->redacted:Z

    if-eqz v2, :cond_36

    const-string v3, "\u2588\u2588"

    .line 154
    :cond_36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_3a
    const/4 p1, 0x0

    const/4 v1, 0x2

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/squareup/wire/RuntimeMessageAdapter;->messageType:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7b

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 160
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 28
    check-cast p1, Lcom/squareup/wire/Message;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/RuntimeMessageAdapter;->toString(Lcom/squareup/wire/Message;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
