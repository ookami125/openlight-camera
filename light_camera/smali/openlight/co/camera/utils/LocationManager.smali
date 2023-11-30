.class public Lopenlight/co/camera/utils/LocationManager;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/utils/LocationManager$GeodeticInfo;
    }
.end annotation


# static fields
.field private static final ALARM_INTERVAL_MS:J

.field private static final FILE_NAME_DISABLE_LOCATION:Ljava/lang/String; = "disable_location"

.field private static final GEODETIC_FILE_NAME:Ljava/lang/String; = "geodetic.json"

.field private static final LOCATION_INTERVAL_MS:J

.field private static final LOCATION_TTL_MS:J

.field private static final LOCATION_UPDATE_DIST:I = 0xc8

.field private static final NMEA_LAT:I = 0x2

.field private static final NMEA_LAT_REF:I = 0x3

.field private static final NMEA_LNG:I = 0x4

.field private static final NMEA_LNG_REF:I = 0x5

.field private static final NMEA_MSL_ABOVE_WGS_84:I = 0xb

.field private static final POINTS_TYPE:Ljava/lang/reflect/Type;

.field private static final SECS_PER_DEGREE:I = 0xe10

.field private static final TAG:Ljava/lang/String; = "LocationManager"

.field private static final USE_ALARM:Z

.field private static sInstance:Lopenlight/co/camera/utils/LocationManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final SEARCH_OFFSETS:[I

.field private final mContext:Landroid/content/Context;

.field private final mCriteria:Landroid/location/Criteria;

.field private final mEnabled:Z

.field private final mGson:Lcom/google/gson/Gson;

.field private mHandler:Landroid/os/Handler;

.field private volatile mLocation:Landroid/location/Location;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mLocationUpdateIntent:Landroid/app/PendingIntent;

.field private final mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

.field private final mPoints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lopenlight/co/camera/utils/LocationManager$GeodeticInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSaveRunnable:Ljava/lang/Runnable;

.field private final mScreenOnReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 68
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lopenlight/co/camera/utils/LocationManager;->LOCATION_INTERVAL_MS:J

    .line 71
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lopenlight/co/camera/utils/LocationManager;->LOCATION_TTL_MS:J

    .line 73
    sget-wide v0, Lopenlight/co/camera/utils/LocationManager;->LOCATION_INTERVAL_MS:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    sput-wide v0, Lopenlight/co/camera/utils/LocationManager;->ALARM_INTERVAL_MS:J

    .line 91
    new-instance v0, Lopenlight/co/camera/utils/LocationManager$1;

    invoke-direct {v0}, Lopenlight/co/camera/utils/LocationManager$1;-><init>()V

    .line 92
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/utils/LocationManager;->POINTS_TYPE:Ljava/lang/reflect/Type;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 3

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 85
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lopenlight/co/camera/utils/LocationManager;->SEARCH_OFFSETS:[I

    .line 95
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, p0, Lopenlight/co/camera/utils/LocationManager;->mGson:Lcom/google/gson/Gson;

    .line 98
    new-instance v1, Lopenlight/co/camera/utils/LocationManager$2;

    invoke-direct {v1, p0}, Lopenlight/co/camera/utils/LocationManager$2;-><init>(Lopenlight/co/camera/utils/LocationManager;)V

    iput-object v1, p0, Lopenlight/co/camera/utils/LocationManager;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    new-instance v1, Lopenlight/co/camera/utils/LocationManager$3;

    invoke-direct {v1, p0}, Lopenlight/co/camera/utils/LocationManager$3;-><init>(Lopenlight/co/camera/utils/LocationManager;)V

    iput-object v1, p0, Lopenlight/co/camera/utils/LocationManager;->mSaveRunnable:Ljava/lang/Runnable;

    .line 178
    new-instance v1, Lopenlight/co/camera/utils/LocationManager$4;

    invoke-direct {v1, p0}, Lopenlight/co/camera/utils/LocationManager$4;-><init>(Lopenlight/co/camera/utils/LocationManager;)V

    iput-object v1, p0, Lopenlight/co/camera/utils/LocationManager;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 379
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/utils/LocationManager;->mContext:Landroid/content/Context;

    .line 380
    iput-boolean p2, p0, Lopenlight/co/camera/utils/LocationManager;->mEnabled:Z

    if-nez p2, :cond_0

    .line 382
    sget-object p1, Lopenlight/co/camera/utils/LocationManager;->TAG:Ljava/lang/String;

    const-string v1, "Disabling location service calls"

    invoke-static {p1, v1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_0
    new-instance p1, Landroid/location/Criteria;

    invoke-direct {p1}, Landroid/location/Criteria;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/utils/LocationManager;->mCriteria:Landroid/location/Criteria;

    .line 386
    iget-object p1, p0, Lopenlight/co/camera/utils/LocationManager;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {p1, v0}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 388
    iget-object p1, p0, Lopenlight/co/camera/utils/LocationManager;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {p1, v0}, Landroid/location/Criteria;->setHorizontalAccuracy(I)V

    .line 390
    iget-object p1, p0, Lopenlight/co/camera/utils/LocationManager;->mCriteria:Landroid/location/Criteria;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 391
    iget-object p1, p0, Lopenlight/co/camera/utils/LocationManager;->mCriteria:Landroid/location/Criteria;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/location/Criteria;->setVerticalAccuracy(I)V

    .line 393
    iget-object p1, p0, Lopenlight/co/camera/utils/LocationManager;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {p1, v0}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 394
    iget-object p1, p0, Lopenlight/co/camera/utils/LocationManager;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {p1, v1}, Landroid/location/Criteria;->setSpeedAccuracy(I)V

    .line 396
    iget-object p1, p0, Lopenlight/co/camera/utils/LocationManager;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {p1, v0}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 397
    iget-object p1, p0, Lopenlight/co/camera/utils/LocationManager;->mCriteria:Landroid/location/Criteria;

    invoke-virtual {p1, v1}, Landroid/location/Criteria;->setBearingAccuracy(I)V

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 399
    iget-object p2, p0, Lopenlight/co/camera/utils/LocationManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/location/LocationManager;

    .line 400
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/location/LocationManager;

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lopenlight/co/camera/utils/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    .line 405
    invoke-direct {p0}, Lopenlight/co/camera/utils/LocationManager;->getGeodeticFile()Ljava/io/File;

    move-result-object p2

    .line 406
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :try_start_1
    iget-object p2, p0, Lopenlight/co/camera/utils/LocationManager;->mGson:Lcom/google/gson/Gson;

    sget-object v1, Lopenlight/co/camera/utils/LocationManager;->POINTS_TYPE:Ljava/lang/reflect/Type;

    invoke-virtual {p2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 414
    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    move-object p1, p2

    goto :goto_3

    :catch_0
    move-exception p2

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_2

    :catch_1
    move-exception p2

    move-object v0, p1

    .line 412
    :goto_1
    :try_start_2
    sget-object v1, Lopenlight/co/camera/utils/LocationManager;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t read geodetic.json"

    invoke-static {v1, v2, p2}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 414
    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_2
    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 415
    throw p0

    :cond_2
    :goto_3
    if-nez p1, :cond_3

    .line 417
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_3
    iput-object p1, p0, Lopenlight/co/camera/utils/LocationManager;->mPoints:Ljava/util/HashMap;

    return-void

    :array_0
    .array-data 4
        0x0
        -0x1
        0x1
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lopenlight/co/camera/utils/LocationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lopenlight/co/camera/utils/LocationManager;)Ljava/util/HashMap;
    .locals 0

    .line 46
    iget-object p0, p0, Lopenlight/co/camera/utils/LocationManager;->mPoints:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1000(Lopenlight/co/camera/utils/LocationManager;)Landroid/location/LocationManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lopenlight/co/camera/utils/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method static synthetic access$200(Lopenlight/co/camera/utils/LocationManager;)Ljava/io/File;
    .locals 0

    .line 46
    invoke-direct {p0}, Lopenlight/co/camera/utils/LocationManager;->getGeodeticFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/reflect/Type;
    .locals 1

    .line 46
    sget-object v0, Lopenlight/co/camera/utils/LocationManager;->POINTS_TYPE:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method static synthetic access$400(Lopenlight/co/camera/utils/LocationManager;)Lcom/google/gson/Gson;
    .locals 0

    .line 46
    iget-object p0, p0, Lopenlight/co/camera/utils/LocationManager;->mGson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method static synthetic access$500(Lopenlight/co/camera/utils/LocationManager;Ljava/lang/String;)D
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lopenlight/co/camera/utils/LocationManager;->nmeaCoordToDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$600(Lopenlight/co/camera/utils/LocationManager;D)I
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/utils/LocationManager;->box(D)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lopenlight/co/camera/utils/LocationManager;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lopenlight/co/camera/utils/LocationManager;->scheduleSave()V

    return-void
.end method

.method static synthetic access$900(Lopenlight/co/camera/utils/LocationManager;)Landroid/location/GpsStatus$NmeaListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lopenlight/co/camera/utils/LocationManager;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    return-object p0
.end method

.method private box(D)I
    .locals 2

    const-wide v0, 0x40ac200000000000L    # 3600.0

    mul-double/2addr p1, v0

    double-to-int p0, p1

    return p0
.end method

.method public static get()Lopenlight/co/camera/utils/LocationManager;
    .locals 1

    .line 228
    sget-object v0, Lopenlight/co/camera/utils/LocationManager;->sInstance:Lopenlight/co/camera/utils/LocationManager;

    return-object v0
.end method

.method private getGeodeticFile()Ljava/io/File;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 435
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lopenlight/co/camera/utils/LocationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "geodetic.json"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getLocationUpdateIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 338
    iget-object v0, p0, Lopenlight/co/camera/utils/LocationManager;->mLocationUpdateIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Landroid/content/Intent;

    const-string v1, "openlight.co.intent.LOCATION_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lopenlight/co/camera/utils/LocationManager;->mContext:Landroid/content/Context;

    const-class v2, Lopenlight/co/camera/listener/LocationReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 341
    iget-object v1, p0, Lopenlight/co/camera/utils/LocationManager;->mContext:Landroid/content/Context;

    const v2, 0x87a76

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/utils/LocationManager;->mLocationUpdateIntent:Landroid/app/PendingIntent;

    .line 345
    :cond_0
    iget-object p0, p0, Lopenlight/co/camera/utils/LocationManager;->mLocationUpdateIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    .line 439
    new-instance v0, Ljava/io/File;

    .line 440
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "disable_location"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 441
    new-instance v1, Lopenlight/co/camera/utils/LocationManager;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {v1, p0, v0}, Lopenlight/co/camera/utils/LocationManager;-><init>(Landroid/content/Context;Z)V

    sput-object v1, Lopenlight/co/camera/utils/LocationManager;->sInstance:Lopenlight/co/camera/utils/LocationManager;

    return-void
.end method

.method private nmeaCoordToDouble(Ljava/lang/String;)D
    .locals 3

    const/16 p0, 0x2e

    .line 363
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ge p0, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p0, -0x2

    .line 364
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_0
    sub-int/2addr p0, v1

    .line 365
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    int-to-float p1, v2

    const/high16 v0, 0x42700000    # 60.0f

    div-float/2addr p0, v0

    add-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr p0, v0

    double-to-int p0, p0

    int-to-double p0, p0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private scheduleSave()V
    .locals 3

    .line 374
    iget-object v0, p0, Lopenlight/co/camera/utils/LocationManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lopenlight/co/camera/utils/LocationManager;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 375
    iget-object v0, p0, Lopenlight/co/camera/utils/LocationManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lopenlight/co/camera/utils/LocationManager;->mSaveRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public checkLocationIsValid()V
    .locals 4

    .line 280
    iget-object v0, p0, Lopenlight/co/camera/utils/LocationManager;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 282
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 283
    sget-wide v0, Lopenlight/co/camera/utils/LocationManager;->LOCATION_TTL_MS:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 284
    sget-object v0, Lopenlight/co/camera/utils/LocationManager;->TAG:Ljava/lang/String;

    const-string v1, "Location TTL exceeded, clearing location"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 285
    iput-object v0, p0, Lopenlight/co/camera/utils/LocationManager;->mLocation:Landroid/location/Location;

    .line 287
    :cond_1
    sget-wide v0, Lopenlight/co/camera/utils/LocationManager;->LOCATION_INTERVAL_MS:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 288
    sget-object v0, Lopenlight/co/camera/utils/LocationManager;->TAG:Ljava/lang/String;

    const-string v1, "Location interval exceeded, requesting location"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lopenlight/co/camera/utils/LocationManager;->requestLocationUpdate()V

    :cond_2
    return-void
.end method

.method public correctionForLatLng(DD)F
    .locals 10

    .line 314
    iget-object v0, p0, Lopenlight/co/camera/utils/LocationManager;->mPoints:Ljava/util/HashMap;

    monitor-enter v0

    .line 315
    :try_start_0
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/utils/LocationManager;->box(D)I

    move-result p1

    .line 316
    invoke-direct {p0, p3, p4}, Lopenlight/co/camera/utils/LocationManager;->box(D)I

    move-result p2

    .line 317
    sget-object p3, Lopenlight/co/camera/utils/LocationManager;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Find correction at "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object p3, p0, Lopenlight/co/camera/utils/LocationManager;->SEARCH_OFFSETS:[I

    array-length p4, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p4, :cond_2

    aget v3, p3, v2

    .line 320
    iget-object v4, p0, Lopenlight/co/camera/utils/LocationManager;->mPoints:Ljava/util/HashMap;

    add-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    if-eqz v4, :cond_1

    .line 322
    iget-object v5, p0, Lopenlight/co/camera/utils/LocationManager;->SEARCH_OFFSETS:[I

    array-length v6, v5

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_1

    aget v8, v5, v7

    add-int/2addr v8, p2

    .line 323
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lopenlight/co/camera/utils/LocationManager$GeodeticInfo;

    if-eqz v9, :cond_0

    .line 326
    sget-object p0, Lopenlight/co/camera/utils/LocationManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Found "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " at "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget p0, v9, Lopenlight/co/camera/utils/LocationManager$GeodeticInfo;->correction:F

    monitor-exit v0

    return p0

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    :cond_2
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 0

    .line 300
    invoke-virtual {p0}, Lopenlight/co/camera/utils/LocationManager;->checkLocationIsValid()V

    .line 301
    iget-object p0, p0, Lopenlight/co/camera/utils/LocationManager;->mLocation:Landroid/location/Location;

    return-object p0
.end method

.method public requestLocationUpdate()V
    .locals 2

    .line 268
    invoke-virtual {p0}, Lopenlight/co/camera/utils/LocationManager;->startListening()V

    .line 270
    iget-boolean v0, p0, Lopenlight/co/camera/utils/LocationManager;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lopenlight/co/camera/utils/LocationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lopenlight/co/camera/utils/PermissionsManager;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Lopenlight/co/camera/utils/LocationManager;->TAG:Ljava/lang/String;

    const-string v1, "request location update"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lopenlight/co/camera/utils/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lopenlight/co/camera/utils/LocationManager;->mCriteria:Landroid/location/Criteria;

    invoke-direct {p0}, Lopenlight/co/camera/utils/LocationManager;->getLocationUpdateIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/location/LocationManager;->requestSingleUpdate(Landroid/location/Criteria;Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public startListening()V
    .locals 8

    .line 238
    iget-boolean v0, p0, Lopenlight/co/camera/utils/LocationManager;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lopenlight/co/camera/utils/LocationManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lopenlight/co/camera/utils/LocationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lopenlight/co/camera/utils/PermissionsManager;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lopenlight/co/camera/utils/LocationManager;->TAG:Ljava/lang/String;

    const-string v1, "startListening"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-direct {p0}, Lopenlight/co/camera/utils/LocationManager;->getLocationUpdateIntent()Landroid/app/PendingIntent;

    move-result-object v7

    .line 241
    iget-object v2, p0, Lopenlight/co/camera/utils/LocationManager;->mLocationManager:Landroid/location/LocationManager;

    sget-wide v3, Lopenlight/co/camera/utils/LocationManager;->LOCATION_INTERVAL_MS:J

    const/high16 v5, 0x43480000    # 200.0f

    iget-object v6, p0, Lopenlight/co/camera/utils/LocationManager;->mCriteria:Landroid/location/Criteria;

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/app/PendingIntent;)V

    .line 244
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 245
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lopenlight/co/camera/utils/LocationManager;->mHandler:Landroid/os/Handler;

    .line 246
    iget-object v0, p0, Lopenlight/co/camera/utils/LocationManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lopenlight/co/camera/utils/LocationManager$5;

    invoke-direct {v1, p0}, Lopenlight/co/camera/utils/LocationManager$5;-><init>(Lopenlight/co/camera/utils/LocationManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 255
    iget-object v0, p0, Lopenlight/co/camera/utils/LocationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lopenlight/co/camera/utils/LocationManager;->mScreenOnReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object p0, p0, Lopenlight/co/camera/utils/LocationManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public updateLocation(Landroid/location/Location;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 121
    sget-object v0, Lopenlight/co/camera/utils/LocationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GPS] Got location update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Lopenlight/co/camera/utils/LocationManager;->mLocation:Landroid/location/Location;

    :cond_0
    return-void
.end method
