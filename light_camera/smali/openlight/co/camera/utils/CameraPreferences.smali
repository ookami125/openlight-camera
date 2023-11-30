.class public Lopenlight/co/camera/utils/CameraPreferences;
.super Lopenlight/co/lib/content/LocalPrefs;
.source "CameraPreferences.java"


# static fields
.field static final SHARED_PREFERENCE_CHANGE_CODE:I = 0x7

.field static final SHARED_PREFERENCE_VERSION_VALUE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lopenlight/co/camera/utils/CameraPreferences;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/utils/CameraPreferences;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 186
    invoke-direct {p0, p1}, Lopenlight/co/lib/content/LocalPrefs;-><init>(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static synthetic lambda$addLockedName$0(Lopenlight/co/camera/utils/CameraPreferences;Ljava/lang/String;)V
    .locals 1

    const-string v0, "locked_names"

    .line 200
    invoke-virtual {p0, v0, p1}, Lopenlight/co/camera/utils/CameraPreferences;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addLockedName(Ljava/lang/String;)V
    .locals 2

    const-string v0, "locked_names"

    .line 196
    invoke-virtual {p0, v0}, Lopenlight/co/camera/utils/CameraPreferences;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 200
    :goto_0
    new-instance v0, Lopenlight/co/camera/utils/-$$Lambda$CameraPreferences$1eXnFJ05OqYoy47hmJFCP8vz05o;

    invoke-direct {v0, p0, p1}, Lopenlight/co/camera/utils/-$$Lambda$CameraPreferences$1eXnFJ05OqYoy47hmJFCP8vz05o;-><init>(Lopenlight/co/camera/utils/CameraPreferences;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lopenlight/co/camera/utils/CameraPreferences;->withBroadcast(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected getActionPrefChanged()Ljava/lang/String;
    .locals 0

    const-string p0, "openlight.co.lightcamera.broadcast.ACTION_CAMERA_PREF_CHANGED"

    return-object p0
.end method

.method public getDefaultBooleanValue(Ljava/lang/String;)Z
    .locals 3

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "ftu_video_user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1
    const-string v0, "ftu_hand_shake_assist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "ftu_user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "ftu_low_light_assist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_4
    const-string v0, "ftu_tripod_assist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_5
    const-string v0, "ftu_user_play_all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "ftu_user_focus_failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 182
    invoke-super {p0, p1}, Lopenlight/co/lib/content/LocalPrefs;->getDefaultBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_0
    return v1

    :pswitch_1
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ccd9b60 -> :sswitch_6
        -0x509fccce -> :sswitch_5
        -0x2618134a -> :sswitch_4
        0x176bc495 -> :sswitch_3
        0x29235fa3 -> :sswitch_2
        0x4594feba -> :sswitch_1
        0x765e56e7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getDefaultFloatValue(Ljava/lang/String;)F
    .locals 3

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x11e151fb

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const v1, 0x6d23661d

    if-eq v0, v1, :cond_1

    const v1, 0x78c35a00

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "focal_length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "dof_val"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_2
    const-string v0, "zoom_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 166
    invoke-super {p0, p1}, Lopenlight/co/lib/content/LocalPrefs;->getDefaultFloatValue(Ljava/lang/String;)F

    move-result p0

    return p0

    :pswitch_0
    const p0, 0x40333333    # 2.8f

    return p0

    :pswitch_1
    const/high16 p0, 0x420c0000    # 35.0f

    return p0

    .line 160
    :pswitch_2
    sget-object p0, Lopenlight/co/camera/utils/CamPrefsUtils;->DOF_F_VALUE:[F

    aget p0, p0, v2

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getDefaultIntValue(Ljava/lang/String;)I
    .locals 3

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "ex_index"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "lastFileNumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v0, "shutter_index"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "wb_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "iso_index"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_5
    const-string v0, "shared_pref_update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 146
    invoke-super {p0, p1}, Lopenlight/co/lib/content/LocalPrefs;->getDefaultIntValue(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_0
    return v2

    :pswitch_1
    return v2

    .line 140
    :pswitch_2
    sget-object p0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_00:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    invoke-virtual {p0}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->getExposureCompensationIndex()I

    move-result p0

    return p0

    .line 138
    :pswitch_3
    sget-object p0, Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;->SHUTTER_SPEED_1_30:Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;

    invoke-virtual {p0}, Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;->getShutterSpeedIndex()I

    move-result p0

    return p0

    .line 136
    :pswitch_4
    sget-object p0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_100:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    invoke-virtual {p0}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->getSensitivityIndex()I

    move-result p0

    return p0

    :pswitch_5
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0xff4ee75 -> :sswitch_5
        0x1223ec98 -> :sswitch_4
        0x32977efd -> :sswitch_3
        0x644afe00 -> :sswitch_2
        0x6f5d5b1b -> :sswitch_1
        0x6fda0646 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getDefaultStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "device_microphone_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "cam_video_mode_caf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "device_status_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "white_balance_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "flash_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "device_audio_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "flash_setting_manual"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "cam_manual_mode_caf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "camera_mode_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "level_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "dof_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "device_exp_info_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "burst_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "metering_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "hud_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "timer_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "lens_blocked_detector_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "dof"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "hdr_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "video_format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "cam_auto_mode_caf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "wheel_inverse_scroll_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "device_cam_finder_timeout_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "aspect_ratio_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "quality_profile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "device_haptic_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_1a
    const-string v0, "stacked_capture_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_1

    :sswitch_1b
    const-string v0, "hud_background"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_1c
    const-string v0, "flash_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_1d
    const-string v0, "device_touchstrip_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto :goto_1

    :sswitch_1e
    const-string v0, "inpocket_detection_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_1

    :sswitch_1f
    const-string v0, "locked_names"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto :goto_1

    :sswitch_20
    const-string v0, "grid_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_21
    const-string v0, "histogram_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 120
    invoke-super {p0, p1}, Lopenlight/co/lib/content/LocalPrefs;->getDefaultStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    const-string p0, "on"

    return-object p0

    :pswitch_2
    const-string p0, "on"

    return-object p0

    :pswitch_3
    const-string p0, "on"

    return-object p0

    .line 110
    :pswitch_4
    sget-object p0, Lopenlight/co/camera/enums/VideoQualityMode;->DEFAULT:Ljava/lang/String;

    return-object p0

    :pswitch_5
    const-string p0, "cam_caf_mode_afs"

    return-object p0

    :pswitch_6
    const-string p0, "cam_caf_mode_afs"

    return-object p0

    :pswitch_7
    const-string p0, "cam_caf_mode_afd"

    return-object p0

    :pswitch_8
    const-string p0, "off"

    return-object p0

    :pswitch_9
    const-string p0, "off"

    return-object p0

    :pswitch_a
    const-string p0, "classic"

    return-object p0

    :pswitch_b
    const-string p0, "on"

    return-object p0

    :pswitch_c
    const-string p0, "50"

    return-object p0

    :pswitch_d
    const-string p0, "always on"

    return-object p0

    :pswitch_e
    const-string p0, "off"

    return-object p0

    :pswitch_f
    const-string p0, "normal"

    return-object p0

    :pswitch_10
    const-string p0, "1m"

    return-object p0

    :pswitch_11
    const-string p0, "center-weighted"

    return-object p0

    :pswitch_12
    const-string p0, "hud_back_off"

    return-object p0

    .line 80
    :pswitch_13
    sget-object p0, Lopenlight/co/camera/enums/AwbMode;->AUTO:Lopenlight/co/camera/enums/AwbMode;

    invoke-virtual {p0}, Lopenlight/co/camera/enums/AwbMode;->getPrefsKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_14
    const-string p0, "on"

    return-object p0

    :pswitch_15
    const-string p0, "hdr_off"

    return-object p0

    :pswitch_16
    const-string p0, "grid_off"

    return-object p0

    :pswitch_17
    const-string p0, "level_off"

    return-object p0

    :pswitch_18
    const-string p0, "histogram_off"

    return-object p0

    :pswitch_19
    const-string p0, "flash_off"

    return-object p0

    :pswitch_1a
    const-string p0, "flash_auto"

    return-object p0

    :pswitch_1b
    const-string p0, "timer_off"

    return-object p0

    :pswitch_1c
    const-string p0, "4:3"

    return-object p0

    :pswitch_1d
    const-string p0, "1080p"

    return-object p0

    :pswitch_1e
    const-string p0, "dof_off"

    return-object p0

    :pswitch_1f
    const-string p0, "burst_off"

    return-object p0

    .line 53
    :pswitch_20
    sget-object p0, Lopenlight/co/camera/CameraMode;->AUTO:Lopenlight/co/camera/CameraMode;

    invoke-virtual {p0}, Lopenlight/co/camera/CameraMode;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b12ed8b -> :sswitch_21
        -0x79e565a9 -> :sswitch_20
        -0x72c5822d -> :sswitch_1f
        -0x711b21ae -> :sswitch_1e
        -0x5502542d -> :sswitch_1d
        -0x52784aff -> :sswitch_1c
        -0x4928da8a -> :sswitch_1b
        -0x46118ec0 -> :sswitch_1a
        -0x39c0264f -> :sswitch_19
        -0x2ba67d97 -> :sswitch_18
        -0x2a25c98b -> :sswitch_17
        -0x255552ae -> :sswitch_16
        -0x210c26cf -> :sswitch_15
        -0x1a875cb4 -> :sswitch_14
        -0x162e0fc5 -> :sswitch_13
        -0xcff0df9 -> :sswitch_12
        0x1853b -> :sswitch_11
        0x26a28eb -> :sswitch_10
        0xafda756 -> :sswitch_f
        0x10236308 -> :sswitch_e
        0x11cc3fca -> :sswitch_d
        0x1876bd62 -> :sswitch_c
        0x188d7d6a -> :sswitch_b
        0x2b60cf4c -> :sswitch_a
        0x3a8e8c95 -> :sswitch_9
        0x3ad4468e -> :sswitch_8
        0x43af5f15 -> :sswitch_7
        0x5a2ebcc4 -> :sswitch_6
        0x5c883cbe -> :sswitch_5
        0x60813062 -> :sswitch_4
        0x633437d7 -> :sswitch_3
        0x72d08c0c -> :sswitch_2
        0x7438cce0 -> :sswitch_1
        0x7ba2f0c4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getPermissionPrefChanged()Ljava/lang/String;
    .locals 0

    const-string p0, "openlight.co.lightcamera.CAMERA_EVENTS"

    return-object p0
.end method

.method protected tag()Ljava/lang/String;
    .locals 0

    .line 216
    sget-object p0, Lopenlight/co/camera/utils/CameraPreferences;->TAG:Ljava/lang/String;

    return-object p0
.end method
