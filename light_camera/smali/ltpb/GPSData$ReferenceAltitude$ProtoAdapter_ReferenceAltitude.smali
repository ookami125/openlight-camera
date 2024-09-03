.class final Lltpb/GPSData$ReferenceAltitude$ProtoAdapter_ReferenceAltitude;
.super Lcom/squareup/wire/EnumAdapter;
.source "GPSData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/GPSData$ReferenceAltitude;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_ReferenceAltitude"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/EnumAdapter<",
        "Lltpb/GPSData$ReferenceAltitude;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 353
    const-class v0, Lltpb/GPSData$ReferenceAltitude;

    invoke-direct {p0, v0}, Lcom/squareup/wire/EnumAdapter;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic fromValue(I)Lcom/squareup/wire/WireEnum;
    .registers 2

    .line 351
    invoke-virtual {p0, p1}, Lltpb/GPSData$ReferenceAltitude$ProtoAdapter_ReferenceAltitude;->fromValue(I)Lltpb/GPSData$ReferenceAltitude;

    move-result-object p0

    return-object p0
.end method

.method protected fromValue(I)Lltpb/GPSData$ReferenceAltitude;
    .registers 2

    .line 358
    invoke-static {p1}, Lltpb/GPSData$ReferenceAltitude;->fromValue(I)Lltpb/GPSData$ReferenceAltitude;

    move-result-object p0

    return-object p0
.end method
