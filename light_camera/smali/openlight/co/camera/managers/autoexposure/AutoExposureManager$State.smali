.class public final enum Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;
.super Ljava/lang/Enum;
.source "AutoExposureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

.field public static final enum IDLE:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

.field public static final enum LOCKED:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

.field public static final enum METERING:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 49
    new-instance v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;->IDLE:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    .line 50
    new-instance v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    const-string v1, "METERING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;->METERING:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    .line 51
    new-instance v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    const-string v1, "LOCKED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;->LOCKED:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    const/4 v0, 0x3

    .line 48
    new-array v0, v0, [Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    sget-object v1, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;->IDLE:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;->METERING:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;->LOCKED:Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    aput-object v1, v0, v4

    sput-object v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;->$VALUES:[Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;
    .locals 1

    .line 48
    const-class v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;
    .locals 1

    .line 48
    sget-object v0, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;->$VALUES:[Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    invoke-virtual {v0}, [Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/managers/autoexposure/AutoExposureManager$State;

    return-object v0
.end method
