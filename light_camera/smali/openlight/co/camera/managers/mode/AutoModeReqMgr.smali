.class public Lopenlight/co/camera/managers/mode/AutoModeReqMgr;
.super Lopenlight/co/camera/managers/mode/ModeReqMgr;
.source "AutoModeReqMgr.java"


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

    .line 40
    invoke-super {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 41
    iget-object v0, p0, Lopenlight/co/camera/managers/mode/AutoModeReqMgr;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "stacked_capture_state"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 43
    invoke-static {p1, v0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setStackedCaptureState(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 45
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/AutoModeReqMgr;->setIsoExposureRange(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public resetSettingsOnCaptureComplete(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 34
    invoke-super {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->resetSettingsOnCaptureComplete(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 35
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/AutoModeReqMgr;->setIsoExposureRange(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public setBurstCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 28
    invoke-super {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->setBurstCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 29
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/AutoModeReqMgr;->setIsoExposureRange(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public setStillCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 22
    invoke-super {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->setStillCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 23
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/AutoModeReqMgr;->setIsoExposureRange(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method
