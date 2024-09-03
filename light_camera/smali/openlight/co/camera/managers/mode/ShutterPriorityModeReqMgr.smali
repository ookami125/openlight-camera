.class public Lopenlight/co/camera/managers/mode/ShutterPriorityModeReqMgr;
.super Lopenlight/co/camera/managers/mode/ModeReqMgr;
.source "ShutterPriorityModeReqMgr.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lopenlight/co/camera/managers/mode/ModeReqMgr;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 52
    invoke-super {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 54
    invoke-static {}, Lopenlight/co/camera/utils/CamPrefsUtils;->getExpCompIndex()I

    move-result v0

    invoke-static {v0}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->forIndex(I)Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->getExposureCompensationVal()I

    move-result v0

    .line 56
    invoke-static {p1, v0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAeCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 57
    invoke-virtual {p0}, Lopenlight/co/camera/managers/mode/ShutterPriorityModeReqMgr;->getExposureTime()J

    move-result-wide v0

    .line 58
    invoke-static {p1, v0, v1}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;J)V

    const/4 p0, 0x0

    .line 59
    invoke-static {p1, p0, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setIsoPriority(Landroid/hardware/camera2/CaptureRequest$Builder;II)V

    .line 60
    invoke-static {p1, v0, v1, v0, v1}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setShutterPriority(Landroid/hardware/camera2/CaptureRequest$Builder;JJ)V

    .line 61
    invoke-static {p1, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setStackedCaptureState(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public resetSettingsOnCaptureComplete(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 23
    invoke-super {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->resetSettingsOnCaptureComplete(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 24
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ShutterPriorityModeReqMgr;->applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public setBurstCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 29
    invoke-super {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->setBurstCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 30
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ShutterPriorityModeReqMgr;->applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public setStillCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 35
    invoke-super {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->setStillCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 36
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ShutterPriorityModeReqMgr;->applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public startAeOrFocus(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 47
    invoke-super {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->startAeOrFocus(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 48
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ShutterPriorityModeReqMgr;->applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public startCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 41
    invoke-super {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->startCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 42
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ShutterPriorityModeReqMgr;->applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method
