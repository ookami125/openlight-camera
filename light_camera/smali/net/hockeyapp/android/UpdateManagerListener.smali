.class public abstract Lnet/hockeyapp/android/UpdateManagerListener;
.super Ljava/lang/Object;
.source "UpdateManagerListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canUpdateInMarket()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getExpiryDate()Ljava/util/Date;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUpdateActivityClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lnet/hockeyapp/android/UpdateActivity;",
            ">;"
        }
    .end annotation

    .line 20
    const-class p0, Lnet/hockeyapp/android/UpdateActivity;

    return-object p0
.end method

.method public getUpdateFragmentClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lnet/hockeyapp/android/UpdateFragment;",
            ">;"
        }
    .end annotation

    .line 29
    const-class p0, Lnet/hockeyapp/android/UpdateFragment;

    return-object p0
.end method

.method public onBuildExpired()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onNoUpdateAvailable()V
    .locals 0

    return-void
.end method

.method public onUpdateAvailable()V
    .locals 0

    return-void
.end method

.method public onUpdateAvailable(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateManagerListener;->onUpdateAvailable()V

    return-void
.end method

.method public onUpdatePermissionsNotGranted()V
    .locals 0

    return-void
.end method
