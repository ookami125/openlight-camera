.class public Lnet/hockeyapp/android/metrics/MetricsManager;
.super Ljava/lang/Object;
.source "MetricsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;
    }
.end annotation


# static fields
.field protected static final ACTIVITY_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected static final LAST_BACKGROUND:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final LOCK:Ljava/lang/Object;

.field private static final SESSION_RENEWAL_INTERVAL:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String; = "HA-MetricsManager"

.field private static volatile instance:Lnet/hockeyapp/android/metrics/MetricsManager; = null

.field private static sChannel:Lnet/hockeyapp/android/metrics/Channel; = null

.field private static sSender:Lnet/hockeyapp/android/metrics/Sender; = null

.field private static sTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext; = null

.field private static sUserMetricsEnabled:Z = true

.field private static sWeakApplication:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mSessionTrackingDisabled:Z

.field private mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->ACTIVITY_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->LAST_BACKGROUND:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v0, 0x4e20

    .line 64
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->SESSION_RENEWAL_INTERVAL:Ljava/lang/Integer;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lnet/hockeyapp/android/metrics/TelemetryContext;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/Persistence;Lnet/hockeyapp/android/metrics/Channel;)V
    .registers 6

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    sput-object p2, Lnet/hockeyapp/android/metrics/MetricsManager;->sTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    if-nez p3, :cond_c

    .line 120
    new-instance p3, Lnet/hockeyapp/android/metrics/Sender;

    invoke-direct {p3}, Lnet/hockeyapp/android/metrics/Sender;-><init>()V

    .line 122
    :cond_c
    sput-object p3, Lnet/hockeyapp/android/metrics/MetricsManager;->sSender:Lnet/hockeyapp/android/metrics/Sender;

    if-nez p4, :cond_16

    .line 125
    new-instance p4, Lnet/hockeyapp/android/metrics/Persistence;

    invoke-direct {p4, p1, p3}, Lnet/hockeyapp/android/metrics/Persistence;-><init>(Landroid/content/Context;Lnet/hockeyapp/android/metrics/Sender;)V

    goto :goto_19

    .line 127
    :cond_16
    invoke-virtual {p4, p3}, Lnet/hockeyapp/android/metrics/Persistence;->setSender(Lnet/hockeyapp/android/metrics/Sender;)V

    .line 131
    :goto_19
    sget-object p0, Lnet/hockeyapp/android/metrics/MetricsManager;->sSender:Lnet/hockeyapp/android/metrics/Sender;

    invoke-virtual {p0, p4}, Lnet/hockeyapp/android/metrics/Sender;->setPersistence(Lnet/hockeyapp/android/metrics/Persistence;)V

    if-nez p5, :cond_2a

    .line 135
    new-instance p0, Lnet/hockeyapp/android/metrics/Channel;

    sget-object p1, Lnet/hockeyapp/android/metrics/MetricsManager;->sTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    invoke-direct {p0, p1, p4}, Lnet/hockeyapp/android/metrics/Channel;-><init>(Lnet/hockeyapp/android/metrics/TelemetryContext;Lnet/hockeyapp/android/metrics/Persistence;)V

    sput-object p0, Lnet/hockeyapp/android/metrics/MetricsManager;->sChannel:Lnet/hockeyapp/android/metrics/Channel;

    goto :goto_2c

    .line 137
    :cond_2a
    sput-object p5, Lnet/hockeyapp/android/metrics/MetricsManager;->sChannel:Lnet/hockeyapp/android/metrics/Channel;

    .line 141
    :goto_2c
    invoke-virtual {p4}, Lnet/hockeyapp/android/metrics/Persistence;->hasFilesAvailable()Z

    move-result p0

    if-eqz p0, :cond_39

    .line 142
    invoke-virtual {p4}, Lnet/hockeyapp/android/metrics/Persistence;->getSender()Lnet/hockeyapp/android/metrics/Sender;

    move-result-object p0

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->triggerSending()V

    :cond_39
    return-void
.end method

.method static synthetic access$000()Lnet/hockeyapp/android/metrics/Channel;
    .registers 1

    .line 40
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sChannel:Lnet/hockeyapp/android/metrics/Channel;

    return-object v0
.end method

.method static synthetic access$200(Lnet/hockeyapp/android/metrics/MetricsManager;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lnet/hockeyapp/android/metrics/MetricsManager;->updateSession()V

    return-void
.end method

.method static synthetic access$300()J
    .registers 2

    .line 40
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method protected static createData(Lnet/hockeyapp/android/metrics/model/TelemetryData;)Lnet/hockeyapp/android/metrics/model/Data;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/hockeyapp/android/metrics/model/TelemetryData;",
            ")",
            "Lnet/hockeyapp/android/metrics/model/Data<",
            "Lnet/hockeyapp/android/metrics/model/Domain;",
            ">;"
        }
    .end annotation

    .line 450
    new-instance v0, Lnet/hockeyapp/android/metrics/model/Data;

    invoke-direct {v0}, Lnet/hockeyapp/android/metrics/model/Data;-><init>()V

    .line 451
    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/metrics/model/Data;->setBaseData(Lnet/hockeyapp/android/metrics/model/Domain;)V

    .line 452
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/TelemetryData;->getBaseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/metrics/model/Data;->setBaseType(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/model/TelemetryData;->getEnvelopeName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lnet/hockeyapp/android/metrics/model/Data;->QualifiedName:Ljava/lang/String;

    return-object v0
.end method

.method public static disableUserMetrics()V
    .registers 1

    const/4 v0, 0x0

    .line 253
    invoke-static {v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->setUserMetricsEnabled(Z)V

    return-void
.end method

.method public static enableUserMetrics()V
    .registers 1

    const/4 v0, 0x1

    .line 261
    invoke-static {v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->setUserMetricsEnabled(Z)V

    return-void
.end method

.method private static getApplication()Landroid/app/Application;
    .registers 1

    .line 348
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sWeakApplication:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    .line 349
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sWeakApplication:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return-object v0
.end method

.method protected static getChannel()Lnet/hockeyapp/android/metrics/Channel;
    .registers 1

    .line 365
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sChannel:Lnet/hockeyapp/android/metrics/Channel;

    return-object v0
.end method

.method protected static getInstance()Lnet/hockeyapp/android/metrics/MetricsManager;
    .registers 1

    .line 381
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    return-object v0
.end method

.method protected static getSender()Lnet/hockeyapp/android/metrics/Sender;
    .registers 1

    .line 373
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sSender:Lnet/hockeyapp/android/metrics/Sender;

    return-object v0
.end method

.method private static getTime()J
    .registers 2

    .line 361
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static isUserMetricsEnabled()Z
    .registers 1

    .line 265
    sget-boolean v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sUserMetricsEnabled:Z

    return v0
.end method

.method public static register(Landroid/app/Application;)V
    .registers 3

    .line 154
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/hockeyapp/android/utils/Util;->getAppIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 155
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_14

    .line 158
    invoke-static {p0, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->register(Landroid/app/Application;Ljava/lang/String;)V

    return-void

    .line 156
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HockeyApp app identifier was not configured correctly in manifest or build configuration."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static register(Landroid/app/Application;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 170
    invoke-static {p0, p1, v0, v0, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->register(Landroid/app/Application;Ljava/lang/String;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/Persistence;Lnet/hockeyapp/android/metrics/Channel;)V

    return-void
.end method

.method protected static register(Landroid/app/Application;Ljava/lang/String;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/Persistence;Lnet/hockeyapp/android/metrics/Channel;)V
    .registers 13

    .line 219
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    if-nez v0, :cond_52

    .line 221
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_7
    sget-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    if-nez v1, :cond_2f

    .line 224
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 225
    new-instance v1, Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lnet/hockeyapp/android/metrics/TelemetryContext;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v4, v2, p1}, Lnet/hockeyapp/android/metrics/TelemetryContext;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v2, v1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lnet/hockeyapp/android/metrics/MetricsManager;-><init>(Landroid/content/Context;Lnet/hockeyapp/android/metrics/TelemetryContext;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/Persistence;Lnet/hockeyapp/android/metrics/Channel;)V

    .line 227
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lnet/hockeyapp/android/metrics/MetricsManager;->sWeakApplication:Ljava/lang/ref/WeakReference;

    .line 229
    :cond_2f
    invoke-static {}, Lnet/hockeyapp/android/utils/Util;->sessionTrackingSupported()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    iput-boolean p0, v1, Lnet/hockeyapp/android/metrics/MetricsManager;->mSessionTrackingDisabled:Z

    .line 230
    sput-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    .line 231
    iget-boolean p0, v1, Lnet/hockeyapp/android/metrics/MetricsManager;->mSessionTrackingDisabled:Z

    if-nez p0, :cond_45

    const/4 p0, 0x0

    .line 232
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lnet/hockeyapp/android/metrics/MetricsManager;->setSessionTrackingDisabled(Ljava/lang/Boolean;)V

    .line 235
    :cond_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_4f

    .line 237
    new-instance p0, Lnet/hockeyapp/android/metrics/MetricsManager$1;

    invoke-direct {p0}, Lnet/hockeyapp/android/metrics/MetricsManager$1;-><init>()V

    invoke-static {p0}, Lnet/hockeyapp/android/PrivateEventManager;->addEventListener(Lnet/hockeyapp/android/PrivateEventManager$HockeyEventListener;)V

    goto :goto_52

    :catchall_4f
    move-exception p0

    .line 235
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p0

    :cond_52
    :goto_52
    return-void
.end method

.method public static register(Landroid/content/Context;Landroid/app/Application;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 184
    invoke-static {p0}, Lnet/hockeyapp/android/utils/Util;->getAppIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 185
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_10

    .line 188
    invoke-static {p0, p1, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->register(Landroid/content/Context;Landroid/app/Application;Ljava/lang/String;)V

    return-void

    .line 186
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HockeyApp app identifier was not configured correctly in manifest or build configuration."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static register(Landroid/content/Context;Landroid/app/Application;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    .line 203
    invoke-static {p1, p2, p0, p0, p0}, Lnet/hockeyapp/android/metrics/MetricsManager;->register(Landroid/app/Application;Ljava/lang/String;Lnet/hockeyapp/android/metrics/Sender;Lnet/hockeyapp/android/metrics/Persistence;Lnet/hockeyapp/android/metrics/Channel;)V

    return-void
.end method

.method private registerTelemetryLifecycleCallbacks()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 313
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    if-nez v0, :cond_c

    .line 314
    new-instance v0, Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;-><init>(Lnet/hockeyapp/android/metrics/MetricsManager;Lnet/hockeyapp/android/metrics/MetricsManager$1;)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    .line 316
    :cond_c
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object p0, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static sessionTrackingEnabled()Z
    .registers 1

    .line 283
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->isUserMetricsEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    iget-boolean v0, v0, Lnet/hockeyapp/android/metrics/MetricsManager;->mSessionTrackingDisabled:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static setCustomServerURL(Ljava/lang/String;)V
    .registers 2

    .line 334
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sSender:Lnet/hockeyapp/android/metrics/Sender;

    if-eqz v0, :cond_a

    .line 335
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->sSender:Lnet/hockeyapp/android/metrics/Sender;

    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/metrics/Sender;->setCustomServerURL(Ljava/lang/String;)V

    goto :goto_11

    :cond_a
    const-string p0, "HA-MetricsManager"

    const-string v0, "HockeyApp couldn\'t set the custom server url. Please register(...) the MetricsManager before setting the server URL."

    .line 337
    invoke-static {p0, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void
.end method

.method protected static setSender(Lnet/hockeyapp/android/metrics/Sender;)V
    .registers 1

    .line 377
    sput-object p0, Lnet/hockeyapp/android/metrics/MetricsManager;->sSender:Lnet/hockeyapp/android/metrics/Sender;

    return-void
.end method

.method public static setSessionTrackingDisabled(Ljava/lang/Boolean;)V
    .registers 4

    .line 292
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    if-eqz v0, :cond_37

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->isUserMetricsEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_37

    .line 295
    :cond_b
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_e
    invoke-static {}, Lnet/hockeyapp/android/utils/Util;->sessionTrackingSupported()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 297
    sget-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lnet/hockeyapp/android/metrics/MetricsManager;->mSessionTrackingDisabled:Z

    .line 300
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_32

    .line 301
    sget-object p0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-direct {p0}, Lnet/hockeyapp/android/metrics/MetricsManager;->registerTelemetryLifecycleCallbacks()V

    goto :goto_32

    .line 304
    :cond_28
    sget-object p0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->mSessionTrackingDisabled:Z

    .line 305
    sget-object p0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-direct {p0}, Lnet/hockeyapp/android/metrics/MetricsManager;->unregisterTelemetryLifecycleCallbacks()V

    .line 307
    :cond_32
    :goto_32
    monitor-exit v0

    goto :goto_3e

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_34

    throw p0

    :cond_37
    :goto_37
    const-string p0, "HA-MetricsManager"

    const-string v0, "MetricsManager hasn\'t been registered or User Metrics has been disabled. No User Metrics will be collected!"

    .line 293
    invoke-static {p0, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3e
    return-void
.end method

.method private static setUserMetricsEnabled(Z)V
    .registers 1

    .line 269
    sput-boolean p0, Lnet/hockeyapp/android/metrics/MetricsManager;->sUserMetricsEnabled:Z

    .line 270
    sget-boolean p0, Lnet/hockeyapp/android/metrics/MetricsManager;->sUserMetricsEnabled:Z

    if-eqz p0, :cond_c

    .line 271
    sget-object p0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-direct {p0}, Lnet/hockeyapp/android/metrics/MetricsManager;->registerTelemetryLifecycleCallbacks()V

    goto :goto_11

    .line 273
    :cond_c
    sget-object p0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    invoke-direct {p0}, Lnet/hockeyapp/android/metrics/MetricsManager;->unregisterTelemetryLifecycleCallbacks()V

    :goto_11
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    .line 459
    invoke-static {p0, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 463
    invoke-static {p0, p1, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->trackEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 467
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 470
    :cond_7
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->instance:Lnet/hockeyapp/android/metrics/MetricsManager;

    if-nez v0, :cond_13

    const-string p0, "HA-MetricsManager"

    const-string p1, "MetricsManager hasn\'t been registered or User Metrics has been disabled. No User Metrics will be collected!"

    .line 471
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 474
    :cond_13
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->isUserMetricsEnabled()Z

    move-result v0

    if-nez v0, :cond_1f

    const-string p0, "User Metrics is disabled. Will not track event."

    .line 475
    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;)V

    return-void

    .line 479
    :cond_1f
    :try_start_1f
    new-instance v0, Lnet/hockeyapp/android/metrics/MetricsManager$3;

    invoke-direct {v0, p0, p1, p2}, Lnet/hockeyapp/android/metrics/MetricsManager$3;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V
    :try_end_27
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1f .. :try_end_27} :catch_28

    goto :goto_2e

    :catch_28
    move-exception p0

    const-string p1, "Could not track custom event. Executor rejected async task."

    .line 496
    invoke-static {p1, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2e
    return-void
.end method

.method private trackSessionState(Lnet/hockeyapp/android/metrics/model/SessionState;)V
    .registers 3

    .line 427
    :try_start_0
    new-instance v0, Lnet/hockeyapp/android/metrics/MetricsManager$2;

    invoke-direct {v0, p0, p1}, Lnet/hockeyapp/android/metrics/MetricsManager$2;-><init>(Lnet/hockeyapp/android/metrics/MetricsManager;Lnet/hockeyapp/android/metrics/model/SessionState;)V

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V
    :try_end_8
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_f

    :catch_9
    move-exception p0

    const-string p1, "Could not track session state. Executor rejected async task."

    .line 438
    invoke-static {p1, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_f
    return-void
.end method

.method private unregisterTelemetryLifecycleCallbacks()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 321
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    if-nez v0, :cond_5

    return-void

    .line 324
    :cond_5
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v0, 0x0

    .line 325
    iput-object v0, p0, Lnet/hockeyapp/android/metrics/MetricsManager;->mTelemetryLifecycleCallbacks:Lnet/hockeyapp/android/metrics/MetricsManager$TelemetryLifecycleCallbacks;

    return-void
.end method

.method private updateSession()V
    .registers 7

    .line 391
    sget-object v0, Lnet/hockeyapp/android/metrics/MetricsManager;->ACTIVITY_COUNT:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_21

    .line 393
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->sessionTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "HA-MetricsManager"

    const-string v1, "Starting & tracking session"

    .line 394
    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/MetricsManager;->renewSession()V

    goto :goto_66

    :cond_19
    const-string p0, "HA-MetricsManager"

    const-string v0, "Session management disabled by the developer"

    .line 397
    invoke-static {p0, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    .line 402
    :cond_21
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->getTime()J

    move-result-wide v0

    .line 403
    sget-object v2, Lnet/hockeyapp/android/metrics/MetricsManager;->LAST_BACKGROUND:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 404
    sget-object v2, Lnet/hockeyapp/android/metrics/MetricsManager;->SESSION_RENEWAL_INTERVAL:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3d

    const/4 v2, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v2, 0x0

    :goto_3e
    const-string v3, "HA-MetricsManager"

    .line 405
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking if we have to renew a session, time difference is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_66

    .line 407
    invoke-static {}, Lnet/hockeyapp/android/metrics/MetricsManager;->sessionTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "HA-MetricsManager"

    const-string v1, "Renewing session"

    .line 408
    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/MetricsManager;->renewSession()V

    :cond_66
    :goto_66
    return-void
.end method


# virtual methods
.method protected renewSession()V
    .registers 3

    .line 415
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    sget-object v1, Lnet/hockeyapp/android/metrics/MetricsManager;->sTelemetryContext:Lnet/hockeyapp/android/metrics/TelemetryContext;

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/metrics/TelemetryContext;->renewSessionContext(Ljava/lang/String;)V

    .line 417
    sget-object v0, Lnet/hockeyapp/android/metrics/model/SessionState;->START:Lnet/hockeyapp/android/metrics/model/SessionState;

    invoke-direct {p0, v0}, Lnet/hockeyapp/android/metrics/MetricsManager;->trackSessionState(Lnet/hockeyapp/android/metrics/model/SessionState;)V

    return-void
.end method

.method protected setChannel(Lnet/hockeyapp/android/metrics/Channel;)V
    .registers 2

    .line 369
    sput-object p1, Lnet/hockeyapp/android/metrics/MetricsManager;->sChannel:Lnet/hockeyapp/android/metrics/Channel;

    return-void
.end method
