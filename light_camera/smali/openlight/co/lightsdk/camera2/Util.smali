.class Lopenlight/co/lightsdk/camera2/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field static final LIGHT_KEY_PREFIX:Ljava/lang/String; = "co.openlight."


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isLightDevice()Z
    .locals 2

    .line 20
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
