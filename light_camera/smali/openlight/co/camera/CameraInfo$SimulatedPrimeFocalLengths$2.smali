.class final enum Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths$2;
.super Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;
.source "CameraInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3, v0}, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;-><init>(Ljava/lang/String;IILopenlight/co/camera/CameraInfo$1;)V

    return-void
.end method


# virtual methods
.method public isDefault(Lopenlight/co/camera/CameraMode;)Z
    .locals 0

    .line 58
    invoke-virtual {p1}, Lopenlight/co/camera/CameraMode;->isAuto()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lopenlight/co/camera/CameraMode;->isIso()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lopenlight/co/camera/CameraMode;->isShutter()Z

    move-result p0

    if-nez p0, :cond_1

    .line 59
    invoke-virtual {p1}, Lopenlight/co/camera/CameraMode;->isManual()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
