.class public final enum Lopenlight/co/camera/managers/capture/CaptureManager$State;
.super Ljava/lang/Enum;
.source "CaptureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/managers/capture/CaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/managers/capture/CaptureManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/managers/capture/CaptureManager$State;

.field public static final enum CAPTURING:Lopenlight/co/camera/managers/capture/CaptureManager$State;

.field public static final enum IDLE:Lopenlight/co/camera/managers/capture/CaptureManager$State;

.field public static final enum PRE_CAPTURE_PROCESSING:Lopenlight/co/camera/managers/capture/CaptureManager$State;

.field public static final enum QUEUED_CAPTURE:Lopenlight/co/camera/managers/capture/CaptureManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 71
    new-instance v0, Lopenlight/co/camera/managers/capture/CaptureManager$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/managers/capture/CaptureManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/capture/CaptureManager$State;->IDLE:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    .line 72
    new-instance v0, Lopenlight/co/camera/managers/capture/CaptureManager$State;

    const-string v1, "QUEUED_CAPTURE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/managers/capture/CaptureManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/capture/CaptureManager$State;->QUEUED_CAPTURE:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    .line 73
    new-instance v0, Lopenlight/co/camera/managers/capture/CaptureManager$State;

    const-string v1, "PRE_CAPTURE_PROCESSING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lopenlight/co/camera/managers/capture/CaptureManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/capture/CaptureManager$State;->PRE_CAPTURE_PROCESSING:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    .line 74
    new-instance v0, Lopenlight/co/camera/managers/capture/CaptureManager$State;

    const-string v1, "CAPTURING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lopenlight/co/camera/managers/capture/CaptureManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/capture/CaptureManager$State;->CAPTURING:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    const/4 v0, 0x4

    .line 70
    new-array v0, v0, [Lopenlight/co/camera/managers/capture/CaptureManager$State;

    sget-object v1, Lopenlight/co/camera/managers/capture/CaptureManager$State;->IDLE:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/managers/capture/CaptureManager$State;->QUEUED_CAPTURE:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/managers/capture/CaptureManager$State;->PRE_CAPTURE_PROCESSING:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    aput-object v1, v0, v4

    sget-object v1, Lopenlight/co/camera/managers/capture/CaptureManager$State;->CAPTURING:Lopenlight/co/camera/managers/capture/CaptureManager$State;

    aput-object v1, v0, v5

    sput-object v0, Lopenlight/co/camera/managers/capture/CaptureManager$State;->$VALUES:[Lopenlight/co/camera/managers/capture/CaptureManager$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/managers/capture/CaptureManager$State;
    .locals 1

    .line 70
    const-class v0, Lopenlight/co/camera/managers/capture/CaptureManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/capture/CaptureManager$State;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/managers/capture/CaptureManager$State;
    .locals 1

    .line 70
    sget-object v0, Lopenlight/co/camera/managers/capture/CaptureManager$State;->$VALUES:[Lopenlight/co/camera/managers/capture/CaptureManager$State;

    invoke-virtual {v0}, [Lopenlight/co/camera/managers/capture/CaptureManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/managers/capture/CaptureManager$State;

    return-object v0
.end method
