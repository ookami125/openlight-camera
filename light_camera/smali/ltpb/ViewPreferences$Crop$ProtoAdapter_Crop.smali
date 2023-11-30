.class final Lltpb/ViewPreferences$Crop$ProtoAdapter_Crop;
.super Lcom/squareup/wire/ProtoAdapter;
.source "ViewPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/ViewPreferences$Crop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_Crop"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Lltpb/ViewPreferences$Crop;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 938
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    const-class v1, Lltpb/ViewPreferences$Crop;

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

    .line 936
    invoke-virtual {p0, p1}, Lltpb/ViewPreferences$Crop$ProtoAdapter_Crop;->decode(Lcom/squareup/wire/ProtoReader;)Lltpb/ViewPreferences$Crop;

    move-result-object p0

    return-object p0
.end method

.method public decode(Lcom/squareup/wire/ProtoReader;)Lltpb/ViewPreferences$Crop;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 957
    new-instance p0, Lltpb/ViewPreferences$Crop$Builder;

    invoke-direct {p0}, Lltpb/ViewPreferences$Crop$Builder;-><init>()V

    .line 958
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->beginMessage()J

    move-result-wide v0

    .line 959
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->nextTag()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 964
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->peekFieldEncoding()Lcom/squareup/wire/FieldEncoding;

    move-result-object v3

    .line 965
    invoke-virtual {v3}, Lcom/squareup/wire/FieldEncoding;->rawProtoAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v4

    .line 966
    invoke-virtual {p0, v2, v3, v4}, Lltpb/ViewPreferences$Crop$Builder;->addUnknownField(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)Lcom/squareup/wire/Message$Builder;

    goto :goto_0

    .line 962
    :pswitch_0
    sget-object v2, Lltpb/Point2F;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lltpb/Point2F;

    invoke-virtual {p0, v2}, Lltpb/ViewPreferences$Crop$Builder;->size(Lltpb/Point2F;)Lltpb/ViewPreferences$Crop$Builder;

    goto :goto_0

    .line 961
    :pswitch_1
    sget-object v2, Lltpb/Point2F;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2, p1}, Lcom/squareup/wire/ProtoAdapter;->decode(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lltpb/Point2F;

    invoke-virtual {p0, v2}, Lltpb/ViewPreferences$Crop$Builder;->start(Lltpb/Point2F;)Lltpb/ViewPreferences$Crop$Builder;

    goto :goto_0

    .line 970
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->endMessage(J)V

    .line 971
    invoke-virtual {p0}, Lltpb/ViewPreferences$Crop$Builder;->build()Lltpb/ViewPreferences$Crop;

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

    .line 936
    check-cast p2, Lltpb/ViewPreferences$Crop;

    invoke-virtual {p0, p1, p2}, Lltpb/ViewPreferences$Crop$ProtoAdapter_Crop;->encode(Lcom/squareup/wire/ProtoWriter;Lltpb/ViewPreferences$Crop;)V

    return-void
.end method

.method public encode(Lcom/squareup/wire/ProtoWriter;Lltpb/ViewPreferences$Crop;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 950
    sget-object p0, Lltpb/Point2F;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/ViewPreferences$Crop;->start:Lltpb/Point2F;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 951
    sget-object p0, Lltpb/Point2F;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p2, Lltpb/ViewPreferences$Crop;->size:Lltpb/Point2F;

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodeWithTag(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    .line 952
    invoke-virtual {p2}, Lltpb/ViewPreferences$Crop;->unknownFields()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoWriter;->writeBytes(Lokio/ByteString;)V

    return-void
.end method

.method public bridge synthetic encodedSize(Ljava/lang/Object;)I
    .locals 0

    .line 936
    check-cast p1, Lltpb/ViewPreferences$Crop;

    invoke-virtual {p0, p1}, Lltpb/ViewPreferences$Crop$ProtoAdapter_Crop;->encodedSize(Lltpb/ViewPreferences$Crop;)I

    move-result p0

    return p0
.end method

.method public encodedSize(Lltpb/ViewPreferences$Crop;)I
    .locals 3

    .line 943
    sget-object p0, Lltpb/Point2F;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p1, Lltpb/ViewPreferences$Crop;->start:Lltpb/Point2F;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result p0

    sget-object v0, Lltpb/Point2F;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v1, p1, Lltpb/ViewPreferences$Crop;->size:Lltpb/Point2F;

    const/4 v2, 0x2

    .line 944
    invoke-virtual {v0, v2, v1}, Lcom/squareup/wire/ProtoAdapter;->encodedSizeWithTag(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr p0, v0

    .line 945
    invoke-virtual {p1}, Lltpb/ViewPreferences$Crop;->unknownFields()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic redact(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 936
    check-cast p1, Lltpb/ViewPreferences$Crop;

    invoke-virtual {p0, p1}, Lltpb/ViewPreferences$Crop$ProtoAdapter_Crop;->redact(Lltpb/ViewPreferences$Crop;)Lltpb/ViewPreferences$Crop;

    move-result-object p0

    return-object p0
.end method

.method public redact(Lltpb/ViewPreferences$Crop;)Lltpb/ViewPreferences$Crop;
    .locals 1

    .line 976
    invoke-virtual {p1}, Lltpb/ViewPreferences$Crop;->newBuilder()Lltpb/ViewPreferences$Crop$Builder;

    move-result-object p0

    .line 977
    sget-object p1, Lltpb/Point2F;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p0, Lltpb/ViewPreferences$Crop$Builder;->start:Lltpb/Point2F;

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lltpb/Point2F;

    iput-object p1, p0, Lltpb/ViewPreferences$Crop$Builder;->start:Lltpb/Point2F;

    .line 978
    sget-object p1, Lltpb/Point2F;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    iget-object v0, p0, Lltpb/ViewPreferences$Crop$Builder;->size:Lltpb/Point2F;

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ProtoAdapter;->redact(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lltpb/Point2F;

    iput-object p1, p0, Lltpb/ViewPreferences$Crop$Builder;->size:Lltpb/Point2F;

    .line 979
    invoke-virtual {p0}, Lltpb/ViewPreferences$Crop$Builder;->clearUnknownFields()Lcom/squareup/wire/Message$Builder;

    .line 980
    invoke-virtual {p0}, Lltpb/ViewPreferences$Crop$Builder;->build()Lltpb/ViewPreferences$Crop;

    move-result-object p0

    return-object p0
.end method
