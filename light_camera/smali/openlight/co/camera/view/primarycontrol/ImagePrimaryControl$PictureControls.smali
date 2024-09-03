.class public final enum Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;
.super Ljava/lang/Enum;
.source "ImagePrimaryControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PictureControls"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

.field public static final enum EV:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

.field public static final enum ISO:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

.field public static final enum SHUTTER_SPEED:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;


# instance fields
.field private final mFadedResId:I

.field private final mResId:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 101
    new-instance v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

    const-string v1, "EV"

    const/4 v2, 0x0

    const v3, 0x7f08007c

    const v4, 0x7f08007d

    invoke-direct {v0, v1, v2, v3, v4}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;->EV:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

    .line 102
    new-instance v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

    const-string v1, "ISO"

    const/4 v3, 0x1

    const v4, 0x7f08007f

    const v5, 0x7f080080

    invoke-direct {v0, v1, v3, v4, v5}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;->ISO:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

    .line 103
    new-instance v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

    const-string v1, "SHUTTER_SPEED"

    const/4 v4, 0x2

    const v5, 0x7f080086

    const v6, 0x7f080087

    invoke-direct {v0, v1, v4, v5, v6}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;->SHUTTER_SPEED:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

    const/4 v0, 0x3

    .line 99
    new-array v0, v0, [Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

    sget-object v1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;->EV:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;->ISO:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;->SHUTTER_SPEED:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

    aput-object v1, v0, v4

    sput-object v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;->$VALUES:[Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    iput p3, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;->mResId:I

    .line 119
    iput p4, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;->mFadedResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;
    .registers 2

    .line 99
    const-class v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;
    .registers 1

    .line 99
    sget-object v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;->$VALUES:[Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

    invoke-virtual {v0}, [Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;

    return-object v0
.end method


# virtual methods
.method public getFadedResId()I
    .registers 1

    .line 110
    iget p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;->mFadedResId:I

    return p0
.end method

.method public getResId()I
    .registers 1

    .line 106
    iget p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$PictureControls;->mResId:I

    return p0
.end method
