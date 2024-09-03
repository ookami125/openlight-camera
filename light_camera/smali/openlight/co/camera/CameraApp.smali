.class public Lopenlight/co/camera/CameraApp;
.super Landroid/app/Application;
.source "CameraApp.java"


# static fields
.field private static final ENABLE_STRICT_MODE:Z = false

.field private static final TAG:Ljava/lang/String; = "CameraApp"

.field private static sInstance:Lopenlight/co/camera/CameraApp;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private enableStrictMode()V
    .registers 1

    .line 104
    new-instance p0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 105
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p0

    .line 106
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p0

    .line 107
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectResourceMismatches()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p0

    .line 108
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p0

    .line 109
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyFlashScreen()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p0

    .line 110
    invoke-virtual {p0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p0

    .line 104
    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 111
    new-instance p0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {p0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 112
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object p0

    .line 116
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object p0

    .line 111
    invoke-static {p0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    return-void
.end method

.method public static get()Lopenlight/co/camera/CameraApp;
    .registers 1

    .line 85
    sget-object v0, Lopenlight/co/camera/CameraApp;->sInstance:Lopenlight/co/camera/CameraApp;

    return-object v0
.end method

.method public static declared-synchronized initCamPrefs(Landroid/content/Context;)Lopenlight/co/lib/content/Prefs;
    .registers 4

    const-class v0, Lopenlight/co/camera/CameraApp;

    monitor-enter v0

    .line 73
    :try_start_3
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v1

    if-nez v1, :cond_1d

    const v1, 0x7f0e003f

    .line 75
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 77
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 78
    new-instance v1, Lopenlight/co/camera/utils/CameraPreferences;

    invoke-direct {v1, p0}, Lopenlight/co/camera/utils/CameraPreferences;-><init>(Landroid/content/SharedPreferences;)V

    .line 79
    invoke-static {v1}, Lopenlight/co/lib/content/CamPrefsFactory;->set(Lopenlight/co/lib/content/Prefs;)V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    .line 81
    :cond_1d
    monitor-exit v0

    return-object v1

    :catchall_1f
    move-exception p0

    .line 72
    monitor-exit v0

    throw p0
.end method

.method public static isLight()Z
    .registers 2

    const-string v0, "Light"

    .line 93
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate()V
    .registers 2

    .line 41
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 42
    sput-object p0, Lopenlight/co/camera/CameraApp;->sInstance:Lopenlight/co/camera/CameraApp;

    .line 43
    invoke-static {p0}, Lopenlight/co/lib/utils/Utils;->init(Landroid/app/Application;)V

    .line 44
    invoke-static {p0}, Lopenlight/co/camera/utils/LocationManager;->init(Landroid/content/Context;)V

    .line 45
    invoke-static {p0}, Lopenlight/co/camera/CameraApp;->initCamPrefs(Landroid/content/Context;)Lopenlight/co/lib/content/Prefs;

    .line 48
    invoke-static {p0}, Lopenlight/co/camera/utils/UsbMgr;->init(Landroid/content/Context;)V

    .line 50
    invoke-static {}, Lopenlight/co/camera/utils/Util;->resetCameraPreference()V

    const-string v0, "openlight.co.lightcamera.broadcast.ACTION_CAMERA_APP_STARTED"

    .line 53
    invoke-static {p0, v0}, Lopenlight/co/camera/utils/Util;->broadcastCameraIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lopenlight/co/TheaterMode/TheaterModeSettings;->init()V

    .line 58
    invoke-static {}, Lopenlight/co/camera/utils/LensObstructionDetector;->get()Lopenlight/co/camera/utils/LensObstructionDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lopenlight/co/camera/utils/LensObstructionDetector;->init(Landroid/content/Context;)V

    .line 61
    invoke-static {p0}, Lopenlight/co/lightsdk/camera2/Light;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onLowMemory()V
    .registers 2

    .line 98
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 99
    sget-object p0, Lopenlight/co/camera/CameraApp;->TAG:Ljava/lang/String;

    const-string v0, "Application Low Memory"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lopenlight/co/camera/metrics/Metrics;->get()Lopenlight/co/camera/metrics/Metrics;

    move-result-object p0

    const-string v0, "event_low_memory"

    invoke-virtual {p0, v0}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;)V

    return-void
.end method
