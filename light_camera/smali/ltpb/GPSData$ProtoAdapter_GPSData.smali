.class final Lltpb/GPSData$ProtoAdapter_GPSData;
.super Lcom/squareup/wire/ProtoAdapter;
.source "GPSData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/GPSData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_GPSData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lltpb/GPSData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 901
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lltpb/GPSData;

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

    .line 899
    invoke-virtual {p0, p1}, Lltpb/GPSData$ProtoAdapter_GPSData;->decode(Lcom/squareup/wire/ProtoReader;)Lltpb/GPSData;

    move-result-object p0

    return-object p0
.end method

.method public decode(Lcom/squareup/wire/ProtoReader;)Lltpb/GPSData;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 934
    new-instance p0, Lltpb/GPSData$Builder;

    invoke-direct {p0}, Lltpb/GPSData$Builder;-><init>()V

    .line 935
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    .line 936
    :goto_9
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_9f

    packed-switch v2, :pswitch_data_a8

    .line 955
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v3

    .line 956
    invoke-virtual {v3}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    .line 957
    invoke-virtual {p0, v2, v3, v4}, Lltpb/GPSData$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_9

    .line 948
    :pswitch_23
    :try_start_23
    sget-object v3, Lltpb/GPSData$ProcessingMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lltpb/GPSData$ProcessingMethod;

    invoke-virtual {p0, v3}, Lltpb/GPSData$Builder;->processing_method(Lltpb/GPSData$ProcessingMethod;)Lltpb/GPSData$Builder;
    :try_end_2e
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_9

    :catch_2f
    move-exception v3

    .line 950
    sget-object v4, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v3, v3, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v4, v3}, Lltpb/GPSData$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_9

    .line 945
    :pswitch_3d
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {p0, v2}, Lltpb/GPSData$Builder;->speed(Ljava/lang/Double;)Lltpb/GPSData$Builder;

    goto :goto_9

    .line 944
    :pswitch_49
    sget-object v2, Lltpb/GPSData$Altitude;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lltpb/GPSData$Altitude;

    invoke-virtual {p0, v2}, Lltpb/GPSData$Builder;->altitude(Lltpb/GPSData$Altitude;)Lltpb/GPSData$Builder;

    goto :goto_9

    .line 943
    :pswitch_55
    sget-object v2, Lltpb/GPSData$Heading;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lltpb/GPSData$Heading;

    invoke-virtual {p0, v2}, Lltpb/GPSData$Builder;->heading(Lltpb/GPSData$Heading;)Lltpb/GPSData$Builder;

    goto :goto_9

    .line 942
    :pswitch_61
    sget-object v2, Lltpb/GPSData$Track;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lltpb/GPSData$Track;

    invoke-virtual {p0, v2}, Lltpb/GPSData$Builder;->track(Lltpb/GPSData$Track;)Lltpb/GPSData$Builder;

    goto :goto_9

    .line 941
    :pswitch_6d
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {p0, v2}, Lltpb/GPSData$Builder;->dop(Ljava/lang/Double;)Lltpb/GPSData$Builder;

    goto :goto_9

    .line 940
    :pswitch_79
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p0, v2}, Lltpb/GPSData$Builder;->timestamp(Ljava/lang/Long;)Lltpb/GPSData$Builder;

    goto :goto_9

    .line 939
    :pswitch_85
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {p0, v2}, Lltpb/GPSData$Builder;->longitude(Ljava/lang/Double;)Lltpb/GPSData$Builder;

    goto/16 :goto_9

    .line 938
    :pswitch_92
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {p0, v2}, Lltpb/GPSData$Builder;->latitude(Ljava/lang/Double;)Lltpb/GPSData$Builder;

    goto/16 :goto_9

    .line 961
    :cond_9f
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 962
    invoke-virtual {p0}, Lltpb/GPSData$Builder;->build()Lltpb/GPSData;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_92
        :pswitch_85
        :pswitch_79
        :pswitch_6d
        :pswitch_61
        :pswitch_55
        :pswitch_49
        :pswitch_3d
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

    .line 899
    check-cast p2, Lltpb/GPSData;

    invoke-virtual {p0, p1, p2}, Lltpb/GPSData$ProtoAdapter_GPSData;->encode(Lcom/squareup/wire/ProtoWriter;Lltpb/GPSData;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lltpb/GPSData;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 920
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/GPSData;->latitude:Ljava/lang/Double;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 921
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/GPSData;->longitude:Ljava/lang/Double;

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 922
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/GPSData;->timestamp:Ljava/lang/Long;

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 923
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/GPSData;->dop:Ljava/lang/Double;

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 924
    sget-object p0, Lltpb/GPSData$Track;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/GPSData;->track:Lltpb/GPSData$Track;

    const/4 v1, 0x5

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 925
    sget-object p0, Lltpb/GPSData$Heading;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/GPSData;->heading:Lltpb/GPSData$Heading;

    const/4 v1, 0x6

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 926
    sget-object p0, Lltpb/GPSData$Altitude;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/GPSData;->altitude:Lltpb/GPSData$Altitude;

    const/4 v1, 0x7

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 927
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/GPSData;->speed:Ljava/lang/Double;

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 928
    sget-object p0, Lltpb/GPSData$ProcessingMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/GPSData;->processing_method:Lltpb/GPSData$ProcessingMethod;

    const/16 v1, 0x9

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 929
    invoke-virtual {p2}, Lltpb/GPSData;->unknownFields()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 2

    .line 899
    check-cast p1, Lltpb/GPSData;

    invoke-virtual {p0, p1}, Lltpb/GPSData$ProtoAdapter_GPSData;->encodedSize(Lltpb/GPSData;)I

    move-result p0

    return p0
.end method

.method public encodedSize(Lltpb/GPSData;)I
    .registers 5

    .line 906
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p1, Lltpb/GPSData;->latitude:Ljava/lang/Double;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/GPSData;->longitude:Ljava/lang/Double;

    const/4 v2, 0x2

    .line 907
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->UINT64:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/GPSData;->timestamp:Ljava/lang/Long;

    const/4 v2, 0x3

    .line 908
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/GPSData;->dop:Ljava/lang/Double;

    const/4 v2, 0x4

    .line 909
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    sget-object v0, Lltpb/GPSData$Track;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/GPSData;->track:Lltpb/GPSData$Track;

    const/4 v2, 0x5

    .line 910
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    sget-object v0, Lltpb/GPSData$Heading;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/GPSData;->heading:Lltpb/GPSData$Heading;

    const/4 v2, 0x6

    .line 911
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    sget-object v0, Lltpb/GPSData$Altitude;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/GPSData;->altitude:Lltpb/GPSData$Altitude;

    const/4 v2, 0x7

    .line 912
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/GPSData;->speed:Ljava/lang/Double;

    const/16 v2, 0x8

    .line 913
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    sget-object v0, Lltpb/GPSData$ProcessingMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/GPSData;->processing_method:Lltpb/GPSData$ProcessingMethod;

    const/16 v2, 0x9

    .line 914
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    .line 915
    invoke-virtual {p1}, Lltpb/GPSData;->unknownFields()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 899
    check-cast p1, Lltpb/GPSData;

    invoke-virtual {p0, p1}, Lltpb/GPSData$ProtoAdapter_GPSData;->redact(Lltpb/GPSData;)Lltpb/GPSData;

    move-result-object p0

    return-object p0
.end method

.method public redact(Lltpb/GPSData;)Lltpb/GPSData;
    .registers 3

    .line 967
    invoke-virtual {p1}, Lltpb/GPSData;->newBuilder()Lltpb/GPSData$Builder;

    move-result-object p0

    .line 968
    iget-object p1, p0, Lltpb/GPSData$Builder;->track:Lltpb/GPSData$Track;

    if-eqz p1, :cond_14

    sget-object p1, Lltpb/GPSData$Track;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p0, Lltpb/GPSData$Builder;->track:Lltpb/GPSData$Track;

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lltpb/GPSData$Track;

    iput-object p1, p0, Lltpb/GPSData$Builder;->track:Lltpb/GPSData$Track;

    .line 969
    :cond_14
    iget-object p1, p0, Lltpb/GPSData$Builder;->heading:Lltpb/GPSData$Heading;

    if-eqz p1, :cond_24

    sget-object p1, Lltpb/GPSData$Heading;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p0, Lltpb/GPSData$Builder;->heading:Lltpb/GPSData$Heading;

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lltpb/GPSData$Heading;

    iput-object p1, p0, Lltpb/GPSData$Builder;->heading:Lltpb/GPSData$Heading;

    .line 970
    :cond_24
    iget-object p1, p0, Lltpb/GPSData$Builder;->altitude:Lltpb/GPSData$Altitude;

    if-eqz p1, :cond_34

    sget-object p1, Lltpb/GPSData$Altitude;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p0, Lltpb/GPSData$Builder;->altitude:Lltpb/GPSData$Altitude;

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lltpb/GPSData$Altitude;

    iput-object p1, p0, Lltpb/GPSData$Builder;->altitude:Lltpb/GPSData$Altitude;

    .line 971
    :cond_34
    invoke-virtual {p0}, Lltpb/GPSData$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 972
    invoke-virtual {p0}, Lltpb/GPSData$Builder;->build()Lltpb/GPSData;

    move-result-object p0

    return-object p0
.end method
