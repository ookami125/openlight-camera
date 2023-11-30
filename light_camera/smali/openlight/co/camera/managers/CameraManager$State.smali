.class public final enum Lopenlight/co/camera/managers/CameraManager$State;
.super Ljava/lang/Enum;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/managers/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/managers/CameraManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/managers/CameraManager$State;

.field public static final enum CLOSED:Lopenlight/co/camera/managers/CameraManager$State;

.field public static final enum CLOSING:Lopenlight/co/camera/managers/CameraManager$State;

.field public static final enum OPEN:Lopenlight/co/camera/managers/CameraManager$State;

.field public static final enum OPENING:Lopenlight/co/camera/managers/CameraManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 79
    new-instance v0, Lopenlight/co/camera/managers/CameraManager$State;

    const-string v1, "OPENING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/managers/CameraManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/CameraManager$State;->OPENING:Lopenlight/co/camera/managers/CameraManager$State;

    .line 80
    new-instance v0, Lopenlight/co/camera/managers/CameraManager$State;

    const-string v1, "OPEN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/managers/CameraManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/CameraManager$State;->OPEN:Lopenlight/co/camera/managers/CameraManager$State;

    .line 81
    new-instance v0, Lopenlight/co/camera/managers/CameraManager$State;

    const-string v1, "CLOSING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lopenlight/co/camera/managers/CameraManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/CameraManager$State;->CLOSING:Lopenlight/co/camera/managers/CameraManager$State;

    .line 82
    new-instance v0, Lopenlight/co/camera/managers/CameraManager$State;

    const-string v1, "CLOSED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lopenlight/co/camera/managers/CameraManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/CameraManager$State;->CLOSED:Lopenlight/co/camera/managers/CameraManager$State;

    const/4 v0, 0x4

    .line 78
    new-array v0, v0, [Lopenlight/co/camera/managers/CameraManager$State;

    sget-object v1, Lopenlight/co/camera/managers/CameraManager$State;->OPENING:Lopenlight/co/camera/managers/CameraManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/managers/CameraManager$State;->OPEN:Lopenlight/co/camera/managers/CameraManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/managers/CameraManager$State;->CLOSING:Lopenlight/co/camera/managers/CameraManager$State;

    aput-object v1, v0, v4

    sget-object v1, Lopenlight/co/camera/managers/CameraManager$State;->CLOSED:Lopenlight/co/camera/managers/CameraManager$State;

    aput-object v1, v0, v5

    sput-object v0, Lopenlight/co/camera/managers/CameraManager$State;->$VALUES:[Lopenlight/co/camera/managers/CameraManager$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/managers/CameraManager$State;
    .locals 1

    .line 78
    const-class v0, Lopenlight/co/camera/managers/CameraManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/CameraManager$State;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/managers/CameraManager$State;
    .locals 1

    .line 78
    sget-object v0, Lopenlight/co/camera/managers/CameraManager$State;->$VALUES:[Lopenlight/co/camera/managers/CameraManager$State;

    invoke-virtual {v0}, [Lopenlight/co/camera/managers/CameraManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/managers/CameraManager$State;

    return-object v0
.end method
