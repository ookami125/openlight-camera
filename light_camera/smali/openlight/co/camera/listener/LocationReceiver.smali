.class public Lopenlight/co/camera/listener/LocationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocationReceiver.java"


# static fields
.field public static final ACTION_LOCATION_ALARM:Ljava/lang/String; = "openlight.co.intent.LOCATION_ALARM"

.field public static final ACTION_LOCATION_UPDATE:Ljava/lang/String; = "openlight.co.intent.LOCATION_UPDATE"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lopenlight/co/camera/listener/LocationReceiver;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/listener/LocationReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    .line 23
    sget-object p1, Lopenlight/co/camera/listener/LocationReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "openlight.co.intent.LOCATION_ALARM"

    .line 24
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    invoke-static {}, Lopenlight/co/camera/utils/LocationManager;->get()Lopenlight/co/camera/utils/LocationManager;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/utils/LocationManager;->checkLocationIsValid()V

    goto :goto_0

    :cond_0
    const-string p1, "openlight.co.intent.LOCATION_UPDATE"

    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "location"

    .line 28
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/location/Location;

    .line 29
    invoke-static {}, Lopenlight/co/camera/utils/LocationManager;->get()Lopenlight/co/camera/utils/LocationManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lopenlight/co/camera/utils/LocationManager;->updateLocation(Landroid/location/Location;)V

    :cond_1
    :goto_0
    return-void
.end method
