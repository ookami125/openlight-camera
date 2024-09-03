.class public final enum Lopenlight/co/camera/utils/CameraState$DeviceState;
.super Ljava/lang/Enum;
.source "CameraState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/utils/CameraState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/utils/CameraState$DeviceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/utils/CameraState$DeviceState;

.field public static final enum CLOSED:Lopenlight/co/camera/utils/CameraState$DeviceState;

.field public static final enum OPEN:Lopenlight/co/camera/utils/CameraState$DeviceState;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 26
    new-instance v0, Lopenlight/co/camera/utils/CameraState$DeviceState;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/utils/CameraState$DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/CameraState$DeviceState;->OPEN:Lopenlight/co/camera/utils/CameraState$DeviceState;

    .line 27
    new-instance v0, Lopenlight/co/camera/utils/CameraState$DeviceState;

    const-string v1, "CLOSED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/utils/CameraState$DeviceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/CameraState$DeviceState;->CLOSED:Lopenlight/co/camera/utils/CameraState$DeviceState;

    const/4 v0, 0x2

    .line 25
    new-array v0, v0, [Lopenlight/co/camera/utils/CameraState$DeviceState;

    sget-object v1, Lopenlight/co/camera/utils/CameraState$DeviceState;->OPEN:Lopenlight/co/camera/utils/CameraState$DeviceState;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/utils/CameraState$DeviceState;->CLOSED:Lopenlight/co/camera/utils/CameraState$DeviceState;

    aput-object v1, v0, v3

    sput-object v0, Lopenlight/co/camera/utils/CameraState$DeviceState;->$VALUES:[Lopenlight/co/camera/utils/CameraState$DeviceState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/utils/CameraState$DeviceState;
    .registers 2

    .line 25
    const-class v0, Lopenlight/co/camera/utils/CameraState$DeviceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/utils/CameraState$DeviceState;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/utils/CameraState$DeviceState;
    .registers 1

    .line 25
    sget-object v0, Lopenlight/co/camera/utils/CameraState$DeviceState;->$VALUES:[Lopenlight/co/camera/utils/CameraState$DeviceState;

    invoke-virtual {v0}, [Lopenlight/co/camera/utils/CameraState$DeviceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/utils/CameraState$DeviceState;

    return-object v0
.end method
