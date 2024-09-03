.class public interface abstract Lopenlight/co/lib/utils/CommonConstants;
.super Ljava/lang/Object;
.source "CommonConstants.java"


# static fields
.field public static final ACTION_CAMERA_ACTIVITY_STARTED:Ljava/lang/String; = "openlight.co.lightcamera.broadcast.ACTION_CAMERA_ACTIVITY_STARTED"

.field public static final ACTION_CAMERA_ACTIVITY_STOPPED:Ljava/lang/String; = "openlight.co.lightcamera.broadcast.ACTION_CAMERA_ACTIVITY_STOPPED"

.field public static final ACTION_CAMERA_APP_STARTED:Ljava/lang/String; = "openlight.co.lightcamera.broadcast.ACTION_CAMERA_APP_STARTED"

.field public static final ACTION_CAMERA_PREF_CHANGED:Ljava/lang/String; = "openlight.co.lightcamera.broadcast.ACTION_CAMERA_PREF_CHANGED"

.field public static final CAMERA_AUTHORITY:Ljava/lang/String; = "openlight.co.lightcamera"

.field public static final CAM_DREAM_PROCESSING_SETTING:Ljava/lang/String; = "dream_processing_setting"

.field public static final CAM_DREAM_PROCESSING_SETTING_DEFAULT:Ljava/lang/String; = "on"

.field public static final CAM_HAPTIC_SETTING:Ljava/lang/String; = "device_haptic_setting"

.field public static final CAM_HAPTIC_SETTING_DEFAULT:Ljava/lang/String; = "normal"

.field public static final CAM_HAPTIC_SETTING_NORMAL:Ljava/lang/String; = "normal"

.field public static final CAM_HAPTIC_SETTING_OFF:Ljava/lang/String; = "off"

.field public static final CAM_HAPTIC_SETTING_STRONG:Ljava/lang/String; = "strong"

.field public static final CAM_IMAGE_ENCRYPTION_SETTING:Ljava/lang/String; = "image_encryption_setting"

.field public static final CAM_IMAGE_ENCRYPTION_SETTING_DEFAULT:Ljava/lang/String; = "off"

.field public static final EXTRA_CAM_PREF_KEY:Ljava/lang/String; = "cam_pref_key"

.field public static final EXTRA_CAM_PREF_VALUE:Ljava/lang/String; = "cam_pref_value"

.field public static final EXTRA_IMAGE_PATH:Ljava/lang/String; = "image_path"

.field public static final EXTRA_SHOW_KEY_GUARD:Ljava/lang/String; = "show_key_guard"

.field public static final FEATURE_DEBUG_ON_USER:Ljava/lang/String; = "debug_on_user"

.field public static final FEATURE_ENCRYPTION_SETTING_DISPLAYED:Ljava/lang/String; = "encryption_setting_displayed"

.field public static final FIRST_TIME_GALLERY_TUTORIAL:Ljava/lang/String; = "gallery_show_tutorial"

.field public static final FIRST_TIME_USER_EDIT_VIEW:Ljava/lang/String; = "ftu_edit_user"

.field public static final GALLERY_AUTHORITY:Ljava/lang/String; = "light.co.lightgallery"

.field public static final ISO_DEFAULT_VALUE:I = 0x64

.field public static final IS_USER_BUILD:Z

.field public static final MIN_MEDIA_FILE_LENGTH:I = 0x2800

.field public static final PERMISSION_BROADCAST_CAMERA_EVENTS:Ljava/lang/String; = "openlight.co.lightcamera.CAMERA_EVENTS"

.field public static final PREF_AUDIO_THEME_CLASSIC:Ljava/lang/String; = "classic"

.field public static final PREF_KEY_LOCKED_NAMES:Ljava/lang/String; = "locked_names"

.field public static final PREF_KEY_QUAL_FTU_STATE:Ljava/lang/String; = "qualityFtuState"

.field public static final PREF_KEY_SCREEN_OFF_TIME:Ljava/lang/String; = "screen_off_time"

.field public static final PREF_KEY_USE_METRIC_UNITS:Ljava/lang/String; = "use_metric_units"

.field public static final PREF_TOGGLE_OFF:Ljava/lang/String; = "off"

.field public static final PREF_TOGGLE_ON:Ljava/lang/String; = "on"

.field public static final QUALITY_FTU_STATE_CANCELED:Ljava/lang/String; = "canceled"

.field public static final QUALITY_FTU_STATE_DONE:Ljava/lang/String; = "done"

.field public static final QUAL_FTU_PAGE_GOOD:I = 0x1

.field public static final QUAL_FTU_PAGE_HIGH:I = 0x2

.field public static final QUAL_FTU_PAGE_PREVIEW:I = 0x0

.field public static final QUAL_FTU_STATE_START:Ljava/lang/String; = "start"

.field public static final ZOOM_START_STRING:Ljava/lang/String; = "28"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "user"

    .line 155
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 156
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v0

    const-string v1, "debug_on_user"

    invoke-virtual {v0, v1}, Lopenlight/co/lib/utils/FeatureManager;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    sput-boolean v0, Lopenlight/co/lib/utils/CommonConstants;->IS_USER_BUILD:Z

    return-void
.end method
