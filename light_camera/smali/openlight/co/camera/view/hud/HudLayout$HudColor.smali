.class final enum Lopenlight/co/camera/view/hud/HudLayout$HudColor;
.super Ljava/lang/Enum;
.source "HudLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/hud/HudLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HudColor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/view/hud/HudLayout$HudColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/view/hud/HudLayout$HudColor;

.field public static final enum COLORED:Lopenlight/co/camera/view/hud/HudLayout$HudColor;

.field public static final enum TRANSPARENT:Lopenlight/co/camera/view/hud/HudLayout$HudColor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 88
    new-instance v0, Lopenlight/co/camera/view/hud/HudLayout$HudColor;

    const-string v1, "TRANSPARENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/view/hud/HudLayout$HudColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/view/hud/HudLayout$HudColor;->TRANSPARENT:Lopenlight/co/camera/view/hud/HudLayout$HudColor;

    .line 89
    new-instance v0, Lopenlight/co/camera/view/hud/HudLayout$HudColor;

    const-string v1, "COLORED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/view/hud/HudLayout$HudColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/view/hud/HudLayout$HudColor;->COLORED:Lopenlight/co/camera/view/hud/HudLayout$HudColor;

    const/4 v0, 0x2

    .line 87
    new-array v0, v0, [Lopenlight/co/camera/view/hud/HudLayout$HudColor;

    sget-object v1, Lopenlight/co/camera/view/hud/HudLayout$HudColor;->TRANSPARENT:Lopenlight/co/camera/view/hud/HudLayout$HudColor;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/hud/HudLayout$HudColor;->COLORED:Lopenlight/co/camera/view/hud/HudLayout$HudColor;

    aput-object v1, v0, v3

    sput-object v0, Lopenlight/co/camera/view/hud/HudLayout$HudColor;->$VALUES:[Lopenlight/co/camera/view/hud/HudLayout$HudColor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/view/hud/HudLayout$HudColor;
    .locals 1

    .line 87
    const-class v0, Lopenlight/co/camera/view/hud/HudLayout$HudColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/view/hud/HudLayout$HudColor;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/view/hud/HudLayout$HudColor;
    .locals 1

    .line 87
    sget-object v0, Lopenlight/co/camera/view/hud/HudLayout$HudColor;->$VALUES:[Lopenlight/co/camera/view/hud/HudLayout$HudColor;

    invoke-virtual {v0}, [Lopenlight/co/camera/view/hud/HudLayout$HudColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/view/hud/HudLayout$HudColor;

    return-object v0
.end method
