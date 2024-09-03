.class public Lopenlight/co/camera/testintent/TestIntentManager;
.super Ljava/lang/Object;
.source "TestIntentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/testintent/TestIntentManager$CITest;
    }
.end annotation


# static fields
.field private static final BURST_3:Ljava/lang/String; = "3"

.field private static final BURST_6:Ljava/lang/String; = "6"

.field private static final CENTER:Ljava/lang/String; = "center"

.field private static final EV_STEPS:I = 0x6

.field private static final MAX_PREVIEW_HEIGHT:I = 0x438

.field private static final MAX_PREVIEW_WIDTH_4_3:I = 0x5a0

.field private static final OTHER:Ljava/lang/String; = "other"

.field private static final SETTING_AUTO:Ljava/lang/String; = "auto"

.field private static final SETTING_ON:Ljava/lang/String; = "on"

.field private static final TAG:Ljava/lang/String; = "TestIntentManager"

.field private static final sInstance:Lopenlight/co/camera/testintent/TestIntentManager;


# instance fields
.field private final mCamInfo:Lopenlight/co/camera/CameraInfo;

.field private final mCamPref:Lopenlight/co/lib/content/Prefs;

.field private final mCameraManager:Lopenlight/co/camera/utils/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/camera/utils/Provider<",
            "Lopenlight/co/camera/managers/CameraManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegisteredListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lopenlight/co/camera/testintent/TestIntentListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTestEventHandler:Landroid/os/Handler;

.field private mTestIntentEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 97
    new-instance v0, Lopenlight/co/camera/testintent/TestIntentManager;

    invoke-direct {v0}, Lopenlight/co/camera/testintent/TestIntentManager;-><init>()V

    sput-object v0, Lopenlight/co/camera/testintent/TestIntentManager;->sInstance:Lopenlight/co/camera/testintent/TestIntentManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    .line 119
    sget-object v0, Lopenlight/co/camera/testintent/-$$Lambda$VHoBP3n01T-xYwXx8e0ZTKBHfkE;->INSTANCE:Lopenlight/co/camera/testintent/-$$Lambda$VHoBP3n01T-xYwXx8e0ZTKBHfkE;

    iput-object v0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    .line 121
    invoke-static {}, Lopenlight/co/camera/CameraInfo;->get()Lopenlight/co/camera/CameraInfo;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mCamInfo:Lopenlight/co/camera/CameraInfo;

    .line 125
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v0

    const-string v1, "feature.cli_support"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lopenlight/co/lib/utils/FeatureManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mTestIntentEnabled:Z

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mRegisteredListeners:Ljava/util/List;

    .line 170
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lopenlight/co/camera/testintent/-$$Lambda$TestIntentManager$hyP1XsFTWvrB9BzuuN_TE0W1qag;

    invoke-direct {v1, p0}, Lopenlight/co/camera/testintent/-$$Lambda$TestIntentManager$hyP1XsFTWvrB9BzuuN_TE0W1qag;-><init>(Lopenlight/co/camera/testintent/TestIntentManager;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mTestEventHandler:Landroid/os/Handler;

    .line 512
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 513
    new-instance v1, Ljava/io/File;

    const-string v3, "fkitten.txt"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 514
    new-instance v3, Ljava/io/File;

    const-string v4, "lightest.txt"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 516
    iget-boolean v0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mTestIntentEnabled:Z

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_54

    goto :goto_55

    :cond_54
    const/4 v2, 0x0

    :cond_55
    :goto_55
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mTestIntentEnabled:Z

    return-void
.end method

.method private changeAudio(Ljava/lang/String;)V
    .registers 4

    .line 401
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lopenlight/co/camera/utils/SoundManager$Theme;->valueOf(Ljava/lang/String;)Lopenlight/co/camera/utils/SoundManager$Theme;

    move-result-object v0

    .line 402
    sget-object v1, Lopenlight/co/camera/testintent/TestIntentManager$1;->$SwitchMap$light$co$camera$utils$SoundManager$Theme:[I

    invoke-virtual {v0}, Lopenlight/co/camera/utils/SoundManager$Theme;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_24

    goto :goto_1b

    .line 406
    :pswitch_14
    iget-object p0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "device_audio_setting"

    invoke-interface {p0, v0, p1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :goto_1b
    invoke-static {}, Lopenlight/co/camera/utils/SoundManager;->get()Lopenlight/co/camera/utils/SoundManager;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/utils/SoundManager;->checkAndEnableSound()V

    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method private changeBurst(Ljava/lang/String;)V
    .registers 4

    .line 388
    iget-object v0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "burst_mode"

    invoke-static {p1}, Lopenlight/co/camera/enums/BurstMode;->valueOf(Ljava/lang/String;)Lopenlight/co/camera/enums/BurstMode;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/enums/BurstMode;->getPrefsKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-direct {p0}, Lopenlight/co/camera/testintent/TestIntentManager;->updateUiForTest()V

    return-void
.end method

.method private changeCaf(Ljava/lang/String;)V
    .registers 4

    .line 368
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Lopenlight/co/camera/CameraMode;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v0, "cam_video_mode_caf"

    goto :goto_1c

    .line 372
    :cond_11
    invoke-virtual {v0}, Lopenlight/co/camera/CameraMode;->isManual()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "cam_manual_mode_caf"

    goto :goto_1c

    :cond_1a
    const-string v0, "cam_auto_mode_caf"

    .line 377
    :goto_1c
    iget-object v1, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    invoke-static {p1}, Lopenlight/co/camera/enums/CafMode;->valueOf(Ljava/lang/String;)Lopenlight/co/camera/enums/CafMode;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/enums/CafMode;->getPrefsKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-direct {p0}, Lopenlight/co/camera/testintent/TestIntentManager;->updateUiForTest()V

    return-void
.end method

.method private changeExposureCompensation(Ljava/lang/String;)V
    .registers 8

    .line 328
    iget-object v0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    .line 329
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 330
    iget-object v2, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mCamInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v2}, Lopenlight/co/camera/CameraInfo;->getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 331
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    .line 332
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 333
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le p1, v3, :cond_3f

    .line 334
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 336
    :cond_3f
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge p1, v3, :cond_55

    .line 337
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_55
    if-eqz v1, :cond_63

    .line 340
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 341
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->startRepeatingRequestInPreview()V

    .line 343
    :cond_63
    invoke-static {}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->values()[Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_69
    if-ge v2, v1, :cond_81

    aget-object v3, v0, v2

    .line 344
    invoke-virtual {v3}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->getExposureCompensationVal()I

    move-result v4

    if-ne p1, v4, :cond_7e

    .line 345
    iget-object v4, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v5, "ex_index"

    invoke-virtual {v3}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->getExposureCompensationIndex()I

    move-result v3

    invoke-interface {v4, v5, v3}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;I)V

    :cond_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    :cond_81
    return-void
.end method

.method private changeExposureTime(Ljava/lang/String;)V
    .registers 8

    .line 310
    iget-object v0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    .line 311
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 312
    invoke-direct {p0, p1}, Lopenlight/co/camera/testintent/TestIntentManager;->parseExposureTime(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lopenlight/co/camera/utils/Util;->shutterSpeedIndex(J)I

    move-result p1

    .line 313
    sget-object v2, Lopenlight/co/camera/utils/Constants;->exposureTimes:[J

    aget-wide v3, v2, p1

    if-eqz v1, :cond_26

    .line 315
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 316
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->startRepeatingRequestInPreview()V

    .line 318
    :cond_26
    iget-object p0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "shutter_index"

    invoke-interface {p0, v0, p1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;I)V

    .line 319
    sget-object p0, Lopenlight/co/camera/testintent/TestIntentManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Updated Exposure Time to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private changeFlash(Ljava/lang/String;)V
    .registers 4

    .line 356
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/CameraMode;->isAuto()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "flash_setting"

    goto :goto_13

    :cond_11
    const-string v0, "flash_setting_manual"

    .line 358
    :goto_13
    iget-object v1, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    invoke-static {p1}, Lopenlight/co/camera/enums/FlashMode;->valueOf(Ljava/lang/String;)Lopenlight/co/camera/enums/FlashMode;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/enums/FlashMode;->getPrefsKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-direct {p0}, Lopenlight/co/camera/testintent/TestIntentManager;->updateUiForTest()V

    return-void
.end method

.method private changeIso(Ljava/lang/String;)V
    .registers 7

    .line 292
    iget-object v0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    .line 293
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 294
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lopenlight/co/camera/utils/Util;->getCurrentIso(I)I

    move-result p1

    .line 295
    invoke-static {p1}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->forIndex(I)Lopenlight/co/camera/utils/Constants$SensitivityValues;

    move-result-object v2

    invoke-virtual {v2}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->getSensitivityVal()I

    move-result v2

    if-eqz v1, :cond_2e

    .line 297
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 298
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->startRepeatingRequestInPreview()V

    .line 300
    :cond_2e
    iget-object p0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "iso_index"

    invoke-interface {p0, v0, p1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;I)V

    .line 301
    sget-object p0, Lopenlight/co/camera/testintent/TestIntentManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Updated ISO to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private changeMetering(Ljava/lang/String;)V
    .registers 4

    .line 418
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x35f902

    if-eq v0, v1, :cond_28

    const v1, 0xb58ebe5

    if-eq v0, v1, :cond_1e

    const v1, 0x4da7578f    # 3.5094166E8f

    if-eq v0, v1, :cond_14

    goto :goto_32

    :cond_14
    const-string v0, "center-weighted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    const/4 p1, 0x0

    goto :goto_33

    :cond_1e
    const-string v0, "touch-weighted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    const/4 p1, 0x1

    goto :goto_33

    :cond_28
    const-string v0, "spot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    const/4 p1, 0x2

    goto :goto_33

    :cond_32
    :goto_32
    const/4 p1, -0x1

    :goto_33
    packed-switch p1, :pswitch_data_56

    goto :goto_52

    .line 426
    :pswitch_37
    sget-object p1, Lopenlight/co/camera/testintent/TestIntentManager;->TAG:Ljava/lang/String;

    const-string v0, "Spot Metering is not enabled on device yet"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    .line 423
    :pswitch_3f
    iget-object p1, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "metering_setting"

    const-string v1, "touch-weighted"

    invoke-interface {p1, v0, v1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    .line 420
    :pswitch_49
    iget-object p1, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "metering_setting"

    const-string v1, "center-weighted"

    invoke-interface {p1, v0, v1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :goto_52
    invoke-direct {p0}, Lopenlight/co/camera/testintent/TestIntentManager;->updateUiForTest()V

    return-void

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_49
        :pswitch_3f
        :pswitch_37
    .end packed-switch
.end method

.method private changeMode(Ljava/lang/String;)V
    .registers 5

    .line 280
    invoke-static {p1}, Lopenlight/co/camera/CameraMode;->getModeByLabel(Ljava/lang/String;)Lopenlight/co/camera/CameraMode;

    move-result-object p1

    .line 281
    sget-object v0, Lopenlight/co/camera/testintent/TestIntentManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera Mode changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lopenlight/co/camera/CameraMode;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lopenlight/co/camera/managers/CameraManager;->setCameraMode(Lopenlight/co/camera/CameraMode;)V

    .line 283
    invoke-direct {p0}, Lopenlight/co/camera/testintent/TestIntentManager;->updateUiForTest()V

    return-void
.end method

.method private changeTimer(Ljava/lang/String;)V
    .registers 4

    .line 440
    iget-object v0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "timer_setting"

    invoke-static {p1}, Lopenlight/co/camera/enums/TimerMode;->valueOf(Ljava/lang/String;)Lopenlight/co/camera/enums/TimerMode;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/enums/TimerMode;->getPrefsKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-direct {p0}, Lopenlight/co/camera/testintent/TestIntentManager;->updateUiForTest()V

    return-void
.end method

.method private changeZoom(Ljava/lang/String;)V
    .registers 6

    .line 259
    iget-object v0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mCamInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v0}, Lopenlight/co/camera/CameraInfo;->getMinFocalLengthLens()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    .line 260
    iget-object v2, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mCamInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v2}, Lopenlight/co/camera/CameraInfo;->getMaxFocalLengthLens()F

    move-result v2

    mul-float/2addr v2, v1

    .line 261
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    cmpl-float v3, p1, v2

    if-lez v3, :cond_19

    move p1, v2

    :cond_19
    cmpg-float v2, p1, v0

    if-gez v2, :cond_1e

    move p1, v0

    .line 268
    :cond_1e
    invoke-static {}, Lopenlight/co/camera/CameraInfo;->get()Lopenlight/co/camera/CameraInfo;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Lopenlight/co/camera/CameraInfo;->getMinFocalLengthLens()F

    move-result v0

    mul-float/2addr v0, v1

    div-float/2addr p1, v0

    .line 270
    invoke-static {}, Lopenlight/co/camera/managers/zoom/ZoomManager;->get()Lopenlight/co/camera/managers/zoom/ZoomManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lopenlight/co/camera/managers/zoom/ZoomManager;->setZoomForTest(F)V

    .line 271
    invoke-direct {p0}, Lopenlight/co/camera/testintent/TestIntentManager;->updateUiForTest()V

    return-void
.end method

.method private focusAtPoint(Ljava/lang/String;)V
    .registers 5

    .line 451
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x514d33ab

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1a

    const v1, 0x6527f10

    if-eq v0, v1, :cond_10

    goto :goto_24

    :cond_10
    const-string v0, "other"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_1a
    const-string v0, "center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    move p1, v2

    goto :goto_25

    :cond_24
    :goto_24
    const/4 p1, -0x1

    :goto_25
    packed-switch p1, :pswitch_data_3e

    goto :goto_3c

    :pswitch_29
    const/16 p1, 0x5a0

    .line 456
    invoke-direct {p0, p1}, Lopenlight/co/camera/testintent/TestIntentManager;->getRandomNumber(I)I

    move-result p1

    const/16 v0, 0x438

    .line 457
    invoke-direct {p0, v0}, Lopenlight/co/camera/testintent/TestIntentManager;->getRandomNumber(I)I

    move-result v0

    .line 456
    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/testintent/TestIntentManager;->focusForTest(II)V

    goto :goto_3c

    .line 453
    :pswitch_39
    invoke-direct {p0, v2, v2}, Lopenlight/co/camera/testintent/TestIntentManager;->focusForTest(II)V

    :goto_3c
    return-void

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_39
        :pswitch_29
    .end packed-switch
.end method

.method private focusForTest(II)V
    .registers 4

    .line 506
    iget-object p0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/testintent/TestIntentListener;

    .line 507
    invoke-interface {v0, p1, p2}, Lopenlight/co/camera/testintent/TestIntentListener;->updateFocusROI(II)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public static get()Lopenlight/co/camera/testintent/TestIntentManager;
    .registers 1

    .line 128
    sget-object v0, Lopenlight/co/camera/testintent/TestIntentManager;->sInstance:Lopenlight/co/camera/testintent/TestIntentManager;

    return-object v0
.end method

.method private getRandomNumber(I)I
    .registers 2

    .line 470
    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$new$0(Lopenlight/co/camera/testintent/TestIntentManager;Landroid/os/Message;)Z
    .registers 4

    .line 171
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 172
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->forIndex(I)Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    move-result-object p1

    .line 173
    sget-object v1, Lopenlight/co/camera/testintent/TestIntentManager$1;->$SwitchMap$light$co$camera$testintent$TestIntentManager$CITest:[I

    invoke-virtual {p1}, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_b2

    .line 227
    sget-object p0, Lopenlight/co/camera/testintent/TestIntentManager;->TAG:Ljava/lang/String;

    const-string p1, "Unknown message, ignoring"

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_af

    .line 223
    :pswitch_1e
    sget-object p1, Lopenlight/co/camera/testintent/TestIntentManager;->TAG:Ljava/lang/String;

    const-string v0, "Triggering Capture"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, Lopenlight/co/camera/testintent/TestIntentManager;->triggerCapture()V

    goto/16 :goto_af

    .line 219
    :pswitch_2a
    sget-object p1, Lopenlight/co/camera/testintent/TestIntentManager;->TAG:Ljava/lang/String;

    const-string v1, "Executing CAF Mode Change"

    invoke-static {p1, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-direct {p0, v0}, Lopenlight/co/camera/testintent/TestIntentManager;->changeCaf(Ljava/lang/String;)V

    goto/16 :goto_af

    .line 215
    :pswitch_36
    sget-object p1, Lopenlight/co/camera/testintent/TestIntentManager;->TAG:Ljava/lang/String;

    const-string v1, "Executing Focus"

    invoke-static {p1, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0, v0}, Lopenlight/co/camera/testintent/TestIntentManager;->focusAtPoint(Ljava/lang/String;)V

    goto/16 :goto_af

    .line 211
    :pswitch_42
    sget-object p1, Lopenlight/co/camera/testintent/TestIntentManager;->TAG:Ljava/lang/String;

    const-string v1, "Executing Camera Timer Change"

    invoke-static {p1, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-direct {p0, v0}, Lopenlight/co/camera/testintent/TestIntentManager;->changeTimer(Ljava/lang/String;)V

    goto :goto_af

    .line 207
    :pswitch_4d
    sget-object p1, Lopenlight/co/camera/testintent/TestIntentManager;->TAG:Ljava/lang/String;

    const-string v1, "Executing Camera Metering Change"

    invoke-static {p1, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-direct {p0, v0}, Lopenlight/co/camera/testintent/TestIntentManager;->changeMetering(Ljava/lang/String;)V

    goto :goto_af

    .line 203
    :pswitch_58
    sget-object p1, Lopenlight/co/camera/testintent/TestIntentManager;->TAG:Ljava/lang/String;

    const-string v1, "Executing Camera Audio Change"

    invoke-static {p1, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-direct {p0, v0}, Lopenlight/co/camera/testintent/TestIntentManager;->changeAudio(Ljava/lang/String;)V

    goto :goto_af

    .line 199
    :pswitch_63
    sget-object p1, Lopenlight/co/camera/testintent/TestIntentManager;->TAG:Ljava/lang/String;

    const-string v1, "Executing Camera Burst Change"

    invoke-static {p1, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-direct {p0, v0}, Lopenlight/co/camera/testintent/TestIntentManager;->changeBurst(Ljava/lang/String;)V

    goto :goto_af

    .line 195
    :pswitch_6e
    sget-object p1, Lopenlight/co/camera/testintent/TestIntentManager;->TAG:Ljava/lang/String;

    const-string v1, "Executing Camera Flash Change"

    invoke-static {p1, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, v0}, Lopenlight/co/camera/testintent/TestIntentManager;->changeFlash(Ljava/lang/String;)V

    goto :goto_af

    .line 191
    :pswitch_79
    sget-object p1, Lopenlight/co/camera/testintent/TestIntentManager;->TAG:Ljava/lang/String;

    const-string v1, "Executing Camera AutoExposure Change"

    invoke-static {p1, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-direct {p0, v0}, Lopenlight/co/camera/testintent/TestIntentManager;->changeExposureCompensation(Ljava/lang/String;)V

    goto :goto_af

    .line 187
    :pswitch_84
    sget-object p1, Lopenlight/co/camera/testintent/TestIntentManager;->TAG:Ljava/lang/String;

    const-string v1, "Executing Camera Exposure Time Change"

    invoke-static {p1, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0, v0}, Lopenlight/co/camera/testintent/TestIntentManager;->changeExposureTime(Ljava/lang/String;)V

    goto :goto_af

    .line 183
    :pswitch_8f
    sget-object p1, Lopenlight/co/camera/testintent/TestIntentManager;->TAG:Ljava/lang/String;

    const-string v1, "Executing Camera ISO Change"

    invoke-static {p1, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-direct {p0, v0}, Lopenlight/co/camera/testintent/TestIntentManager;->changeIso(Ljava/lang/String;)V

    goto :goto_af

    .line 179
    :pswitch_9a
    sget-object p1, Lopenlight/co/camera/testintent/TestIntentManager;->TAG:Ljava/lang/String;

    const-string v1, "Executing Camera Mode Change"

    invoke-static {p1, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, v0}, Lopenlight/co/camera/testintent/TestIntentManager;->changeMode(Ljava/lang/String;)V

    goto :goto_af

    .line 175
    :pswitch_a5
    sget-object p1, Lopenlight/co/camera/testintent/TestIntentManager;->TAG:Ljava/lang/String;

    const-string v1, "Executing Camera Focal Length Change"

    invoke-static {p1, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0, v0}, Lopenlight/co/camera/testintent/TestIntentManager;->changeZoom(Ljava/lang/String;)V

    :goto_af
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_a5
        :pswitch_9a
        :pswitch_8f
        :pswitch_84
        :pswitch_79
        :pswitch_6e
        :pswitch_63
        :pswitch_58
        :pswitch_4d
        :pswitch_42
        :pswitch_36
        :pswitch_2a
        :pswitch_1e
    .end packed-switch
.end method

.method private parseExposureTime(Ljava/lang/String;)J
    .registers 4

    const-string p0, "/"

    .line 482
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_20

    const-string p0, "/"

    .line 483
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-wide/32 v0, 0x3b9aca00

    .line 484
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    div-long/2addr v0, p0

    return-wide v0

    :cond_20
    const p0, 0x4e6e6b28    # 1.0E9f

    .line 486
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr p1, p0

    float-to-long p0, p1

    return-wide p0
.end method

.method private sendMessage(ILjava/lang/String;)V
    .registers 4

    .line 240
    invoke-static {}, Lopenlight/co/camera/utils/CameraState;->get()Lopenlight/co/camera/utils/CameraState;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/utils/CameraState;->isCameraOpen()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 241
    iget-object v0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mTestEventHandler:Landroid/os/Handler;

    iget-object p0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mTestEventHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_15
    return-void
.end method

.method private triggerCapture()V
    .registers 3

    .line 249
    invoke-static {}, Lopenlight/co/camera/utils/TimingLoggerUtil;->get()Lopenlight/co/camera/utils/TimingLoggerUtil;

    move-result-object v0

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->SOFT_BUTTON_PRESS:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/utils/TimingLoggerUtil;->captureTiming(Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;)V

    .line 250
    iget-object p0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {p0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->captureStart()V

    return-void
.end method

.method private updateUiForTest()V
    .registers 2

    .line 494
    iget-object p0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/testintent/TestIntentListener;

    .line 495
    invoke-interface {v0}, Lopenlight/co/camera/testintent/TestIntentListener;->updateUiAfterTest()V

    goto :goto_6

    :cond_16
    return-void
.end method


# virtual methods
.method public isTestEnabled()Z
    .registers 1

    .line 132
    iget-boolean p0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mTestIntentEnabled:Z

    return p0
.end method

.method public registerListener(Lopenlight/co/camera/testintent/TestIntentListener;)V
    .registers 2

    .line 138
    iget-object p0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method startTest(Landroid/os/Bundle;)V
    .registers 10

    .line 154
    iget-boolean v0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mTestIntentEnabled:Z

    if-nez v0, :cond_c

    .line 155
    sget-object p0, Lopenlight/co/camera/testintent/TestIntentManager;->TAG:Ljava/lang/String;

    const-string p1, "Missing file to enable test. Please install and restart app."

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    if-eqz p1, :cond_44

    .line 159
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 160
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-static {}, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->values()[Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_2c
    if-ge v5, v4, :cond_16

    aget-object v6, v3, v5

    .line 162
    invoke-virtual {v6}, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->getTestKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 163
    invoke-virtual {v6}, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->getEventMessage()I

    move-result v6

    invoke-direct {p0, v6, v2}, Lopenlight/co/camera/testintent/TestIntentManager;->sendMessage(ILjava/lang/String;)V

    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_44
    return-void
.end method

.method public declared-synchronized unregisterListener(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 142
    :try_start_1
    iget-object v0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 143
    iget-object v0, p0, Lopenlight/co/camera/testintent/TestIntentManager;->mRegisteredListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 144
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lopenlight/co/camera/testintent/TestIntentListener;

    invoke-interface {v1}, Lopenlight/co/camera/testintent/TestIntentListener;->getListenerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 146
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2b

    goto :goto_f

    .line 150
    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    .line 141
    monitor-exit p0

    throw p1
.end method
