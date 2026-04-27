package openlight.co.lib.utils;

import android.os.Build;

public interface CommonConstants {
    String ACTION_CAMERA_ACTIVITY_STARTED = "openlight.co.lightcamera.broadcast.ACTION_CAMERA_ACTIVITY_STARTED";
    String ACTION_CAMERA_ACTIVITY_STOPPED = "openlight.co.lightcamera.broadcast.ACTION_CAMERA_ACTIVITY_STOPPED";
    String ACTION_CAMERA_APP_STARTED = "openlight.co.lightcamera.broadcast.ACTION_CAMERA_APP_STARTED";
    String ACTION_CAMERA_PREF_CHANGED = "openlight.co.lightcamera.broadcast.ACTION_CAMERA_PREF_CHANGED";
    String CAMERA_AUTHORITY = "openlight.co.lightcamera";
    String CAM_DREAM_PROCESSING_SETTING = "dream_processing_setting";
    String CAM_DREAM_PROCESSING_SETTING_DEFAULT = "on";
    String CAM_HAPTIC_SETTING = "device_haptic_setting";
    String CAM_HAPTIC_SETTING_DEFAULT = "normal";
    String CAM_HAPTIC_SETTING_NORMAL = "normal";
    String CAM_HAPTIC_SETTING_OFF = "off";
    String CAM_HAPTIC_SETTING_STRONG = "strong";
    String CAM_IMAGE_ENCRYPTION_SETTING = "image_encryption_setting";
    String CAM_IMAGE_ENCRYPTION_SETTING_DEFAULT = "off";
    String EXTRA_CAM_PREF_KEY = "cam_pref_key";
    String EXTRA_CAM_PREF_VALUE = "cam_pref_value";
    String EXTRA_IMAGE_PATH = "image_path";
    String EXTRA_SHOW_KEY_GUARD = "show_key_guard";
    String FEATURE_DEBUG_ON_USER = "debug_on_user";
    String FEATURE_ENCRYPTION_SETTING_DISPLAYED = "encryption_setting_displayed";
    String FIRST_TIME_GALLERY_TUTORIAL = "gallery_show_tutorial";
    String FIRST_TIME_USER_EDIT_VIEW = "ftu_edit_user";
    String GALLERY_AUTHORITY = "light.co.lightgallery";
    int ISO_DEFAULT_VALUE = 100;
    boolean IS_USER_BUILD = "user".equals(Build.TYPE) && !FeatureManager.get().getBoolean(FEATURE_DEBUG_ON_USER);
    int MIN_MEDIA_FILE_LENGTH = 0x2800;
    String PERMISSION_BROADCAST_CAMERA_EVENTS = "openlight.co.lightcamera.CAMERA_EVENTS";
    String PREF_AUDIO_THEME_CLASSIC = "classic";
    String PREF_KEY_LOCKED_NAMES = "locked_names";
    String PREF_KEY_QUAL_FTU_STATE = "qualityFtuState";
    String PREF_KEY_SCREEN_OFF_TIME = "screen_off_time";
    String PREF_KEY_USE_METRIC_UNITS = "use_metric_units";
    String PREF_TOGGLE_OFF = "off";
    String PREF_TOGGLE_ON = "on";
    String QUALITY_FTU_STATE_CANCELED = "canceled";
    String QUALITY_FTU_STATE_DONE = "done";
    int QUAL_FTU_PAGE_GOOD = 1;
    int QUAL_FTU_PAGE_HIGH = 2;
    int QUAL_FTU_PAGE_PREVIEW = 0;
    String QUAL_FTU_STATE_START = "start";
    String ZOOM_START_STRING = "28";
}
