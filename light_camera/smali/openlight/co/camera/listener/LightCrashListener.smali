.class public Lopenlight/co/camera/listener/LightCrashListener;
.super Lnet/hockeyapp/android/CrashManagerListener;
.source "LightCrashListener.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCountToStart:I

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lopenlight/co/camera/listener/LightCrashListener;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/listener/LightCrashListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/app/PendingIntent;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Lnet/hockeyapp/android/CrashManagerListener;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lopenlight/co/camera/listener/LightCrashListener;->mCountToStart:I

    .line 32
    iput-object p1, p0, Lopenlight/co/camera/listener/LightCrashListener;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lopenlight/co/camera/listener/LightCrashListener;->mHandler:Landroid/os/Handler;

    .line 34
    iput-object p3, p0, Lopenlight/co/camera/listener/LightCrashListener;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 6

    .line 113
    sget-object v0, Lopenlight/co/camera/listener/LightCrashListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CRASH] LightCrashListener getDescription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lopenlight/co/camera/listener/LightCrashListener;->mCountToStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget v0, p0, Lopenlight/co/camera/listener/LightCrashListener;->mCountToStart:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 115
    iget-object v0, p0, Lopenlight/co/camera/listener/LightCrashListener;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lopenlight/co/camera/CameraActivity;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lopenlight/co/camera/listener/LightCrashListener;->mContext:Landroid/content/Context;

    check-cast v0, Lopenlight/co/camera/CameraActivity;

    invoke-virtual {v0}, Lopenlight/co/camera/CameraActivity;->clear()V

    .line 118
    :cond_0
    sget-object v0, Lopenlight/co/camera/listener/LightCrashListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CRASH] LightCrashListener getDescription: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lopenlight/co/camera/listener/LightCrashListener;->mCountToStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lopenlight/co/camera/listener/LightCrashListener;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AlarmManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    iget-object v4, p0, Lopenlight/co/camera/listener/LightCrashListener;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/4 v0, 0x2

    .line 123
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 125
    :cond_1
    iget v0, p0, Lopenlight/co/camera/listener/LightCrashListener;->mCountToStart:I

    add-int/2addr v0, v1

    iput v0, p0, Lopenlight/co/camera/listener/LightCrashListener;->mCountToStart:I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 2

    .line 93
    sget-object v0, Lopenlight/co/camera/listener/LightCrashListener;->TAG:Ljava/lang/String;

    const-string v1, "[CRASH] LightCrashListener getUserID"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object p0, p0, Lopenlight/co/camera/listener/LightCrashListener;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public ignoreDefaultHandler()Z
    .locals 1

    .line 44
    sget-object p0, Lopenlight/co/camera/listener/LightCrashListener;->TAG:Ljava/lang/String;

    const-string v0, "[CRASH] LightCrashListener ignoreDefaultHandler"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onCrashesNotSent()V
    .locals 1

    .line 77
    sget-object p0, Lopenlight/co/camera/listener/LightCrashListener;->TAG:Ljava/lang/String;

    const-string v0, "[CRASH] LightCrashListener onCrashesNotSent"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance p0, Landroid/os/Message;

    invoke-direct {p0}, Landroid/os/Message;-><init>()V

    return-void
.end method

.method public onCrashesSent()V
    .locals 1

    .line 63
    sget-object p0, Lopenlight/co/camera/listener/LightCrashListener;->TAG:Ljava/lang/String;

    const-string v0, "[CRASH] LightCrashListener onCrashesSent"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNewCrashesFound()V
    .locals 1

    .line 103
    sget-object p0, Lopenlight/co/camera/listener/LightCrashListener;->TAG:Ljava/lang/String;

    const-string v0, "[CRASH] LightCrashListener onNewCrashesFound"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public shouldAutoUploadCrashes()Z
    .locals 1

    .line 55
    sget-object p0, Lopenlight/co/camera/listener/LightCrashListener;->TAG:Ljava/lang/String;

    const-string v0, "[CRASH] LightCrashListener shouldAutoUploadCrashes"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
