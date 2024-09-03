.class public final enum Lopenlight/co/camera/utils/SoundManager$Theme;
.super Ljava/lang/Enum;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/utils/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Theme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/utils/SoundManager$Theme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/utils/SoundManager$Theme;

.field public static final enum CLASSIC:Lopenlight/co/camera/utils/SoundManager$Theme;

.field public static final enum MODERN:Lopenlight/co/camera/utils/SoundManager$Theme;

.field public static final enum OFF:Lopenlight/co/camera/utils/SoundManager$Theme;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 71
    new-instance v0, Lopenlight/co/camera/utils/SoundManager$Theme;

    const-string v1, "CLASSIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/utils/SoundManager$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/SoundManager$Theme;->CLASSIC:Lopenlight/co/camera/utils/SoundManager$Theme;

    .line 72
    new-instance v0, Lopenlight/co/camera/utils/SoundManager$Theme;

    const-string v1, "MODERN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/utils/SoundManager$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/SoundManager$Theme;->MODERN:Lopenlight/co/camera/utils/SoundManager$Theme;

    .line 73
    new-instance v0, Lopenlight/co/camera/utils/SoundManager$Theme;

    const-string v1, "OFF"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lopenlight/co/camera/utils/SoundManager$Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/SoundManager$Theme;->OFF:Lopenlight/co/camera/utils/SoundManager$Theme;

    const/4 v0, 0x3

    .line 69
    new-array v0, v0, [Lopenlight/co/camera/utils/SoundManager$Theme;

    sget-object v1, Lopenlight/co/camera/utils/SoundManager$Theme;->CLASSIC:Lopenlight/co/camera/utils/SoundManager$Theme;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/utils/SoundManager$Theme;->MODERN:Lopenlight/co/camera/utils/SoundManager$Theme;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/utils/SoundManager$Theme;->OFF:Lopenlight/co/camera/utils/SoundManager$Theme;

    aput-object v1, v0, v4

    sput-object v0, Lopenlight/co/camera/utils/SoundManager$Theme;->$VALUES:[Lopenlight/co/camera/utils/SoundManager$Theme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/utils/SoundManager$Theme;
    .registers 2

    .line 69
    const-class v0, Lopenlight/co/camera/utils/SoundManager$Theme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/utils/SoundManager$Theme;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/utils/SoundManager$Theme;
    .registers 1

    .line 69
    sget-object v0, Lopenlight/co/camera/utils/SoundManager$Theme;->$VALUES:[Lopenlight/co/camera/utils/SoundManager$Theme;

    invoke-virtual {v0}, [Lopenlight/co/camera/utils/SoundManager$Theme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/utils/SoundManager$Theme;

    return-object v0
.end method
