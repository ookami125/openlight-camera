.class final enum Lopenlight/co/camera/view/notification/AlertView$AlertState;
.super Ljava/lang/Enum;
.source "AlertView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/notification/AlertView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AlertState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/view/notification/AlertView$AlertState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/view/notification/AlertView$AlertState;

.field public static final enum LOW_COUNT:Lopenlight/co/camera/view/notification/AlertView$AlertState;

.field public static final enum LOW_SPACE:Lopenlight/co/camera/view/notification/AlertView$AlertState;

.field public static final enum NONE:Lopenlight/co/camera/view/notification/AlertView$AlertState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 30
    new-instance v0, Lopenlight/co/camera/view/notification/AlertView$AlertState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/view/notification/AlertView$AlertState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/view/notification/AlertView$AlertState;->NONE:Lopenlight/co/camera/view/notification/AlertView$AlertState;

    .line 31
    new-instance v0, Lopenlight/co/camera/view/notification/AlertView$AlertState;

    const-string v1, "LOW_COUNT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/view/notification/AlertView$AlertState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/view/notification/AlertView$AlertState;->LOW_COUNT:Lopenlight/co/camera/view/notification/AlertView$AlertState;

    .line 32
    new-instance v0, Lopenlight/co/camera/view/notification/AlertView$AlertState;

    const-string v1, "LOW_SPACE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lopenlight/co/camera/view/notification/AlertView$AlertState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/view/notification/AlertView$AlertState;->LOW_SPACE:Lopenlight/co/camera/view/notification/AlertView$AlertState;

    const/4 v0, 0x3

    .line 29
    new-array v0, v0, [Lopenlight/co/camera/view/notification/AlertView$AlertState;

    sget-object v1, Lopenlight/co/camera/view/notification/AlertView$AlertState;->NONE:Lopenlight/co/camera/view/notification/AlertView$AlertState;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/notification/AlertView$AlertState;->LOW_COUNT:Lopenlight/co/camera/view/notification/AlertView$AlertState;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/view/notification/AlertView$AlertState;->LOW_SPACE:Lopenlight/co/camera/view/notification/AlertView$AlertState;

    aput-object v1, v0, v4

    sput-object v0, Lopenlight/co/camera/view/notification/AlertView$AlertState;->$VALUES:[Lopenlight/co/camera/view/notification/AlertView$AlertState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/view/notification/AlertView$AlertState;
    .registers 2

    .line 29
    const-class v0, Lopenlight/co/camera/view/notification/AlertView$AlertState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/view/notification/AlertView$AlertState;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/view/notification/AlertView$AlertState;
    .registers 1

    .line 29
    sget-object v0, Lopenlight/co/camera/view/notification/AlertView$AlertState;->$VALUES:[Lopenlight/co/camera/view/notification/AlertView$AlertState;

    invoke-virtual {v0}, [Lopenlight/co/camera/view/notification/AlertView$AlertState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/view/notification/AlertView$AlertState;

    return-object v0
.end method
