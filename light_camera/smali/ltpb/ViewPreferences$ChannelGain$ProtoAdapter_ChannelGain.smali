.class final Lltpb/ViewPreferences$ChannelGain$ProtoAdapter_ChannelGain;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ViewPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/ViewPreferences$ChannelGain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_ChannelGain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lltpb/ViewPreferences$ChannelGain;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1134
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lltpb/ViewPreferences$ChannelGain;

    invoke-direct {p0, v0, v1}, Lcom/squareup/wire/ProtoAdapter;-><init>(Lcom/squareup/wire/FieldEncoding;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1132
    invoke-virtual {p0, p1}, Lltpb/ViewPreferences$ChannelGain$ProtoAdapter_ChannelGain;->decode(Lcom/squareup/wire/ProtoReader;)Lltpb/ViewPreferences$ChannelGain;

    move-result-object p0

    return-object p0
.end method

.method public decode(Lcom/squareup/wire/ProtoReader;)Lltpb/ViewPreferences$ChannelGain;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1157
    new-instance p0, Lltpb/ViewPreferences$ChannelGain$Builder;

    invoke-direct {p0}, Lltpb/ViewPreferences$ChannelGain$Builder;-><init>()V

    .line 1158
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    .line 1159
    :goto_9
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_53

    packed-switch v2, :pswitch_data_5c

    .line 1166
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v3

    .line 1167
    invoke-virtual {v3}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    .line 1168
    invoke-virtual {p0, v2, v3, v4}, Lltpb/ViewPreferences$ChannelGain$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_9

    .line 1164
    :pswitch_23
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lltpb/ViewPreferences$ChannelGain$Builder;->b(Ljava/lang/Float;)Lltpb/ViewPreferences$ChannelGain$Builder;

    goto :goto_9

    .line 1163
    :pswitch_2f
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lltpb/ViewPreferences$ChannelGain$Builder;->g_b(Ljava/lang/Float;)Lltpb/ViewPreferences$ChannelGain$Builder;

    goto :goto_9

    .line 1162
    :pswitch_3b
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lltpb/ViewPreferences$ChannelGain$Builder;->g_r(Ljava/lang/Float;)Lltpb/ViewPreferences$ChannelGain$Builder;

    goto :goto_9

    .line 1161
    :pswitch_47
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p0, v2}, Lltpb/ViewPreferences$ChannelGain$Builder;->r(Ljava/lang/Float;)Lltpb/ViewPreferences$ChannelGain$Builder;

    goto :goto_9

    .line 1172
    :cond_53
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 1173
    invoke-virtual {p0}, Lltpb/ViewPreferences$ChannelGain$Builder;->build()Lltpb/ViewPreferences$ChannelGain;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_47
        :pswitch_3b
        :pswitch_2f
        :pswitch_23
    .end packed-switch
.end method

.method public bridge synthetic encode(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1132
    check-cast p2, Lltpb/ViewPreferences$ChannelGain;

    invoke-virtual {p0, p1, p2}, Lltpb/ViewPreferences$ChannelGain$ProtoAdapter_ChannelGain;->encode(Lcom/squareup/wire/ProtoWriter;Lltpb/ViewPreferences$ChannelGain;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lltpb/ViewPreferences$ChannelGain;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1148
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/ViewPreferences$ChannelGain;->r:Ljava/lang/Float;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1149
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/ViewPreferences$ChannelGain;->g_r:Ljava/lang/Float;

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1150
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/ViewPreferences$ChannelGain;->g_b:Ljava/lang/Float;

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1151
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/ViewPreferences$ChannelGain;->b:Ljava/lang/Float;

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 1152
    invoke-virtual {p2}, Lltpb/ViewPreferences$ChannelGain;->unknownFields()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 2

    .line 1132
    check-cast p1, Lltpb/ViewPreferences$ChannelGain;

    invoke-virtual {p0, p1}, Lltpb/ViewPreferences$ChannelGain$ProtoAdapter_ChannelGain;->encodedSize(Lltpb/ViewPreferences$ChannelGain;)I

    move-result p0

    return p0
.end method

.method public encodedSize(Lltpb/ViewPreferences$ChannelGain;)I
    .registers 5

    .line 1139
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p1, Lltpb/ViewPreferences$ChannelGain;->r:Ljava/lang/Float;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/ViewPreferences$ChannelGain;->g_r:Ljava/lang/Float;

    const/4 v2, 0x2

    .line 1140
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/ViewPreferences$ChannelGain;->g_b:Ljava/lang/Float;

    const/4 v2, 0x3

    .line 1141
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->FLOAT:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/ViewPreferences$ChannelGain;->b:Ljava/lang/Float;

    const/4 v2, 0x4

    .line 1142
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    .line 1143
    invoke-virtual {p1}, Lltpb/ViewPreferences$ChannelGain;->unknownFields()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1132
    check-cast p1, Lltpb/ViewPreferences$ChannelGain;

    invoke-virtual {p0, p1}, Lltpb/ViewPreferences$ChannelGain$ProtoAdapter_ChannelGain;->redact(Lltpb/ViewPreferences$ChannelGain;)Lltpb/ViewPreferences$ChannelGain;

    move-result-object p0

    return-object p0
.end method

.method public redact(Lltpb/ViewPreferences$ChannelGain;)Lltpb/ViewPreferences$ChannelGain;
    .registers 2

    .line 1178
    invoke-virtual {p1}, Lltpb/ViewPreferences$ChannelGain;->newBuilder()Lltpb/ViewPreferences$ChannelGain$Builder;

    move-result-object p0

    .line 1179
    invoke-virtual {p0}, Lltpb/ViewPreferences$ChannelGain$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 1180
    invoke-virtual {p0}, Lltpb/ViewPreferences$ChannelGain$Builder;->build()Lltpb/ViewPreferences$ChannelGain;

    move-result-object p0

    return-object p0
.end method
