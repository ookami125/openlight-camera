.class final enum Lopenlight/co/camera/view/customviews/TouchImageView$State;
.super Ljava/lang/Enum;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/customviews/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/view/customviews/TouchImageView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/view/customviews/TouchImageView$State;

.field public static final enum ANIMATE_ZOOM:Lopenlight/co/camera/view/customviews/TouchImageView$State;

.field public static final enum DRAG:Lopenlight/co/camera/view/customviews/TouchImageView$State;

.field public static final enum FLING:Lopenlight/co/camera/view/customviews/TouchImageView$State;

.field public static final enum NONE:Lopenlight/co/camera/view/customviews/TouchImageView$State;

.field public static final enum ZOOM:Lopenlight/co/camera/view/customviews/TouchImageView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 91
    new-instance v0, Lopenlight/co/camera/view/customviews/TouchImageView$State;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/view/customviews/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/view/customviews/TouchImageView$State;->NONE:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    new-instance v0, Lopenlight/co/camera/view/customviews/TouchImageView$State;

    const-string v1, "DRAG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/view/customviews/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/view/customviews/TouchImageView$State;->DRAG:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    new-instance v0, Lopenlight/co/camera/view/customviews/TouchImageView$State;

    const-string v1, "ZOOM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lopenlight/co/camera/view/customviews/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/view/customviews/TouchImageView$State;->ZOOM:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    new-instance v0, Lopenlight/co/camera/view/customviews/TouchImageView$State;

    const-string v1, "FLING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lopenlight/co/camera/view/customviews/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/view/customviews/TouchImageView$State;->FLING:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    new-instance v0, Lopenlight/co/camera/view/customviews/TouchImageView$State;

    const-string v1, "ANIMATE_ZOOM"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lopenlight/co/camera/view/customviews/TouchImageView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/view/customviews/TouchImageView$State;->ANIMATE_ZOOM:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lopenlight/co/camera/view/customviews/TouchImageView$State;

    sget-object v1, Lopenlight/co/camera/view/customviews/TouchImageView$State;->NONE:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/customviews/TouchImageView$State;->DRAG:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/view/customviews/TouchImageView$State;->ZOOM:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    aput-object v1, v0, v4

    sget-object v1, Lopenlight/co/camera/view/customviews/TouchImageView$State;->FLING:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    aput-object v1, v0, v5

    sget-object v1, Lopenlight/co/camera/view/customviews/TouchImageView$State;->ANIMATE_ZOOM:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    aput-object v1, v0, v6

    sput-object v0, Lopenlight/co/camera/view/customviews/TouchImageView$State;->$VALUES:[Lopenlight/co/camera/view/customviews/TouchImageView$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/view/customviews/TouchImageView$State;
    .locals 1

    .line 91
    const-class v0, Lopenlight/co/camera/view/customviews/TouchImageView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/view/customviews/TouchImageView$State;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/view/customviews/TouchImageView$State;
    .locals 1

    .line 91
    sget-object v0, Lopenlight/co/camera/view/customviews/TouchImageView$State;->$VALUES:[Lopenlight/co/camera/view/customviews/TouchImageView$State;

    invoke-virtual {v0}, [Lopenlight/co/camera/view/customviews/TouchImageView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/view/customviews/TouchImageView$State;

    return-object v0
.end method
