package openlight.co.lib.utils;

import android.os.Build;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public interface CommonConstants {
    public static final String ACTION_CAMERA_ACTIVITY_STARTED = "openlight.co.lightcamera.broadcast.ACTION_CAMERA_ACTIVITY_STARTED";
    public static final String ACTION_CAMERA_ACTIVITY_STOPPED = "openlight.co.lightcamera.broadcast.ACTION_CAMERA_ACTIVITY_STOPPED";
    public static final String ACTION_CAMERA_APP_STARTED = "openlight.co.lightcamera.broadcast.ACTION_CAMERA_APP_STARTED";
    public static final String ACTION_CAMERA_PREF_CHANGED = "openlight.co.lightcamera.broadcast.ACTION_CAMERA_PREF_CHANGED";
    public static final String CAMERA_AUTHORITY = "openlight.co.lightcamera";
    public static final String CAM_DREAM_PROCESSING_SETTING = "dream_processing_setting";
    public static final String CAM_DREAM_PROCESSING_SETTING_DEFAULT = "on";
    public static final String CAM_HAPTIC_SETTING = "device_haptic_setting";
    public static final String CAM_HAPTIC_SETTING_DEFAULT = "normal";
    public static final String CAM_HAPTIC_SETTING_NORMAL = "normal";
    public static final String CAM_HAPTIC_SETTING_OFF = "off";
    public static final String CAM_HAPTIC_SETTING_STRONG = "strong";
    public static final String CAM_IMAGE_ENCRYPTION_SETTING = "image_encryption_setting";
    public static final String CAM_IMAGE_ENCRYPTION_SETTING_DEFAULT = "off";
    public static final String EXTRA_CAM_PREF_KEY = "cam_pref_key";
    public static final String EXTRA_CAM_PREF_VALUE = "cam_pref_value";
    public static final String EXTRA_IMAGE_PATH = "image_path";
    public static final String EXTRA_SHOW_KEY_GUARD = "show_key_guard";
    public static final String FEATURE_DEBUG_ON_USER = "debug_on_user";
    public static final String FEATURE_ENCRYPTION_SETTING_DISPLAYED = "encryption_setting_displayed";
    public static final String FIRST_TIME_GALLERY_TUTORIAL = "gallery_show_tutorial";
    public static final String FIRST_TIME_USER_EDIT_VIEW = "ftu_edit_user";
    public static final String GALLERY_AUTHORITY = "light.co.lightgallery";
    public static final int ISO_DEFAULT_VALUE = 100;
    public static final boolean IS_USER_BUILD;
    public static final int MIN_MEDIA_FILE_LENGTH = 10240;
    public static final String PERMISSION_BROADCAST_CAMERA_EVENTS = "openlight.co.lightcamera.CAMERA_EVENTS";
    public static final String PREF_AUDIO_THEME_CLASSIC = "classic";
    public static final String PREF_KEY_LOCKED_NAMES = "locked_names";
    public static final String PREF_KEY_QUAL_FTU_STATE = "qualityFtuState";
    public static final String PREF_KEY_SCREEN_OFF_TIME = "screen_off_time";
    public static final String PREF_KEY_USE_METRIC_UNITS = "use_metric_units";
    public static final String PREF_TOGGLE_OFF = "off";
    public static final String PREF_TOGGLE_ON = "on";
    public static final String QUALITY_FTU_STATE_CANCELED = "canceled";
    public static final String QUALITY_FTU_STATE_DONE = "done";
    public static final int QUAL_FTU_PAGE_GOOD = 1;
    public static final int QUAL_FTU_PAGE_HIGH = 2;
    public static final int QUAL_FTU_PAGE_PREVIEW = 0;
    public static final String QUAL_FTU_STATE_START = "start";
    public static final String ZOOM_START_STRING = "28";

    static {
        IS_USER_BUILD = "user".equals(Build.TYPE) && !FeatureManager.get().getBoolean(FEATURE_DEBUG_ON_USER);
    }
}