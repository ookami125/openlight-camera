.class public final enum Lopenlight/co/camera/enums/OrientationConfig;
.super Ljava/lang/Enum;
.source "OrientationConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/enums/OrientationConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/enums/OrientationConfig;

.field public static final enum LANDSCAPE:Lopenlight/co/camera/enums/OrientationConfig;

.field public static final enum LANDSCAPE_REVERSE:Lopenlight/co/camera/enums/OrientationConfig;

.field public static final enum PORTRAIT:Lopenlight/co/camera/enums/OrientationConfig;

.field public static final enum PORTRAIT_REVERSE:Lopenlight/co/camera/enums/OrientationConfig;


# instance fields
.field final mAndroidOrientationConfiguration:I

.field final mDeviceAngle:I

.field final mOrientationHint:I

.field final mViewRotationAngle:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 6
    new-instance v7, Lopenlight/co/camera/enums/OrientationConfig;

    const-string v1, "PORTRAIT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x5a

    const/16 v5, -0x5a

    const/16 v6, 0x5a

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lopenlight/co/camera/enums/OrientationConfig;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, Lopenlight/co/camera/enums/OrientationConfig;->PORTRAIT:Lopenlight/co/camera/enums/OrientationConfig;

    .line 7
    new-instance v0, Lopenlight/co/camera/enums/OrientationConfig;

    const-string v9, "PORTRAIT_REVERSE"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/16 v12, -0x5a

    const/16 v13, 0x5a

    const/16 v14, 0x10e

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lopenlight/co/camera/enums/OrientationConfig;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lopenlight/co/camera/enums/OrientationConfig;->PORTRAIT_REVERSE:Lopenlight/co/camera/enums/OrientationConfig;

    .line 8
    new-instance v0, Lopenlight/co/camera/enums/OrientationConfig;

    const-string v2, "LANDSCAPE"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lopenlight/co/camera/enums/OrientationConfig;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lopenlight/co/camera/enums/OrientationConfig;->LANDSCAPE:Lopenlight/co/camera/enums/OrientationConfig;

    .line 9
    new-instance v0, Lopenlight/co/camera/enums/OrientationConfig;

    const-string v9, "LANDSCAPE_REVERSE"

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/16 v12, 0xb4

    const/4 v13, 0x0

    const/16 v14, 0xb4

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lopenlight/co/camera/enums/OrientationConfig;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lopenlight/co/camera/enums/OrientationConfig;->LANDSCAPE_REVERSE:Lopenlight/co/camera/enums/OrientationConfig;

    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Lopenlight/co/camera/enums/OrientationConfig;

    sget-object v1, Lopenlight/co/camera/enums/OrientationConfig;->PORTRAIT:Lopenlight/co/camera/enums/OrientationConfig;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/enums/OrientationConfig;->PORTRAIT_REVERSE:Lopenlight/co/camera/enums/OrientationConfig;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/enums/OrientationConfig;->LANDSCAPE:Lopenlight/co/camera/enums/OrientationConfig;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/enums/OrientationConfig;->LANDSCAPE_REVERSE:Lopenlight/co/camera/enums/OrientationConfig;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lopenlight/co/camera/enums/OrientationConfig;->$VALUES:[Lopenlight/co/camera/enums/OrientationConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lopenlight/co/camera/enums/OrientationConfig;->mAndroidOrientationConfiguration:I

    .line 22
    iput p5, p0, Lopenlight/co/camera/enums/OrientationConfig;->mViewRotationAngle:I

    .line 23
    iput p4, p0, Lopenlight/co/camera/enums/OrientationConfig;->mDeviceAngle:I

    .line 24
    iput p6, p0, Lopenlight/co/camera/enums/OrientationConfig;->mOrientationHint:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/enums/OrientationConfig;
    .registers 2

    .line 5
    const-class v0, Lopenlight/co/camera/enums/OrientationConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/enums/OrientationConfig;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/enums/OrientationConfig;
    .registers 1

    .line 5
    sget-object v0, Lopenlight/co/camera/enums/OrientationConfig;->$VALUES:[Lopenlight/co/camera/enums/OrientationConfig;

    invoke-virtual {v0}, [Lopenlight/co/camera/enums/OrientationConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/enums/OrientationConfig;

    return-object v0
.end method


# virtual methods
.method public getAndroidOrientationConfiguration()I
    .registers 1

    .line 51
    iget p0, p0, Lopenlight/co/camera/enums/OrientationConfig;->mAndroidOrientationConfiguration:I

    return p0
.end method

.method public getDeviceAngle()I
    .registers 1

    .line 34
    iget p0, p0, Lopenlight/co/camera/enums/OrientationConfig;->mDeviceAngle:I

    return p0
.end method

.method public getOrientationHint()I
    .registers 1

    .line 59
    iget p0, p0, Lopenlight/co/camera/enums/OrientationConfig;->mOrientationHint:I

    return p0
.end method

.method public getViewRotationAngle()I
    .registers 1

    .line 42
    iget p0, p0, Lopenlight/co/camera/enums/OrientationConfig;->mViewRotationAngle:I

    return p0
.end method
