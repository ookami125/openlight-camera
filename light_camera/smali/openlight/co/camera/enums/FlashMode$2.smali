.class final enum Lopenlight/co/camera/enums/FlashMode$2;
.super Lopenlight/co/camera/enums/FlashMode;
.source "FlashMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/enums/FlashMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIII)V
    .registers 19

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 32
    invoke-direct/range {v0 .. v9}, Lopenlight/co/camera/enums/FlashMode;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIILopenlight/co/camera/enums/FlashMode$1;)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 2

    .line 40
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object p0

    .line 41
    invoke-virtual {p0}, Lopenlight/co/camera/CameraMode;->isAuto()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lopenlight/co/camera/CameraMode;->isIso()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lopenlight/co/camera/CameraMode;->isShutter()Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    :goto_1e
    return p0
.end method
