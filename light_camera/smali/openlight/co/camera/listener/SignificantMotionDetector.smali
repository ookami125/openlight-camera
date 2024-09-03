.class public Lopenlight/co/camera/listener/SignificantMotionDetector;
.super Ljava/lang/Object;
.source "SignificantMotionDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;
    }
.end annotation


# static fields
.field private static final ACCEL_LOW_PASS_FILTER_ALPHA:F

.field private static final DEFAULT_SENSOR_TYPE:Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;

.field private static final SIGNIFICANT_MOTION_ENABLED:Z

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_SINCE_LAST_MOVEMENT_ABOVE_THRESHOLD:I

.field private static final sInstance:Lopenlight/co/camera/listener/SignificantMotionDetector;


# instance fields
.field private final mAccelSensor:Landroid/hardware/Sensor;

.field private final mGravity:[F

.field private final mGyroscopeSensor:Landroid/hardware/Sensor;

.field private final mHandler:Landroid/os/Handler;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSignificantMotionListener:Lopenlight/co/camera/listener/SignificantMotionListener;

.field private final mStationaryRunnable:Ljava/lang/Runnable;

.field private final mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 22
    const-class v0, Lopenlight/co/camera/listener/SignificantMotionDetector;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/listener/SignificantMotionDetector;->TAG:Ljava/lang/String;

    .line 26
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v0

    const-string v1, "motion.detect"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lopenlight/co/lib/utils/FeatureManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lopenlight/co/camera/listener/SignificantMotionDetector;->SIGNIFICANT_MOTION_ENABLED:Z

    .line 30
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v0

    const-string v1, "accel.lowpass.alpha"

    const v2, 0x3f59999a    # 0.85f

    invoke-virtual {v0, v1, v2}, Lopenlight/co/lib/utils/FeatureManager;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lopenlight/co/camera/listener/SignificantMotionDetector;->ACCEL_LOW_PASS_FILTER_ALPHA:F

    .line 32
    new-instance v0, Lopenlight/co/camera/listener/SignificantMotionDetector;

    invoke-direct {v0}, Lopenlight/co/camera/listener/SignificantMotionDetector;-><init>()V

    sput-object v0, Lopenlight/co/camera/listener/SignificantMotionDetector;->sInstance:Lopenlight/co/camera/listener/SignificantMotionDetector;

    .line 73
    invoke-static {}, Lopenlight/co/camera/listener/SignificantMotionDetector;->getDefaultSensorType()Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/listener/SignificantMotionDetector;->DEFAULT_SENSOR_TYPE:Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;

    .line 93
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v0

    const-string v1, "motion.stable.time"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Lopenlight/co/lib/utils/FeatureManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lopenlight/co/camera/listener/SignificantMotionDetector;->TIME_SINCE_LAST_MOVEMENT_ABOVE_THRESHOLD:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    const-class v1, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/CameraApp;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 78
    iget-object v0, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mGyroscopeSensor:Landroid/hardware/Sensor;

    .line 81
    iget-object v0, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    .line 84
    invoke-static {}, Lopenlight/co/camera/managers/zoom/ZoomManager;->get()Lopenlight/co/camera/managers/zoom/ZoomManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    const/4 v0, 0x3

    .line 87
    new-array v0, v0, [F

    iput-object v0, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mGravity:[F

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mSignificantMotionListener:Lopenlight/co/camera/listener/SignificantMotionListener;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Lopenlight/co/camera/listener/SignificantMotionDetector$1;

    invoke-direct {v0, p0}, Lopenlight/co/camera/listener/SignificantMotionDetector$1;-><init>(Lopenlight/co/camera/listener/SignificantMotionDetector;)V

    iput-object v0, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mStationaryRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lopenlight/co/camera/listener/SignificantMotionDetector;Landroid/hardware/SensorEvent;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lopenlight/co/camera/listener/SignificantMotionDetector;->processGryoEvent(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic access$200(Lopenlight/co/camera/listener/SignificantMotionDetector;Landroid/hardware/SensorEvent;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lopenlight/co/camera/listener/SignificantMotionDetector;->processAccelEvent(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic access$300(Lopenlight/co/camera/listener/SignificantMotionDetector;)Lopenlight/co/camera/listener/SignificantMotionListener;
    .registers 1

    .line 20
    iget-object p0, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mSignificantMotionListener:Lopenlight/co/camera/listener/SignificantMotionListener;

    return-object p0
.end method

.method public static get()Lopenlight/co/camera/listener/SignificantMotionDetector;
    .registers 1

    .line 107
    sget-object v0, Lopenlight/co/camera/listener/SignificantMotionDetector;->sInstance:Lopenlight/co/camera/listener/SignificantMotionDetector;

    return-object v0
.end method

.method private static getDefaultSensorType()Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;
    .registers 2

    .line 228
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v0

    const-string v1, "motion.type"

    invoke-virtual {v0, v1}, Lopenlight/co/lib/utils/FeatureManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gyro"

    .line 229
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;->GYRO:Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;

    goto :goto_17

    :cond_15
    sget-object v0, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;->ACCEL:Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;

    :goto_17
    return-object v0
.end method

.method private processAccelEvent(Landroid/hardware/SensorEvent;)V
    .registers 11

    .line 165
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 166
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    .line 167
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget p1, p1, v4

    .line 170
    iget-object v5, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mGravity:[F

    sget v6, Lopenlight/co/camera/listener/SignificantMotionDetector;->ACCEL_LOW_PASS_FILTER_ALPHA:F

    iget-object v7, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mGravity:[F

    aget v7, v7, v1

    mul-float/2addr v6, v7

    sget v7, Lopenlight/co/camera/listener/SignificantMotionDetector;->ACCEL_LOW_PASS_FILTER_ALPHA:F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    aput v6, v5, v1

    .line 172
    iget-object v5, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mGravity:[F

    sget v6, Lopenlight/co/camera/listener/SignificantMotionDetector;->ACCEL_LOW_PASS_FILTER_ALPHA:F

    iget-object v7, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mGravity:[F

    aget v7, v7, v3

    mul-float/2addr v6, v7

    sget v7, Lopenlight/co/camera/listener/SignificantMotionDetector;->ACCEL_LOW_PASS_FILTER_ALPHA:F

    sub-float v7, v8, v7

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    aput v6, v5, v3

    .line 174
    iget-object v5, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mGravity:[F

    sget v6, Lopenlight/co/camera/listener/SignificantMotionDetector;->ACCEL_LOW_PASS_FILTER_ALPHA:F

    iget-object v7, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mGravity:[F

    aget v7, v7, v4

    mul-float/2addr v6, v7

    sget v7, Lopenlight/co/camera/listener/SignificantMotionDetector;->ACCEL_LOW_PASS_FILTER_ALPHA:F

    sub-float/2addr v8, v7

    mul-float/2addr v8, p1

    add-float/2addr v6, v8

    aput v6, v5, v4

    .line 178
    iget-object v5, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mGravity:[F

    aget v1, v5, v1

    sub-float/2addr v0, v1

    .line 179
    iget-object v1, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mGravity:[F

    aget v1, v1, v3

    sub-float/2addr v2, v1

    .line 180
    iget-object v1, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mGravity:[F

    aget v1, v1, v4

    sub-float/2addr p1, v1

    .line 185
    sget-object v1, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;->ACCEL:Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;

    invoke-virtual {v1}, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;->getThreshold()F

    move-result v1

    iget-object v3, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {v3}, Lopenlight/co/camera/managers/zoom/ZoomManager;->getZoomLevel()F

    move-result v3

    div-float/2addr v1, v3

    .line 192
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_77

    .line 193
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_77

    .line 194
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_88

    .line 195
    :cond_77
    iget-object p1, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mStationaryRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    iget-object p1, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mStationaryRunnable:Ljava/lang/Runnable;

    sget v0, Lopenlight/co/camera/listener/SignificantMotionDetector;->TIME_SINCE_LAST_MOVEMENT_ABOVE_THRESHOLD:I

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_88
    return-void
.end method

.method private processGryoEvent(Landroid/hardware/SensorEvent;)V
    .registers 6

    .line 207
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 208
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 209
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget p1, p1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    float-to-double v0, v0

    .line 212
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 216
    sget-object p1, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;->GYRO:Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;

    invoke-virtual {p1}, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;->getThreshold()F

    move-result p1

    float-to-double v2, p1

    cmpl-double p1, v0, v2

    if-lez p1, :cond_35

    .line 217
    iget-object p1, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mStationaryRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    iget-object p1, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mStationaryRunnable:Ljava/lang/Runnable;

    sget v0, Lopenlight/co/camera/listener/SignificantMotionDetector;->TIME_SINCE_LAST_MOVEMENT_ABOVE_THRESHOLD:I

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_35
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 3

    .line 156
    sget-object v0, Lopenlight/co/camera/listener/SignificantMotionDetector;->DEFAULT_SENSOR_TYPE:Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;

    invoke-virtual {v0, p1, p0}, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;->processEvent(Landroid/hardware/SensorEvent;Lopenlight/co/camera/listener/SignificantMotionDetector;)V

    return-void
.end method

.method public registerListener(Lopenlight/co/camera/listener/SignificantMotionListener;)V
    .registers 5

    if-eqz p1, :cond_2e

    .line 119
    sget-boolean v0, Lopenlight/co/camera/listener/SignificantMotionDetector;->SIGNIFICANT_MOTION_ENABLED:Z

    if-eqz v0, :cond_2d

    .line 120
    sget-object v0, Lopenlight/co/camera/listener/SignificantMotionDetector$2;->$SwitchMap$light$co$camera$listener$SignificantMotionDetector$SensorType:[I

    sget-object v1, Lopenlight/co/camera/listener/SignificantMotionDetector;->DEFAULT_SENSOR_TYPE:Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;

    invoke-virtual {v1}, Lopenlight/co/camera/listener/SignificantMotionDetector$SensorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    packed-switch v0, :pswitch_data_36

    goto :goto_24

    .line 126
    :pswitch_15
    iget-object v0, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_24

    .line 122
    :pswitch_1d
    iget-object v0, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mGyroscopeSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 129
    :goto_24
    iput-object p1, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mSignificantMotionListener:Lopenlight/co/camera/listener/SignificantMotionListener;

    .line 130
    sget-object p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->TAG:Ljava/lang/String;

    const-string p1, "registerListener"

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    return-void

    .line 116
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Listener cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_15
    .end packed-switch
.end method

.method public unregisterListener(Lopenlight/co/camera/listener/SignificantMotionListener;)V
    .registers 3

    .line 139
    iget-object v0, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mSignificantMotionListener:Lopenlight/co/camera/listener/SignificantMotionListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 140
    iget-object p1, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mStationaryRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 141
    iget-object p1, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->mSignificantMotionListener:Lopenlight/co/camera/listener/SignificantMotionListener;

    .line 143
    sget-object p0, Lopenlight/co/camera/listener/SignificantMotionDetector;->TAG:Ljava/lang/String;

    const-string p1, "unregisterListener"

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 145
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to unregister a listener that was not previously registered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
