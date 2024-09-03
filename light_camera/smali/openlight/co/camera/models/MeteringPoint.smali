.class public Lopenlight/co/camera/models/MeteringPoint;
.super Ljava/lang/Object;
.source "MeteringPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/models/MeteringPoint$Type;
    }
.end annotation


# static fields
.field public static final CENTER:Lopenlight/co/camera/models/MeteringPoint;


# instance fields
.field private mType:Lopenlight/co/camera/models/MeteringPoint$Type;

.field private mX:I

.field private mY:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    new-instance v0, Lopenlight/co/camera/models/MeteringPoint;

    invoke-direct {v0}, Lopenlight/co/camera/models/MeteringPoint;-><init>()V

    sput-object v0, Lopenlight/co/camera/models/MeteringPoint;->CENTER:Lopenlight/co/camera/models/MeteringPoint;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lopenlight/co/camera/models/MeteringPoint;->mX:I

    .line 23
    iput v0, p0, Lopenlight/co/camera/models/MeteringPoint;->mY:I

    .line 24
    sget-object v0, Lopenlight/co/camera/models/MeteringPoint$Type;->CENTER:Lopenlight/co/camera/models/MeteringPoint$Type;

    iput-object v0, p0, Lopenlight/co/camera/models/MeteringPoint;->mType:Lopenlight/co/camera/models/MeteringPoint$Type;

    return-void
.end method


# virtual methods
.method public getType()Lopenlight/co/camera/models/MeteringPoint$Type;
    .registers 1

    .line 69
    iget-object p0, p0, Lopenlight/co/camera/models/MeteringPoint;->mType:Lopenlight/co/camera/models/MeteringPoint$Type;

    return-object p0
.end method

.method public getX()I
    .registers 1

    .line 53
    iget p0, p0, Lopenlight/co/camera/models/MeteringPoint;->mX:I

    return p0
.end method

.method public getY()I
    .registers 1

    .line 61
    iget p0, p0, Lopenlight/co/camera/models/MeteringPoint;->mY:I

    return p0
.end method

.method public isCenter()Z
    .registers 2

    .line 77
    sget-object v0, Lopenlight/co/camera/models/MeteringPoint$Type;->CENTER:Lopenlight/co/camera/models/MeteringPoint$Type;

    iget-object p0, p0, Lopenlight/co/camera/models/MeteringPoint;->mType:Lopenlight/co/camera/models/MeteringPoint$Type;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/models/MeteringPoint$Type;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public resetToCenter()Lopenlight/co/camera/models/MeteringPoint;
    .registers 2

    .line 42
    sget-object v0, Lopenlight/co/camera/models/MeteringPoint$Type;->CENTER:Lopenlight/co/camera/models/MeteringPoint$Type;

    iput-object v0, p0, Lopenlight/co/camera/models/MeteringPoint;->mType:Lopenlight/co/camera/models/MeteringPoint$Type;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lopenlight/co/camera/models/MeteringPoint;->mX:I

    .line 44
    iput v0, p0, Lopenlight/co/camera/models/MeteringPoint;->mY:I

    return-object p0
.end method

.method public set(II)Lopenlight/co/camera/models/MeteringPoint;
    .registers 4

    .line 31
    sget-object v0, Lopenlight/co/camera/models/MeteringPoint$Type;->OTHER:Lopenlight/co/camera/models/MeteringPoint$Type;

    iput-object v0, p0, Lopenlight/co/camera/models/MeteringPoint;->mType:Lopenlight/co/camera/models/MeteringPoint$Type;

    .line 32
    iput p1, p0, Lopenlight/co/camera/models/MeteringPoint;->mX:I

    .line 33
    iput p2, p0, Lopenlight/co/camera/models/MeteringPoint;->mY:I

    return-object p0
.end method

.method public set(Landroid/graphics/Point;)Lopenlight/co/camera/models/MeteringPoint;
    .registers 3

    .line 38
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1}, Lopenlight/co/camera/models/MeteringPoint;->set(II)Lopenlight/co/camera/models/MeteringPoint;

    move-result-object p0

    return-object p0
.end method

.method public set(Landroid/view/MotionEvent;)Lopenlight/co/camera/models/MeteringPoint;
    .registers 3

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lopenlight/co/camera/models/MeteringPoint;->set(II)Lopenlight/co/camera/models/MeteringPoint;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "MeteringPoint { type=%s, x=%d, y=%d }"

    const/4 v1, 0x3

    .line 81
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lopenlight/co/camera/models/MeteringPoint;->mType:Lopenlight/co/camera/models/MeteringPoint$Type;

    invoke-virtual {v2}, Lopenlight/co/camera/models/MeteringPoint$Type;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lopenlight/co/camera/models/MeteringPoint;->mX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget p0, p0, Lopenlight/co/camera/models/MeteringPoint;->mY:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
