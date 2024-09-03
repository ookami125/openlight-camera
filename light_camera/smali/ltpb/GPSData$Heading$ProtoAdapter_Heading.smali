.class final Lltpb/GPSData$Heading$ProtoAdapter_Heading;
.super Lcom/squareup/wire/ProtoAdapter;
.source "GPSData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/GPSData$Heading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_Heading"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lltpb/GPSData$Heading;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 686
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lltpb/GPSData$Heading;

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

    .line 684
    invoke-virtual {p0, p1}, Lltpb/GPSData$Heading$ProtoAdapter_Heading;->decode(Lcom/squareup/wire/ProtoReader;)Lltpb/GPSData$Heading;

    move-result-object p0

    return-object p0
.end method

.method public decode(Lcom/squareup/wire/ProtoReader;)Lltpb/GPSData$Heading;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 705
    new-instance p0, Lltpb/GPSData$Heading$Builder;

    invoke-direct {p0}, Lltpb/GPSData$Heading$Builder;-><init>()V

    .line 706
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    .line 707
    :goto_9
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_49

    packed-switch v2, :pswitch_data_52

    .line 719
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v3

    .line 720
    invoke-virtual {v3}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    .line 721
    invoke-virtual {p0, v2, v3, v4}, Lltpb/GPSData$Heading$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_9

    .line 712
    :pswitch_23
    :try_start_23
    sget-object v3, Lltpb/GPSData$ReferenceNorth;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lltpb/GPSData$ReferenceNorth;

    invoke-virtual {p0, v3}, Lltpb/GPSData$Heading$Builder;->ref(Lltpb/GPSData$ReferenceNorth;)Lltpb/GPSData$Heading$Builder;
    :try_end_2e
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_9

    :catch_2f
    move-exception v3

    .line 714
    sget-object v4, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v3, v3, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v4, v3}, Lltpb/GPSData$Heading$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_9

    .line 709
    :pswitch_3d
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {p0, v2}, Lltpb/GPSData$Heading$Builder;->value(Ljava/lang/Double;)Lltpb/GPSData$Heading$Builder;

    goto :goto_9

    .line 725
    :cond_49
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 726
    invoke-virtual {p0}, Lltpb/GPSData$Heading$Builder;->build()Lltpb/GPSData$Heading;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_52
    .packed-switch 0x1
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

    .line 684
    check-cast p2, Lltpb/GPSData$Heading;

    invoke-virtual {p0, p1, p2}, Lltpb/GPSData$Heading$ProtoAdapter_Heading;->encode(Lcom/squareup/wire/ProtoWriter;Lltpb/GPSData$Heading;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lltpb/GPSData$Heading;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 698
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/GPSData$Heading;->value:Ljava/lang/Double;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 699
    sget-object p0, Lltpb/GPSData$ReferenceNorth;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/GPSData$Heading;->ref:Lltpb/GPSData$ReferenceNorth;

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 700
    invoke-virtual {p2}, Lltpb/GPSData$Heading;->unknownFields()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .registers 2

    .line 684
    check-cast p1, Lltpb/GPSData$Heading;

    invoke-virtual {p0, p1}, Lltpb/GPSData$Heading$ProtoAdapter_Heading;->encodedSize(Lltpb/GPSData$Heading;)I

    move-result p0

    return p0
.end method

.method public encodedSize(Lltpb/GPSData$Heading;)I
    .registers 5

    .line 691
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p1, Lltpb/GPSData$Heading;->value:Ljava/lang/Double;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p0

    sget-object v0, Lltpb/GPSData$ReferenceNorth;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/GPSData$Heading;->ref:Lltpb/GPSData$ReferenceNorth;

    const/4 v2, 0x2

    .line 692
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    .line 693
    invoke-virtual {p1}, Lltpb/GPSData$Heading;->unknownFields()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 684
    check-cast p1, Lltpb/GPSData$Heading;

    invoke-virtual {p0, p1}, Lltpb/GPSData$Heading$ProtoAdapter_Heading;->redact(Lltpb/GPSData$Heading;)Lltpb/GPSData$Heading;

    move-result-object p0

    return-object p0
.end method

.method public redact(Lltpb/GPSData$Heading;)Lltpb/GPSData$Heading;
    .registers 2

    .line 731
    invoke-virtual {p1}, Lltpb/GPSData$Heading;->newBuilder()Lltpb/GPSData$Heading$Builder;

    move-result-object p0

    .line 732
    invoke-virtual {p0}, Lltpb/GPSData$Heading$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 733
    invoke-virtual {p0}, Lltpb/GPSData$Heading$Builder;->build()Lltpb/GPSData$Heading;

    move-result-object p0

    return-object p0
.end method
