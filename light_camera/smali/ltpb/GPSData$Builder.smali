.class public final Lltpb/GPSData$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "GPSData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/GPSData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lltpb/GPSData;",
        "Lltpb/GPSData$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public altitude:Lltpb/GPSData$Altitude;

.field public dop:Ljava/lang/Double;

.field public heading:Lltpb/GPSData$Heading;

.field public latitude:Ljava/lang/Double;

.field public longitude:Ljava/lang/Double;

.field public processing_method:Lltpb/GPSData$ProcessingMethod;

.field public speed:Ljava/lang/Double;

.field public timestamp:Ljava/lang/Long;

.field public track:Lltpb/GPSData$Track;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public altitude(Lltpb/GPSData$Altitude;)Lltpb/GPSData$Builder;
    .locals 0

    .line 258
    iput-object p1, p0, Lltpb/GPSData$Builder;->altitude:Lltpb/GPSData$Altitude;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 0

    .line 196
    invoke-virtual {p0}, Lltpb/GPSData$Builder;->build()Lltpb/GPSData;

    move-result-object p0

    return-object p0
.end method

.method public build()Lltpb/GPSData;
    .locals 12

    .line 280
    new-instance v11, Lltpb/GPSData;

    iget-object v1, p0, Lltpb/GPSData$Builder;->latitude:Ljava/lang/Double;

    iget-object v2, p0, Lltpb/GPSData$Builder;->longitude:Ljava/lang/Double;

    iget-object v3, p0, Lltpb/GPSData$Builder;->timestamp:Ljava/lang/Long;

    iget-object v4, p0, Lltpb/GPSData$Builder;->dop:Ljava/lang/Double;

    iget-object v5, p0, Lltpb/GPSData$Builder;->track:Lltpb/GPSData$Track;

    iget-object v6, p0, Lltpb/GPSData$Builder;->heading:Lltpb/GPSData$Heading;

    iget-object v7, p0, Lltpb/GPSData$Builder;->altitude:Lltpb/GPSData$Altitude;

    iget-object v8, p0, Lltpb/GPSData$Builder;->speed:Ljava/lang/Double;

    iget-object v9, p0, Lltpb/GPSData$Builder;->processing_method:Lltpb/GPSData$ProcessingMethod;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lltpb/GPSData;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Double;Lltpb/GPSData$Track;Lltpb/GPSData$Heading;Lltpb/GPSData$Altitude;Ljava/lang/Double;Lltpb/GPSData$ProcessingMethod;Lokio/ByteString;)V

    return-object v11
.end method

.method public dop(Ljava/lang/Double;)Lltpb/GPSData$Builder;
    .locals 0

    .line 243
    iput-object p1, p0, Lltpb/GPSData$Builder;->dop:Ljava/lang/Double;

    return-object p0
.end method

.method public heading(Lltpb/GPSData$Heading;)Lltpb/GPSData$Builder;
    .locals 0

    .line 253
    iput-object p1, p0, Lltpb/GPSData$Builder;->heading:Lltpb/GPSData$Heading;

    return-object p0
.end method

.method public latitude(Ljava/lang/Double;)Lltpb/GPSData$Builder;
    .locals 0

    .line 222
    iput-object p1, p0, Lltpb/GPSData$Builder;->latitude:Ljava/lang/Double;

    return-object p0
.end method

.method public longitude(Ljava/lang/Double;)Lltpb/GPSData$Builder;
    .locals 0

    .line 227
    iput-object p1, p0, Lltpb/GPSData$Builder;->longitude:Ljava/lang/Double;

    return-object p0
.end method

.method public processing_method(Lltpb/GPSData$ProcessingMethod;)Lltpb/GPSData$Builder;
    .locals 0

    .line 274
    iput-object p1, p0, Lltpb/GPSData$Builder;->processing_method:Lltpb/GPSData$ProcessingMethod;

    return-object p0
.end method

.method public speed(Ljava/lang/Double;)Lltpb/GPSData$Builder;
    .locals 0

    .line 266
    iput-object p1, p0, Lltpb/GPSData$Builder;->speed:Ljava/lang/Double;

    return-object p0
.end method

.method public timestamp(Ljava/lang/Long;)Lltpb/GPSData$Builder;
    .locals 0

    .line 235
    iput-object p1, p0, Lltpb/GPSData$Builder;->timestamp:Ljava/lang/Long;

    return-object p0
.end method

.method public track(Lltpb/GPSData$Track;)Lltpb/GPSData$Builder;
    .locals 0

    .line 248
    iput-object p1, p0, Lltpb/GPSData$Builder;->track:Lltpb/GPSData$Track;

    return-object p0
.end method
