.class public Lopenlight/co/camera/metrics/Metrics;
.super Ljava/lang/Object;
.source "Metrics.java"


# static fields
.field public static final EVENT_LOW_MEMORY:Ljava/lang/String; = "event_low_memory"

.field private static final TAG:Ljava/lang/String; = "Metrics"

.field public static sInstance:Lopenlight/co/camera/metrics/Metrics;


# instance fields
.field private mIsRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Lopenlight/co/camera/metrics/Metrics;

    invoke-direct {v0}, Lopenlight/co/camera/metrics/Metrics;-><init>()V

    sput-object v0, Lopenlight/co/camera/metrics/Metrics;->sInstance:Lopenlight/co/camera/metrics/Metrics;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lopenlight/co/camera/metrics/Metrics;->mIsRegistered:Z

    return-void
.end method

.method public static get()Lopenlight/co/camera/metrics/Metrics;
    .registers 1

    .line 25
    sget-object v0, Lopenlight/co/camera/metrics/Metrics;->sInstance:Lopenlight/co/camera/metrics/Metrics;

    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/String;)V
    .registers 4

    .line 43
    sget-boolean p0, Lopenlight/co/camera/utils/HockeyAppUtil;->IS_HOCKEYAPP_ENABLED:Z

    if-eqz p0, :cond_1d

    .line 44
    sget-object p0, Lopenlight/co/camera/metrics/Metrics;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {p1}, Lnet/hockeyapp/android/metrics/MetricsManager;->trackEvent(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public final add(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    sget-boolean p0, Lopenlight/co/camera/utils/HockeyAppUtil;->IS_HOCKEYAPP_ENABLED:Z

    if-eqz p0, :cond_1d

    .line 56
    sget-object p0, Lopenlight/co/camera/metrics/Metrics;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding event with properties: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {p1, p2}, Lnet/hockeyapp/android/metrics/MetricsManager;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1d
    return-void
.end method

.method public final register()V
    .registers 3

    .line 32
    iget-boolean v0, p0, Lopenlight/co/camera/metrics/Metrics;->mIsRegistered:Z

    if-nez v0, :cond_10

    .line 33
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    const-string v1, "af0466d78eb544dba985c8452daa66aa"

    invoke-static {v0, v1}, Lnet/hockeyapp/android/metrics/MetricsManager;->register(Landroid/app/Application;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lopenlight/co/camera/metrics/Metrics;->mIsRegistered:Z

    :cond_10
    return-void
.end method

.method public final unregister()V
    .registers 2

    .line 62
    iget-boolean v0, p0, Lopenlight/co/camera/metrics/Metrics;->mIsRegistered:Z

    if-eqz v0, :cond_a

    .line 63
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->disableUserMetrics()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lopenlight/co/camera/metrics/Metrics;->mIsRegistered:Z

    :cond_a
    return-void
.end method
