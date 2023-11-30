.class public final enum Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ZoomPrimeFocalLengths"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

.field public static final enum ZOOM_PRIME_105:Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

.field public static final enum ZOOM_PRIME_135:Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

.field public static final enum ZOOM_PRIME_150:Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

.field public static final enum ZOOM_PRIME_28:Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

.field public static final enum ZOOM_PRIME_35:Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

.field public static final enum ZOOM_PRIME_50:Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

.field public static final enum ZOOM_PRIME_70:Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

.field public static final enum ZOOM_PRIME_85:Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;


# instance fields
.field private final focalLength:F


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 292
    new-instance v0, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    const-string v1, "ZOOM_PRIME_28"

    const/4 v2, 0x0

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-direct {v0, v1, v2, v3}, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;->ZOOM_PRIME_28:Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    .line 293
    new-instance v0, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    const-string v1, "ZOOM_PRIME_35"

    const/4 v3, 0x1

    const/high16 v4, 0x420c0000    # 35.0f

    invoke-direct {v0, v1, v3, v4}, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;->ZOOM_PRIME_35:Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    .line 294
    new-instance v0, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    const-string v1, "ZOOM_PRIME_50"

    const/4 v4, 0x2

    const/high16 v5, 0x42480000    # 50.0f

    invoke-direct {v0, v1, v4, v5}, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;->ZOOM_PRIME_50:Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    .line 295
    new-instance v0, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    const-string v1, "ZOOM_PRIME_70"

    const/4 v5, 0x3

    const/high16 v6, 0x428c0000    # 70.0f

    invoke-direct {v0, v1, v5, v6}, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;->ZOOM_PRIME_70:Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    .line 296
    new-instance v0, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    const-string v1, "ZOOM_PRIME_85"

    const/4 v6, 0x4

    const/high16 v7, 0x42aa0000    # 85.0f

    invoke-direct {v0, v1, v6, v7}, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;->ZOOM_PRIME_85:Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    .line 297
    new-instance v0, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    const-string v1, "ZOOM_PRIME_105"

    const/4 v7, 0x5

    const/high16 v8, 0x42d20000    # 105.0f

    invoke-direct {v0, v1, v7, v8}, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;->ZOOM_PRIME_105:Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    .line 298
    new-instance v0, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    const-string v1, "ZOOM_PRIME_135"

    const/4 v8, 0x6

    const/high16 v9, 0x43070000    # 135.0f

    invoke-direct {v0, v1, v8, v9}, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;->ZOOM_PRIME_135:Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    .line 299
    new-instance v0, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    const-string v1, "ZOOM_PRIME_150"

    const/4 v9, 0x7

    const/high16 v10, 0x43160000    # 150.0f

    invoke-direct {v0, v1, v9, v10}, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;->ZOOM_PRIME_150:Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    const/16 v0, 0x8

    .line 291
    new-array v0, v0, [Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    sget-object v1, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;->ZOOM_PRIME_28:Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;->ZOOM_PRIME_35:Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;->ZOOM_PRIME_50:Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    aput-object v1, v0, v4

    sget-object v1, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;->ZOOM_PRIME_70:Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    aput-object v1, v0, v5

    sget-object v1, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;->ZOOM_PRIME_85:Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    aput-object v1, v0, v6

    sget-object v1, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;->ZOOM_PRIME_105:Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    aput-object v1, v0, v7

    sget-object v1, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;->ZOOM_PRIME_135:Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    aput-object v1, v0, v8

    sget-object v1, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;->ZOOM_PRIME_150:Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    aput-object v1, v0, v9

    sput-object v0, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;->$VALUES:[Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 303
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 304
    iput p3, p0, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;->focalLength:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;
    .locals 1

    .line 291
    const-class v0, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;
    .locals 1

    .line 291
    sget-object v0, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;->$VALUES:[Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    invoke-virtual {v0}, [Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    return-object v0
.end method


# virtual methods
.method public getFocalLength()F
    .locals 0

    .line 308
    iget p0, p0, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;->focalLength:F

    return p0
.end method
