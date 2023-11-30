.class public final Lltpb/GPSData$Track;
.super Lcom/squareup/wire/Message;
.source "GPSData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/GPSData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Track"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lltpb/GPSData$Track$ProtoAdapter_Track;,
        Lltpb/GPSData$Track$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lltpb/GPSData$Track;",
        "Lltpb/GPSData$Track$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lltpb/GPSData$Track;",
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
    .locals 2

    .line 417
    new-instance v0, Lltpb/GPSData$Track$ProtoAdapter_Track;

    invoke-direct {v0}, Lltpb/GPSData$Track$ProtoAdapter_Track;-><init>()V

    sput-object v0, Lltpb/GPSData$Track;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const-wide/16 v0, 0x0

    .line 421
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lltpb/GPSData$Track;->DEFAULT_VALUE:Ljava/lang/Double;

    .line 423
    sget-object v0, Lltpb/GPSData$ReferenceNorth;->REFERENCE_NORTH_MAGNETIC:Lltpb/GPSData$ReferenceNorth;

    sput-object v0, Lltpb/GPSData$Track;->DEFAULT_REF:Lltpb/GPSData$ReferenceNorth;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Lltpb/GPSData$ReferenceNorth;)V
    .locals 1

    .line 443
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-direct {p0, p1, p2, v0}, Lltpb/GPSData$Track;-><init>(Ljava/lang/Double;Lltpb/GPSData$ReferenceNorth;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Lltpb/GPSData$ReferenceNorth;Lokio/ByteString;)V
    .locals 1

    .line 447
    sget-object v0, Lltpb/GPSData$Track;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p3}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 448
    iput-object p1, p0, Lltpb/GPSData$Track;->value:Ljava/lang/Double;

    .line 449
    iput-object p2, p0, Lltpb/GPSData$Track;->ref:Lltpb/GPSData$ReferenceNorth;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 464
    :cond_0
    instance-of v1, p1, Lltpb/GPSData$Track;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 465
    :cond_1
    check-cast p1, Lltpb/GPSData$Track;

    .line 466
    invoke-virtual {p0}, Lltpb/GPSData$Track;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lltpb/GPSData$Track;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/GPSData$Track;->value:Ljava/lang/Double;

    iget-object v3, p1, Lltpb/GPSData$Track;->value:Ljava/lang/Double;

    .line 467
    invoke-virtual {v1, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lltpb/GPSData$Track;->ref:Lltpb/GPSData$ReferenceNorth;

    iget-object p1, p1, Lltpb/GPSData$Track;->ref:Lltpb/GPSData$ReferenceNorth;

    .line 468
    invoke-virtual {p0, p1}, Lltpb/GPSData$ReferenceNorth;->equals(Ljava/lang/Object;)Z

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

    .line 473
    iget v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    if-nez v0, :cond_0

    .line 475
    invoke-virtual {p0}, Lltpb/GPSData$Track;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 476
    iget-object v1, p0, Lltpb/GPSData$Track;->value:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 477
    iget-object v1, p0, Lltpb/GPSData$Track;->ref:Lltpb/GPSData$ReferenceNorth;

    invoke-virtual {v1}, Lltpb/GPSData$ReferenceNorth;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 478
    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 0

    .line 416
    invoke-virtual {p0}, Lltpb/GPSData$Track;->newBuilder()Lltpb/GPSData$Track$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilder()Lltpb/GPSData$Track$Builder;
    .locals 2

    .line 454
    new-instance v0, Lltpb/GPSData$Track$Builder;

    invoke-direct {v0}, Lltpb/GPSData$Track$Builder;-><init>()V

    .line 455
    iget-object v1, p0, Lltpb/GPSData$Track;->value:Ljava/lang/Double;

    iput-object v1, v0, Lltpb/GPSData$Track$Builder;->value:Ljava/lang/Double;

    .line 456
    iget-object v1, p0, Lltpb/GPSData$Track;->ref:Lltpb/GPSData$ReferenceNorth;

    iput-object v1, v0, Lltpb/GPSData$Track$Builder;->ref:Lltpb/GPSData$ReferenceNorth;

    .line 457
    invoke-virtual {p0}, Lltpb/GPSData$Track;->unknownFields()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lltpb/GPSData$Track$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", value="

    .line 486
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/GPSData$Track;->value:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ref="

    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lltpb/GPSData$Track;->ref:Lltpb/GPSData$ReferenceNorth;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "Track{"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 488
    invoke-virtual {v0, v1, v2, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
