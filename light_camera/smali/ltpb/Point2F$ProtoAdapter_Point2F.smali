.class final Lltpb/Point2F$ProtoAdapter_Point2F;
.super Lcom/squareup/wire/ProtoAdapter;
.source "Point2F.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/Point2F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_Point2F"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lltpb/Point2F;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 123
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lltpb/Point2F;

    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0, p1}, Lltpb/Point2F$ProtoAdapter_Point2F;->decode(Lcom/squareup/wire/ProtoReader;)Lltpb/Point2F;

    move-result-object p0

    return-object p0
.end method

.method public decode(Lcom/squareup/wire/ProtoReader;)Lltpb/Point2F;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    new-instance p0, Lltpb/Point2F$Builder;

    invoke-direct {p0}, Lltpb/Point2F$Builder;-><init>()V

    .line 143
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    .line 144
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 149
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v3

    .line 150
    invoke-virtual {v3}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    .line 151
    invoke-virtual {p0, v2, v3, v4}, Lltpb/Point2F$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 147
    :pswitch_0
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lltpb/Point2F$Builder;->y(Ljava/lang/Float;)Lltpb/Point2F$Builder;

    goto :goto_0

    .line 146
    :pswitch_1
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lltpb/Point2F$Builder;->x(Ljava/lang/Float;)Lltpb/Point2F$Builder;

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 156
    invoke-virtual {p0}, Lltpb/Point2F$Builder;->build()Lltpb/Point2F;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    check-cast p2, Lltpb/Point2F;

    invoke-virtual {p0, p1, p2}, Lltpb/Point2F$ProtoAdapter_Point2F;->encode(Lcom/squareup/wire/ProtoWriter;Lltpb/Point2F;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lltpb/Point2F;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/Point2F;->x:Ljava/lang/Float;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 136
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/Point2F;->y:Ljava/lang/Float;

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 137
    invoke-virtual {p2}, Lltpb/Point2F;->unknownFields()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 121
    check-cast p1, Lltpb/Point2F;

    invoke-virtual {p0, p1}, Lltpb/Point2F$ProtoAdapter_Point2F;->encodedSize(Lltpb/Point2F;)I

    move-result p0

    return p0
.end method

.method public encodedSize(Lltpb/Point2F;)I
    .locals 3

    .line 128
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p1, Lltpb/Point2F;->x:Ljava/lang/Float;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/Point2F;->y:Ljava/lang/Float;

    const/4 v2, 0x2

    .line 129
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    .line 130
    invoke-virtual {p1}, Lltpb/Point2F;->unknownFields()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 121
    check-cast p1, Lltpb/Point2F;

    invoke-virtual {p0, p1}, Lltpb/Point2F$ProtoAdapter_Point2F;->redact(Lltpb/Point2F;)Lltpb/Point2F;

    move-result-object p0

    return-object p0
.end method

.method public redact(Lltpb/Point2F;)Lltpb/Point2F;
    .locals 0

    .line 161
    invoke-virtual {p1}, Lltpb/Point2F;->newBuilder()Lltpb/Point2F$Builder;

    move-result-object p0

    .line 162
    invoke-virtual {p0}, Lltpb/Point2F$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 163
    invoke-virtual {p0}, Lltpb/Point2F$Builder;->build()Lltpb/Point2F;

    move-result-object p0

    return-object p0
.end method
