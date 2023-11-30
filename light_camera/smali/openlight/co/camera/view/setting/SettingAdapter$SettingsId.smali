.class enum Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;
.super Ljava/lang/Enum;
.source "SettingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/setting/SettingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = "SettingsId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

.field public static final enum ACCOUNT:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

.field public static final enum ASPECT_RATIO:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

.field public static final enum AUDIO:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

.field public static final enum DEPTH_EFFECT:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

.field public static final enum DEVICE_STATUS:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

.field public static final enum DREAM_PROCESSING:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

.field public static final enum ENCRYPT_IMAGES:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

.field public static final enum EXPOSURE:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

.field public static final enum FTU_RESET:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

.field public static final enum HAPTIC:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

.field public static final enum IN_POCKET_DETECTION:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

.field public static final enum LENS_BLOCKED_DETECTION:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

.field public static final enum MANAGE_PRESETS:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

.field public static final enum METERING:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

.field public static final enum MICROPHONE:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

.field public static final enum STACKED_CAPTURE:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

.field public static final enum TOUCHSTRIP:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

.field public static final enum VIDEO_FORMAT:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

.field public static final enum VIEWFINDER_TIMEOUT:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

.field public static final enum WHEEL_SCROLL:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;


# instance fields
.field private final mIconId:I

.field private final mIntent:Landroid/content/Intent;

.field private final mIsHighlighted:Z

.field private final mIsImplemented:Z

.field private final mOptionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mOptionalListId:I

.field private final mPreferenceKey:Ljava/lang/String;

.field private final mSettingModel:Lopenlight/co/camera/view/setting/SettingModel;

.field private final mSettingsResourceId:I

.field private final mSubTitle:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 57
    new-instance v10, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId$1;

    const-string v1, "METERING"

    const-string v5, "metering_setting"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f0e011d

    const/4 v6, 0x3

    const/4 v7, 0x0

    const v8, 0x7f030003

    const/4 v9, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId$1;-><init>(Ljava/lang/String;IZILjava/lang/String;IIIZ)V

    sput-object v10, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->METERING:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    .line 65
    new-instance v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const-string v12, "ASPECT_RATIO"

    const-string v16, "aspect_ratio_setting"

    const/4 v13, 0x1

    const/4 v14, 0x0

    const v15, 0x7f0e0112

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIIZ)V

    sput-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->ASPECT_RATIO:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    .line 69
    new-instance v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const-string v2, "VIDEO_FORMAT"

    const-string v6, "video_format"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const v5, 0x7f0e0120

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIIZ)V

    sput-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->VIDEO_FORMAT:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    .line 73
    new-instance v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const-string v12, "DEPTH_EFFECT"

    const-string v16, "dof_setting"

    const/4 v13, 0x3

    const v15, 0x7f0e0114

    const/16 v19, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v19}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIZ)V

    sput-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->DEPTH_EFFECT:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    .line 75
    new-instance v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const-string v2, "EXPOSURE"

    const-string v6, "hud_setting"

    const/4 v3, 0x4

    const/4 v4, 0x1

    const v5, 0x7f0e0118

    const/4 v7, 0x1

    const v8, 0x7f080140

    const/4 v10, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIIZ)V

    sput-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->EXPOSURE:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    .line 78
    new-instance v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const-string v12, "DEVICE_STATUS"

    const-string v16, "device_status_setting"

    const/4 v13, 0x5

    const/4 v14, 0x1

    const v15, 0x7f0e0115

    const/16 v17, 0x1

    const v18, 0x7f08013e

    const/16 v19, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v19}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIZ)V

    sput-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->DEVICE_STATUS:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    .line 80
    new-instance v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const-string v2, "WHEEL_SCROLL"

    const-string v6, "wheel_inverse_scroll_setting"

    const/4 v3, 0x6

    const v5, 0x7f0e011c

    const v8, 0x7f080141

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIZ)V

    sput-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->WHEEL_SCROLL:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    .line 83
    new-instance v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const-string v11, "VIEWFINDER_TIMEOUT"

    const-string v15, "device_cam_finder_timeout_setting"

    const/4 v12, 0x7

    const/4 v13, 0x0

    const v14, 0x7f0e0121

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v19}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIIZ)V

    sput-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->VIEWFINDER_TIMEOUT:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    .line 87
    new-instance v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const-string v2, "HAPTIC"

    const-string v6, "device_haptic_setting"

    const/16 v3, 0x8

    const v5, 0x7f0e011b

    const/4 v7, 0x3

    const v8, 0x7f080142

    const v9, 0x7f030001

    const/4 v10, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIIZ)V

    sput-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->HAPTIC:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    .line 90
    new-instance v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const-string v12, "AUDIO"

    const-string v16, "device_audio_setting"

    const/16 v13, 0x9

    const/4 v14, 0x1

    const v15, 0x7f0e0113

    const/16 v17, 0x3

    const v18, 0x7f08013d

    const v19, 0x7f030006

    move-object v11, v0

    invoke-direct/range {v11 .. v20}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIIZ)V

    sput-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->AUDIO:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    .line 93
    new-instance v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const-string v2, "TOUCHSTRIP"

    const-string v6, "device_touchstrip_setting"

    const/16 v3, 0xa

    const/4 v4, 0x0

    const v5, 0x7f0e011f

    const/4 v7, 0x1

    const v8, 0x7f080149

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIZ)V

    sput-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->TOUCHSTRIP:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    .line 95
    new-instance v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId$2;

    const-string v11, "FTU_RESET"

    const-string v15, "ftu_setting"

    const/16 v12, 0xb

    const/4 v13, 0x1

    const v14, 0x7f0e0119

    const/16 v16, 0x3

    const v17, 0x7f080147

    const v18, 0x7f030004

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v20}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId$2;-><init>(Ljava/lang/String;IZILjava/lang/String;IIILjava/util/List;Z)V

    sput-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->FTU_RESET:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    .line 103
    new-instance v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const-string v2, "ACCOUNT"

    const-string v6, "account"

    const/16 v3, 0xc

    const v5, 0x7f0e0111

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIZ)V

    sput-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->ACCOUNT:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    .line 106
    new-instance v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId$3;

    const-string v11, "ENCRYPT_IMAGES"

    .line 107
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v1

    const-string v2, "encryption_setting_displayed"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lopenlight/co/lib/utils/FeatureManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    const-string v15, "image_encryption_setting"

    const/16 v12, 0xd

    const v14, 0x7f0e0117

    const/16 v16, 0x1

    const v17, 0x7f08013f

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId$3;-><init>(Ljava/lang/String;IZILjava/lang/String;IIZ)V

    sput-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->ENCRYPT_IMAGES:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    .line 120
    new-instance v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const-string v20, "MICROPHONE"

    const-string v24, "device_microphone_setting"

    const/16 v21, 0xe

    const/16 v22, 0x1

    const v23, 0x7f0e011e

    const/16 v25, 0x1

    const v26, 0x7f080146

    const/16 v27, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v27}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIZ)V

    sput-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->MICROPHONE:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    .line 123
    new-instance v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const-string v5, "DREAM_PROCESSING"

    const-string v9, "dream_processing_setting"

    const/16 v6, 0xf

    const/4 v7, 0x1

    const v8, 0x7f0e0116

    const/4 v10, 0x1

    const v11, 0x7f0800fd

    const/4 v12, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIZ)V

    sput-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->DREAM_PROCESSING:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    .line 126
    new-instance v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const-string v14, "MANAGE_PRESETS"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "light.co.lightgallery"

    const-string v5, "openlight.co.gallery.view.ManagePresetsActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v20

    const/16 v15, 0x10

    const v17, 0x7f0e001f

    const/16 v18, 0x4

    const v19, 0x7f080125

    move-object v13, v0

    invoke-direct/range {v13 .. v20}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZIIILandroid/content/Intent;)V

    sput-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->MANAGE_PRESETS:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    .line 129
    new-instance v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const-string v5, "IN_POCKET_DETECTION"

    const-string v9, "inpocket_detection_setting"

    const/16 v6, 0x11

    const v8, 0x7f0e010b

    const v11, 0x7f080143

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIZ)V

    sput-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->IN_POCKET_DETECTION:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    .line 132
    new-instance v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const-string v14, "LENS_BLOCKED_DETECTION"

    const-string v18, "lens_blocked_detector_setting"

    const/16 v15, 0x12

    const v17, 0x7f0e010c

    const/16 v19, 0x1

    const v20, 0x7f080144

    const/16 v21, 0x0

    move-object v13, v0

    invoke-direct/range {v13 .. v21}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIZ)V

    sput-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->LENS_BLOCKED_DETECTION:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    .line 135
    new-instance v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const-string v5, "STACKED_CAPTURE"

    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v1

    const-string v2, "stacked.capture.selector"

    const/4 v13, 0x0

    invoke-virtual {v1, v2, v13}, Lopenlight/co/lib/utils/FeatureManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v9, "stacked_capture_state"

    const/16 v6, 0x13

    const v8, 0x7f0e010f

    const v11, 0x7f08013a

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIZ)V

    sput-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->STACKED_CAPTURE:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const/16 v0, 0x14

    .line 56
    new-array v0, v0, [Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->METERING:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    aput-object v1, v0, v13

    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->ASPECT_RATIO:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->VIDEO_FORMAT:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->DEPTH_EFFECT:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->EXPOSURE:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->DEVICE_STATUS:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->WHEEL_SCROLL:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->VIEWFINDER_TIMEOUT:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->HAPTIC:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->AUDIO:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->TOUCHSTRIP:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->FTU_RESET:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->ACCOUNT:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->ENCRYPT_IMAGES:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->MICROPHONE:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->DREAM_PROCESSING:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->MANAGE_PRESETS:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->IN_POCKET_DETECTION:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->LENS_BLOCKED_DETECTION:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->STACKED_CAPTURE:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->$VALUES:[Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZIIILandroid/content/Intent;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIII",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v11, p7

    .line 153
    invoke-direct/range {v0 .. v11}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIILjava/util/List;ZLandroid/content/Intent;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZILjava/lang/String;IIILjava/util/List;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    .line 169
    invoke-direct/range {v0 .. v11}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIILjava/util/List;ZLandroid/content/Intent;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZILjava/lang/String;IIILjava/util/List;ZLandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 175
    iput-boolean p3, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->mIsImplemented:Z

    .line 176
    iput p4, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->mSettingsResourceId:I

    .line 177
    iput-object p5, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->mPreferenceKey:Ljava/lang/String;

    .line 178
    iput p6, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->mType:I

    .line 179
    iput p7, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->mIconId:I

    .line 180
    iput p8, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->mOptionalListId:I

    .line 181
    iput-object p9, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->mOptionList:Ljava/util/List;

    .line 182
    iput-boolean p10, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->mIsHighlighted:Z

    const/4 p1, 0x0

    .line 183
    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->mSubTitle:Ljava/lang/String;

    .line 184
    invoke-static {p0}, Lopenlight/co/camera/view/setting/SettingModel;->newModel(Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;)Lopenlight/co/camera/view/setting/SettingModel;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->mSettingModel:Lopenlight/co/camera/view/setting/SettingModel;

    .line 185
    iput-object p11, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZILjava/lang/String;IIILjava/util/List;ZLopenlight/co/camera/view/setting/SettingAdapter$1;)V
    .locals 0

    .line 56
    invoke-direct/range {p0 .. p10}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIILjava/util/List;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZILjava/lang/String;IIIZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v10, p9

    .line 163
    invoke-direct/range {v0 .. v11}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIILjava/util/List;ZLandroid/content/Intent;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZILjava/lang/String;IIIZLopenlight/co/camera/view/setting/SettingAdapter$1;)V
    .locals 0

    .line 56
    invoke-direct/range {p0 .. p9}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIIZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZILjava/lang/String;IIZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "IIZ)V"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v10, p8

    .line 158
    invoke-direct/range {v0 .. v11}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIILjava/util/List;ZLandroid/content/Intent;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZILjava/lang/String;IIZLopenlight/co/camera/view/setting/SettingAdapter$1;)V
    .locals 0

    .line 56
    invoke-direct/range {p0 .. p8}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;-><init>(Ljava/lang/String;IZILjava/lang/String;IIZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;
    .locals 1

    .line 56
    const-class v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;
    .locals 1

    .line 56
    sget-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->$VALUES:[Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    invoke-virtual {v0}, [Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    return-object v0
.end method


# virtual methods
.method public getIconId()I
    .locals 0

    .line 213
    iget p0, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->mIconId:I

    return p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 233
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getOptionList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->mOptionList:Ljava/util/List;

    return-object p0
.end method

.method public getOptionalListId()I
    .locals 0

    .line 217
    iget p0, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->mOptionalListId:I

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 205
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSettingModel()Lopenlight/co/camera/view/setting/SettingModel;
    .locals 0

    .line 229
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->mSettingModel:Lopenlight/co/camera/view/setting/SettingModel;

    return-object p0
.end method

.method public getSettingsResourceId()I
    .locals 0

    .line 193
    iget p0, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->mSettingsResourceId:I

    return p0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 0

    .line 201
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->mSubTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 197
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/CameraApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->mSettingsResourceId:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 209
    iget p0, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->mType:I

    return p0
.end method

.method public isImplemented()Z
    .locals 0

    .line 189
    iget-boolean p0, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->mIsImplemented:Z

    return p0
.end method

.method public isSelectionHighlighted()Z
    .locals 0

    .line 225
    iget-boolean p0, p0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->mIsHighlighted:Z

    return p0
.end method
