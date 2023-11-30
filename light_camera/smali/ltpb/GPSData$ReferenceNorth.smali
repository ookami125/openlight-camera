.class public final enum Lltpb/GPSData$ReferenceNorth;
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
    name = "ReferenceNorth"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lltpb/GPSData$ReferenceNorth$ProtoAdapter_ReferenceNorth;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lltpb/GPSData$ReferenceNorth;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lltpb/GPSData$ReferenceNorth;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lltpb/GPSData$ReferenceNorth;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum REFERENCE_NORTH_MAGNETIC:Lltpb/GPSData$ReferenceNorth;

.field public static final enum REFERENCE_NORTH_TRUE:Lltpb/GPSData$ReferenceNorth;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 285
    new-instance v0, Lltpb/GPSData$ReferenceNorth;

    const-string v1, "REFERENCE_NORTH_MAGNETIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lltpb/GPSData$ReferenceNorth;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/GPSData$ReferenceNorth;->REFERENCE_NORTH_MAGNETIC:Lltpb/GPSData$ReferenceNorth;

    .line 287
    new-instance v0, Lltpb/GPSData$ReferenceNorth;

    const-string v1, "REFERENCE_NORTH_TRUE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lltpb/GPSData$ReferenceNorth;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/GPSData$ReferenceNorth;->REFERENCE_NORTH_TRUE:Lltpb/GPSData$ReferenceNorth;

    const/4 v0, 0x2

    .line 284
    new-array v0, v0, [Lltpb/GPSData$ReferenceNorth;

    sget-object v1, Lltpb/GPSData$ReferenceNorth;->REFERENCE_NORTH_MAGNETIC:Lltpb/GPSData$ReferenceNorth;

    aput-object v1, v0, v2

    sget-object v1, Lltpb/GPSData$ReferenceNorth;->REFERENCE_NORTH_TRUE:Lltpb/GPSData$ReferenceNorth;

    aput-object v1, v0, v3

    sput-object v0, Lltpb/GPSData$ReferenceNorth;->$VALUES:[Lltpb/GPSData$ReferenceNorth;

    .line 289
    new-instance v0, Lltpb/GPSData$ReferenceNorth$ProtoAdapter_ReferenceNorth;

    invoke-direct {v0}, Lltpb/GPSData$ReferenceNorth$ProtoAdapter_ReferenceNorth;-><init>()V

    sput-object v0, Lltpb/GPSData$ReferenceNorth;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 293
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 294
    iput p3, p0, Lltpb/GPSData$ReferenceNorth;->value:I

    return-void
.end method

.method public static fromValue(I)Lltpb/GPSData$ReferenceNorth;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 303
    :pswitch_0
    sget-object p0, Lltpb/GPSData$ReferenceNorth;->REFERENCE_NORTH_TRUE:Lltpb/GPSData$ReferenceNorth;

    return-object p0

    .line 302
    :pswitch_1
    sget-object p0, Lltpb/GPSData$ReferenceNorth;->REFERENCE_NORTH_MAGNETIC:Lltpb/GPSData$ReferenceNorth;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lltpb/GPSData$ReferenceNorth;
    .locals 1

    .line 284
    const-class v0, Lltpb/GPSData$ReferenceNorth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lltpb/GPSData$ReferenceNorth;

    return-object p0
.end method

.method public static values()[Lltpb/GPSData$ReferenceNorth;
    .locals 1

    .line 284
    sget-object v0, Lltpb/GPSData$ReferenceNorth;->$VALUES:[Lltpb/GPSData$ReferenceNorth;

    invoke-virtual {v0}, [Lltpb/GPSData$ReferenceNorth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lltpb/GPSData$ReferenceNorth;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    .line 310
    iget p0, p0, Lltpb/GPSData$ReferenceNorth;->value:I

    return p0
.end method
