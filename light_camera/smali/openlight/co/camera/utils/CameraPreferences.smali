.class public Lopenlight/co/camera/utils/CameraPreferences;
.super Lopenlight/co/lib/content/LocalPrefs;
.source "CameraPreferences.java"


# static fields
.field static final SHARED_PREFERENCE_CHANGE_CODE:I = 0x7

.field static final SHARED_PREFERENCE_VERSION_VALUE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Lopenlight/co/camera/utils/CameraPreferences;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/utils/CameraPreferences;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 2

    .line 186
    invoke-direct {p0, p1}, Lopenlight/co/lib/content/LocalPrefs;-><init>(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static synthetic lambda$addLockedName$0(Lopenlight/co/camera/utils/CameraPreferences;Ljava/lang/String;)V
    .registers 3

    const-string v0, "locked_names"

    .line 200
    invoke-virtual {p0, v0, p1}, Lopenlight/co/camera/utils/CameraPreferences;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addLockedName(Ljava/lang/String;)V
    .registers 4

    const-string v0, "locked_names"

    .line 196
    invoke-virtual {p0, v0}, Lopenlight/co/camera/utils/CameraPreferences;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 198
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_2c

    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 200
    :goto_2c
    new-instance v0, Lopenlight/co/camera/utils/-$$Lambda$CameraPreferences$1eXnFJ05OqYoy47hmJFCP8vz05o;

    invoke-direct {v0, p0, p1}, Lopenlight/co/camera/utils/-$$Lambda$CameraPreferences$1eXnFJ05OqYoy47hmJFCP8vz05o;-><init>(Lopenlight/co/camera/utils/CameraPreferences;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lopenlight/co/camera/utils/CameraPreferences;->withBroadcast(Ljava/lang/Runnable;)V

    :cond_34
    return-void
.end method

.method protected getActionPrefChanged()Ljava/lang/String;
    .registers 1

    const-string p0, "openlight.co.lightcamera.broadcast.ACTION_CAMERA_PREF_CHANGED"

    return-object p0
.end method

.method public getDefaultBooleanValue(Ljava/lang/String;)Z
    .registers 5

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_5c

    goto :goto_50

    :sswitch_a
    const-string v0, "ftu_video_user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x6

    goto :goto_51

    :sswitch_14
    const-string v0, "ftu_hand_shake_assist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x2

    goto :goto_51

    :sswitch_1e
    const-string v0, "ftu_user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x3

    goto :goto_51

    :sswitch_28
    const-string v0, "ftu_low_light_assist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    move v0, v2

    goto :goto_51

    :sswitch_32
    const-string v0, "ftu_tripod_assist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    move v0, v1

    goto :goto_51

    :sswitch_3c
    const-string v0, "ftu_user_play_all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x5

    goto :goto_51

    :sswitch_46
    const-string v0, "ftu_user_focus_failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x4

    goto :goto_51

    :cond_50
    :goto_50
    const/4 v0, -0x1

    :goto_51
    packed-switch v0, :pswitch_data_7a

    .line 182
    invoke-super {p0, p1}, Lopenlight/co/lib/content/LocalPrefs;->getDefaultBooleanValue(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_59
    return v1

    :pswitch_5a
    return v2

    nop

    :sswitch_data_5c
    .sparse-switch
        -0x7ccd9b60 -> :sswitch_46
        -0x509fccce -> :sswitch_3c
        -0x2618134a -> :sswitch_32
        0x176bc495 -> :sswitch_28
        0x29235fa3 -> :sswitch_1e
        0x4594feba -> :sswitch_14
        0x765e56e7 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_59
        :pswitch_59
    .end packed-switch
.end method

.method protected getDefaultFloatValue(Ljava/lang/String;)F
    .registers 5

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x11e151fb

    const/4 v2, 0x0

    if-eq v0, v1, :cond_29

    const v1, 0x6d23661d

    if-eq v0, v1, :cond_1f

    const v1, 0x78c35a00

    if-eq v0, v1, :cond_15

    goto :goto_33

    :cond_15
    const-string v0, "focal_length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x2

    goto :goto_34

    :cond_1f
    const-string v0, "dof_val"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    move v0, v2

    goto :goto_34

    :cond_29
    const-string v0, "zoom_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v0, -0x1

    :goto_34
    packed-switch v0, :pswitch_data_48

    .line 166
    invoke-super {p0, p1}, Lopenlight/co/lib/content/LocalPrefs;->getDefaultFloatValue(Ljava/lang/String;)F

    move-result p0

    return p0

    :pswitch_3c
    const p0, 0x40333333    # 2.8f

    return p0

    :pswitch_40
    const/high16 p0, 0x420c0000    # 35.0f

    return p0

    .line 160
    :pswitch_43
    sget-object p0, Lopenlight/co/camera/utils/CamPrefsUtils;->DOF_F_VALUE:[F

    aget p0, p0, v2

    return p0

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_43
        :pswitch_40
        :pswitch_3c
    .end packed-switch
.end method

.method protected getDefaultIntValue(Ljava/lang/String;)I
    .registers 5

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_68

    goto :goto_46

    :sswitch_a
    const-string v0, "ex_index"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x3

    goto :goto_47

    :sswitch_14
    const-string v0, "lastFileNumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x4

    goto :goto_47

    :sswitch_1e
    const-string v0, "shutter_index"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x2

    goto :goto_47

    :sswitch_28
    const-string v0, "wb_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x0

    goto :goto_47

    :sswitch_32
    const-string v0, "iso_index"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    move v0, v1

    goto :goto_47

    :sswitch_3c
    const-string v0, "shared_pref_update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x5

    goto :goto_47

    :cond_46
    :goto_46
    move v0, v2

    :goto_47
    packed-switch v0, :pswitch_data_82

    .line 146
    invoke-super {p0, p1}, Lopenlight/co/lib/content/LocalPrefs;->getDefaultIntValue(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_4f
    return v2

    :pswitch_50
    return v2

    .line 140
    :pswitch_51
    sget-object p0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_00:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    invoke-virtual {p0}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->getExposureCompensationIndex()I

    move-result p0

    return p0

    .line 138
    :pswitch_58
    sget-object p0, Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;->SHUTTER_SPEED_1_30:Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;

    invoke-virtual {p0}, Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;->getShutterSpeedIndex()I

    move-result p0

    return p0

    .line 136
    :pswitch_5f
    sget-object p0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_100:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    invoke-virtual {p0}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->getSensitivityIndex()I

    move-result p0

    return p0

    :pswitch_66
    return v1

    nop

    :sswitch_data_68
    .sparse-switch
        -0xff4ee75 -> :sswitch_3c
        0x1223ec98 -> :sswitch_32
        0x32977efd -> :sswitch_28
        0x644afe00 -> :sswitch_1e
        0x6f5d5b1b -> :sswitch_14
        0x6fda0646 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_66
        :pswitch_5f
        :pswitch_58
        :pswitch_51
        :pswitch_50
        :pswitch_4f
    .end packed-switch
.end method

.method protected getDefaultStringValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_204

    goto/16 :goto_190

    :sswitch_9
    const-string v0, "device_microphone_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0x13

    goto/16 :goto_191

    :sswitch_15
    const-string v0, "cam_video_mode_caf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0x1c

    goto/16 :goto_191

    :sswitch_21
    const-string v0, "device_status_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0x16

    goto/16 :goto_191

    :sswitch_2d
    const-string v0, "white_balance_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0xe

    goto/16 :goto_191

    :sswitch_39
    const-string v0, "flash_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/4 v0, 0x6

    goto/16 :goto_191

    :sswitch_44
    const-string v0, "device_audio_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0x17

    goto/16 :goto_191

    :sswitch_50
    const-string v0, "flash_setting_manual"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0x8

    goto/16 :goto_191

    :sswitch_5c
    const-string v0, "cam_manual_mode_caf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0x1b

    goto/16 :goto_191

    :sswitch_68
    const-string v0, "camera_mode_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/4 v0, 0x0

    goto/16 :goto_191

    :sswitch_73
    const-string v0, "level_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0xa

    goto/16 :goto_191

    :sswitch_7f
    const-string v0, "dof_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0x15

    goto/16 :goto_191

    :sswitch_8b
    const-string v0, "device_exp_info_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0x14

    goto/16 :goto_191

    :sswitch_97
    const-string v0, "burst_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/4 v0, 0x1

    goto/16 :goto_191

    :sswitch_a2
    const-string v0, "metering_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0x10

    goto/16 :goto_191

    :sswitch_ae
    const-string v0, "hud_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0xd

    goto/16 :goto_191

    :sswitch_ba
    const-string v0, "timer_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/4 v0, 0x5

    goto/16 :goto_191

    :sswitch_c5
    const-string v0, "lens_blocked_detector_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0x1f

    goto/16 :goto_191

    :sswitch_d1
    const-string v0, "dof"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/4 v0, 0x2

    goto/16 :goto_191

    :sswitch_dc
    const-string v0, "hdr_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0xc

    goto/16 :goto_191

    :sswitch_e8
    const-string v0, "video_format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/4 v0, 0x3

    goto/16 :goto_191

    :sswitch_f3
    const-string v0, "cam_auto_mode_caf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0x1a

    goto/16 :goto_191

    :sswitch_ff
    const-string v0, "wheel_inverse_scroll_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0x19

    goto/16 :goto_191

    :sswitch_10b
    const-string v0, "device_cam_finder_timeout_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0x11

    goto/16 :goto_191

    :sswitch_117
    const-string v0, "aspect_ratio_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/4 v0, 0x4

    goto/16 :goto_191

    :sswitch_122
    const-string v0, "quality_profile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0x1d

    goto/16 :goto_191

    :sswitch_12e
    const-string v0, "device_haptic_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0x12

    goto :goto_191

    :sswitch_139
    const-string v0, "stacked_capture_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0x20

    goto :goto_191

    :sswitch_144
    const-string v0, "hud_background"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0xf

    goto :goto_191

    :sswitch_14f
    const-string v0, "flash_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/4 v0, 0x7

    goto :goto_191

    :sswitch_159
    const-string v0, "device_touchstrip_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0x18

    goto :goto_191

    :sswitch_164
    const-string v0, "inpocket_detection_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0x1e

    goto :goto_191

    :sswitch_16f
    const-string v0, "locked_names"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0x21

    goto :goto_191

    :sswitch_17a
    const-string v0, "grid_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0xb

    goto :goto_191

    :sswitch_185
    const-string v0, "histogram_setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    const/16 v0, 0x9

    goto :goto_191

    :cond_190
    :goto_190
    const/4 v0, -0x1

    :goto_191
    packed-switch v0, :pswitch_data_28e

    .line 120
    invoke-super {p0, p1}, Lopenlight/co/lib/content/LocalPrefs;->getDefaultStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_199
    const/4 p0, 0x0

    return-object p0

    :pswitch_19b
    const-string p0, "on"

    return-object p0

    :pswitch_19e
    const-string p0, "on"

    return-object p0

    :pswitch_1a1
    const-string p0, "on"

    return-object p0

    .line 110
    :pswitch_1a4
    sget-object p0, Lopenlight/co/camera/enums/VideoQualityMode;->DEFAULT:Ljava/lang/String;

    return-object p0

    :pswitch_1a7
    const-string p0, "cam_caf_mode_afs"

    return-object p0

    :pswitch_1aa
    const-string p0, "cam_caf_mode_afs"

    return-object p0

    :pswitch_1ad
    const-string p0, "cam_caf_mode_afd"

    return-object p0

    :pswitch_1b0
    const-string p0, "off"

    return-object p0

    :pswitch_1b3
    const-string p0, "off"

    return-object p0

    :pswitch_1b6
    const-string p0, "classic"

    return-object p0

    :pswitch_1b9
    const-string p0, "on"

    return-object p0

    :pswitch_1bc
    const-string p0, "50"

    return-object p0

    :pswitch_1bf
    const-string p0, "always on"

    return-object p0

    :pswitch_1c2
    const-string p0, "off"

    return-object p0

    :pswitch_1c5
    const-string p0, "normal"

    return-object p0

    :pswitch_1c8
    const-string p0, "1m"

    return-object p0

    :pswitch_1cb
    const-string p0, "center-weighted"

    return-object p0

    :pswitch_1ce
    const-string p0, "hud_back_off"

    return-object p0

    .line 80
    :pswitch_1d1
    sget-object p0, Lopenlight/co/camera/enums/AwbMode;->AUTO:Lopenlight/co/camera/enums/AwbMode;

    invoke-virtual {p0}, Lopenlight/co/camera/enums/AwbMode;->getPrefsKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1d8
    const-string p0, "on"

    return-object p0

    :pswitch_1db
    const-string p0, "hdr_off"

    return-object p0

    :pswitch_1de
    const-string p0, "grid_off"

    return-object p0

    :pswitch_1e1
    const-string p0, "level_off"

    return-object p0

    :pswitch_1e4
    const-string p0, "histogram_off"

    return-object p0

    :pswitch_1e7
    const-string p0, "flash_off"

    return-object p0

    :pswitch_1ea
    const-string p0, "flash_auto"

    return-object p0

    :pswitch_1ed
    const-string p0, "timer_off"

    return-object p0

    :pswitch_1f0
    const-string p0, "4:3"

    return-object p0

    :pswitch_1f3
    const-string p0, "1080p"

    return-object p0

    :pswitch_1f6
    const-string p0, "dof_off"

    return-object p0

    :pswitch_1f9
    const-string p0, "burst_off"

    return-object p0

    .line 53
    :pswitch_1fc
    sget-object p0, Lopenlight/co/camera/CameraMode;->AUTO:Lopenlight/co/camera/CameraMode;

    invoke-virtual {p0}, Lopenlight/co/camera/CameraMode;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_204
    .sparse-switch
        -0x7b12ed8b -> :sswitch_185
        -0x79e565a9 -> :sswitch_17a
        -0x72c5822d -> :sswitch_16f
        -0x711b21ae -> :sswitch_164
        -0x5502542d -> :sswitch_159
        -0x52784aff -> :sswitch_14f
        -0x4928da8a -> :sswitch_144
        -0x46118ec0 -> :sswitch_139
        -0x39c0264f -> :sswitch_12e
        -0x2ba67d97 -> :sswitch_122
        -0x2a25c98b -> :sswitch_117
        -0x255552ae -> :sswitch_10b
        -0x210c26cf -> :sswitch_ff
        -0x1a875cb4 -> :sswitch_f3
        -0x162e0fc5 -> :sswitch_e8
        -0xcff0df9 -> :sswitch_dc
        0x1853b -> :sswitch_d1
        0x26a28eb -> :sswitch_c5
        0xafda756 -> :sswitch_ba
        0x10236308 -> :sswitch_ae
        0x11cc3fca -> :sswitch_a2
        0x1876bd62 -> :sswitch_97
        0x188d7d6a -> :sswitch_8b
        0x2b60cf4c -> :sswitch_7f
        0x3a8e8c95 -> :sswitch_73
        0x3ad4468e -> :sswitch_68
        0x43af5f15 -> :sswitch_5c
        0x5a2ebcc4 -> :sswitch_50
        0x5c883cbe -> :sswitch_44
        0x60813062 -> :sswitch_39
        0x633437d7 -> :sswitch_2d
        0x72d08c0c -> :sswitch_21
        0x7438cce0 -> :sswitch_15
        0x7ba2f0c4 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_28e
    .packed-switch 0x0
        :pswitch_1fc
        :pswitch_1f9
        :pswitch_1f6
        :pswitch_1f3
        :pswitch_1f0
        :pswitch_1ed
        :pswitch_1ea
        :pswitch_1ea
        :pswitch_1e7
        :pswitch_1e4
        :pswitch_1e1
        :pswitch_1de
        :pswitch_1db
        :pswitch_1d8
        :pswitch_1d1
        :pswitch_1ce
        :pswitch_1cb
        :pswitch_1c8
        :pswitch_1c5
        :pswitch_1c2
        :pswitch_1bf
        :pswitch_1bc
        :pswitch_1b9
        :pswitch_1b6
        :pswitch_1b3
        :pswitch_1b0
        :pswitch_1ad
        :pswitch_1aa
        :pswitch_1a7
        :pswitch_1a4
        :pswitch_1a1
        :pswitch_19e
        :pswitch_19b
        :pswitch_199
    .end packed-switch
.end method

.method protected getPermissionPrefChanged()Ljava/lang/String;
    .registers 1

    const-string p0, "openlight.co.lightcamera.CAMERA_EVENTS"

    return-object p0
.end method

.method protected tag()Ljava/lang/String;
    .registers 1

    .line 216
    sget-object p0, Lopenlight/co/camera/utils/CameraPreferences;->TAG:Ljava/lang/String;

    return-object p0
.end method
