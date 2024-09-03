.class public final enum Lopenlight/co/camera/view/assistance/AssistController$AssistType;
.super Ljava/lang/Enum;
.source "AssistController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/assistance/AssistController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AssistType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/view/assistance/AssistController$AssistType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/view/assistance/AssistController$AssistType;

.field public static final enum HAND_SHAKE_ASSIST:Lopenlight/co/camera/view/assistance/AssistController$AssistType;

.field public static final enum LOW_LIGHT:Lopenlight/co/camera/view/assistance/AssistController$AssistType;

.field public static final enum TRIPOD_DETECT:Lopenlight/co/camera/view/assistance/AssistController$AssistType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 34
    new-instance v0, Lopenlight/co/camera/view/assistance/AssistController$AssistType;

    const-string v1, "LOW_LIGHT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/view/assistance/AssistController$AssistType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/view/assistance/AssistController$AssistType;->LOW_LIGHT:Lopenlight/co/camera/view/assistance/AssistController$AssistType;

    .line 35
    new-instance v0, Lopenlight/co/camera/view/assistance/AssistController$AssistType;

    const-string v1, "TRIPOD_DETECT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/view/assistance/AssistController$AssistType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/view/assistance/AssistController$AssistType;->TRIPOD_DETECT:Lopenlight/co/camera/view/assistance/AssistController$AssistType;

    .line 36
    new-instance v0, Lopenlight/co/camera/view/assistance/AssistController$AssistType;

    const-string v1, "HAND_SHAKE_ASSIST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lopenlight/co/camera/view/assistance/AssistController$AssistType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/view/assistance/AssistController$AssistType;->HAND_SHAKE_ASSIST:Lopenlight/co/camera/view/assistance/AssistController$AssistType;

    const/4 v0, 0x3

    .line 33
    new-array v0, v0, [Lopenlight/co/camera/view/assistance/AssistController$AssistType;

    sget-object v1, Lopenlight/co/camera/view/assistance/AssistController$AssistType;->LOW_LIGHT:Lopenlight/co/camera/view/assistance/AssistController$AssistType;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/assistance/AssistController$AssistType;->TRIPOD_DETECT:Lopenlight/co/camera/view/assistance/AssistController$AssistType;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/view/assistance/AssistController$AssistType;->HAND_SHAKE_ASSIST:Lopenlight/co/camera/view/assistance/AssistController$AssistType;

    aput-object v1, v0, v4

    sput-object v0, Lopenlight/co/camera/view/assistance/AssistController$AssistType;->$VALUES:[Lopenlight/co/camera/view/assistance/AssistController$AssistType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/view/assistance/AssistController$AssistType;
    .registers 2

    .line 33
    const-class v0, Lopenlight/co/camera/view/assistance/AssistController$AssistType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/view/assistance/AssistController$AssistType;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/view/assistance/AssistController$AssistType;
    .registers 1

    .line 33
    sget-object v0, Lopenlight/co/camera/view/assistance/AssistController$AssistType;->$VALUES:[Lopenlight/co/camera/view/assistance/AssistController$AssistType;

    invoke-virtual {v0}, [Lopenlight/co/camera/view/assistance/AssistController$AssistType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/view/assistance/AssistController$AssistType;

    return-object v0
.end method
