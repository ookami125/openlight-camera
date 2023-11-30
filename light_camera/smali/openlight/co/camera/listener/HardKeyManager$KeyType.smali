.class public final enum Lopenlight/co/camera/listener/HardKeyManager$KeyType;
.super Ljava/lang/Enum;
.source "HardKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/listener/HardKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/listener/HardKeyManager$KeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/listener/HardKeyManager$KeyType;

.field public static final enum FULL_KEY:Lopenlight/co/camera/listener/HardKeyManager$KeyType;

.field public static final enum HALF_KEY:Lopenlight/co/camera/listener/HardKeyManager$KeyType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 43
    new-instance v0, Lopenlight/co/camera/listener/HardKeyManager$KeyType;

    const-string v1, "FULL_KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/listener/HardKeyManager$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/listener/HardKeyManager$KeyType;->FULL_KEY:Lopenlight/co/camera/listener/HardKeyManager$KeyType;

    .line 44
    new-instance v0, Lopenlight/co/camera/listener/HardKeyManager$KeyType;

    const-string v1, "HALF_KEY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/listener/HardKeyManager$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/listener/HardKeyManager$KeyType;->HALF_KEY:Lopenlight/co/camera/listener/HardKeyManager$KeyType;

    const/4 v0, 0x2

    .line 42
    new-array v0, v0, [Lopenlight/co/camera/listener/HardKeyManager$KeyType;

    sget-object v1, Lopenlight/co/camera/listener/HardKeyManager$KeyType;->FULL_KEY:Lopenlight/co/camera/listener/HardKeyManager$KeyType;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/listener/HardKeyManager$KeyType;->HALF_KEY:Lopenlight/co/camera/listener/HardKeyManager$KeyType;

    aput-object v1, v0, v3

    sput-object v0, Lopenlight/co/camera/listener/HardKeyManager$KeyType;->$VALUES:[Lopenlight/co/camera/listener/HardKeyManager$KeyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/listener/HardKeyManager$KeyType;
    .locals 1

    .line 42
    const-class v0, Lopenlight/co/camera/listener/HardKeyManager$KeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/listener/HardKeyManager$KeyType;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/listener/HardKeyManager$KeyType;
    .locals 1

    .line 42
    sget-object v0, Lopenlight/co/camera/listener/HardKeyManager$KeyType;->$VALUES:[Lopenlight/co/camera/listener/HardKeyManager$KeyType;

    invoke-virtual {v0}, [Lopenlight/co/camera/listener/HardKeyManager$KeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/listener/HardKeyManager$KeyType;

    return-object v0
.end method
