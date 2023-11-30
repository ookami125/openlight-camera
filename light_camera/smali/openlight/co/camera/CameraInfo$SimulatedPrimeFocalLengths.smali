.class public enum Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;
.super Ljava/lang/Enum;
.source "CameraInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/CameraInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "SimulatedPrimeFocalLengths"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;

.field public static final enum SIMULATED_FOCAL_LENGTH1:Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;

.field public static final enum SIMULATED_FOCAL_LENGTH2:Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;

.field public static final enum SIMULATED_FOCAL_LENGTH3:Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;

.field public static final enum SIMULATED_FOCAL_LENGTH4:Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;


# instance fields
.field private final mPrimeFocalLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 49
    new-instance v0, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths$1;

    const-string v1, "SIMULATED_FOCAL_LENGTH1"

    const/4 v2, 0x0

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;->SIMULATED_FOCAL_LENGTH1:Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;

    .line 55
    new-instance v0, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths$2;

    const-string v1, "SIMULATED_FOCAL_LENGTH2"

    const/4 v3, 0x1

    const/16 v4, 0x23

    invoke-direct {v0, v1, v3, v4}, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;->SIMULATED_FOCAL_LENGTH2:Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;

    .line 62
    new-instance v0, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;

    const-string v1, "SIMULATED_FOCAL_LENGTH3"

    const/4 v4, 0x2

    const/16 v5, 0x4b

    invoke-direct {v0, v1, v4, v5}, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;->SIMULATED_FOCAL_LENGTH3:Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;

    .line 63
    new-instance v0, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;

    const-string v1, "SIMULATED_FOCAL_LENGTH4"

    const/4 v5, 0x3

    const/16 v6, 0x96

    invoke-direct {v0, v1, v5, v6}, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;->SIMULATED_FOCAL_LENGTH4:Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;

    const/4 v0, 0x4

    .line 48
    new-array v0, v0, [Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;

    sget-object v1, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;->SIMULATED_FOCAL_LENGTH1:Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;->SIMULATED_FOCAL_LENGTH2:Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;->SIMULATED_FOCAL_LENGTH3:Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;

    aput-object v1, v0, v4

    sget-object v1, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;->SIMULATED_FOCAL_LENGTH4:Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;

    aput-object v1, v0, v5

    sput-object v0, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;->$VALUES:[Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput p3, p0, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;->mPrimeFocalLength:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILopenlight/co/camera/CameraInfo$1;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method static getAllPrimeFocalLength(F)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr p0, v1

    .line 127
    invoke-static {}, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;->values()[Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 128
    invoke-virtual {v4}, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;->getPrimeFocalLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getDefaultFocalLength(Lopenlight/co/camera/CameraMode;)I
    .locals 5

    .line 87
    invoke-static {}, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;->values()[Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 88
    invoke-virtual {v3, p0}, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;->isDefault(Lopenlight/co/camera/CameraMode;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    invoke-virtual {v3}, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;->getPrimeFocalLength()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No focal length registered as default "

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static getDefaultRelativeMin(FLopenlight/co/camera/CameraMode;)F
    .locals 1

    .line 104
    invoke-static {p1}, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;->getDefaultFocalLength(Lopenlight/co/camera/CameraMode;)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p0, v0

    div-float/2addr p1, p0

    return p1
.end method

.method static getMaxDefaultLengthRatio(FLopenlight/co/camera/CameraMode;)F
    .locals 1

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p0, v0

    .line 114
    invoke-static {p1}, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;->getDefaultFocalLength(Lopenlight/co/camera/CameraMode;)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;
    .locals 1

    .line 48
    const-class v0, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;
    .locals 1

    .line 48
    sget-object v0, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;->$VALUES:[Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;

    invoke-virtual {v0}, [Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;

    return-object v0
.end method


# virtual methods
.method public getPrimeFocalLength()I
    .locals 0

    .line 72
    iget p0, p0, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;->mPrimeFocalLength:I

    return p0
.end method

.method public isDefault(Lopenlight/co/camera/CameraMode;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
