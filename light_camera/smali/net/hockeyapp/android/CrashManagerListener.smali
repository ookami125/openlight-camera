.class public abstract Lnet/hockeyapp/android/CrashManagerListener;
.super Ljava/lang/Object;
.source "CrashManagerListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContact()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaxRetryAttempts()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getUserID()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public ignoreDefaultHandler()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public includeDeviceData()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public includeDeviceIdentifier()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public includeThreadDetails()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onConfirmedCrashesFound()V
    .registers 1

    return-void
.end method

.method public onCrashesFound()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onCrashesNotSent()V
    .registers 1

    return-void
.end method

.method public onCrashesSent()V
    .registers 1

    return-void
.end method

.method public onHandleAlertView()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onNewCrashesFound()V
    .registers 1

    return-void
.end method

.method public onUserDeniedCrashes()V
    .registers 1

    return-void
.end method

.method public shouldAutoUploadCrashes()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
