.class final Lltpb/GPSData$ReferenceNorth$ProtoAdapter_ReferenceNorth;
.super Lcom/squareup/wire/EnumAdapter;
.source "GPSData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/GPSData$ReferenceNorth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_ReferenceNorth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/EnumAdapter<",
        "Lltpb/GPSData$ReferenceNorth;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 315
    const-class v0, Lltpb/GPSData$ReferenceNorth;

    invoke-direct {p0, v0}, Lcom/squareup/wire/EnumAdapter;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic fromValue(I)Lcom/squareup/wire/WireEnum;
    .locals 0

    .line 313
    invoke-virtual {p0, p1}, Lltpb/GPSData$ReferenceNorth$ProtoAdapter_ReferenceNorth;->fromValue(I)Lltpb/GPSData$ReferenceNorth;

    move-result-object p0

    return-object p0
.end method

.method protected fromValue(I)Lltpb/GPSData$ReferenceNorth;
    .locals 0

    .line 320
    invoke-static {p1}, Lltpb/GPSData$ReferenceNorth;->fromValue(I)Lltpb/GPSData$ReferenceNorth;

    move-result-object p0

    return-object p0
.end method
