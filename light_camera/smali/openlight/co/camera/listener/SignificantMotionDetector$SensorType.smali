.class abstract enum Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;
.super Ljava/lang/Enum;
.source "SignificantMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/listener/SignificantMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "SensorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;

.field public static final enum ACCEL:Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;

.field public static final enum GYRO:Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;


# instance fields
.field private final mThreshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 36
    new-instance v0, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType$1;

    const-string v1, "GYRO"

    const-string v2, "gyro.threshold"

    const/4 v3, 0x0

    const v4, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v3, v2, v4}, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType$1;-><init>(Ljava/lang/String;ILjava/lang/String;F)V

    sput-object v0, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;->GYRO:Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;

    .line 43
    new-instance v0, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType$2;

    const-string v1, "ACCEL"

    const-string v2, "accel.threshold"

    const/4 v4, 0x1

    const v5, 0x3fb33333    # 1.4f

    invoke-direct {v0, v1, v4, v2, v5}, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType$2;-><init>(Ljava/lang/String;ILjava/lang/String;F)V

    sput-object v0, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;->ACCEL:Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;

    const/4 v0, 0x2

    .line 34
    new-array v0, v0, [Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;

    sget-object v1, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;->GYRO:Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;->ACCEL:Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;

    aput-object v1, v0, v4

    sput-object v0, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;->$VALUES:[Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lopenlight/co/lib/utils/FeatureManager;->getFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;->mThreshold:F

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;FLopenlight/co/camera/listener/SignificantMotionDetector$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;-><init>(Ljava/lang/String;ILjava/lang/String;F)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;
    .locals 1

    .line 34
    const-class v0, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;
    .locals 1

    .line 34
    sget-object v0, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;->$VALUES:[Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;

    invoke-virtual {v0}, [Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;

    return-object v0
.end method


# virtual methods
.method public getThreshold()F
    .locals 0

    .line 65
    iget p0, p0, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;->mThreshold:F

    return p0
.end method

.method public abstract processEvent(Landroid/hardware/SensorEvent;Lopenlight/co/camera/listener/SignificantMotionDetector;)V
.end method
