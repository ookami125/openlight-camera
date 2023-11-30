.class public final enum Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;
.super Ljava/lang/Enum;
.source "ZoomWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/zoom/ZoomWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;

.field public static final enum DISPLAY:Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;

.field public static final enum TOUCHSTRIP:Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 45
    new-instance v0, Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;

    const-string v1, "DISPLAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;->DISPLAY:Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;

    .line 46
    new-instance v0, Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;

    const-string v1, "TOUCHSTRIP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;->TOUCHSTRIP:Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;

    const/4 v0, 0x2

    .line 44
    new-array v0, v0, [Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;

    sget-object v1, Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;->DISPLAY:Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;->TOUCHSTRIP:Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;

    aput-object v1, v0, v3

    sput-object v0, Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;->$VALUES:[Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;
    .locals 1

    .line 44
    const-class v0, Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;
    .locals 1

    .line 44
    sget-object v0, Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;->$VALUES:[Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;

    invoke-virtual {v0}, [Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/view/zoom/ZoomWheel$EventType;

    return-object v0
.end method
