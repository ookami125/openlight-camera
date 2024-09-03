.class public final Lltpb/GPSData$Track$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "GPSData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/GPSData$Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lltpb/GPSData$Track;",
        "Lltpb/GPSData$Track$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public ref:Lltpb/GPSData$ReferenceNorth;

.field public value:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 496
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .registers 1

    .line 491
    invoke-virtual {p0}, Lltpb/GPSData$Track$Builder;->build()Lltpb/GPSData$Track;

    move-result-object p0

    return-object p0
.end method

.method public build()Lltpb/GPSData$Track;
    .registers 4

    .line 514
    iget-object v0, p0, Lltpb/GPSData$Track$Builder;->value:Ljava/lang/Double;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lltpb/GPSData$Track$Builder;->ref:Lltpb/GPSData$ReferenceNorth;

    if-eqz v0, :cond_16

    .line 519
    new-instance v0, Lltpb/GPSData$Track;

    iget-object v1, p0, Lltpb/GPSData$Track$Builder;->value:Ljava/lang/Double;

    iget-object v2, p0, Lltpb/GPSData$Track$Builder;->ref:Lltpb/GPSData$ReferenceNorth;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lltpb/GPSData$Track;-><init>(Ljava/lang/Double;Lltpb/GPSData$ReferenceNorth;Lokio/ByteString;)V

    return-object v0

    :cond_16
    const/4 v0, 0x4

    .line 516
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lltpb/GPSData$Track$Builder;->value:Ljava/lang/Double;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "value"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object p0, p0, Lltpb/GPSData$Track$Builder;->ref:Lltpb/GPSData$ReferenceNorth;

    aput-object p0, v0, v1

    const/4 p0, 0x3

    const-string v1, "ref"

    aput-object v1, v0, p0

    invoke-static {v0}, Lcom/squareup/wire/internal/Internal;->missingRequiredFields([Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public ref(Lltpb/GPSData$ReferenceNorth;)Lltpb/GPSData$Track$Builder;
    .registers 2

    .line 508
    iput-object p1, p0, Lltpb/GPSData$Track$Builder;->ref:Lltpb/GPSData$ReferenceNorth;

    return-object p0
.end method

.method public value(Ljava/lang/Double;)Lltpb/GPSData$Track$Builder;
    .registers 2

    .line 503
    iput-object p1, p0, Lltpb/GPSData$Track$Builder;->value:Ljava/lang/Double;

    return-object p0
.end method
