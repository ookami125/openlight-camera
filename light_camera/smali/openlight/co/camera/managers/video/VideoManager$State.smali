.class public enum Lopenlight/co/camera/managers/video/VideoManager$State;
.super Ljava/lang/Enum;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/managers/video/VideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/managers/video/VideoManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/managers/video/VideoManager$State;

.field public static final enum CONTINUE_RECORDING:Lopenlight/co/camera/managers/video/VideoManager$State;

.field public static final enum NOT_INITIALIZED:Lopenlight/co/camera/managers/video/VideoManager$State;

.field public static final enum PREVIEW:Lopenlight/co/camera/managers/video/VideoManager$State;

.field public static final enum RECORDING:Lopenlight/co/camera/managers/video/VideoManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 62
    new-instance v0, Lopenlight/co/camera/managers/video/VideoManager$State;

    const-string v1, "NOT_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/managers/video/VideoManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/video/VideoManager$State;->NOT_INITIALIZED:Lopenlight/co/camera/managers/video/VideoManager$State;

    .line 63
    new-instance v0, Lopenlight/co/camera/managers/video/VideoManager$State;

    const-string v1, "PREVIEW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/managers/video/VideoManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/video/VideoManager$State;->PREVIEW:Lopenlight/co/camera/managers/video/VideoManager$State;

    .line 64
    new-instance v0, Lopenlight/co/camera/managers/video/VideoManager$State;

    const-string v1, "CONTINUE_RECORDING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lopenlight/co/camera/managers/video/VideoManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/video/VideoManager$State;->CONTINUE_RECORDING:Lopenlight/co/camera/managers/video/VideoManager$State;

    .line 65
    new-instance v0, Lopenlight/co/camera/managers/video/VideoManager$State$1;

    const-string v1, "RECORDING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lopenlight/co/camera/managers/video/VideoManager$State$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/video/VideoManager$State;->RECORDING:Lopenlight/co/camera/managers/video/VideoManager$State;

    const/4 v0, 0x4

    .line 61
    new-array v0, v0, [Lopenlight/co/camera/managers/video/VideoManager$State;

    sget-object v1, Lopenlight/co/camera/managers/video/VideoManager$State;->NOT_INITIALIZED:Lopenlight/co/camera/managers/video/VideoManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/managers/video/VideoManager$State;->PREVIEW:Lopenlight/co/camera/managers/video/VideoManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/managers/video/VideoManager$State;->CONTINUE_RECORDING:Lopenlight/co/camera/managers/video/VideoManager$State;

    aput-object v1, v0, v4

    sget-object v1, Lopenlight/co/camera/managers/video/VideoManager$State;->RECORDING:Lopenlight/co/camera/managers/video/VideoManager$State;

    aput-object v1, v0, v5

    sput-object v0, Lopenlight/co/camera/managers/video/VideoManager$State;->$VALUES:[Lopenlight/co/camera/managers/video/VideoManager$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILopenlight/co/camera/managers/video/VideoManager$1;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/managers/video/VideoManager$State;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/managers/video/VideoManager$State;
    .locals 1

    .line 61
    const-class v0, Lopenlight/co/camera/managers/video/VideoManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/video/VideoManager$State;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/managers/video/VideoManager$State;
    .locals 1

    .line 61
    sget-object v0, Lopenlight/co/camera/managers/video/VideoManager$State;->$VALUES:[Lopenlight/co/camera/managers/video/VideoManager$State;

    invoke-virtual {v0}, [Lopenlight/co/camera/managers/video/VideoManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/managers/video/VideoManager$State;

    return-object v0
.end method


# virtual methods
.method public isRecording()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
