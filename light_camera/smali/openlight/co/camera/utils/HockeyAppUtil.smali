.class public Lopenlight/co/camera/utils/HockeyAppUtil;
.super Ljava/lang/Object;
.source "HockeyAppUtil.java"


# static fields
.field public static final CRASH_LOG_FAILED:I = 0x1

.field public static final CRASH_LOG_UPLOADED:I

.field public static final IS_HOCKEYAPP_ENABLED:Z

.field private static final TAG:Ljava/lang/String;

.field private static final sCrashMsgHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-class v0, Lopenlight/co/camera/utils/HockeyAppUtil;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/utils/HockeyAppUtil;->TAG:Ljava/lang/String;

    .line 38
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lopenlight/co/camera/utils/HockeyAppUtil;->hasUserApprovedDiagnosticsFeedback()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lopenlight/co/camera/utils/HockeyAppUtil;->IS_HOCKEYAPP_ENABLED:Z

    .line 40
    invoke-static {}, Lopenlight/co/camera/utils/HockeyAppUtil;->createHandler()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/utils/HockeyAppUtil;->sCrashMsgHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkForCrashes(Landroid/app/Activity;Landroid/os/Handler;Landroid/app/PendingIntent;)V
    .locals 2

    .line 67
    sget-boolean v0, Lopenlight/co/camera/utils/Util;->APP_RESTART_ON_ERROR:Z

    if-eqz v0, :cond_0

    const-string v0, "af0466d78eb544dba985c8452daa66aa"

    .line 68
    new-instance v1, Lopenlight/co/camera/listener/LightCrashListener;

    invoke-direct {v1, p0, p1, p2}, Lopenlight/co/camera/listener/LightCrashListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/app/PendingIntent;)V

    invoke-static {p0, v0, v1}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V

    :cond_0
    return-void
.end method

.method private static createHandler()Landroid/os/Handler;
    .locals 2

    .line 74
    new-instance v0, Lopenlight/co/camera/utils/HockeyAppUtil$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lopenlight/co/camera/utils/HockeyAppUtil$1;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method private static hasUserApprovedDiagnosticsFeedback()Z
    .locals 1

    .line 93
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lopenlight/co/camera/CameraApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/fihtdc/UploadAgentService/UploadAgent;->getUploadAgent(Landroid/content/Context;)Lcom/fihtdc/UploadAgentService/IUploadAgent;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Lcom/fihtdc/UploadAgentService/IUploadAgent;->isUserAgreeUpload()Z

    move-result v0

    return v0
.end method

.method public static init(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2

    .line 45
    sget-boolean v0, Lopenlight/co/camera/utils/HockeyAppUtil;->IS_HOCKEYAPP_ENABLED:Z

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lopenlight/co/camera/utils/HockeyAppUtil;->TAG:Ljava/lang/String;

    const-string v1, "Diagnostics enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {p0}, Lnet/hockeyapp/android/Tracking;->startUsage(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 48
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 p1, 0x10000000

    .line 49
    invoke-static {p0, v0, v1, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 51
    sget-object v0, Lopenlight/co/camera/utils/HockeyAppUtil;->sCrashMsgHandler:Landroid/os/Handler;

    invoke-static {p0, v0, p1}, Lopenlight/co/camera/utils/HockeyAppUtil;->checkForCrashes(Landroid/app/Activity;Landroid/os/Handler;Landroid/app/PendingIntent;)V

    .line 52
    invoke-static {}, Lopenlight/co/camera/metrics/Metrics;->get()Lopenlight/co/camera/metrics/Metrics;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/metrics/Metrics;->register()V

    goto :goto_0

    .line 54
    :cond_0
    sget-object p0, Lopenlight/co/camera/utils/HockeyAppUtil;->TAG:Ljava/lang/String;

    const-string p1, "Diagnostics not enabled"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {}, Lopenlight/co/camera/metrics/Metrics;->get()Lopenlight/co/camera/metrics/Metrics;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/metrics/Metrics;->unregister()V

    :goto_0
    return-void
.end method

.method public static tearDown(Landroid/app/Activity;)V
    .locals 1

    .line 60
    sget-boolean v0, Lopenlight/co/camera/utils/HockeyAppUtil;->IS_HOCKEYAPP_ENABLED:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p0}, Lnet/hockeyapp/android/Tracking;->stopUsage(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
