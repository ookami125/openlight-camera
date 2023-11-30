.class public final Lltpb/GPSData;
.super Lcom/squareup/wire/Message;
.source "GPSData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lltpb/GPSData$ProtoAdapter_GPSData;,
        Lltpb/GPSData$Altitude;,
        Lltpb/GPSData$Heading;,
        Lltpb/GPSData$Track;,
        Lltpb/GPSData$ProcessingMethod;,
        Lltpb/GPSData$ReferenceAltitude;,
        Lltpb/GPSData$ReferenceNorth;,
        Lltpb/GPSData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lltpb/GPSData;",
        "Lltpb/GPSData$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lltpb/GPSData;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_DOP:Ljava/lang/Double;

.field public static final DEFAULT_LATITUDE:Ljava/lang/Double;

.field public static final DEFAULT_LONGITUDE:Ljava/lang/Double;

.field public static final DEFAULT_PROCESSING_METHOD:Lltpb/GPSData$ProcessingMethod;

.field public static final DEFAULT_SPEED:Ljava/lang/Double;

.field public static final DEFAULT_TIMESTAMP:Ljava/lang/Long;

.field private static final serialVersionUID:J


# instance fields
.field public final altitude:Lltpb/GPSData$Altitude;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "ltpb.GPSData$Altitude#ADAPTER"
        tag = 0x7
    .end annotation
.end field

.field public final dop:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#DOUBLE"
        tag = 0x4
    .end annotation
.end field

.field public final heading:Lltpb/GPSData$Heading;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "ltpb.GPSData$Heading#ADAPTER"
        tag = 0x6
    .end annotation
.end field

.field public final latitude:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#DOUBLE"
        tag = 0x1
    .end annotation
.end field

.field public final longitude:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#DOUBLE"
        tag = 0x2
    .end annotation
.end field

.field public final processing_method:Lltpb/GPSData$ProcessingMethod;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "ltpb.GPSData$ProcessingMethod#ADAPTER"
        tag = 0x9
    .end annotation
.end field

.field public final speed:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#DOUBLE"
        tag = 0x8
    .end annotation
.end field

.field public final timestamp:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#UINT64"
        tag = 0x3
    .end annotation
.end field

.field public final track:Lltpb/GPSData$Track;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "ltpb.GPSData$Track#ADAPTER"
        tag = 0x5
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    new-instance v0, Lltpb/GPSData$ProtoAdapter_GPSData;

    invoke-direct {v0}, Lltpb/GPSData$ProtoAdapter_GPSData;-><init>()V

    sput-object v0, Lltpb/GPSData;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    const-wide/16 v0, 0x0

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    sput-object v2, Lltpb/GPSData;->DEFAULT_LATITUDE:Ljava/lang/Double;

    .line 30
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    sput-object v2, Lltpb/GPSData;->DEFAULT_LONGITUDE:Ljava/lang/Double;

    const-wide/16 v2, 0x0

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sput-object v2, Lltpb/GPSData;->DEFAULT_TIMESTAMP:Ljava/lang/Long;

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    sput-object v2, Lltpb/GPSData;->DEFAULT_DOP:Ljava/lang/Double;

    .line 36
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lltpb/GPSData;->DEFAULT_SPEED:Ljava/lang/Double;

    .line 38
    sget-object v0, Lltpb/GPSData$ProcessingMethod;->PROCESSING_METHOD_UNKNOWN:Lltpb/GPSData$ProcessingMethod;

    sput-object v0, Lltpb/GPSData;->DEFAULT_PROCESSING_METHOD:Lltpb/GPSData$ProcessingMethod;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Double;Lltpb/GPSData$Track;Lltpb/GPSData$Heading;Lltpb/GPSData$Altitude;Ljava/lang/Double;Lltpb/GPSData$ProcessingMethod;)V
    .locals 11

    .line 111
    sget-object v10, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lltpb/GPSData;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Double;Lltpb/GPSData$Track;Lltpb/GPSData$Heading;Lltpb/GPSData$Altitude;Ljava/lang/Double;Lltpb/GPSData$ProcessingMethod;Lokio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Long;Ljava/lang/Double;Lltpb/GPSData$Track;Lltpb/GPSData$Heading;Lltpb/GPSData$Altitude;Ljava/lang/Double;Lltpb/GPSData$ProcessingMethod;Lokio/ByteString;)V
    .locals 1

    .line 117
    sget-object v0, Lltpb/GPSData;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p10}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 118
    iput-object p1, p0, Lltpb/GPSData;->latitude:Ljava/lang/Double;

    .line 119
    iput-object p2, p0, Lltpb/GPSData;->longitude:Ljava/lang/Double;

    .line 120
    iput-object p3, p0, Lltpb/GPSData;->timestamp:Ljava/lang/Long;

    .line 121
    iput-object p4, p0, Lltpb/GPSData;->dop:Ljava/lang/Double;

    .line 122
    iput-object p5, p0, Lltpb/GPSData;->track:Lltpb/GPSData$Track;

    .line 123
    iput-object p6, p0, Lltpb/GPSData;->heading:Lltpb/GPSData$Heading;

    .line 124
    iput-object p7, p0, Lltpb/GPSData;->altitude:Lltpb/GPSData$Altitude;

    .line 125
    iput-object p8, p0, Lltpb/GPSData;->speed:Ljava/lang/Double;

    .line 126
    iput-object p9, p0, Lltpb/GPSData;->processing_method:Lltpb/GPSData$ProcessingMethod;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 148
    :cond_0
    instance-of v1, p1, Lltpb/GPSData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 149
    :cond_1
    check-cast p1, Lltpb/GPSData;

    .line 150
    invoke-virtual {p0}, Lltpb/GPSData;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {p1}, Lltpb/GPSData;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/GPSData;->latitude:Ljava/lang/Double;

    iget-object v3, p1, Lltpb/GPSData;->latitude:Ljava/lang/Double;

    .line 151
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/GPSData;->longitude:Ljava/lang/Double;

    iget-object v3, p1, Lltpb/GPSData;->longitude:Ljava/lang/Double;

    .line 152
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/GPSData;->timestamp:Ljava/lang/Long;

    iget-object v3, p1, Lltpb/GPSData;->timestamp:Ljava/lang/Long;

    .line 153
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/GPSData;->dop:Ljava/lang/Double;

    iget-object v3, p1, Lltpb/GPSData;->dop:Ljava/lang/Double;

    .line 154
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/GPSData;->track:Lltpb/GPSData$Track;

    iget-object v3, p1, Lltpb/GPSData;->track:Lltpb/GPSData$Track;

    .line 155
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/GPSData;->heading:Lltpb/GPSData$Heading;

    iget-object v3, p1, Lltpb/GPSData;->heading:Lltpb/GPSData$Heading;

    .line 156
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/GPSData;->altitude:Lltpb/GPSData$Altitude;

    iget-object v3, p1, Lltpb/GPSData;->altitude:Lltpb/GPSData$Altitude;

    .line 157
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/GPSData;->speed:Ljava/lang/Double;

    iget-object v3, p1, Lltpb/GPSData;->speed:Ljava/lang/Double;

    .line 158
    invoke-static {v1, v3}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lltpb/GPSData;->processing_method:Lltpb/GPSData$ProcessingMethod;

    iget-object p1, p1, Lltpb/GPSData;->processing_method:Lltpb/GPSData$ProcessingMethod;

    .line 159
    invoke-static {p0, p1}, Lcom/squareup/wire/internal/Internal;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 164
    iget v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    if-nez v0, :cond_9

    .line 166
    invoke-virtual {p0}, Lltpb/GPSData;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 167
    iget-object v1, p0, Lltpb/GPSData;->latitude:Ljava/lang/Double;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lltpb/GPSData;->latitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 168
    iget-object v1, p0, Lltpb/GPSData;->longitude:Ljava/lang/Double;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lltpb/GPSData;->longitude:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 169
    iget-object v1, p0, Lltpb/GPSData;->timestamp:Ljava/lang/Long;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lltpb/GPSData;->timestamp:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 170
    iget-object v1, p0, Lltpb/GPSData;->dop:Ljava/lang/Double;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lltpb/GPSData;->dop:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 171
    iget-object v1, p0, Lltpb/GPSData;->track:Lltpb/GPSData$Track;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lltpb/GPSData;->track:Lltpb/GPSData$Track;

    invoke-virtual {v1}, Lltpb/GPSData$Track;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 172
    iget-object v1, p0, Lltpb/GPSData;->heading:Lltpb/GPSData$Heading;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lltpb/GPSData;->heading:Lltpb/GPSData$Heading;

    invoke-virtual {v1}, Lltpb/GPSData$Heading;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 173
    iget-object v1, p0, Lltpb/GPSData;->altitude:Lltpb/GPSData$Altitude;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lltpb/GPSData;->altitude:Lltpb/GPSData$Altitude;

    invoke-virtual {v1}, Lltpb/GPSData$Altitude;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 174
    iget-object v1, p0, Lltpb/GPSData;->speed:Ljava/lang/Double;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lltpb/GPSData;->speed:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 175
    iget-object v1, p0, Lltpb/GPSData;->processing_method:Lltpb/GPSData$ProcessingMethod;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lltpb/GPSData;->processing_method:Lltpb/GPSData$ProcessingMethod;

    invoke-virtual {v1}, Lltpb/GPSData$ProcessingMethod;->hashCode()I

    move-result v2

    :cond_8
    add-int/2addr v0, v2

    .line 176
    iput v0, p0, Lcom/squareup/wire/Message;->hashCode:I

    :cond_9
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 0

    .line 23
    invoke-virtual {p0}, Lltpb/GPSData;->newBuilder()Lltpb/GPSData$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilder()Lltpb/GPSData$Builder;
    .locals 2

    .line 131
    new-instance v0, Lltpb/GPSData$Builder;

    invoke-direct {v0}, Lltpb/GPSData$Builder;-><init>()V

    .line 132
    iget-object v1, p0, Lltpb/GPSData;->latitude:Ljava/lang/Double;

    iput-object v1, v0, Lltpb/GPSData$Builder;->latitude:Ljava/lang/Double;

    .line 133
    iget-object v1, p0, Lltpb/GPSData;->longitude:Ljava/lang/Double;

    iput-object v1, v0, Lltpb/GPSData$Builder;->longitude:Ljava/lang/Double;

    .line 134
    iget-object v1, p0, Lltpb/GPSData;->timestamp:Ljava/lang/Long;

    iput-object v1, v0, Lltpb/GPSData$Builder;->timestamp:Ljava/lang/Long;

    .line 135
    iget-object v1, p0, Lltpb/GPSData;->dop:Ljava/lang/Double;

    iput-object v1, v0, Lltpb/GPSData$Builder;->dop:Ljava/lang/Double;

    .line 136
    iget-object v1, p0, Lltpb/GPSData;->track:Lltpb/GPSData$Track;

    iput-object v1, v0, Lltpb/GPSData$Builder;->track:Lltpb/GPSData$Track;

    .line 137
    iget-object v1, p0, Lltpb/GPSData;->heading:Lltpb/GPSData$Heading;

    iput-object v1, v0, Lltpb/GPSData$Builder;->heading:Lltpb/GPSData$Heading;

    .line 138
    iget-object v1, p0, Lltpb/GPSData;->altitude:Lltpb/GPSData$Altitude;

    iput-object v1, v0, Lltpb/GPSData$Builder;->altitude:Lltpb/GPSData$Altitude;

    .line 139
    iget-object v1, p0, Lltpb/GPSData;->speed:Ljava/lang/Double;

    iput-object v1, v0, Lltpb/GPSData$Builder;->speed:Ljava/lang/Double;

    .line 140
    iget-object v1, p0, Lltpb/GPSData;->processing_method:Lltpb/GPSData$ProcessingMethod;

    iput-object v1, v0, Lltpb/GPSData$Builder;->processing_method:Lltpb/GPSData$ProcessingMethod;

    .line 141
    invoke-virtual {p0}, Lltpb/GPSData;->unknownFields()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lltpb/GPSData$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    iget-object v1, p0, Lltpb/GPSData;->latitude:Ljava/lang/Double;

    if-eqz v1, :cond_0

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/GPSData;->latitude:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    :cond_0
    iget-object v1, p0, Lltpb/GPSData;->longitude:Ljava/lang/Double;

    if-eqz v1, :cond_1

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/GPSData;->longitude:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    :cond_1
    iget-object v1, p0, Lltpb/GPSData;->timestamp:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/GPSData;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    :cond_2
    iget-object v1, p0, Lltpb/GPSData;->dop:Ljava/lang/Double;

    if-eqz v1, :cond_3

    const-string v1, ", dop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/GPSData;->dop:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    :cond_3
    iget-object v1, p0, Lltpb/GPSData;->track:Lltpb/GPSData$Track;

    if-eqz v1, :cond_4

    const-string v1, ", track="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/GPSData;->track:Lltpb/GPSData$Track;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    :cond_4
    iget-object v1, p0, Lltpb/GPSData;->heading:Lltpb/GPSData$Heading;

    if-eqz v1, :cond_5

    const-string v1, ", heading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/GPSData;->heading:Lltpb/GPSData$Heading;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    :cond_5
    iget-object v1, p0, Lltpb/GPSData;->altitude:Lltpb/GPSData$Altitude;

    if-eqz v1, :cond_6

    const-string v1, ", altitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/GPSData;->altitude:Lltpb/GPSData$Altitude;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    :cond_6
    iget-object v1, p0, Lltpb/GPSData;->speed:Ljava/lang/Double;

    if-eqz v1, :cond_7

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lltpb/GPSData;->speed:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    :cond_7
    iget-object v1, p0, Lltpb/GPSData;->processing_method:Lltpb/GPSData$ProcessingMethod;

    if-eqz v1, :cond_8

    const-string v1, ", processing_method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lltpb/GPSData;->processing_method:Lltpb/GPSData$ProcessingMethod;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8
    const/4 p0, 0x0

    const/4 v1, 0x2

    const-string v2, "GPSData{"

    .line 193
    invoke-virtual {v0, p0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
