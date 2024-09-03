.class public final enum Lltpb/GPSData$ProcessingMethod;
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
    name = "ProcessingMethod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lltpb/GPSData$ProcessingMethod$ProtoAdapter_ProcessingMethod;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lltpb/GPSData$ProcessingMethod;",
        ">;",
        "Lcom/squareup/wire/WireEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lltpb/GPSData$ProcessingMethod;

.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lltpb/GPSData$ProcessingMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PROCESSING_METHOD_CELLID:Lltpb/GPSData$ProcessingMethod;

.field public static final enum PROCESSING_METHOD_FUSED:Lltpb/GPSData$ProcessingMethod;

.field public static final enum PROCESSING_METHOD_GPS:Lltpb/GPSData$ProcessingMethod;

.field public static final enum PROCESSING_METHOD_MANUAL:Lltpb/GPSData$ProcessingMethod;

.field public static final enum PROCESSING_METHOD_UNKNOWN:Lltpb/GPSData$ProcessingMethod;

.field public static final enum PROCESSING_METHOD_WLAN:Lltpb/GPSData$ProcessingMethod;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 364
    new-instance v0, Lltpb/GPSData$ProcessingMethod;

    const-string v1, "PROCESSING_METHOD_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lltpb/GPSData$ProcessingMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/GPSData$ProcessingMethod;->PROCESSING_METHOD_UNKNOWN:Lltpb/GPSData$ProcessingMethod;

    .line 366
    new-instance v0, Lltpb/GPSData$ProcessingMethod;

    const-string v1, "PROCESSING_METHOD_GPS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lltpb/GPSData$ProcessingMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/GPSData$ProcessingMethod;->PROCESSING_METHOD_GPS:Lltpb/GPSData$ProcessingMethod;

    .line 368
    new-instance v0, Lltpb/GPSData$ProcessingMethod;

    const-string v1, "PROCESSING_METHOD_CELLID"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lltpb/GPSData$ProcessingMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/GPSData$ProcessingMethod;->PROCESSING_METHOD_CELLID:Lltpb/GPSData$ProcessingMethod;

    .line 370
    new-instance v0, Lltpb/GPSData$ProcessingMethod;

    const-string v1, "PROCESSING_METHOD_WLAN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lltpb/GPSData$ProcessingMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/GPSData$ProcessingMethod;->PROCESSING_METHOD_WLAN:Lltpb/GPSData$ProcessingMethod;

    .line 372
    new-instance v0, Lltpb/GPSData$ProcessingMethod;

    const-string v1, "PROCESSING_METHOD_MANUAL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lltpb/GPSData$ProcessingMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/GPSData$ProcessingMethod;->PROCESSING_METHOD_MANUAL:Lltpb/GPSData$ProcessingMethod;

    .line 374
    new-instance v0, Lltpb/GPSData$ProcessingMethod;

    const-string v1, "PROCESSING_METHOD_FUSED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lltpb/GPSData$ProcessingMethod;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lltpb/GPSData$ProcessingMethod;->PROCESSING_METHOD_FUSED:Lltpb/GPSData$ProcessingMethod;

    const/4 v0, 0x6

    .line 363
    new-array v0, v0, [Lltpb/GPSData$ProcessingMethod;

    sget-object v1, Lltpb/GPSData$ProcessingMethod;->PROCESSING_METHOD_UNKNOWN:Lltpb/GPSData$ProcessingMethod;

    aput-object v1, v0, v2

    sget-object v1, Lltpb/GPSData$ProcessingMethod;->PROCESSING_METHOD_GPS:Lltpb/GPSData$ProcessingMethod;

    aput-object v1, v0, v3

    sget-object v1, Lltpb/GPSData$ProcessingMethod;->PROCESSING_METHOD_CELLID:Lltpb/GPSData$ProcessingMethod;

    aput-object v1, v0, v4

    sget-object v1, Lltpb/GPSData$ProcessingMethod;->PROCESSING_METHOD_WLAN:Lltpb/GPSData$ProcessingMethod;

    aput-object v1, v0, v5

    sget-object v1, Lltpb/GPSData$ProcessingMethod;->PROCESSING_METHOD_MANUAL:Lltpb/GPSData$ProcessingMethod;

    aput-object v1, v0, v6

    sget-object v1, Lltpb/GPSData$ProcessingMethod;->PROCESSING_METHOD_FUSED:Lltpb/GPSData$ProcessingMethod;

    aput-object v1, v0, v7

    sput-object v0, Lltpb/GPSData$ProcessingMethod;->$VALUES:[Lltpb/GPSData$ProcessingMethod;

    .line 376
    new-instance v0, Lltpb/GPSData$ProcessingMethod$ProtoAdapter_ProcessingMethod;

    invoke-direct {v0}, Lltpb/GPSData$ProcessingMethod$ProtoAdapter_ProcessingMethod;-><init>()V

    sput-object v0, Lltpb/GPSData$ProcessingMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 380
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 381
    iput p3, p0, Lltpb/GPSData$ProcessingMethod;->value:I

    return-void
.end method

.method public static fromValue(I)Lltpb/GPSData$ProcessingMethod;
    .registers 1

    packed-switch p0, :pswitch_data_18

    const/4 p0, 0x0

    return-object p0

    .line 394
    :pswitch_5
    sget-object p0, Lltpb/GPSData$ProcessingMethod;->PROCESSING_METHOD_FUSED:Lltpb/GPSData$ProcessingMethod;

    return-object p0

    .line 393
    :pswitch_8
    sget-object p0, Lltpb/GPSData$ProcessingMethod;->PROCESSING_METHOD_MANUAL:Lltpb/GPSData$ProcessingMethod;

    return-object p0

    .line 392
    :pswitch_b
    sget-object p0, Lltpb/GPSData$ProcessingMethod;->PROCESSING_METHOD_WLAN:Lltpb/GPSData$ProcessingMethod;

    return-object p0

    .line 391
    :pswitch_e
    sget-object p0, Lltpb/GPSData$ProcessingMethod;->PROCESSING_METHOD_CELLID:Lltpb/GPSData$ProcessingMethod;

    return-object p0

    .line 390
    :pswitch_11
    sget-object p0, Lltpb/GPSData$ProcessingMethod;->PROCESSING_METHOD_GPS:Lltpb/GPSData$ProcessingMethod;

    return-object p0

    .line 389
    :pswitch_14
    sget-object p0, Lltpb/GPSData$ProcessingMethod;->PROCESSING_METHOD_UNKNOWN:Lltpb/GPSData$ProcessingMethod;

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lltpb/GPSData$ProcessingMethod;
    .registers 2

    .line 363
    const-class v0, Lltpb/GPSData$ProcessingMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lltpb/GPSData$ProcessingMethod;

    return-object p0
.end method

.method public static values()[Lltpb/GPSData$ProcessingMethod;
    .registers 1

    .line 363
    sget-object v0, Lltpb/GPSData$ProcessingMethod;->$VALUES:[Lltpb/GPSData$ProcessingMethod;

    invoke-virtual {v0}, [Lltpb/GPSData$ProcessingMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lltpb/GPSData$ProcessingMethod;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 401
    iget p0, p0, Lltpb/GPSData$ProcessingMethod;->value:I

    return p0
.end method
