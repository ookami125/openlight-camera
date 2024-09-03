.class final enum Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;
.super Ljava/lang/Enum;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/managers/zoom/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ZoomState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;

.field public static final enum IDLE:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;

.field public static final enum ZOOMING:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 50
    new-instance v0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;

    const-string v1, "ZOOMING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;->ZOOMING:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;

    .line 51
    new-instance v0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;

    const-string v1, "IDLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;->IDLE:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;

    const/4 v0, 0x2

    .line 49
    new-array v0, v0, [Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;

    sget-object v1, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;->ZOOMING:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;->IDLE:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;

    aput-object v1, v0, v3

    sput-object v0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;->$VALUES:[Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;
    .registers 2

    .line 49
    const-class v0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;
    .registers 1

    .line 49
    sget-object v0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;->$VALUES:[Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;

    invoke-virtual {v0}, [Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;

    return-object v0
.end method
