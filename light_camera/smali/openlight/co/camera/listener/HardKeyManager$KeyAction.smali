.class public final enum Lopenlight/co/camera/listener/HardKeyManager$KeyAction;
.super Ljava/lang/Enum;
.source "HardKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/listener/HardKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/listener/HardKeyManager$KeyAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

.field public static final enum DOWN:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

.field public static final enum LONG_PRESS:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

.field public static final enum UP:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    new-instance v0, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    const-string v1, "UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->UP:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    .line 38
    new-instance v0, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    const-string v1, "DOWN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->DOWN:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    .line 39
    new-instance v0, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    const-string v1, "LONG_PRESS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->LONG_PRESS:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    const/4 v0, 0x3

    .line 36
    new-array v0, v0, [Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    sget-object v1, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->UP:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->DOWN:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->LONG_PRESS:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    aput-object v1, v0, v4

    sput-object v0, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->$VALUES:[Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/listener/HardKeyManager$KeyAction;
    .locals 1

    .line 36
    const-class v0, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/listener/HardKeyManager$KeyAction;
    .locals 1

    .line 36
    sget-object v0, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->$VALUES:[Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    invoke-virtual {v0}, [Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    return-object v0
.end method
