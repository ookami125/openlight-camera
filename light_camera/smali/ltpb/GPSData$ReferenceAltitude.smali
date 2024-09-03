.class public final enum Lltpb/GPSData$ReferenceAltitude;
.super Ljava/lang/Enum;
.source "GPSData.java"

# interfaces
.implements Lcom/squareup/wire/WireEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lltpb/GPSData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReferenceAltitude"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lltpb/GPSData$ReferenceAltitude$ProtoAdapter_ReferenceAltitude;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lltpb/GPSData$ReferenceAltitude;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lltpb/GPSData$ReferenceAltitude;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lltpb/GPSData$ReferenceAltitude;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum REFERENCE_ALTITUDE_SEA_LEVEL:Lltpb/GPSData$ReferenceAltitude;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 326
    new-instance v0, Lltpb/GPSData$ReferenceAltitude;

    const-string v1, "REFERENCE_ALTITUDE_SEA_LEVEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lltpb/GPSData$ReferenceAltitude;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/GPSData$ReferenceAltitude;->REFERENCE_ALTITUDE_SEA_LEVEL:Lltpb/GPSData$ReferenceAltitude;

    const/4 v0, 0x1

    .line 325
    new-array v0, v0, [Lltpb/GPSData$ReferenceAltitude;

    sget-object v1, Lltpb/GPSData$ReferenceAltitude;->REFERENCE_ALTITUDE_SEA_LEVEL:Lltpb/GPSData$ReferenceAltitude;

    aput-object v1, v0, v2

    sput-object v0, Lltpb/GPSData$ReferenceAltitude;->$VALUES:[Lltpb/GPSData$ReferenceAltitude;

    .line 328
    new-instance v0, Lltpb/GPSData$ReferenceAltitude$ProtoAdapter_ReferenceAltitude;

    invoke-direct {v0}, Lltpb/GPSData$ReferenceAltitude$ProtoAdapter_ReferenceAltitude;-><init>()V

    sput-object v0, Lltpb/GPSData$ReferenceAltitude;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 332
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 333
    iput p3, p0, Lltpb/GPSData$ReferenceAltitude;->value:I

    return-void
.end method

.method public static fromValue(I)Lltpb/GPSData$ReferenceAltitude;
    .registers 1

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 341
    :cond_4
    sget-object p0, Lltpb/GPSData$ReferenceAltitude;->REFERENCE_ALTITUDE_SEA_LEVEL:Lltpb/GPSData$ReferenceAltitude;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lltpb/GPSData$ReferenceAltitude;
    .registers 2

    .line 325
    const-class v0, Lltpb/GPSData$ReferenceAltitude;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lltpb/GPSData$ReferenceAltitude;

    return-object p0
.end method

.method public static values()[Lltpb/GPSData$ReferenceAltitude;
    .registers 1

    .line 325
    sget-object v0, Lltpb/GPSData$ReferenceAltitude;->$VALUES:[Lltpb/GPSData$ReferenceAltitude;

    invoke-virtual {v0}, [Lltpb/GPSData$ReferenceAltitude;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lltpb/GPSData$ReferenceAltitude;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 348
    iget p0, p0, Lltpb/GPSData$ReferenceAltitude;->value:I

    return p0
.end method
