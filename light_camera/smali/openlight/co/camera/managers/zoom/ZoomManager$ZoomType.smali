.class public final enum Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;
.super Ljava/lang/Enum;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/managers/zoom/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZoomType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

.field public static final enum FLING:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

.field public static final enum PINCH:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

.field public static final enum SCROLL:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 44
    new-instance v0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    const-string v1, "SCROLL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;->SCROLL:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    .line 45
    new-instance v0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    const-string v1, "PINCH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;->PINCH:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    .line 46
    new-instance v0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    const-string v1, "FLING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;->FLING:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    const/4 v0, 0x3

    .line 43
    new-array v0, v0, [Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    sget-object v1, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;->SCROLL:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;->PINCH:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;->FLING:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    aput-object v1, v0, v4

    sput-object v0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;->$VALUES:[Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;
    .locals 1

    .line 43
    const-class v0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;
    .locals 1

    .line 43
    sget-object v0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;->$VALUES:[Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    invoke-virtual {v0}, [Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    return-object v0
.end method
