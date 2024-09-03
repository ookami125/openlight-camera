.class public Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;
.super Ljava/lang/Object;
.source "CaptureRequestBuilder.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains([II)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 166
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_11

    aget v3, p0, v2

    if-ne v3, p1, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_11
    return v0
.end method

.method public static setAeCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 3

    .line 101
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .registers 3

    .line 46
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setAeMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 3

    .line 41
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setAePrecaptureTrigger(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 3

    .line 56
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setAeRegions(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/hardware/camera2/params/MeteringRectangle;)V
    .registers 3

    .line 51
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setAeTargetFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/util/Range;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 61
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setAfMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 3

    .line 66
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setAfRegions(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/hardware/camera2/params/MeteringRectangle;)V
    .registers 3

    .line 71
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setAfTrigger(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 3

    .line 76
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setAwbLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .registers 3

    .line 86
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setAwbMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 3

    .line 81
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setControlMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 3

    .line 36
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;J)V
    .registers 4

    .line 106
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 3

    .line 91
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setFocusType(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 2

    .line 144
    invoke-static {p0}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Builder;)Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;

    move-result-object p0

    .line 145
    invoke-virtual {p0, p1}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->setFocusType(I)V

    return-void
.end method

.method public static setFrameDuration(Landroid/hardware/camera2/CaptureRequest$Builder;J)V
    .registers 4

    .line 116
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setIsoPriority(Landroid/hardware/camera2/CaptureRequest$Builder;II)V
    .registers 3

    .line 131
    invoke-static {p0}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Builder;)Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;

    move-result-object p0

    .line 132
    invoke-virtual {p0, p1, p2}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->setIsoPriority(II)V

    return-void
.end method

.method public static setJpegOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 3

    .line 126
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setLensFocalLength(Landroid/hardware/camera2/CaptureRequest$Builder;F)V
    .registers 3

    .line 96
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setScalarRegion(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V
    .registers 3

    .line 121
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setSensitivity(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .registers 3

    .line 111
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static setShutterPriority(Landroid/hardware/camera2/CaptureRequest$Builder;JJ)V
    .registers 5

    .line 138
    invoke-static {p0}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Builder;)Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;

    move-result-object p0

    .line 139
    invoke-virtual {p0, p1, p2, p3, p4}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->setShutterPriority(JJ)V

    return-void
.end method

.method public static setStackedCaptureState(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .registers 2

    .line 150
    invoke-static {p0}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Builder;)Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;

    move-result-object p0

    .line 151
    invoke-virtual {p0, p1}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->enableStackedCaptureState(Z)V

    return-void
.end method
