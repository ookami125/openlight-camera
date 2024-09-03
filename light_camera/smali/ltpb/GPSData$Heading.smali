.class public final Lltpb/GPSData$Heading;
.super Lcom/squareup/wire/Message;
.source "GPSData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/GPSData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Heading"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lltpb/GPSData$Heading$ProtoAdapter_Heading;,
        Lltpb/GPSData$Heading$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lltpb/GPSData$Heading;",
        "Lltpb/GPSData$Heading$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lltpb/GPSData$Heading;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_REF:Lltpb/GPSData$ReferenceNorth;

.field public static final DEFAULT_VALUE:Ljava/lang/Double;

.field private static final serialVersionUID:J


# instance fields
.field public final ref:Lltpb/GPSData$ReferenceNorth;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "ltpb.GPSData$ReferenceNorth#ADAPTER"
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
    .registers 2

    .line 578
    new-instance v0, Lltpb/GPSData$Heading$ProtoAdapter_Heading;

    invoke-direct {v0}, Lltpb/GPSData$Heading$ProtoAdapter_Heading;-><init>()V

    sput-object v0, Lltpb/GPSData$Heading;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const-wide/16 v0, 0x0

    .line 582
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lltpb/GPSData$Heading;->DEFAULT_VALUE:Ljava/lang/Double;

    .line 584
    sget-object v0, Lltpb/GPSData$ReferenceNorth;->REFERENCE_NORTH_MAGNETIC:Lltpb/GPSData$ReferenceNorth;

    sput-object v0, Lltpb/GPSData$Heading;->DEFAULT_REF:Lltpb/GPSData$ReferenceNorth;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Lltpb/GPSData$ReferenceNorth;)V
    .registers 4

    .line 604
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-direct {p0, p1, p2, v0}, Lltpb/GPSData$Heading;-><init>(Ljava/lang/Double;Lltpb/GPSData$ReferenceNorth;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Lltpb/GPSData$ReferenceNorth;Lokio/ByteString;)V
    .registers 5

    .line 608
    sget-object v0, Lltpb/GPSData$Heading;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p3}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 609
    iput-object p1, p0, Lltpb/GPSData$Heading;->value:Ljava/lang/Double;

    .line 610
    iput-object p2, p0, Lltpb/GPSData$Heading;->ref:Lltpb/GPSData$ReferenceNorth;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 625
    :cond_4
    instance-of v1, p1, Lltpb/GPSData$Heading;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 626
    :cond_a
    check-cast p1, Lltpb/GPSData$Heading;

    .line 627
    invoke-virtual {p0}, Lltpb/GPSData$Heading;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lltpb/GPSData$Heading;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lltpb/GPSData$Heading;->value:Ljava/lang/Double;

    iget-object v3, p1, Lltpb/GPSData$Heading;->value:Ljava/lang/Double;

    .line 628
    invoke-virtual {v1, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object p0, p0, Lltpb/GPSData$Heading;->ref:Lltpb/GPSData$ReferenceNorth;

    iget-object p1, p1, Lltpb/GPSData$Heading;->ref:Lltpb/GPSData$ReferenceNorth;

    .line 629
    invoke-virtual {p0, p1}, Lltpb/GPSData$ReferenceNorth;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v2

    :goto_30
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 634
    iget v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    if-nez v0, :cond_20

    .line 636
    invoke-virtual {p0}, Lltpb/GPSData$Heading;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 637
    iget-object v1, p0, Lltpb/GPSData$Heading;->value:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 638
    iget-object v1, p0, Lltpb/GPSData$Heading;->ref:Lltpb/GPSData$ReferenceNorth;

    invoke-virtual {v1}, Lltpb/GPSData$ReferenceNorth;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 639
    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    :cond_20
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .registers 1

    .line 577
    invoke-virtual {p0}, Lltpb/GPSData$Heading;->newBuilder()Lltpb/GPSData$Heading$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilder()Lltpb/GPSData$Heading$Builder;
    .registers 3

    .line 615
    new-instance v0, Lltpb/GPSData$Heading$Builder;

    invoke-direct {v0}, Lltpb/GPSData$Heading$Builder;-><init>()V

    .line 616
    iget-object v1, p0, Lltpb/GPSData$Heading;->value:Ljava/lang/Double;

    iput-object v1, v0, Lltpb/GPSData$Heading$Builder;->value:Ljava/lang/Double;

    .line 617
    iget-object v1, p0, Lltpb/GPSData$Heading;->ref:Lltpb/GPSData$ReferenceNorth;

    iput-object v1, v0, Lltpb/GPSData$Heading$Builder;->ref:Lltpb/GPSData$ReferenceNorth;

    .line 618
    invoke-virtual {p0}, Lltpb/GPSData$Heading;->unknownFields()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lltpb/GPSData$Heading$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", value="

    .line 647
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/GPSData$Heading;->value:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ref="

    .line 648
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lltpb/GPSData$Heading;->ref:Lltpb/GPSData$ReferenceNorth;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "Heading{"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 649
    invoke-virtual {v0, v1, v2, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
