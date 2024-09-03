.class public Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;
.super Ljava/lang/Object;
.source "CaptureRequestManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final sInstance:Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;


# instance fields
.field private final mCameraManager:Lopenlight/co/camera/utils/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/camera/utils/Provider<",
            "Lopenlight/co/camera/managers/CameraManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraState:Lopenlight/co/camera/utils/CameraState;

.field private final mCaptureManager:Lopenlight/co/camera/utils/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/camera/utils/Provider<",
            "Lopenlight/co/camera/managers/capture/CaptureManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusManager:Lopenlight/co/camera/utils/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/camera/utils/Provider<",
            "Lopenlight/co/camera/managers/focus/FocusManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mModeMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lopenlight/co/camera/CameraMode;",
            "Lopenlight/co/camera/managers/mode/ModeReqMgr;",
            ">;"
        }
    .end annotation
.end field

.field private final mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;

    invoke-direct {v0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;-><init>()V

    sput-object v0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->sInstance:Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lopenlight/co/camera/managers/capturerequest/-$$Lambda$VHoBP3n01T-xYwXx8e0ZTKBHfkE;->INSTANCE:Lopenlight/co/camera/managers/capturerequest/-$$Lambda$VHoBP3n01T-xYwXx8e0ZTKBHfkE;

    iput-object v0, p0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    .line 44
    sget-object v0, Lopenlight/co/camera/managers/capturerequest/-$$Lambda$awF8a8iz0l390QmOYtlAiBwV1CU;->INSTANCE:Lopenlight/co/camera/managers/capturerequest/-$$Lambda$awF8a8iz0l390QmOYtlAiBwV1CU;

    iput-object v0, p0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->mFocusManager:Lopenlight/co/camera/utils/Provider;

    .line 46
    sget-object v0, Lopenlight/co/camera/managers/capturerequest/-$$Lambda$eLtAqQ88bQVQFONk62sp-oLvSOQ;->INSTANCE:Lopenlight/co/camera/managers/capturerequest/-$$Lambda$eLtAqQ88bQVQFONk62sp-oLvSOQ;

    iput-object v0, p0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->mCaptureManager:Lopenlight/co/camera/utils/Provider;

    .line 48
    invoke-static {}, Lopenlight/co/camera/utils/CameraState;->get()Lopenlight/co/camera/utils/CameraState;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;

    .line 50
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lopenlight/co/camera/CameraMode;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->mModeMap:Ljava/util/EnumMap;

    .line 52
    invoke-static {}, Lopenlight/co/camera/managers/zoom/ZoomManager;->get()Lopenlight/co/camera/managers/zoom/ZoomManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    .line 175
    invoke-direct {p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->initModes()V

    return-void
.end method

.method public static get()Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;
    .registers 1

    .line 55
    sget-object v0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->sInstance:Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;

    return-object v0
.end method

.method private getModeManager()Lopenlight/co/camera/managers/mode/ModeReqMgr;
    .registers 4

    .line 147
    iget-object v0, p0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object v0

    .line 149
    sget-object v1, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager$1;->$SwitchMap$light$co$camera$CameraMode:[I

    invoke-virtual {v0}, Lopenlight/co/camera/CameraMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2c

    .line 158
    iget-object p0, p0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->mModeMap:Ljava/util/EnumMap;

    sget-object v0, Lopenlight/co/camera/CameraMode;->AUTO:Lopenlight/co/camera/CameraMode;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/mode/ModeReqMgr;

    goto :goto_2a

    .line 155
    :pswitch_22
    iget-object p0, p0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->mModeMap:Ljava/util/EnumMap;

    invoke-virtual {p0, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/mode/ModeReqMgr;

    :goto_2a
    return-object p0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method private initModes()V
    .registers 4

    .line 167
    iget-object v0, p0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->mModeMap:Ljava/util/EnumMap;

    sget-object v1, Lopenlight/co/camera/CameraMode;->AUTO:Lopenlight/co/camera/CameraMode;

    new-instance v2, Lopenlight/co/camera/managers/mode/AutoModeReqMgr;

    invoke-direct {v2}, Lopenlight/co/camera/managers/mode/AutoModeReqMgr;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->mModeMap:Ljava/util/EnumMap;

    sget-object v1, Lopenlight/co/camera/CameraMode;->MANUAL:Lopenlight/co/camera/CameraMode;

    new-instance v2, Lopenlight/co/camera/managers/mode/ManualModeReqMgr;

    invoke-direct {v2}, Lopenlight/co/camera/managers/mode/ManualModeReqMgr;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->mModeMap:Ljava/util/EnumMap;

    sget-object v1, Lopenlight/co/camera/CameraMode;->ISO:Lopenlight/co/camera/CameraMode;

    new-instance v2, Lopenlight/co/camera/managers/mode/IsoPriorityModeReqMgr;

    invoke-direct {v2}, Lopenlight/co/camera/managers/mode/IsoPriorityModeReqMgr;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->mModeMap:Ljava/util/EnumMap;

    sget-object v1, Lopenlight/co/camera/CameraMode;->SHUTTER:Lopenlight/co/camera/CameraMode;

    new-instance v2, Lopenlight/co/camera/managers/mode/ShutterPriorityModeReqMgr;

    invoke-direct {v2}, Lopenlight/co/camera/managers/mode/ShutterPriorityModeReqMgr;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object p0, p0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->mModeMap:Ljava/util/EnumMap;

    sget-object v0, Lopenlight/co/camera/CameraMode;->VIDEO:Lopenlight/co/camera/CameraMode;

    new-instance v1, Lopenlight/co/camera/managers/mode/VideoModeReqMgr;

    invoke-direct {v1}, Lopenlight/co/camera/managers/mode/VideoModeReqMgr;-><init>()V

    invoke-virtual {p0, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public createBurstCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 86
    invoke-direct {p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->getModeManager()Lopenlight/co/camera/managers/mode/ModeReqMgr;

    move-result-object p0

    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->setBurstCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public createPreviewRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 5

    .line 65
    sget-object v0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preview Request Mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->getModeManager()Lopenlight/co/camera/managers/mode/ModeReqMgr;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->getModeManager()Lopenlight/co/camera/managers/mode/ModeReqMgr;

    move-result-object p0

    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->setPreviewRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public createStillCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 75
    invoke-direct {p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->getModeManager()Lopenlight/co/camera/managers/mode/ModeReqMgr;

    move-result-object p0

    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->setStillCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 77
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/view/rotate/OrientationsController;->getConfig()Lopenlight/co/camera/enums/OrientationConfig;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/enums/OrientationConfig;->getDeviceAngle()I

    move-result p0

    .line 76
    invoke-static {p1, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setJpegOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public resetPostCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 95
    invoke-direct {p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->getModeManager()Lopenlight/co/camera/managers/mode/ModeReqMgr;

    move-result-object p0

    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->resetSettingsOnCaptureComplete(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public resetZoom(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 108
    invoke-direct {p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->getModeManager()Lopenlight/co/camera/managers/mode/ModeReqMgr;

    move-result-object p0

    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->resetZoomRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public setFocusCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 99
    invoke-direct {p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->getModeManager()Lopenlight/co/camera/managers/mode/ModeReqMgr;

    move-result-object p0

    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->setFocusCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public startAeFocus(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 9

    .line 129
    iget-object v0, p0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    .line 130
    iget-object v1, p0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {v1}, Lopenlight/co/camera/managers/zoom/ZoomManager;->isCurrentlyZooming()Z

    move-result v1

    .line 131
    iget-object v2, p0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->mFocusManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v2}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-virtual {v2}, Lopenlight/co/camera/managers/focus/FocusManager;->isFocusing()Z

    move-result v2

    .line 132
    iget-object v3, p0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->mCaptureManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v3}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lopenlight/co/camera/managers/capture/CaptureManager;

    invoke-virtual {v3}, Lopenlight/co/camera/managers/capture/CaptureManager;->isIdle()Z

    move-result v3

    .line 133
    sget-object v4, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[AF] is zooming: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " is focusing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " can capture: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_5b

    if-nez v2, :cond_5b

    if-nez v3, :cond_53

    goto :goto_5b

    .line 143
    :cond_53
    invoke-direct {p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->getModeManager()Lopenlight/co/camera/managers/mode/ModeReqMgr;

    move-result-object p0

    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->startAeOrFocus(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    :cond_5b
    :goto_5b
    if-eqz v1, :cond_71

    .line 137
    iget-object p0, p0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->mCameraState:Lopenlight/co/camera/utils/CameraState;

    invoke-virtual {p0}, Lopenlight/co/camera/utils/CameraState;->getSessionState()Lopenlight/co/camera/utils/CameraState$SessionState;

    move-result-object p0

    sget-object p1, Lopenlight/co/camera/utils/CameraState$SessionState;->WAITING_FOR_3A_CONVERGENCE:Lopenlight/co/camera/utils/CameraState$SessionState;

    if-ne p0, p1, :cond_71

    .line 138
    sget-object p0, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->TAG:Ljava/lang/String;

    const-string p1, "Zoom trigger after focus started. Aborting focus."

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->focusComplete()V

    :cond_71
    return-void
.end method

.method public startCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 118
    invoke-direct {p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestManager;->getModeManager()Lopenlight/co/camera/managers/mode/ModeReqMgr;

    move-result-object p0

    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->startCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method
