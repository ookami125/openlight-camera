package openlight.co.camera.utils;

import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import openlight.co.TheaterMode.TheaterModeSettings;
import openlight.co.camera.CameraMode;
import openlight.co.camera.managers.CameraManager;
import openlight.co.lib.content.CamPrefsFactory;
import openlight.co.lib.content.Prefs;
import openlight.co.lib.utils.LogUtil;

public class CamPrefsUtils {

    private static final String TAG = "CamPrefsUtils";

    public static final int AREA_WEIGHTED = 1000;
    public static final String ASPECT_RATIO_16_9 = "16:9";
    public static final String ASPECT_RATIO_1_1 = "1:1";
    public static final String ASPECT_RATIO_4_3 = "4:3";
    public static final int BATTERY_LEVEL_15 = 15;
    public static final int BATTERY_LEVEL_25 = 25;
    public static final int BATTERY_LEVEL_35 = 35;
    public static final int BATTERY_LEVEL_60 = 60;
    public static final int BATTERY_LEVEL_90 = 90;
    public static final int BATTERY_LEVEL_RESUME_CAMERA = 12;
    public static final int BATTERY_LOW_LEVEL = 11;
    public static final float CAMERA_DIFF = 30.0f;
    public static final float CAMERA_DIFF_SCROLL = 10.0f;
    public static final long CAMERA_IMAGE_SIZE = 0xb400000L;
    public static final float CAMERA_PX_STEP = 600.0f;
    public static final float CAMERA_PX_STEP_SCROLL = 200.0f;
    public static final long CAMERA_STORAGE_BUFFER = 0x1f400000L;
    public static final String CAM_ACCOUNT = "account";
    public static final String CAM_ASPECT_RATIO = "aspect_ratio_setting";
    public static final String CAM_AUDIO_SETTING = "device_audio_setting";
    public static final String CAM_AUDIO_SETTING_DEFAULT = "classic";
    public static final String CAM_AUTO_MODE_CAF = "cam_auto_mode_caf";
    public static final String CAM_AUTO_MODE_CAF_DEFAULT = "cam_caf_mode_afd";
    public static final String CAM_BURST_MODE = "burst_mode";
    public static final String CAM_DEVICE_STATUS = "device_status_setting";
    public static final String CAM_DEVICE_STATUS_DEFAULT = "on";
    public static final String CAM_DOF = "dof";
    public static final String CAM_DOF_DEFAULT = "50";
    public static final String CAM_DOF_OFF = "dof_off";
    public static final String CAM_DOF_ON = "dof_on";
    public static final String CAM_DOF_VALUE = "dof_val";
    public static final String CAM_EXP_INFO_SETTING = "device_exp_info_setting";
    public static final String CAM_EXP_INFO_SETTING_DEFAULT = "always on";
    public static final String CAM_FINDER_TIMEOUT = "device_cam_finder_timeout_setting";
    public static final String CAM_FINDER_TIMEOUT_DEFAULT = "1m";
    public static final String CAM_FLASH = "flash_setting";
    public static final String CAM_FLASH_MANUAL = "flash_setting_manual";
    static final String CAM_FLASH_VALUE = "flash_value";
    public static final String CAM_FOCAL_LENGTH = "focal_length";
    public static final String CAM_FTU_SETTING = "ftu_setting";
    public static final String CAM_GRID = "grid_setting";
    public static final String CAM_HAPTIC_SETTING = "device_haptic_setting";
    public static final String CAM_HAPTIC_SETTING_DEFAULT = "normal";
    public static final String CAM_HAPTIC_SETTING_NORMAL = "normal";
    public static final String CAM_HAPTIC_SETTING_OFF = "off";
    public static final String CAM_HAPTIC_SETTING_STRONG = "strong";
    public static final String CAM_HDR = "hdr_setting";
    public static final String CAM_HDR_OFF = "hdr_off";
    public static final String CAM_HDR_ON = "hdr_on";
    public static final String CAM_HISTOGRAM = "histogram_setting";
    public static final String CAM_HUD = "hud_setting";
    public static final String CAM_HUD_BACKGROUND = "hud_background";
    public static final String CAM_HUD_BACKGROUND_OFF = "hud_back_off";
    public static final String CAM_HUD_BACKGROUND_ON = "hud_back_on";
    public static final String CAM_HUD_OFF = "off";
    public static final String CAM_HUD_ON = "on";
    public static final String CAM_INPOCKET_DETECTION_SETTING = "inpocket_detection_setting";
    public static final String CAM_INPOCKET_DETECTION_SETTING_DEFAULT = "on";
    public static final String CAM_INVERSE_WHEEL_SCROLL = "wheel_inverse_scroll_setting";
    public static final String CAM_INVERSE_WHEEL_SCROLL_DEFAULT = "off";
    public static final String CAM_LENS_BLOCKED_DETECTOR_SETTING = "lens_blocked_detector_setting";
    public static final String CAM_LENS_BLOCKED_DETECTOR_SETTING_DEFAULT = "on";
    public static final String CAM_LEVEL_METER = "level_setting";
    public static final String CAM_LEVEL_OFF = "level_off";
    public static final String CAM_LEVEL_ON = "level_on";
    public static final String CAM_MANUAL_MODE_CAF = "cam_manual_mode_caf";
    public static final String CAM_MANUAL_MODE_CAF_DEFAULT = "cam_caf_mode_afs";
    public static final String CAM_METERING = "metering_setting";
    public static final String CAM_METERING_CENTER_WEIGHTED = "center-weighted";
    public static final String CAM_METERING_SPOT = "spot";
    public static final String CAM_MICROPHONE_MUTE_SETTING = "device_microphone_setting";
    public static final String CAM_MICROPHONE_MUTE_SETTING_DEFAULT = "off";
    public static final String CAM_MODE = "camera_mode_setting";
    public static final String CAM_SETTINGS = "camera_settings";
    public static final String CAM_SETTING_DOF = "dof_setting";
    public static final String CAM_STACKED_CAPTURE_STATE_SETTING = "stacked_capture_state";
    public static final String CAM_STACKED_CAPTURE_STATE_SETTING_DEFAULT = "on";
    public static final String CAM_TIMER = "timer_setting";
    public static final String CAM_TOUCHSTRIP_SETTING = "device_touchstrip_setting";
    public static final String CAM_TOUCHSTRIP_SETTING_DEFAULT = "off";
    public static final String CAM_TOUCH_WEIGHTED = "touch-weighted";
    public static final String CAM_VIDEO_FORMAT = "video_format";
    public static final String CAM_VIDEO_MODE_CAF = "cam_video_mode_caf";
    public static final String CAM_VIDEO_MODE_CAF_DEFAULT = "cam_caf_mode_afs";
    public static final String CAM_VIDEO_QUALITY_PROFILE = "quality_profile";
    public static final String CAM_WB_VALUE = "wb_value";
    public static final String CAM_WHITE_BALANCE = "white_balance_setting";
    public static final String CAM_ZOOM_VALUE = "zoom_value";
    public static final int DELAY_FOCUS_POST_ZOOM_COMPLETE = 700;
    public static final int DELAY_THUMB_FAILURE = 10500;
    public static final float[] DOF_F_VALUE;
    public static final int DURATION_250_MS = 250;
    public static final String EXP_COMP_INDEX = "ex_index";
    public static final String FIRST_TIME_FOCUS_FAILED = "ftu_user_focus_failed";
    public static final String FIRST_TIME_HAND_SHAKE_ASSIST_WARNING = "ftu_hand_shake_assist";
    public static final String FIRST_TIME_LOW_LIGHT_ASSIST_WARNING = "ftu_low_light_assist";
    public static final String FIRST_TIME_TRIPOD_ASSIST_WARNING = "ftu_tripod_assist";
    public static final String FIRST_TIME_USER_PLAY_ALL = "ftu_user_play_all";
    public static final String FIRST_TIME_USER_VIEW = "ftu_user";
    public static final String FIRST_TIME_VIDEO_USER = "ftu_video_user";
    public static final String FOUR_K_VIDEO = "4k";
    public static final int GRID_DENSE_PIXEL = 120;
    public static final String ISO_INDEX = "iso_index";
    public static final int PINCH_ZOOM_POINTER_COUNT = 2;
    public static final int ROTATION_90 = 90;
    public static final int ROTATION_90_CCW = -90;
    public static final String SETTING_AUTO = "auto";
    public static final String SETTING_OFF = "off";
    public static final String SETTING_ON = "on";
    public static final String SEVEN_TWENTY_P_VIDEO = "720p";
    public static final String SHARED_PREF_LAST_FILE_NUMBER = "lastFileNumber";
    public static final String SHARED_PREF_LAST_FILE_SUFFIX_NUMBER = "lastFileSuffixNumber";
    public static final String SHARED_PREF_VERSION = "shared_pref_update";
    public static final String SHUTTER_SPEED_INDEX = "shutter_index";
    public static final long SYSTEM_UI_SHOW_TIME_PERIOD = 3050L;
    public static final String TEN_EIGHTY_P_VIDEO = "1080p";
    public static final int UNKNOWN_SCREEN_SIZE = -1;
    public static final String WHEEL_SHUTTER_SPEED = "shutter";
    public static final String ZOOM_START_STRING = "28";
    public static final float ZOOM_VELOCITY = 1500.0f;

    static {
        DOF_F_VALUE = new float[]{1.0f, 2.0f, 3.0f, 4.0f, 5.0f, 6.0f, 7.0f, 8.0f, 9.0f, 10.0f};
    }

    public ColorMatrix INVERT_MATRIX;
    public ColorMatrixColorFilter INVERT_FILTER;

    public CamPrefsUtils() {
        INVERT_MATRIX = new ColorMatrix(new float[]{
            -1, 0, 0, 0, 255,
             0,-1, 0, 0, 255,
             0, 0,-1, 0, 255,
             0, 0, 0, 1,   0
        });
        INVERT_FILTER = new ColorMatrixColorFilter(INVERT_MATRIX);
    }

    private static void checkAndUpdateFlash(String key, Prefs prefs) {
        if (!key.equals("flash_setting")) return;
        String value = prefs.getStringValue(key);
        int index = -1;
        if ("auto".equals(value)) {
            index = 1;
        } else if ("off".equals(value)) {
            index = 0;
        } else if ("on".equals(value)) {
            index = 2;
        }
        if (index >= 0 && index <= 2) {
            LogUtil.d(TAG, "Flash setting is incorrect. Resetting Flash setting");
            prefs.removeValue(key);
        }
    }

    public static String getFlash() {
        Prefs prefs = CamPrefsFactory.get();
        CameraMode mode = CameraManager.get().getCameraMode();
        String key = mode.isManual() ? "flash_setting_manual" : "flash_setting";
        checkAndUpdateFlash(key, prefs);
        if (TheaterModeSettings.get().isFlashLightDisabled()) {
            return "flash_off";
        }
        return prefs.getStringValue(key);
    }

    public static void putFlash(String value) {
        Prefs prefs = CamPrefsFactory.get();
        CameraMode mode = CameraManager.get().getCameraMode();
        String key = mode.isManual() ? "flash_setting_manual" : "flash_setting";
        prefs.putValue(key, value);
    }

    public static boolean isFlashOff() {
        Prefs prefs = CamPrefsFactory.get();
        CameraMode mode = CameraManager.get().getCameraMode();
        String key = mode.isManual() ? "flash_setting_manual" : "flash_setting";
        return "flash_off".equals(prefs.getStringValue(key));
    }

    public static String getCafMode() {
        Prefs prefs = CamPrefsFactory.get();
        CameraMode mode = CameraManager.get().getCameraMode();
        String key;
        if (mode.isManual()) {
            key = "cam_manual_mode_caf";
        } else if (mode.isVideo()) {
            key = "cam_video_mode_caf";
        } else {
            key = "cam_auto_mode_caf";
        }
        return prefs.getStringValue(key);
    }

    public static void setCafMode(String value) {
        Prefs prefs = CamPrefsFactory.get();
        CameraMode mode = CameraManager.get().getCameraMode();
        String key;
        if (mode.isManual()) {
            key = "cam_manual_mode_caf";
        } else if (mode.isVideo()) {
            key = "cam_video_mode_caf";
        } else {
            key = "cam_auto_mode_caf";
        }
        prefs.putValue(key, value);
    }

    public static int getExpCompIndex() {
        Prefs prefs = CamPrefsFactory.get();
        int index = prefs.getIntValue("ex_index");
        int count = openlight.co.camera.utils.Constants.ExposureCompValues.values().length;
        if (index < count) return index;
        int mid = count / 2;
        prefs.putValue("ex_index", mid);
        return mid;
    }
}
