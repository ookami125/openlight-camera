.class public Lopenlight/co/camera/utils/CamPrefsUtils;
.super Ljava/lang/Object;
.source "CamPrefsUtils.java"


# static fields
.field public static final AREA_WEIGHTED:I = 0x3e8

.field public static final ASPECT_RATIO_16_9:Ljava/lang/String; = "16:9"

.field public static final ASPECT_RATIO_1_1:Ljava/lang/String; = "1:1"

.field public static final ASPECT_RATIO_4_3:Ljava/lang/String; = "4:3"

.field public static final BATTERY_LEVEL_15:I = 0xf

.field public static final BATTERY_LEVEL_25:I = 0x19

.field public static final BATTERY_LEVEL_35:I = 0x23

.field public static final BATTERY_LEVEL_60:I = 0x3c

.field public static final BATTERY_LEVEL_90:I = 0x5a

.field public static final BATTERY_LEVEL_RESUME_CAMERA:I = 0xc

.field public static final BATTERY_LOW_LEVEL:I = 0xb

.field public static final CAMERA_DIFF:F = 30.0f

.field public static final CAMERA_DIFF_SCROLL:F = 10.0f

.field public static final CAMERA_IMAGE_SIZE:J = 0xb400000L

.field public static final CAMERA_PX_STEP:F = 600.0f

.field public static final CAMERA_PX_STEP_SCROLL:F = 200.0f

.field public static final CAMERA_STORAGE_BUFFER:J = 0x1f400000L

.field public static final CAM_ACCOUNT:Ljava/lang/String; = "account"

.field public static final CAM_ASPECT_RATIO:Ljava/lang/String; = "aspect_ratio_setting"

.field public static final CAM_AUDIO_SETTING:Ljava/lang/String; = "device_audio_setting"

.field public static final CAM_AUDIO_SETTING_DEFAULT:Ljava/lang/String; = "classic"

.field public static final CAM_AUTO_MODE_CAF:Ljava/lang/String; = "cam_auto_mode_caf"

.field public static final CAM_AUTO_MODE_CAF_DEFAULT:Ljava/lang/String; = "cam_caf_mode_afd"

.field public static final CAM_BURST_MODE:Ljava/lang/String; = "burst_mode"

.field public static final CAM_DEVICE_STATUS:Ljava/lang/String; = "device_status_setting"

.field public static final CAM_DEVICE_STATUS_DEFAULT:Ljava/lang/String; = "on"

.field public static final CAM_DOF:Ljava/lang/String; = "dof"

.field public static final CAM_DOF_DEFAULT:Ljava/lang/String; = "50"

.field public static final CAM_DOF_OFF:Ljava/lang/String; = "dof_off"

.field public static final CAM_DOF_ON:Ljava/lang/String; = "dof_on"

.field public static final CAM_DOF_VALUE:Ljava/lang/String; = "dof_val"

.field public static final CAM_EXP_INFO_SETTING:Ljava/lang/String; = "device_exp_info_setting"

.field public static final CAM_EXP_INFO_SETTING_DEFAULT:Ljava/lang/String; = "always on"

.field public static final CAM_FINDER_TIMEOUT:Ljava/lang/String; = "device_cam_finder_timeout_setting"

.field public static final CAM_FINDER_TIMEOUT_DEFAULT:Ljava/lang/String; = "1m"

.field public static final CAM_FLASH:Ljava/lang/String; = "flash_setting"

.field public static final CAM_FLASH_MANUAL:Ljava/lang/String; = "flash_setting_manual"

.field static final CAM_FLASH_VALUE:Ljava/lang/String; = "flash_value"

.field public static final CAM_FOCAL_LENGTH:Ljava/lang/String; = "focal_length"

.field public static final CAM_FTU_SETTING:Ljava/lang/String; = "ftu_setting"

.field public static final CAM_GRID:Ljava/lang/String; = "grid_setting"

.field public static final CAM_HAPTIC_SETTING:Ljava/lang/String; = "device_haptic_setting"

.field public static final CAM_HAPTIC_SETTING_DEFAULT:Ljava/lang/String; = "normal"

.field public static final CAM_HAPTIC_SETTING_NORMAL:Ljava/lang/String; = "normal"

.field public static final CAM_HAPTIC_SETTING_OFF:Ljava/lang/String; = "off"

.field public static final CAM_HAPTIC_SETTING_STRONG:Ljava/lang/String; = "strong"

.field public static final CAM_HDR:Ljava/lang/String; = "hdr_setting"

.field public static final CAM_HDR_OFF:Ljava/lang/String; = "hdr_off"

.field public static final CAM_HDR_ON:Ljava/lang/String; = "hdr_on"

.field public static final CAM_HISTOGRAM:Ljava/lang/String; = "histogram_setting"

.field public static final CAM_HUD:Ljava/lang/String; = "hud_setting"

.field public static final CAM_HUD_BACKGROUND:Ljava/lang/String; = "hud_background"

.field public static final CAM_HUD_BACKGROUND_OFF:Ljava/lang/String; = "hud_back_off"

.field public static final CAM_HUD_BACKGROUND_ON:Ljava/lang/String; = "hud_back_on"

.field public static final CAM_HUD_OFF:Ljava/lang/String; = "off"

.field public static final CAM_HUD_ON:Ljava/lang/String; = "on"

.field public static final CAM_INPOCKET_DETECTION_SETTING:Ljava/lang/String; = "inpocket_detection_setting"

.field public static final CAM_INPOCKET_DETECTION_SETTING_DEFAULT:Ljava/lang/String; = "on"

.field public static final CAM_INVERSE_WHEEL_SCROLL:Ljava/lang/String; = "wheel_inverse_scroll_setting"

.field public static final CAM_INVERSE_WHEEL_SCROLL_DEFAULT:Ljava/lang/String; = "off"

.field public static final CAM_LENS_BLOCKED_DETECTOR_SETTING:Ljava/lang/String; = "lens_blocked_detector_setting"

.field public static final CAM_LENS_BLOCKED_DETECTOR_SETTING_DEFAULT:Ljava/lang/String; = "on"

.field public static final CAM_LEVEL_METER:Ljava/lang/String; = "level_setting"

.field public static final CAM_LEVEL_OFF:Ljava/lang/String; = "level_off"

.field public static final CAM_LEVEL_ON:Ljava/lang/String; = "level_on"

.field public static final CAM_MANUAL_MODE_CAF:Ljava/lang/String; = "cam_manual_mode_caf"

.field public static final CAM_MANUAL_MODE_CAF_DEFAULT:Ljava/lang/String; = "cam_caf_mode_afs"

.field public static final CAM_METERING:Ljava/lang/String; = "metering_setting"

.field public static final CAM_METERING_CENTER_WEIGHTED:Ljava/lang/String; = "center-weighted"

.field public static final CAM_METERING_SPOT:Ljava/lang/String; = "spot"

.field public static final CAM_MICROPHONE_MUTE_SETTING:Ljava/lang/String; = "device_microphone_setting"

.field public static final CAM_MICROPHONE_MUTE_SETTING_DEFAULT:Ljava/lang/String; = "off"

.field public static final CAM_MODE:Ljava/lang/String; = "camera_mode_setting"

.field public static final CAM_SETTINGS:Ljava/lang/String; = "camera_settings"

.field public static final CAM_SETTING_DOF:Ljava/lang/String; = "dof_setting"

.field public static final CAM_STACKED_CAPTURE_STATE_SETTING:Ljava/lang/String; = "stacked_capture_state"

.field public static final CAM_STACKED_CAPTURE_STATE_SETTING_DEFAULT:Ljava/lang/String; = "on"

.field public static final CAM_TIMER:Ljava/lang/String; = "timer_setting"

.field public static final CAM_TOUCHSTRIP_SETTING:Ljava/lang/String; = "device_touchstrip_setting"

.field public static final CAM_TOUCHSTRIP_SETTING_DEFAULT:Ljava/lang/String; = "off"

.field public static final CAM_TOUCH_WEIGHTED:Ljava/lang/String; = "touch-weighted"

.field public static final CAM_VIDEO_FORMAT:Ljava/lang/String; = "video_format"

.field public static final CAM_VIDEO_MODE_CAF:Ljava/lang/String; = "cam_video_mode_caf"

.field public static final CAM_VIDEO_MODE_CAF_DEFAULT:Ljava/lang/String; = "cam_caf_mode_afs"

.field public static final CAM_VIDEO_QUALITY_PROFILE:Ljava/lang/String; = "quality_profile"

.field public static final CAM_WB_VALUE:Ljava/lang/String; = "wb_value"

.field public static final CAM_WHITE_BALANCE:Ljava/lang/String; = "white_balance_setting"

.field public static final CAM_ZOOM_VALUE:Ljava/lang/String; = "zoom_value"

.field public static final DELAY_FOCUS_POST_ZOOM_COMPLETE:I = 0x2bc

.field public static final DELAY_THUMB_FAILURE:I = 0x2904

.field public static final DOF_F_VALUE:[F

.field public static final DURATION_250_MS:I = 0xfa

.field public static final EXP_COMP_INDEX:Ljava/lang/String; = "ex_index"

.field public static final FIRST_TIME_FOCUS_FAILED:Ljava/lang/String; = "ftu_user_focus_failed"

.field public static final FIRST_TIME_HAND_SHAKE_ASSIST_WARNING:Ljava/lang/String; = "ftu_hand_shake_assist"

.field public static final FIRST_TIME_LOW_LIGHT_ASSIST_WARNING:Ljava/lang/String; = "ftu_low_light_assist"

.field public static final FIRST_TIME_TRIPOD_ASSIST_WARNING:Ljava/lang/String; = "ftu_tripod_assist"

.field public static final FIRST_TIME_USER_PLAY_ALL:Ljava/lang/String; = "ftu_user_play_all"

.field public static final FIRST_TIME_USER_VIEW:Ljava/lang/String; = "ftu_user"

.field public static final FIRST_TIME_VIDEO_USER:Ljava/lang/String; = "ftu_video_user"

.field public static final FOUR_K_VIDEO:Ljava/lang/String; = "4k"

.field public static final GRID_DENSE_PIXEL:I = 0x78

.field public static final ISO_INDEX:Ljava/lang/String; = "iso_index"

.field public static final PINCH_ZOOM_POINTER_COUNT:I = 0x2

.field public static final ROTATION_90:I = 0x5a

.field public static final ROTATION_90_CCW:I = -0x5a

.field public static final SETTING_AUTO:Ljava/lang/String; = "auto"

.field public static final SETTING_OFF:Ljava/lang/String; = "off"

.field public static final SETTING_ON:Ljava/lang/String; = "on"

.field public static final SEVEN_TWENTY_P_VIDEO:Ljava/lang/String; = "720p"

.field public static final SHARED_PREF_LAST_FILE_NUMBER:Ljava/lang/String; = "lastFileNumber"

.field public static final SHARED_PREF_LAST_FILE_SUFFIX_NUMBER:Ljava/lang/String; = "lastFileSuffixNumber"

.field public static final SHARED_PREF_VERSION:Ljava/lang/String; = "shared_pref_update"

.field public static final SHUTTER_SPEED_INDEX:Ljava/lang/String; = "shutter_index"

.field public static final SYSTEM_UI_SHOW_TIME_PERIOD:J = 0xbeaL

.field private static final TAG:Ljava/lang/String; = "CamPrefsUtils"

.field public static final TEN_EIGHTY_P_VIDEO:Ljava/lang/String; = "1080p"

.field public static final UNKNOWN_SCREEN_SIZE:I = -0x1

.field public static final WHEEL_SHUTTER_SPEED:Ljava/lang/String; = "shutter"

.field public static final ZOOM_START_STRING:Ljava/lang/String; = "28"

.field public static final ZOOM_VELOCITY:F = 1500.0f


# instance fields
.field INVERT_FILTER:Landroid/graphics/ColorMatrixColorFilter;

.field INVERT_MATRIX:Landroid/graphics/ColorMatrix;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xa

    .line 50
    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lopenlight/co/camera/utils/CamPrefsUtils;->DOF_F_VALUE:[F

    return-void

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40c00000    # 6.0f
        0x40e00000    # 7.0f
        0x41000000    # 8.0f
        0x41100000    # 9.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    new-instance v0, Landroid/graphics/ColorMatrix;

    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_1c

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    iput-object v0, p0, Lopenlight/co/camera/utils/CamPrefsUtils;->INVERT_MATRIX:Landroid/graphics/ColorMatrix;

    .line 380
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Lopenlight/co/camera/utils/CamPrefsUtils;->INVERT_MATRIX:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v0, p0, Lopenlight/co/camera/utils/CamPrefsUtils;->INVERT_FILTER:Landroid/graphics/ColorMatrixColorFilter;

    return-void

    nop

    :array_1c
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static checkAndUpdateFlash(Ljava/lang/String;Lopenlight/co/lib/content/Prefs;)V
    .registers 6

    const-string v0, "flash_setting"

    .line 518
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 519
    invoke-interface {p1, p0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 520
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xddf

    if-eq v2, v3, :cond_34

    const v3, 0x1ad6f

    if-eq v2, v3, :cond_2a

    const v3, 0x2dddaf

    if-eq v2, v3, :cond_20

    goto :goto_3d

    :cond_20
    const-string v2, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v1, 0x1

    goto :goto_3d

    :cond_2a
    const-string v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v1, 0x0

    goto :goto_3d

    :cond_34
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v1, 0x2

    :cond_3d
    :goto_3d
    packed-switch v1, :pswitch_data_4c

    goto :goto_4b

    .line 524
    :pswitch_41
    sget-object v0, Lopenlight/co/camera/utils/CamPrefsUtils;->TAG:Ljava/lang/String;

    const-string v1, "Flash setting is incorrect. Resetting Flash setting"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-interface {p1, p0}, Lopenlight/co/lib/content/Prefs;->removeValue(Ljava/lang/String;)V

    :cond_4b
    :goto_4b
    return-void

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_41
        :pswitch_41
        :pswitch_41
    .end packed-switch
.end method

.method public static getCafMode()Ljava/lang/String;
    .registers 3

    .line 434
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    .line 437
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object v1

    .line 438
    invoke-virtual {v1}, Lopenlight/co/camera/CameraMode;->isManual()Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v1, "cam_manual_mode_caf"

    goto :goto_20

    .line 440
    :cond_15
    invoke-virtual {v1}, Lopenlight/co/camera/CameraMode;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "cam_video_mode_caf"

    goto :goto_20

    :cond_1e
    const-string v1, "cam_auto_mode_caf"

    .line 445
    :goto_20
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExpCompIndex()I
    .registers 3

    .line 496
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    const-string v1, "ex_index"

    .line 497
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 498
    invoke-static {}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->values()[Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_12

    return v1

    .line 502
    :cond_12
    div-int/lit8 v2, v2, 0x2

    const-string v1, "ex_index"

    .line 503
    invoke-interface {v0, v1, v2}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;I)V

    return v2
.end method

.method public static getFlash()Ljava/lang/String;
    .registers 3

    .line 419
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    .line 420
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/camera/CameraMode;->isManual()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "flash_setting_manual"

    goto :goto_17

    :cond_15
    const-string v1, "flash_setting"

    .line 423
    :goto_17
    invoke-static {v1, v0}, Lopenlight/co/camera/utils/CamPrefsUtils;->checkAndUpdateFlash(Ljava/lang/String;Lopenlight/co/lib/content/Prefs;)V

    .line 424
    invoke-static {}, Lopenlight/co/TheaterMode/TheaterModeSettings;->get()Lopenlight/co/TheaterMode/TheaterModeSettings;

    move-result-object v2

    invoke-virtual {v2}, Lopenlight/co/TheaterMode/TheaterModeSettings;->isFlashLightDisabled()Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v0, "flash_off"

    goto :goto_2b

    .line 425
    :cond_27
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2b
    return-object v0
.end method

.method public static isFlashOff()Z
    .registers 2

    .line 484
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    .line 486
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/camera/CameraMode;->isManual()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "flash_setting_manual"

    goto :goto_17

    :cond_15
    const-string v1, "flash_setting"

    .line 487
    :goto_17
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "flash_off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static putFlash(Ljava/lang/String;)V
    .registers 3

    .line 472
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    .line 474
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/camera/CameraMode;->isManual()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "flash_setting_manual"

    goto :goto_17

    :cond_15
    const-string v1, "flash_setting"

    .line 475
    :goto_17
    invoke-interface {v0, v1, p0}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCafMode(Ljava/lang/String;)V
    .registers 4

    .line 453
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    .line 455
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object v1

    .line 456
    invoke-virtual {v1}, Lopenlight/co/camera/CameraMode;->isManual()Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v1, "cam_manual_mode_caf"

    goto :goto_20

    .line 458
    :cond_15
    invoke-virtual {v1}, Lopenlight/co/camera/CameraMode;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "cam_video_mode_caf"

    goto :goto_20

    :cond_1e
    const-string v1, "cam_auto_mode_caf"

    .line 463
    :goto_20
    invoke-interface {v0, v1, p0}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
