.class public final enum Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;
.super Ljava/lang/Enum;
.source "ImageFtuBaseController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/ftu/ImageFtuBaseController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FtuType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

.field public static final enum PLAY_ALL:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

.field public static final enum SINGLE_RUN:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 74
    new-instance v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    const-string v1, "SINGLE_RUN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;->SINGLE_RUN:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    .line 75
    new-instance v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    const-string v1, "PLAY_ALL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;->PLAY_ALL:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    const/4 v0, 0x2

    .line 73
    new-array v0, v0, [Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    sget-object v1, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;->SINGLE_RUN:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;->PLAY_ALL:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    aput-object v1, v0, v3

    sput-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;->$VALUES:[Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;
    .registers 2

    .line 73
    const-class v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;
    .registers 1

    .line 73
    sget-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;->$VALUES:[Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    invoke-virtual {v0}, [Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    return-object v0
.end method
