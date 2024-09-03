.class public abstract Lnet/hockeyapp/android/UpdateManagerListener;
.super Ljava/lang/Object;
.source "UpdateManagerListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canUpdateInMarket()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getExpiryDate()Ljava/util/Date;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUpdateActivityClass()Ljava/lang/Class;
    .registers 1
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
    .registers 1
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
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onNoUpdateAvailable()V
    .registers 1

    return-void
.end method

.method public onUpdateAvailable()V
    .registers 1

    return-void
.end method

.method public onUpdateAvailable(Lorg/json/JSONArray;Ljava/lang/String;)V
    .registers 3

    .line 60
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateManagerListener;->onUpdateAvailable()V

    return-void
.end method

.method public onUpdatePermissionsNotGranted()V
    .registers 1

    return-void
.end method
