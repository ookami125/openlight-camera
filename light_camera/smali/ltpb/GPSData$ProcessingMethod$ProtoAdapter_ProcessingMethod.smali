.class final Lltpb/GPSData$ProcessingMethod$ProtoAdapter_ProcessingMethod;
.super Lcom/squareup/wire/EnumAdapter;
.source "GPSData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/GPSData$ProcessingMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_ProcessingMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/EnumAdapter<",
        "Lltpb/GPSData$ProcessingMethod;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 406
    const-class v0, Lltpb/GPSData$ProcessingMethod;

    invoke-direct {p0, v0}, Lcom/squareup/wire/EnumAdapter;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic fromValue(I)Lcom/squareup/wire/WireEnum;
    .locals 0

    .line 404
    invoke-virtual {p0, p1}, Lltpb/GPSData$ProcessingMethod$ProtoAdapter_ProcessingMethod;->fromValue(I)Lltpb/GPSData$ProcessingMethod;

    move-result-object p0

    return-object p0
.end method

.method protected fromValue(I)Lltpb/GPSData$ProcessingMethod;
    .locals 0

    .line 411
    invoke-static {p1}, Lltpb/GPSData$ProcessingMethod;->fromValue(I)Lltpb/GPSData$ProcessingMethod;

    move-result-object p0

    return-object p0
.end method
