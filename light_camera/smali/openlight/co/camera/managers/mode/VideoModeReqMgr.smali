.class public Lopenlight/co/camera/managers/mode/VideoModeReqMgr;
.super Lopenlight/co/camera/managers/mode/ModeReqMgr;
.source "VideoModeReqMgr.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lopenlight/co/camera/managers/mode/ModeReqMgr;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAeModeForFlash()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method getAwbMode()I
    .locals 0

    .line 23
    sget-object p0, Lopenlight/co/camera/enums/AwbMode;->AUTO:Lopenlight/co/camera/enums/AwbMode;

    invoke-virtual {p0}, Lopenlight/co/camera/enums/AwbMode;->getCaptureRequestModeValue()I

    move-result p0

    return p0
.end method

.method protected getExposureCompValue()I
    .locals 0

    .line 42
    sget-object p0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_00:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    .line 43
    invoke-virtual {p0}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->getExposureCompensationIndex()I

    move-result p0

    .line 42
    invoke-static {p0}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->forIndex(I)Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->getExposureCompensationVal()I

    move-result p0

    return p0
.end method

.method protected setAfMode(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 35
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 36
    invoke-static {p2, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAfTrigger(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method
