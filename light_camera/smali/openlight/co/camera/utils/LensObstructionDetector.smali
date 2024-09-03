.class public Lopenlight/co/camera/utils/LensObstructionDetector;
.super Ljava/lang/Object;
.source "LensObstructionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;
    }
.end annotation


# static fields
.field private static final MAX_IN_POCKET_DURATION:J

.field private static final MAX_IN_POCKET_ILLUMINANCE:F

.field private static final NUM_PROXIMITY_SENSORS_ON_DEVICE:I = 0x5

.field private static final PROXIMITY_SENSOR_NAME:Ljava/lang/String; = "Light Proximity sensors"

.field private static final PROXIMITY_THRESHOLD_MAX:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lopenlight/co/camera/utils/LensObstructionDetector;


# instance fields
.field private final mALSEventListener:Landroid/hardware/SensorEventListener;

.field private mAlsListenerRegistered:Z

.field private mAmbientLightSensor:Landroid/hardware/Sensor;

.field private mBlockedLensesBitField:I

.field private final mCameraPref:Lopenlight/co/lib/content/Prefs;

.field private mCurrentlyInPocket:Z

.field private final mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

.field private mInPocketDetectionEnabled:Z

.field private mLastLensesBlockedTime:J

.field private mLensBlockedDetectionEnabled:Z

.field private mLowIlluminanceStartTime:J

.field private mOnObstructionEventListener:Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;

.field private mPreviousBlockedLensesBitField:I

.field private mProximityEventCount:I

.field private final mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximityListenerRegistered:Z

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mTheaterModeSettings:Lopenlight/co/TheaterMode/TheaterModeSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 35
    const-class v0, Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/utils/LensObstructionDetector;->TAG:Ljava/lang/String;

    .line 41
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v1

    const-string v2, "in.pocket.timeout"

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Lopenlight/co/lib/utils/FeatureManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lopenlight/co/camera/utils/LensObstructionDetector;->MAX_IN_POCKET_DURATION:J

    .line 46
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v0

    const-string v1, "in.pocket.als.max.val"

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v2}, Lopenlight/co/lib/utils/FeatureManager;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lopenlight/co/camera/utils/LensObstructionDetector;->MAX_IN_POCKET_ILLUMINANCE:F

    .line 48
    new-instance v0, Lopenlight/co/camera/utils/LensObstructionDetector;

    invoke-direct {v0}, Lopenlight/co/camera/utils/LensObstructionDetector;-><init>()V

    sput-object v0, Lopenlight/co/camera/utils/LensObstructionDetector;->sInstance:Lopenlight/co/camera/utils/LensObstructionDetector;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Lopenlight/co/camera/view/ftu/FtuHelper;->get()Lopenlight/co/camera/view/ftu/FtuHelper;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    .line 57
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    .line 58
    invoke-static {}, Lopenlight/co/TheaterMode/TheaterModeSettings;->get()Lopenlight/co/TheaterMode/TheaterModeSettings;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mTheaterModeSettings:Lopenlight/co/TheaterMode/TheaterModeSettings;

    const-wide v0, 0x7fffffffffffffffL

    .line 79
    iput-wide v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mLowIlluminanceStartTime:J

    .line 90
    iput-wide v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mLastLensesBlockedTime:J

    .line 101
    new-instance v0, Lopenlight/co/camera/utils/LensObstructionDetector$1;

    invoke-direct {v0, p0}, Lopenlight/co/camera/utils/LensObstructionDetector$1;-><init>(Lopenlight/co/camera/utils/LensObstructionDetector;)V

    iput-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 234
    new-instance v0, Lopenlight/co/camera/utils/LensObstructionDetector$2;

    invoke-direct {v0, p0}, Lopenlight/co/camera/utils/LensObstructionDetector$2;-><init>(Lopenlight/co/camera/utils/LensObstructionDetector;)V

    iput-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mALSEventListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/camera/utils/LensObstructionDetector;)Lopenlight/co/camera/view/ftu/FtuHelper;
    .registers 1

    .line 34
    iget-object p0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    return-object p0
.end method

.method static synthetic access$100(Lopenlight/co/camera/utils/LensObstructionDetector;)Landroid/hardware/Sensor;
    .registers 1

    .line 34
    iget-object p0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mProximitySensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static synthetic access$1000(Lopenlight/co/camera/utils/LensObstructionDetector;)J
    .registers 3

    .line 34
    iget-wide v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mLastLensesBlockedTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Lopenlight/co/camera/utils/LensObstructionDetector;J)J
    .registers 3

    .line 34
    iput-wide p1, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mLastLensesBlockedTime:J

    return-wide p1
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .registers 1

    .line 34
    sget-object v0, Lopenlight/co/camera/utils/LensObstructionDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lopenlight/co/camera/utils/LensObstructionDetector;)Landroid/hardware/Sensor;
    .registers 1

    .line 34
    iget-object p0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mAmbientLightSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static synthetic access$1300()F
    .registers 1

    .line 34
    sget v0, Lopenlight/co/camera/utils/LensObstructionDetector;->MAX_IN_POCKET_ILLUMINANCE:F

    return v0
.end method

.method static synthetic access$1400(Lopenlight/co/camera/utils/LensObstructionDetector;)J
    .registers 3

    .line 34
    iget-wide v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mLowIlluminanceStartTime:J

    return-wide v0
.end method

.method static synthetic access$1402(Lopenlight/co/camera/utils/LensObstructionDetector;J)J
    .registers 3

    .line 34
    iput-wide p1, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mLowIlluminanceStartTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lopenlight/co/camera/utils/LensObstructionDetector;)Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mOnObstructionEventListener:Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;

    return-object p0
.end method

.method static synthetic access$300(Lopenlight/co/camera/utils/LensObstructionDetector;)I
    .registers 1

    .line 34
    iget p0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mProximityEventCount:I

    return p0
.end method

.method static synthetic access$302(Lopenlight/co/camera/utils/LensObstructionDetector;I)I
    .registers 2

    .line 34
    iput p1, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mProximityEventCount:I

    return p1
.end method

.method static synthetic access$308(Lopenlight/co/camera/utils/LensObstructionDetector;)I
    .registers 3

    .line 34
    iget v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mProximityEventCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mProximityEventCount:I

    return v0
.end method

.method static synthetic access$400(Lopenlight/co/camera/utils/LensObstructionDetector;)I
    .registers 1

    .line 34
    iget p0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mBlockedLensesBitField:I

    return p0
.end method

.method static synthetic access$402(Lopenlight/co/camera/utils/LensObstructionDetector;I)I
    .registers 2

    .line 34
    iput p1, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mBlockedLensesBitField:I

    return p1
.end method

.method static synthetic access$500(Lopenlight/co/camera/utils/LensObstructionDetector;)Z
    .registers 1

    .line 34
    iget-boolean p0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mCurrentlyInPocket:Z

    return p0
.end method

.method static synthetic access$600(Lopenlight/co/camera/utils/LensObstructionDetector;)V
    .registers 1

    .line 34
    invoke-direct {p0}, Lopenlight/co/camera/utils/LensObstructionDetector;->resetInPocketStatus()V

    return-void
.end method

.method static synthetic access$700(Lopenlight/co/camera/utils/LensObstructionDetector;)I
    .registers 1

    .line 34
    iget p0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mPreviousBlockedLensesBitField:I

    return p0
.end method

.method static synthetic access$702(Lopenlight/co/camera/utils/LensObstructionDetector;I)I
    .registers 2

    .line 34
    iput p1, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mPreviousBlockedLensesBitField:I

    return p1
.end method

.method static synthetic access$800(Lopenlight/co/camera/utils/LensObstructionDetector;)Z
    .registers 1

    .line 34
    iget-boolean p0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mLensBlockedDetectionEnabled:Z

    return p0
.end method

.method static synthetic access$900(Lopenlight/co/camera/utils/LensObstructionDetector;)V
    .registers 1

    .line 34
    invoke-direct {p0}, Lopenlight/co/camera/utils/LensObstructionDetector;->processEventForInPocketMode()V

    return-void
.end method

.method private detectInPocketStateTransition()Z
    .registers 9

    .line 377
    iget-boolean v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mCurrentlyInPocket:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 382
    :cond_6
    invoke-direct {p0}, Lopenlight/co/camera/utils/LensObstructionDetector;->registerAmbientLightSensor()V

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    .line 387
    iget-wide v4, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mLastLensesBlockedTime:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_1b

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mLastLensesBlockedTime:J

    goto :goto_5a

    .line 392
    :cond_1b
    iget-wide v4, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mLastLensesBlockedTime:J

    sub-long v4, v2, v4

    sget-wide v6, Lopenlight/co/camera/utils/LensObstructionDetector;->MAX_IN_POCKET_DURATION:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_5a

    iget-wide v4, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mLowIlluminanceStartTime:J

    sub-long v4, v2, v4

    sget-wide v6, Lopenlight/co/camera/utils/LensObstructionDetector;->MAX_IN_POCKET_DURATION:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_5a

    .line 394
    sget-object v0, Lopenlight/co/camera/utils/LensObstructionDetector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detected In Pocket, lens blocked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mLastLensesBlockedTime:J

    sub-long v5, v2, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms ago, low illuminance since "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mLowIlluminanceStartTime:J

    sub-long/2addr v2, v5

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms."

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_5a
    :goto_5a
    return v0
.end method

.method public static get()Lopenlight/co/camera/utils/LensObstructionDetector;
    .registers 1

    .line 51
    sget-object v0, Lopenlight/co/camera/utils/LensObstructionDetector;->sInstance:Lopenlight/co/camera/utils/LensObstructionDetector;

    return-object v0
.end method

.method public static synthetic lambda$init$0(Lopenlight/co/camera/utils/LensObstructionDetector;)V
    .registers 1

    .line 277
    invoke-virtual {p0}, Lopenlight/co/camera/utils/LensObstructionDetector;->onSettingsUpdate()V

    return-void
.end method

.method private processEventForInPocketMode()V
    .registers 3

    .line 358
    iget-boolean v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mInPocketDetectionEnabled:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mCurrentlyInPocket:Z

    if-nez v0, :cond_1f

    .line 359
    invoke-direct {p0}, Lopenlight/co/camera/utils/LensObstructionDetector;->detectInPocketStateTransition()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 361
    iget-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mOnObstructionEventListener:Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;

    invoke-virtual {v0}, Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;->onInPocket()V

    .line 363
    invoke-static {}, Lopenlight/co/camera/metrics/Metrics;->get()Lopenlight/co/camera/metrics/Metrics;

    move-result-object v0

    const-string v1, "event_in_pocket_mode"

    invoke-virtual {v0, v1}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 365
    iput-boolean v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mCurrentlyInPocket:Z

    :cond_1f
    return-void
.end method

.method private readUserSettings()V
    .registers 5

    .line 431
    iget-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mTheaterModeSettings:Lopenlight/co/TheaterMode/TheaterModeSettings;

    invoke-virtual {v0}, Lopenlight/co/TheaterMode/TheaterModeSettings;->isPocketDetectionDisabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string v3, "inpocket_detection_setting"

    .line 432
    invoke-interface {v0, v3}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "on"

    .line 433
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    iput-boolean v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mInPocketDetectionEnabled:Z

    .line 434
    iget-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mTheaterModeSettings:Lopenlight/co/TheaterMode/TheaterModeSettings;

    invoke-virtual {v0}, Lopenlight/co/TheaterMode/TheaterModeSettings;->isLensBlockedAlertDisabled()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string v3, "lens_blocked_detector_setting"

    .line 435
    invoke-interface {v0, v3}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "on"

    .line 436
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_39

    :cond_38
    move v1, v2

    :goto_39
    iput-boolean v1, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mLensBlockedDetectionEnabled:Z

    return-void
.end method

.method private registerAmbientLightSensor()V
    .registers 5

    .line 344
    iget-boolean v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mAlsListenerRegistered:Z

    if-nez v0, :cond_33

    const-wide v0, 0x7fffffffffffffffL

    .line 345
    iput-wide v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mLowIlluminanceStartTime:J

    const/4 v0, 0x0

    .line 346
    iput-boolean v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mCurrentlyInPocket:Z

    .line 347
    iget-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mALSEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mAmbientLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    .line 348
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mAlsListenerRegistered:Z

    .line 349
    sget-object v0, Lopenlight/co/camera/utils/LensObstructionDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALS registration successful: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mAlsListenerRegistered:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    return-void
.end method

.method private registerProximitySensor()V
    .registers 5

    .line 306
    iget-boolean v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mLensBlockedDetectionEnabled:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mInPocketDetectionEnabled:Z

    if-eqz v0, :cond_33

    :cond_8
    iget-boolean v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mProximityListenerRegistered:Z

    if-nez v0, :cond_33

    .line 308
    invoke-direct {p0}, Lopenlight/co/camera/utils/LensObstructionDetector;->resetAllState()V

    .line 309
    iget-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    .line 310
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    .line 311
    iput-boolean v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mProximityListenerRegistered:Z

    .line 312
    sget-object p0, Lopenlight/co/camera/utils/LensObstructionDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proximity sensor registration successful: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 314
    :cond_33
    sget-object p0, Lopenlight/co/camera/utils/LensObstructionDetector;->TAG:Ljava/lang/String;

    const-string v0, "Proximity sensor not registered or disabled from Settings"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3a
    return-void
.end method

.method private resetAllState()V
    .registers 3

    const-wide v0, 0x7fffffffffffffffL

    .line 323
    iput-wide v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mLastLensesBlockedTime:J

    const/4 v0, 0x0

    .line 324
    iput v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mBlockedLensesBitField:I

    .line 325
    iput v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mPreviousBlockedLensesBitField:I

    .line 326
    iput v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mProximityEventCount:I

    return-void
.end method

.method private resetInPocketStatus()V
    .registers 3

    const-wide v0, 0x7fffffffffffffffL

    .line 445
    iput-wide v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mLastLensesBlockedTime:J

    .line 447
    iput-wide v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mLowIlluminanceStartTime:J

    const/4 v0, 0x0

    .line 448
    iput-boolean v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mCurrentlyInPocket:Z

    .line 450
    invoke-direct {p0}, Lopenlight/co/camera/utils/LensObstructionDetector;->unregisterAmbientLightSensor()V

    return-void
.end method

.method private unregisterAmbientLightSensor()V
    .registers 4

    .line 330
    iget-boolean v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mAlsListenerRegistered:Z

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    .line 332
    :try_start_5
    iput-boolean v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mAlsListenerRegistered:Z

    const-wide v1, 0x7fffffffffffffffL

    .line 333
    iput-wide v1, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mLowIlluminanceStartTime:J

    .line 334
    iput-boolean v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mCurrentlyInPocket:Z

    .line 335
    iget-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mALSEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 336
    sget-object v0, Lopenlight/co/camera/utils/LensObstructionDetector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ALS unregistration successful: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mAlsListenerRegistered:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2f} :catch_30

    goto :goto_38

    :catch_30
    move-exception p0

    .line 338
    sget-object v0, Lopenlight/co/camera/utils/LensObstructionDetector;->TAG:Ljava/lang/String;

    const-string v1, "Exception in Ambient Light Sensor: "

    invoke-static {v0, v1, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_38
    :goto_38
    return-void
.end method

.method private unregisterProximitySensor()V
    .registers 3

    .line 293
    iget-boolean v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mProximityListenerRegistered:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    .line 294
    iput-boolean v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mProximityListenerRegistered:Z

    .line 296
    :try_start_7
    iget-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 297
    invoke-direct {p0}, Lopenlight/co/camera/utils/LensObstructionDetector;->resetAllState()V

    .line 298
    sget-object p0, Lopenlight/co/camera/utils/LensObstructionDetector;->TAG:Ljava/lang/String;

    const-string v0, "Proximity sensor unregistration successful"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception p0

    .line 300
    sget-object v0, Lopenlight/co/camera/utils/LensObstructionDetector;->TAG:Ljava/lang/String;

    const-string v1, "Exception in Proximity Sensor: "

    invoke-static {v0, v1, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_21
    :goto_21
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 5

    .line 263
    invoke-direct {p0}, Lopenlight/co/camera/utils/LensObstructionDetector;->readUserSettings()V

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 266
    iget-object p1, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_44

    .line 267
    iget-object p1, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    .line 268
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_20
    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 270
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Light Proximity sensors"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 271
    iput-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mProximitySensor:Landroid/hardware/Sensor;

    goto :goto_20

    .line 274
    :cond_3b
    iget-object p1, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mAmbientLightSensor:Landroid/hardware/Sensor;

    .line 277
    :cond_44
    iget-object p1, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mTheaterModeSettings:Lopenlight/co/TheaterMode/TheaterModeSettings;

    new-instance v0, Lopenlight/co/camera/utils/-$$Lambda$LensObstructionDetector$QCgKEkiaerLJ6YbI_MP7EQhfVDk;

    invoke-direct {v0, p0}, Lopenlight/co/camera/utils/-$$Lambda$LensObstructionDetector$QCgKEkiaerLJ6YbI_MP7EQhfVDk;-><init>(Lopenlight/co/camera/utils/LensObstructionDetector;)V

    invoke-virtual {p1, v0}, Lopenlight/co/TheaterMode/TheaterModeSettings;->addListener(Lopenlight/co/TheaterMode/TheaterModeListener;)V

    return-void
.end method

.method public onSettingsUpdate()V
    .registers 2

    .line 408
    invoke-direct {p0}, Lopenlight/co/camera/utils/LensObstructionDetector;->readUserSettings()V

    .line 411
    invoke-direct {p0}, Lopenlight/co/camera/utils/LensObstructionDetector;->unregisterProximitySensor()V

    .line 412
    invoke-direct {p0}, Lopenlight/co/camera/utils/LensObstructionDetector;->resetInPocketStatus()V

    .line 415
    iget-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mOnObstructionEventListener:Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;

    if-eqz v0, :cond_17

    .line 416
    iget-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mOnObstructionEventListener:Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;

    invoke-virtual {v0}, Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;->onNoObstruction()V

    .line 417
    iget-object v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mOnObstructionEventListener:Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;

    invoke-virtual {v0}, Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;->onOutOfPocket()V

    .line 421
    :cond_17
    iget-boolean v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mInPocketDetectionEnabled:Z

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mLensBlockedDetectionEnabled:Z

    if-eqz v0, :cond_22

    .line 422
    :cond_1f
    invoke-direct {p0}, Lopenlight/co/camera/utils/LensObstructionDetector;->registerProximitySensor()V

    :cond_22
    return-void
.end method

.method public setOnObstructionEventListener(Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;)V
    .registers 2

    if-nez p1, :cond_c

    .line 283
    invoke-direct {p0}, Lopenlight/co/camera/utils/LensObstructionDetector;->unregisterProximitySensor()V

    .line 284
    invoke-direct {p0}, Lopenlight/co/camera/utils/LensObstructionDetector;->unregisterAmbientLightSensor()V

    const/4 p1, 0x0

    .line 285
    iput-object p1, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mOnObstructionEventListener:Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;

    goto :goto_11

    .line 287
    :cond_c
    invoke-direct {p0}, Lopenlight/co/camera/utils/LensObstructionDetector;->registerProximitySensor()V

    .line 288
    iput-object p1, p0, Lopenlight/co/camera/utils/LensObstructionDetector;->mOnObstructionEventListener:Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;

    :goto_11
    return-void
.end method
