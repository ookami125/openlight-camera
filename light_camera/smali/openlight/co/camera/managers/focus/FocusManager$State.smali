.class public final enum Lopenlight/co/camera/managers/focus/FocusManager$State;
.super Ljava/lang/Enum;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/managers/focus/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/managers/focus/FocusManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/managers/focus/FocusManager$State;

.field public static final enum FOCUSING:Lopenlight/co/camera/managers/focus/FocusManager$State;

.field public static final enum FOCUSING_FIRST_TIME:Lopenlight/co/camera/managers/focus/FocusManager$State;

.field public static final enum IDLE:Lopenlight/co/camera/managers/focus/FocusManager$State;

.field public static final enum LOCKED:Lopenlight/co/camera/managers/focus/FocusManager$State;

.field public static final enum LOCKED_FIRST_TIME:Lopenlight/co/camera/managers/focus/FocusManager$State;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 63
    new-instance v0, Lopenlight/co/camera/managers/focus/FocusManager$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/managers/focus/FocusManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/focus/FocusManager$State;->IDLE:Lopenlight/co/camera/managers/focus/FocusManager$State;

    .line 64
    new-instance v0, Lopenlight/co/camera/managers/focus/FocusManager$State;

    const-string v1, "FOCUSING_FIRST_TIME"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/managers/focus/FocusManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/focus/FocusManager$State;->FOCUSING_FIRST_TIME:Lopenlight/co/camera/managers/focus/FocusManager$State;

    .line 65
    new-instance v0, Lopenlight/co/camera/managers/focus/FocusManager$State;

    const-string v1, "FOCUSING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lopenlight/co/camera/managers/focus/FocusManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/focus/FocusManager$State;->FOCUSING:Lopenlight/co/camera/managers/focus/FocusManager$State;

    .line 66
    new-instance v0, Lopenlight/co/camera/managers/focus/FocusManager$State;

    const-string v1, "LOCKED_FIRST_TIME"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lopenlight/co/camera/managers/focus/FocusManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/focus/FocusManager$State;->LOCKED_FIRST_TIME:Lopenlight/co/camera/managers/focus/FocusManager$State;

    .line 68
    new-instance v0, Lopenlight/co/camera/managers/focus/FocusManager$State;

    const-string v1, "LOCKED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lopenlight/co/camera/managers/focus/FocusManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/focus/FocusManager$State;->LOCKED:Lopenlight/co/camera/managers/focus/FocusManager$State;

    const/4 v0, 0x5

    .line 62
    new-array v0, v0, [Lopenlight/co/camera/managers/focus/FocusManager$State;

    sget-object v1, Lopenlight/co/camera/managers/focus/FocusManager$State;->IDLE:Lopenlight/co/camera/managers/focus/FocusManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/managers/focus/FocusManager$State;->FOCUSING_FIRST_TIME:Lopenlight/co/camera/managers/focus/FocusManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/managers/focus/FocusManager$State;->FOCUSING:Lopenlight/co/camera/managers/focus/FocusManager$State;

    aput-object v1, v0, v4

    sget-object v1, Lopenlight/co/camera/managers/focus/FocusManager$State;->LOCKED_FIRST_TIME:Lopenlight/co/camera/managers/focus/FocusManager$State;

    aput-object v1, v0, v5

    sget-object v1, Lopenlight/co/camera/managers/focus/FocusManager$State;->LOCKED:Lopenlight/co/camera/managers/focus/FocusManager$State;

    aput-object v1, v0, v6

    sput-object v0, Lopenlight/co/camera/managers/focus/FocusManager$State;->$VALUES:[Lopenlight/co/camera/managers/focus/FocusManager$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/managers/focus/FocusManager$State;
    .registers 2

    .line 62
    const-class v0, Lopenlight/co/camera/managers/focus/FocusManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/focus/FocusManager$State;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/managers/focus/FocusManager$State;
    .registers 1

    .line 62
    sget-object v0, Lopenlight/co/camera/managers/focus/FocusManager$State;->$VALUES:[Lopenlight/co/camera/managers/focus/FocusManager$State;

    invoke-virtual {v0}, [Lopenlight/co/camera/managers/focus/FocusManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/managers/focus/FocusManager$State;

    return-object v0
.end method
