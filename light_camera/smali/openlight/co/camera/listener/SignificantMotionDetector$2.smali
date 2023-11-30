.class synthetic Lopenlight/co/camera/listener/SignificantMotionDetector$2;
.super Ljava/lang/Object;
.source "SignificantMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/listener/SignificantMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$light$co$camera$listener$SignificantMotionDetector$SensorType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 120
    invoke-static {}, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;->values()[Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lopenlight/co/camera/listener/SignificantMotionDetector$2;->$SwitchMap$light$co$camera$listener$SignificantMotionDetector$SensorType:[I

    :try_start_0
    sget-object v0, Lopenlight/co/camera/listener/SignificantMotionDetector$2;->$SwitchMap$light$co$camera$listener$SignificantMotionDetector$SensorType:[I

    sget-object v1, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;->GYRO:Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lopenlight/co/camera/listener/SignificantMotionDetector$2;->$SwitchMap$light$co$camera$listener$SignificantMotionDetector$SensorType:[I

    sget-object v1, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;->ACCEL:Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
