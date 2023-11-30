.class public Lopenlight/co/camera/managers/mode/ManualModeReqMgr;
.super Lopenlight/co/camera/managers/mode/ModeReqMgr;
.source "ManualModeReqMgr.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lopenlight/co/camera/managers/mode/ManualModeReqMgr;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/managers/mode/ManualModeReqMgr;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lopenlight/co/camera/managers/mode/ModeReqMgr;-><init>()V

    return-void
.end method

.method private getResetAeValue()I
    .locals 0

    .line 75
    invoke-static {}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->maxIndex()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    .line 76
    invoke-static {p0}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->forIndex(I)Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->getExposureCompensationVal()I

    move-result p0

    return p0
.end method


# virtual methods
.method protected applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 5

    .line 61
    invoke-super {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 62
    invoke-virtual {p0}, Lopenlight/co/camera/managers/mode/ManualModeReqMgr;->getSensitivity()I

    move-result v0

    .line 63
    invoke-virtual {p0}, Lopenlight/co/camera/managers/mode/ManualModeReqMgr;->getExposureTime()J

    move-result-wide v1

    .line 64
    invoke-static {p1, v0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setSensitivity(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 65
    invoke-static {p1, v1, v2}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;J)V

    .line 66
    invoke-direct {p0}, Lopenlight/co/camera/managers/mode/ManualModeReqMgr;->getResetAeValue()I

    move-result p0

    invoke-static {p1, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAeCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 67
    sget-object p0, Lopenlight/co/camera/managers/mode/ManualModeReqMgr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Iso Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {p1, v0, v0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setIsoPriority(Landroid/hardware/camera2/CaptureRequest$Builder;II)V

    .line 69
    invoke-static {p1, v1, v2, v1, v2}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setShutterPriority(Landroid/hardware/camera2/CaptureRequest$Builder;JJ)V

    const/4 p0, 0x0

    .line 70
    invoke-static {p1, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setStackedCaptureState(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public resetSettingsOnCaptureComplete(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->resetSettingsOnCaptureComplete(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 27
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ManualModeReqMgr;->applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public setBurstCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->setBurstCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 33
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ManualModeReqMgr;->applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public setStillCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->setStillCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 39
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ManualModeReqMgr;->applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method protected setTransferRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->setTransferRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 56
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ManualModeReqMgr;->applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public startAeOrFocus(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 50
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->startFocus()V

    return-void
.end method

.method public startCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->startCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 45
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ManualModeReqMgr;->applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method
