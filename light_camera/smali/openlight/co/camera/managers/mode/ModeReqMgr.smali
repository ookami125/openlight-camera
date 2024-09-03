.class public abstract Lopenlight/co/camera/managers/mode/ModeReqMgr;
.super Ljava/lang/Object;
.source "ModeReqMgr.java"


# static fields
.field private static final IS_LIGHT:Z

.field private static final TAG:Ljava/lang/String; = "ModeReqMgr"


# instance fields
.field private final mBurstManager:Lopenlight/co/camera/managers/capture/CaptureBurstManager;

.field protected final mCamPref:Lopenlight/co/lib/content/Prefs;

.field private final mCameraInfo:Lopenlight/co/camera/CameraInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    invoke-static {}, Lopenlight/co/camera/CameraApp;->isLight()Z

    move-result v0

    sput-boolean v0, Lopenlight/co/camera/managers/mode/ModeReqMgr;->IS_LIGHT:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/mode/ModeReqMgr;->mCamPref:Lopenlight/co/lib/content/Prefs;

    .line 61
    invoke-static {}, Lopenlight/co/camera/CameraInfo;->get()Lopenlight/co/camera/CameraInfo;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/mode/ModeReqMgr;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    .line 63
    invoke-static {}, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->get()Lopenlight/co/camera/managers/capture/CaptureBurstManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/mode/ModeReqMgr;->mBurstManager:Lopenlight/co/camera/managers/capture/CaptureBurstManager;

    return-void
.end method

.method private set3AControlRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 6

    .line 253
    iget-object v0, p0, Lopenlight/co/camera/managers/mode/ModeReqMgr;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v0}, Lopenlight/co/camera/CameraInfo;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 254
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 255
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/camera/CameraMode;->isManual()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 256
    invoke-static {p1, v2}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 257
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 260
    :cond_2b
    invoke-virtual {p0, v0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->setAfMode(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 262
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    invoke-static {p0, v2}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->contains([II)Z

    move-result p0

    if-eqz p0, :cond_45

    .line 266
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 268
    :cond_45
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private setPreCaptureTriggerRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 280
    invoke-virtual {p0}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->getAeModeForFlash()I

    move-result p0

    invoke-static {p1, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAeMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method private setZoomForPreviewIntially(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 6

    .line 272
    invoke-static {}, Lopenlight/co/camera/managers/zoom/ZoomManager;->get()Lopenlight/co/camera/managers/zoom/ZoomManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->getFocalLength()F

    move-result v0

    .line 273
    sget-object v1, Lopenlight/co/camera/managers/mode/ModeReqMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ZOOM Focal Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 275
    iget-object p0, p0, Lopenlight/co/camera/managers/mode/ModeReqMgr;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "focal_length"

    invoke-interface {p0, v1, v0}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;F)V

    .line 276
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lopenlight/co/camera/managers/zoom/ZoomManager;->get()Lopenlight/co/camera/managers/zoom/ZoomManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->getZoomCroppedView()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 170
    invoke-virtual {p0}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->getExposureCompValue()I

    move-result v0

    invoke-static {p1, v0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAeCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 171
    invoke-virtual {p0}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->getAeModeForFlash()I

    move-result v0

    invoke-static {p1, v0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAeMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 172
    invoke-virtual {p0}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->getAwbMode()I

    move-result p0

    invoke-static {p1, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAwbMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method protected getAeModeForFlash()I
    .registers 6

    .line 184
    invoke-static {}, Lopenlight/co/camera/utils/CamPrefsUtils;->getFlash()Ljava/lang/String;

    move-result-object p0

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x473ee362

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2f

    const v1, -0x445cab60

    if-eq v0, v1, :cond_25

    const v1, 0x60e43c8e

    if-eq v0, v1, :cond_1b

    goto :goto_39

    :cond_1b
    const-string v0, "flash_on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    move p0, v2

    goto :goto_3a

    :cond_25
    const-string v0, "flash_off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    move p0, v3

    goto :goto_3a

    :cond_2f
    const-string v0, "flash_auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    move p0, v4

    goto :goto_3a

    :cond_39
    :goto_39
    const/4 p0, -0x1

    :goto_3a
    packed-switch p0, :pswitch_data_42

    return v4

    :pswitch_3e
    return v2

    :pswitch_3f
    const/4 p0, 0x3

    return p0

    :pswitch_41
    return v3

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_41
        :pswitch_3f
        :pswitch_3e
    .end packed-switch
.end method

.method getAwbMode()I
    .registers 2

    .line 221
    iget-object p0, p0, Lopenlight/co/camera/managers/mode/ModeReqMgr;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "white_balance_setting"

    invoke-interface {p0, v0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lopenlight/co/camera/enums/AwbMode;->getModeByPrefsKey(Ljava/lang/String;)Lopenlight/co/camera/enums/AwbMode;

    move-result-object p0

    .line 222
    invoke-virtual {p0}, Lopenlight/co/camera/enums/AwbMode;->getCaptureRequestModeValue()I

    move-result p0

    return p0
.end method

.method protected getExposureCompValue()I
    .registers 1

    .line 211
    invoke-static {}, Lopenlight/co/camera/utils/CamPrefsUtils;->getExpCompIndex()I

    move-result p0

    .line 210
    invoke-static {p0}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->forIndex(I)Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    move-result-object p0

    .line 211
    invoke-virtual {p0}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->getExposureCompensationVal()I

    move-result p0

    return p0
.end method

.method getExposureTime()J
    .registers 3

    .line 239
    iget-object v0, p0, Lopenlight/co/camera/managers/mode/ModeReqMgr;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "shutter_index"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 240
    invoke-static {}, Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;->maxIndex()I

    move-result v1

    invoke-static {v0, v1}, Lopenlight/co/camera/utils/Util;->isIndexOutOfRange(II)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 241
    sget-object v0, Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;->SHUTTER_SPEED_1_30:Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;

    invoke-virtual {v0}, Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;->getShutterSpeedIndex()I

    move-result v0

    .line 242
    iget-object p0, p0, Lopenlight/co/camera/managers/mode/ModeReqMgr;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "shutter_index"

    invoke-interface {p0, v1, v0}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;I)V

    .line 244
    :cond_1f
    sget-object p0, Lopenlight/co/camera/utils/Constants;->exposureTimes:[J

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method getSensitivity()I
    .registers 3

    .line 226
    iget-object v0, p0, Lopenlight/co/camera/managers/mode/ModeReqMgr;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "iso_index"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 227
    invoke-static {}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->maxIndex()I

    move-result v1

    invoke-static {v0, v1}, Lopenlight/co/camera/utils/Util;->isIndexOutOfRange(II)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 228
    sget-object v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_100:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    invoke-virtual {v0}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->getSensitivityIndex()I

    move-result v0

    .line 229
    iget-object p0, p0, Lopenlight/co/camera/managers/mode/ModeReqMgr;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "iso_index"

    invoke-interface {p0, v1, v0}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;I)V

    .line 231
    :cond_1f
    invoke-static {v0}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->forIndex(I)Lopenlight/co/camera/utils/Constants$SensitivityValues;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->getSensitivityVal()I

    move-result p0

    return p0
.end method

.method getSensitivityRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object p0, p0, Lopenlight/co/camera/managers/mode/ModeReqMgr;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {p0}, Lopenlight/co/camera/CameraInfo;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    return-object p0
.end method

.method getShutterRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object p0, p0, Lopenlight/co/camera/managers/mode/ModeReqMgr;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {p0}, Lopenlight/co/camera/CameraInfo;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    return-object p0
.end method

.method public resetSettingsOnCaptureComplete(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 5

    .line 69
    invoke-static {}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->get()Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    move-result-object p0

    .line 70
    sget-object v0, Lopenlight/co/camera/managers/mode/ModeReqMgr;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ae HW Locked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->getAeHwLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->getAeHwLock()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 72
    invoke-virtual {p0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->clearFlashRequestOnAeUnlock()V

    const/4 p0, 0x0

    .line 73
    invoke-static {p1, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 74
    invoke-static {p1, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAwbLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_2e
    return-void
.end method

.method public resetZoomRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 150
    iget-object p0, p0, Lopenlight/co/camera/managers/mode/ModeReqMgr;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "focal_length"

    invoke-interface {p0, v0}, Lopenlight/co/lib/content/Prefs;->getFloatValue(Ljava/lang/String;)F

    move-result p0

    .line 151
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 152
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method protected setAfMode(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    return-void
.end method

.method public setBurstCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 80
    iget-object v0, p0, Lopenlight/co/camera/managers/mode/ModeReqMgr;->mBurstManager:Lopenlight/co/camera/managers/capture/CaptureBurstManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->getIfFetchRequest()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 81
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->setTransferRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_20

    .line 83
    :cond_c
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->setCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 84
    iget-object v0, p0, Lopenlight/co/camera/managers/mode/ModeReqMgr;->mBurstManager:Lopenlight/co/camera/managers/capture/CaptureBurstManager;

    .line 85
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/camera/view/rotate/OrientationsController;->getConfig()Lopenlight/co/camera/enums/OrientationConfig;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/camera/enums/OrientationConfig;->getDeviceAngle()I

    move-result v1

    .line 84
    invoke-virtual {v0, v1}, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->setBurstOrientation(I)V

    .line 87
    :goto_20
    iget-object p0, p0, Lopenlight/co/camera/managers/mode/ModeReqMgr;->mBurstManager:Lopenlight/co/camera/managers/capture/CaptureBurstManager;

    .line 88
    invoke-virtual {p0}, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->getBurstOrientation()I

    move-result p0

    invoke-static {p1, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setJpegOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method protected setCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    const/4 v0, 0x0

    .line 156
    invoke-static {p1, v0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAeTargetFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/util/Range;)V

    .line 157
    invoke-static {p1, v0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAeRegions(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 158
    invoke-static {p1, v0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAfRegions(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 159
    iget-object v0, p0, Lopenlight/co/camera/managers/mode/ModeReqMgr;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "wb_value"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 160
    invoke-static {p1, v0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAwbMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 161
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->resetZoomRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 163
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 164
    invoke-static {}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->get()Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->getAeHwLock()Z

    move-result p0

    .line 165
    invoke-static {p1, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 166
    invoke-static {p1, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAwbLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public setFocusCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 141
    invoke-direct {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->set3AControlRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 142
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const/4 p0, 0x1

    .line 143
    invoke-static {p1, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 144
    invoke-static {p1, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAwbLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 145
    invoke-static {}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->get()Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->getFocusTriggerType()I

    move-result p0

    invoke-static {p1, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setFocusType(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 146
    sget-object p0, Lopenlight/co/camera/managers/mode/ModeReqMgr;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Setting Focus Type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->get()Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->getFocusTriggerType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setIsoExposureRange(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    const/4 p0, 0x0

    .line 216
    invoke-static {p1, p0, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setIsoPriority(Landroid/hardware/camera2/CaptureRequest$Builder;II)V

    const-wide/16 v0, 0x0

    .line 217
    invoke-static {p1, v0, v1, v0, v1}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setShutterPriority(Landroid/hardware/camera2/CaptureRequest$Builder;JJ)V

    return-void
.end method

.method public setPreviewRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->set3AControlRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 132
    invoke-direct {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->setZoomForPreviewIntially(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 134
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->applyCommonModeSettings(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const/4 p0, 0x0

    .line 136
    invoke-static {p1, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 137
    invoke-static {p1, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAwbLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public setStillCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 93
    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->setCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 95
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/view/rotate/OrientationsController;->getConfig()Lopenlight/co/camera/enums/OrientationConfig;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/enums/OrientationConfig;->getDeviceAngle()I

    move-result p0

    .line 94
    invoke-static {p1, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setJpegOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method protected setTransferRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 176
    iget-object v0, p0, Lopenlight/co/camera/managers/mode/ModeReqMgr;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "focal_length"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getFloatValue(Ljava/lang/String;)F

    move-result v0

    .line 177
    invoke-static {p1, v0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setLensFocalLength(Landroid/hardware/camera2/CaptureRequest$Builder;F)V

    const/4 v0, 0x0

    .line 178
    invoke-static {p1, v0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setScalarRegion(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    .line 179
    invoke-virtual {p0}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->getExposureCompValue()I

    move-result p0

    invoke-static {p1, p0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setAeCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public startAeOrFocus(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 2

    .line 115
    invoke-static {}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->get()Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    move-result-object p0

    .line 123
    invoke-static {}, Lopenlight/co/camera/managers/focus/FocusManager;->get()Lopenlight/co/camera/managers/focus/FocusManager;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/managers/focus/FocusManager;->isFocusingFirstTime()Z

    move-result p1

    if-nez p1, :cond_1c

    invoke-virtual {p0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->isCenterWeighted()Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 124
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->startFocus()V

    goto :goto_23

    .line 126
    :cond_1c
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->startAeMetering()V

    :goto_23
    return-void
.end method

.method public startCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 100
    invoke-static {}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->get()Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    move-result-object v0

    .line 101
    invoke-direct {p0, p1}, Lopenlight/co/camera/managers/mode/ModeReqMgr;->setPreCaptureTriggerRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 102
    sget-boolean p0, Lopenlight/co/camera/managers/mode/ModeReqMgr;->IS_LIGHT:Z

    if-eqz p0, :cond_13

    .line 105
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->triggerCaptureToHal()V

    goto :goto_19

    .line 108
    :cond_13
    invoke-virtual {v0, p1}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->preCaptureTrigger(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 109
    invoke-virtual {v0, p1}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->resetPreCaptureTrigger(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :goto_19
    return-void
.end method
