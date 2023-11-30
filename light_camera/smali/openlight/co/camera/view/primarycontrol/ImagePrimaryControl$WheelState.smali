.class final enum Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;
.super Ljava/lang/Enum;
.source "ImagePrimaryControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WheelState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

.field public static final enum CLOSING:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

.field public static final enum INVISIBLE:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

.field public static final enum VISIBLE:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 127
    new-instance v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    const-string v1, "INVISIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;->INVISIBLE:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    .line 128
    new-instance v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    const-string v1, "VISIBLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;->VISIBLE:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    .line 129
    new-instance v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    const-string v1, "CLOSING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;->CLOSING:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    const/4 v0, 0x3

    .line 126
    new-array v0, v0, [Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    sget-object v1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;->INVISIBLE:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;->VISIBLE:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;->CLOSING:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    aput-object v1, v0, v4

    sput-object v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;->$VALUES:[Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;
    .locals 1

    .line 126
    const-class v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;
    .locals 1

    .line 126
    sget-object v0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;->$VALUES:[Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    invoke-virtual {v0}, [Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$WheelState;

    return-object v0
.end method
