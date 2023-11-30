.class public final enum Lopenlight/co/camera/utils/CameraState$SessionState;
.super Ljava/lang/Enum;
.source "CameraState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/utils/CameraState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/utils/CameraState$SessionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/utils/CameraState$SessionState;

.field public static final enum PREVIEW:Lopenlight/co/camera/utils/CameraState$SessionState;

.field public static final enum WAITING_FOR_3A_CONVERGENCE:Lopenlight/co/camera/utils/CameraState$SessionState;

.field public static final enum WAITING_FOR_BURST_CAPTURE_COMPLETION:Lopenlight/co/camera/utils/CameraState$SessionState;

.field public static final enum WAITING_FOR_FOCUS_ACHIEVED:Lopenlight/co/camera/utils/CameraState$SessionState;

.field public static final enum WAITING_FOR_FOCUS_TRIGGER:Lopenlight/co/camera/utils/CameraState$SessionState;

.field public static final enum WAITING_FOR_STILL_CAPTURE_COMPLETION:Lopenlight/co/camera/utils/CameraState$SessionState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 31
    new-instance v0, Lopenlight/co/camera/utils/CameraState$SessionState;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/utils/CameraState$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/CameraState$SessionState;->PREVIEW:Lopenlight/co/camera/utils/CameraState$SessionState;

    .line 32
    new-instance v0, Lopenlight/co/camera/utils/CameraState$SessionState;

    const-string v1, "WAITING_FOR_3A_CONVERGENCE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/utils/CameraState$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/CameraState$SessionState;->WAITING_FOR_3A_CONVERGENCE:Lopenlight/co/camera/utils/CameraState$SessionState;

    .line 33
    new-instance v0, Lopenlight/co/camera/utils/CameraState$SessionState;

    const-string v1, "WAITING_FOR_FOCUS_TRIGGER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lopenlight/co/camera/utils/CameraState$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/CameraState$SessionState;->WAITING_FOR_FOCUS_TRIGGER:Lopenlight/co/camera/utils/CameraState$SessionState;

    .line 34
    new-instance v0, Lopenlight/co/camera/utils/CameraState$SessionState;

    const-string v1, "WAITING_FOR_FOCUS_ACHIEVED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lopenlight/co/camera/utils/CameraState$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/CameraState$SessionState;->WAITING_FOR_FOCUS_ACHIEVED:Lopenlight/co/camera/utils/CameraState$SessionState;

    .line 35
    new-instance v0, Lopenlight/co/camera/utils/CameraState$SessionState;

    const-string v1, "WAITING_FOR_STILL_CAPTURE_COMPLETION"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lopenlight/co/camera/utils/CameraState$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/CameraState$SessionState;->WAITING_FOR_STILL_CAPTURE_COMPLETION:Lopenlight/co/camera/utils/CameraState$SessionState;

    .line 36
    new-instance v0, Lopenlight/co/camera/utils/CameraState$SessionState;

    const-string v1, "WAITING_FOR_BURST_CAPTURE_COMPLETION"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lopenlight/co/camera/utils/CameraState$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/CameraState$SessionState;->WAITING_FOR_BURST_CAPTURE_COMPLETION:Lopenlight/co/camera/utils/CameraState$SessionState;

    const/4 v0, 0x6

    .line 30
    new-array v0, v0, [Lopenlight/co/camera/utils/CameraState$SessionState;

    sget-object v1, Lopenlight/co/camera/utils/CameraState$SessionState;->PREVIEW:Lopenlight/co/camera/utils/CameraState$SessionState;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/utils/CameraState$SessionState;->WAITING_FOR_3A_CONVERGENCE:Lopenlight/co/camera/utils/CameraState$SessionState;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/utils/CameraState$SessionState;->WAITING_FOR_FOCUS_TRIGGER:Lopenlight/co/camera/utils/CameraState$SessionState;

    aput-object v1, v0, v4

    sget-object v1, Lopenlight/co/camera/utils/CameraState$SessionState;->WAITING_FOR_FOCUS_ACHIEVED:Lopenlight/co/camera/utils/CameraState$SessionState;

    aput-object v1, v0, v5

    sget-object v1, Lopenlight/co/camera/utils/CameraState$SessionState;->WAITING_FOR_STILL_CAPTURE_COMPLETION:Lopenlight/co/camera/utils/CameraState$SessionState;

    aput-object v1, v0, v6

    sget-object v1, Lopenlight/co/camera/utils/CameraState$SessionState;->WAITING_FOR_BURST_CAPTURE_COMPLETION:Lopenlight/co/camera/utils/CameraState$SessionState;

    aput-object v1, v0, v7

    sput-object v0, Lopenlight/co/camera/utils/CameraState$SessionState;->$VALUES:[Lopenlight/co/camera/utils/CameraState$SessionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/utils/CameraState$SessionState;
    .locals 1

    .line 30
    const-class v0, Lopenlight/co/camera/utils/CameraState$SessionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/utils/CameraState$SessionState;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/utils/CameraState$SessionState;
    .locals 1

    .line 30
    sget-object v0, Lopenlight/co/camera/utils/CameraState$SessionState;->$VALUES:[Lopenlight/co/camera/utils/CameraState$SessionState;

    invoke-virtual {v0}, [Lopenlight/co/camera/utils/CameraState$SessionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/utils/CameraState$SessionState;

    return-object v0
.end method
