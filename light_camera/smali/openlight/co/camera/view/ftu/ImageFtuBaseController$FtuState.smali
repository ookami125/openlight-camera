.class final enum Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;
.super Ljava/lang/Enum;
.source "ImageFtuBaseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/ftu/ImageFtuBaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FtuState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

.field public static final enum IDLE:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

.field public static final enum PAUSED:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

.field public static final enum RUNNING:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 64
    new-instance v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;->IDLE:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    .line 65
    new-instance v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    const-string v1, "PAUSED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;->PAUSED:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    .line 66
    new-instance v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    const-string v1, "RUNNING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;->RUNNING:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    const/4 v0, 0x3

    .line 63
    new-array v0, v0, [Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    sget-object v1, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;->IDLE:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;->PAUSED:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;->RUNNING:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    aput-object v1, v0, v4

    sput-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;->$VALUES:[Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;
    .locals 1

    .line 63
    const-class v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;
    .locals 1

    .line 63
    sget-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;->$VALUES:[Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    invoke-virtual {v0}, [Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    return-object v0
.end method
