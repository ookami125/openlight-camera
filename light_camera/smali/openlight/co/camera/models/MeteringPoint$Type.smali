.class public final enum Lopenlight/co/camera/models/MeteringPoint$Type;
.super Ljava/lang/Enum;
.source "MeteringPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/models/MeteringPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/models/MeteringPoint$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/models/MeteringPoint$Type;

.field public static final enum CENTER:Lopenlight/co/camera/models/MeteringPoint$Type;

.field public static final enum OTHER:Lopenlight/co/camera/models/MeteringPoint$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 20
    new-instance v0, Lopenlight/co/camera/models/MeteringPoint$Type;

    const-string v1, "CENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/models/MeteringPoint$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/models/MeteringPoint$Type;->CENTER:Lopenlight/co/camera/models/MeteringPoint$Type;

    new-instance v0, Lopenlight/co/camera/models/MeteringPoint$Type;

    const-string v1, "OTHER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/models/MeteringPoint$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/models/MeteringPoint$Type;->OTHER:Lopenlight/co/camera/models/MeteringPoint$Type;

    const/4 v0, 0x2

    new-array v0, v0, [Lopenlight/co/camera/models/MeteringPoint$Type;

    sget-object v1, Lopenlight/co/camera/models/MeteringPoint$Type;->CENTER:Lopenlight/co/camera/models/MeteringPoint$Type;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/models/MeteringPoint$Type;->OTHER:Lopenlight/co/camera/models/MeteringPoint$Type;

    aput-object v1, v0, v3

    sput-object v0, Lopenlight/co/camera/models/MeteringPoint$Type;->$VALUES:[Lopenlight/co/camera/models/MeteringPoint$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/models/MeteringPoint$Type;
    .locals 1

    .line 20
    const-class v0, Lopenlight/co/camera/models/MeteringPoint$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/models/MeteringPoint$Type;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/models/MeteringPoint$Type;
    .locals 1

    .line 20
    sget-object v0, Lopenlight/co/camera/models/MeteringPoint$Type;->$VALUES:[Lopenlight/co/camera/models/MeteringPoint$Type;

    invoke-virtual {v0}, [Lopenlight/co/camera/models/MeteringPoint$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/models/MeteringPoint$Type;

    return-object v0
.end method
