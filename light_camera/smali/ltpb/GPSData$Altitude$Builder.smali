.class public final Lltpb/GPSData$Altitude$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "GPSData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/GPSData$Altitude;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lltpb/GPSData$Altitude;",
        "Lltpb/GPSData$Altitude$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public ref:Lltpb/GPSData$ReferenceAltitude;

.field public value:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 818
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 0

    .line 813
    invoke-virtual {p0}, Lltpb/GPSData$Altitude$Builder;->build()Lltpb/GPSData$Altitude;

    move-result-object p0

    return-object p0
.end method

.method public build()Lltpb/GPSData$Altitude;
    .locals 3

    .line 836
    iget-object v0, p0, Lltpb/GPSData$Altitude$Builder;->value:Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lltpb/GPSData$Altitude$Builder;->ref:Lltpb/GPSData$ReferenceAltitude;

    if-eqz v0, :cond_0

    .line 841
    new-instance v0, Lltpb/GPSData$Altitude;

    iget-object v1, p0, Lltpb/GPSData$Altitude$Builder;->value:Ljava/lang/Double;

    iget-object v2, p0, Lltpb/GPSData$Altitude$Builder;->ref:Lltpb/GPSData$ReferenceAltitude;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lltpb/GPSData$Altitude;-><init>(Ljava/lang/Double;Lltpb/GPSData$ReferenceAltitude;Lokio/ByteString;)V

    return-object v0

    :cond_0
    const/4 v0, 0x4

    .line 838
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lltpb/GPSData$Altitude$Builder;->value:Ljava/lang/Double;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "value"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object p0, p0, Lltpb/GPSData$Altitude$Builder;->ref:Lltpb/GPSData$ReferenceAltitude;

    aput-object p0, v0, v1

    const/4 p0, 0x3

    const-string v1, "ref"

    aput-object v1, v0, p0

    invoke-static {v0}, Lcom/squareup/wire/internal/Internal;->missingRequiredFields([Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public ref(Lltpb/GPSData$ReferenceAltitude;)Lltpb/GPSData$Altitude$Builder;
    .locals 0

    .line 830
    iput-object p1, p0, Lltpb/GPSData$Altitude$Builder;->ref:Lltpb/GPSData$ReferenceAltitude;

    return-object p0
.end method

.method public value(Ljava/lang/Double;)Lltpb/GPSData$Altitude$Builder;
    .locals 0

    .line 825
    iput-object p1, p0, Lltpb/GPSData$Altitude$Builder;->value:Ljava/lang/Double;

    return-object p0
.end method
