.class public Lopenlight/co/camera/utils/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 23
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_8} :catch_a

    const/4 p0, 0x1

    return p0

    :catch_a
    return v0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .registers 2

    .line 12
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 13
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_10

    const/4 p0, 0x0

    goto :goto_11

    :cond_10
    const/4 p0, 0x1

    :goto_11
    return p0
.end method
