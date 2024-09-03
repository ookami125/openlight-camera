.class public final enum Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;
.super Ljava/lang/Enum;
.source "RippleViewOnClick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/ripple/RippleViewOnClick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RippleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;

.field public static final enum DOUBLE:Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;

.field public static final enum RECTANGLE:Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;

.field public static final enum SIMPLE:Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;


# instance fields
.field type:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 466
    new-instance v0, Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;

    const-string v1, "SIMPLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;->SIMPLE:Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;

    .line 467
    new-instance v0, Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;

    const-string v1, "DOUBLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;->DOUBLE:Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;

    .line 468
    new-instance v0, Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;

    const-string v1, "RECTANGLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;->RECTANGLE:Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;

    const/4 v0, 0x3

    .line 465
    new-array v0, v0, [Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;

    sget-object v1, Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;->SIMPLE:Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;->DOUBLE:Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;->RECTANGLE:Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;

    aput-object v1, v0, v4

    sput-object v0, Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;->$VALUES:[Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 472
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 473
    iput p3, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;
    .registers 2

    .line 465
    const-class v0, Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;
    .registers 1

    .line 465
    sget-object v0, Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;->$VALUES:[Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;

    invoke-virtual {v0}, [Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/view/ripple/RippleViewOnClick$RippleType;

    return-object v0
.end method
