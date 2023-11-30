.class final Lltpb/GPSData$Track$ProtoAdapter_Track;
.super Lcom/squareup/wire/ProtoAdapter;
.source "GPSData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/GPSData$Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_Track"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lltpb/GPSData$Track;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 525
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lltpb/GPSData$Track;

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

    .line 523
    invoke-virtual {p0, p1}, Lltpb/GPSData$Track$ProtoAdapter_Track;->decode(Lcom/squareup/wire/ProtoReader;)Lltpb/GPSData$Track;

    move-result-object p0

    return-object p0
.end method

.method public decode(Lcom/squareup/wire/ProtoReader;)Lltpb/GPSData$Track;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    new-instance p0, Lltpb/GPSData$Track$Builder;

    invoke-direct {p0}, Lltpb/GPSData$Track$Builder;-><init>()V

    .line 545
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    .line 546
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 558
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v3

    .line 559
    invoke-virtual {v3}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    .line 560
    invoke-virtual {p0, v2, v3, v4}, Lltpb/GPSData$Track$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 551
    :pswitch_0
    :try_start_0
    sget-object v3, Lltpb/GPSData$ReferenceNorth;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lltpb/GPSData$ReferenceNorth;

    invoke-virtual {p0, v3}, Lltpb/GPSData$Track$Builder;->ref(Lltpb/GPSData$ReferenceNorth;)Lltpb/GPSData$Track$Builder;
    :try_end_0
    .catch Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 553
    sget-object v4, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iget v3, v3, Lcom/squareup/wire/ProtoAdapter$EnumConstantNotFoundException;->value:I

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v4, v3}, Lltpb/GPSData$Track$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 548
    :pswitch_1
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {p0, v2}, Lltpb/GPSData$Track$Builder;->value(Ljava/lang/Double;)Lltpb/GPSData$Track$Builder;

    goto :goto_0

    .line 564
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 565
    invoke-virtual {p0}, Lltpb/GPSData$Track$Builder;->build()Lltpb/GPSData$Track;

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

    .line 523
    check-cast p2, Lltpb/GPSData$Track;

    invoke-virtual {p0, p1, p2}, Lltpb/GPSData$Track$ProtoAdapter_Track;->encode(Lcom/squareup/wire/ProtoWriter;Lltpb/GPSData$Track;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lltpb/GPSData$Track;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/GPSData$Track;->value:Ljava/lang/Double;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 538
    sget-object p0, Lltpb/GPSData$ReferenceNorth;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/GPSData$Track;->ref:Lltpb/GPSData$ReferenceNorth;

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 539
    invoke-virtual {p2}, Lltpb/GPSData$Track;->unknownFields()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 523
    check-cast p1, Lltpb/GPSData$Track;

    invoke-virtual {p0, p1}, Lltpb/GPSData$Track$ProtoAdapter_Track;->encodedSize(Lltpb/GPSData$Track;)I

    move-result p0

    return p0
.end method

.method public encodedSize(Lltpb/GPSData$Track;)I
    .locals 3

    .line 530
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->DOUBLE:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p1, Lltpb/GPSData$Track;->value:Ljava/lang/Double;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p0

    sget-object v0, Lltpb/GPSData$ReferenceNorth;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/GPSData$Track;->ref:Lltpb/GPSData$ReferenceNorth;

    const/4 v2, 0x2

    .line 531
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    .line 532
    invoke-virtual {p1}, Lltpb/GPSData$Track;->unknownFields()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 523
    check-cast p1, Lltpb/GPSData$Track;

    invoke-virtual {p0, p1}, Lltpb/GPSData$Track$ProtoAdapter_Track;->redact(Lltpb/GPSData$Track;)Lltpb/GPSData$Track;

    move-result-object p0

    return-object p0
.end method

.method public redact(Lltpb/GPSData$Track;)Lltpb/GPSData$Track;
    .locals 0

    .line 570
    invoke-virtual {p1}, Lltpb/GPSData$Track;->newBuilder()Lltpb/GPSData$Track$Builder;

    move-result-object p0

    .line 571
    invoke-virtual {p0}, Lltpb/GPSData$Track$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 572
    invoke-virtual {p0}, Lltpb/GPSData$Track$Builder;->build()Lltpb/GPSData$Track;

    move-result-object p0

    return-object p0
.end method
