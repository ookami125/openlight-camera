.class public Lopenlight/co/camera/managers/mode/IsoPriorityModeReqMgr;
.super Lopenlight/co/camera/managers/mode/ModeReqMgr;
.source "IsoPriorityModeReqMgr.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    const-class v0, Lopenlight/co/camera/managers/mode/IsoPriorityModeReqMgr;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/managers/mode/IsoPriorityModeReqMgr;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lopenlight/co/camera/managers/mode/ModeReqMgr;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 7

    .line 62
    invoke-super {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 63
    invoke-virtual {p0}, Lopenlight/co/camera/managers/mode/IsoPriorityModeReqMgr;->getSensitivity()I

    move-result p0

    .line 65
    invoke-static {}, Lopenlight/co/camera/utils/CamPrefsUtils;->getExpCompIndex()I

    move-result v0

    invoke-static {v0}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->forIndex(I)Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->getExposureCompensationVal()I

    move-result v0

    .line 67
    invoke-static {p1, v0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAeCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 68
    sget-object v0, Lopenlight/co/camera/managers/mode/IsoPriorityModeReqMgr;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Iso Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {p1, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setSensitivity(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 70
    invoke-static {p1, p0, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setIsoPriority(Landroid/hardware/camera2/CaptureRequest$Builder;II)V

    .line 71
    sget-object p0, Lopenlight/co/camera/utils/Constants;->exposureTimes:[J

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    invoke-static {p1, v3, v4, v1, v2}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setShutterPriority(Landroid/hardware/camera2/CaptureRequest$Builder;JJ)V

    .line 72
    invoke-static {p1, v0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setStackedCaptureState(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public resetSettingsOnCaptureComplete(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 26
    invoke-super {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->resetSettingsOnCaptureComplete(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 27
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/IsoPriorityModeReqMgr;->applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public setBurstCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 32
    invoke-super {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->setBurstCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 33
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/IsoPriorityModeReqMgr;->applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public setStillCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 38
    invoke-super {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->setStillCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 39
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/IsoPriorityModeReqMgr;->applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method protected setTransferRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 56
    invoke-super {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->setTransferRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 57
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/IsoPriorityModeReqMgr;->applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public startAeOrFocus(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 50
    invoke-super {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->startAeOrFocus(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 51
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/IsoPriorityModeReqMgr;->applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public startCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 44
    invoke-super {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->startCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 45
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/IsoPriorityModeReqMgr;->applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method
