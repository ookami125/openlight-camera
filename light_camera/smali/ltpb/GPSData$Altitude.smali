.class public final Lltpb/GPSData$Altitude;
.super Lcom/squareup/wire/Message;
.source "GPSData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/GPSData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Altitude"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lltpb/GPSData$Altitude$ProtoAdapter_Altitude;,
        Lltpb/GPSData$Altitude$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lltpb/GPSData$Altitude;",
        "Lltpb/GPSData$Altitude$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lltpb/GPSData$Altitude;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_REF:Lltpb/GPSData$ReferenceAltitude;

.field public static final DEFAULT_VALUE:Ljava/lang/Double;

.field private static final serialVersionUID:J


# instance fields
.field public final ref:Lltpb/GPSData$ReferenceAltitude;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "ltpb.GPSData$ReferenceAltitude#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->REQUIRED:Lcom/squareup/wire/WireField$Label;
        tag = 0x2
    .end annotation
.end field

.field public final value:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#DOUBLE"
        label = .enum Lcom/squareup/wire/WireField$Label;->REQUIRED:Lcom/squareup/wire/WireField$Label;
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 739
    new-instance v0, Lltpb/GPSData$Altitude$ProtoAdapter_Altitude;

    invoke-direct {v0}, Lltpb/GPSData$Altitude$ProtoAdapter_Altitude;-><init>()V

    sput-object v0, Lltpb/GPSData$Altitude;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const-wide/16 v0, 0x0

    .line 743
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lltpb/GPSData$Altitude;->DEFAULT_VALUE:Ljava/lang/Double;

    .line 745
    sget-object v0, Lltpb/GPSData$ReferenceAltitude;->REFERENCE_ALTITUDE_SEA_LEVEL:Lltpb/GPSData$ReferenceAltitude;

    sput-object v0, Lltpb/GPSData$Altitude;->DEFAULT_REF:Lltpb/GPSData$ReferenceAltitude;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Lltpb/GPSData$ReferenceAltitude;)V
    .locals 1

    .line 765
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-direct {p0, p1, p2, v0}, Lltpb/GPSData$Altitude;-><init>(Ljava/lang/Double;Lltpb/GPSData$ReferenceAltitude;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Lltpb/GPSData$ReferenceAltitude;Lokio/ByteString;)V
    .locals 1

    .line 769
    sget-object v0, Lltpb/GPSData$Altitude;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p3}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 770
    iput-object p1, p0, Lltpb/GPSData$Altitude;->value:Ljava/lang/Double;

    .line 771
    iput-object p2, p0, Lltpb/GPSData$Altitude;->ref:Lltpb/GPSData$ReferenceAltitude;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 786
    :cond_0
    instance-of v1, p1, Lltpb/GPSData$Altitude;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 787
    :cond_1
    check-cast p1, Lltpb/GPSData$Altitude;

    .line 788
    invoke-virtual {p0}, Lltpb/GPSData$Altitude;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lltpb/GPSData$Altitude;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/GPSData$Altitude;->value:Ljava/lang/Double;

    iget-object v3, p1, Lltpb/GPSData$Altitude;->value:Ljava/lang/Double;

    .line 789
    invoke-virtual {v1, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lltpb/GPSData$Altitude;->ref:Lltpb/GPSData$ReferenceAltitude;

    iget-object p1, p1, Lltpb/GPSData$Altitude;->ref:Lltpb/GPSData$ReferenceAltitude;

    .line 790
    invoke-virtual {p0, p1}, Lltpb/GPSData$ReferenceAltitude;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 795
    iget v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    if-nez v0, :cond_0

    .line 797
    invoke-virtual {p0}, Lltpb/GPSData$Altitude;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 798
    iget-object v1, p0, Lltpb/GPSData$Altitude;->value:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 799
    iget-object v1, p0, Lltpb/GPSData$Altitude;->ref:Lltpb/GPSData$ReferenceAltitude;

    invoke-virtual {v1}, Lltpb/GPSData$ReferenceAltitude;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 800
    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 0

    .line 738
    invoke-virtual {p0}, Lltpb/GPSData$Altitude;->newBuilder()Lltpb/GPSData$Altitude$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilder()Lltpb/GPSData$Altitude$Builder;
    .locals 2

    .line 776
    new-instance v0, Lltpb/GPSData$Altitude$Builder;

    invoke-direct {v0}, Lltpb/GPSData$Altitude$Builder;-><init>()V

    .line 777
    iget-object v1, p0, Lltpb/GPSData$Altitude;->value:Ljava/lang/Double;

    iput-object v1, v0, Lltpb/GPSData$Altitude$Builder;->value:Ljava/lang/Double;

    .line 778
    iget-object v1, p0, Lltpb/GPSData$Altitude;->ref:Lltpb/GPSData$ReferenceAltitude;

    iput-object v1, v0, Lltpb/GPSData$Altitude$Builder;->ref:Lltpb/GPSData$ReferenceAltitude;

    .line 779
    invoke-virtual {p0}, Lltpb/GPSData$Altitude;->unknownFields()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lltpb/GPSData$Altitude$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", value="

    .line 808
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/GPSData$Altitude;->value:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ref="

    .line 809
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lltpb/GPSData$Altitude;->ref:Lltpb/GPSData$ReferenceAltitude;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "Altitude{"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 810
    invoke-virtual {v0, v1, v2, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
