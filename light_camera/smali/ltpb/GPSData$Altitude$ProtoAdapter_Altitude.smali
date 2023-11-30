.class final Lltpb/GPSData$Altitude$ProtoAdapter_Altitude;
.super Lcom/squareup/wire/ProtoAdapter;
.source "GPSData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/GPSData$Altitude;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_Altitude"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lltpb/GPSData$Altitude;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 847
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lltpb/GPSData$Altitude;

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

    .line 845
    invoke-virtual {p0, p1}, Lltpb/GPSData$Altitude$ProtoAdapter_Altitude;->decode(Lcom/squareup/wire/ProtoReader;)Lltpb/GPSData$Altitude;

    move-result-object p0

    return-object p0
.end method

.method public decode(Lcom/squareup/wire/ProtoReader;)Lltpb/GPSData$Altitude;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 866
    new-instance p0, Lltpb/GPSData$Altitude$Builder;

    invoke-direct {p0}, Lltpb/GPSData$Altitude$Builder;-><init>()V

    .line 867
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    .line 868
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 880
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v3

    .line 881
    invoke-virtual {v3}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    .line 882
    invoke-virtual {p0, v2, v3, v4}, Lltpb/GPSData$Altitude$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 873
    :pswitch_0
    :try_start_0
    sget-object v3, Lltpb/GPSData$ReferenceAltitude;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lltpb/GPSData$ReferenceAltitude;

    invoke-virtual {p0, v3}, Lltpb/GPSData$Altitude$Builder;->ref(Lltpb/GPSData$ReferenceAltitude;)Lltpb/GPSData$Altitude$Builder;
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 875
    sget-object v4, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v3, v3, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v4, v3}, Lltpb/GPSData$Altitude$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 870
    :pswitch_1
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {p0, v2}, Lltpb/GPSData$Altitude$Builder;->value(Ljava/lang/Double;)Lltpb/GPSData$Altitude$Builder;

    goto :goto_0

    .line 886
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 887
    invoke-virtual {p0}, Lltpb/GPSData$Altitude$Builder;->build()Lltpb/GPSData$Altitude;

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

    .line 845
    check-cast p2, Lltpb/GPSData$Altitude;

    invoke-virtual {p0, p1, p2}, Lltpb/GPSData$Altitude$ProtoAdapter_Altitude;->encode(Lcom/squareup/wire/ProtoWriter;Lltpb/GPSData$Altitude;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lltpb/GPSData$Altitude;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 859
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/GPSData$Altitude;->value:Ljava/lang/Double;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 860
    sget-object p0, Lltpb/GPSData$ReferenceAltitude;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/GPSData$Altitude;->ref:Lltpb/GPSData$ReferenceAltitude;

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 861
    invoke-virtual {p2}, Lltpb/GPSData$Altitude;->unknownFields()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 845
    check-cast p1, Lltpb/GPSData$Altitude;

    invoke-virtual {p0, p1}, Lltpb/GPSData$Altitude$ProtoAdapter_Altitude;->encodedSize(Lltpb/GPSData$Altitude;)I

    move-result p0

    return p0
.end method

.method public encodedSize(Lltpb/GPSData$Altitude;)I
    .locals 3

    .line 852
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p1, Lltpb/GPSData$Altitude;->value:Ljava/lang/Double;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p0

    sget-object v0, Lltpb/GPSData$ReferenceAltitude;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/GPSData$Altitude;->ref:Lltpb/GPSData$ReferenceAltitude;

    const/4 v2, 0x2

    .line 853
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    .line 854
    invoke-virtual {p1}, Lltpb/GPSData$Altitude;->unknownFields()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 845
    check-cast p1, Lltpb/GPSData$Altitude;

    invoke-virtual {p0, p1}, Lltpb/GPSData$Altitude$ProtoAdapter_Altitude;->redact(Lltpb/GPSData$Altitude;)Lltpb/GPSData$Altitude;

    move-result-object p0

    return-object p0
.end method

.method public redact(Lltpb/GPSData$Altitude;)Lltpb/GPSData$Altitude;
    .locals 0

    .line 892
    invoke-virtual {p1}, Lltpb/GPSData$Altitude;->newBuilder()Lltpb/GPSData$Altitude$Builder;

    move-result-object p0

    .line 893
    invoke-virtual {p0}, Lltpb/GPSData$Altitude$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 894
    invoke-virtual {p0}, Lltpb/GPSData$Altitude$Builder;->build()Lltpb/GPSData$Altitude;

    move-result-object p0

    return-object p0
.end method
