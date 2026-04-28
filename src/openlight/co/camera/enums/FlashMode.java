package openlight.co.camera.enums;

import java.util.ArrayList;
import java.util.List;
import openlight.co.camera.CameraMode;
import openlight.co.camera.managers.CameraManager;

public enum FlashMode {
    OFF("flash_off", 0x7f080094, 0x7f0e002a, 0x7f0800ce, 0, 1) {
        @Override
        public boolean isEnabled() { return true; }
    },
    AUTO("flash_auto", 0x7f080093, 0x7f0e0029, 0x7f0800cd, 0x7f0800ee, 2) {
        @Override
        public boolean isEnabled() {
            CameraMode mode = CameraManager.get().getCameraMode();
            return mode.isAuto() || mode.isIso() || mode.isShutter();
        }
    },
    ON("flash_on", 0x7f080092, 0x7f0e002b, 0x7f0800cf, 0x7f0800ef, 3) {
        @Override
        public boolean isEnabled() { return true; }
    };

    public static final String CAM_FLASH_AUTO = "flash_auto";
    public static final String CAM_FLASH_OFF = "flash_off";
    public static final String CAM_FLASH_ON = "flash_on";

    private final String mPrefsKey;
    private final int mFirstLevelResourceId;
    private final int mSecondLevelResourceId;
    private final int mConfirmationResourceId;
    private final int mBadgeResourceId;
    private final int mAeFlashRequestValue;

    FlashMode(String prefsKey, int firstLevel, int secondLevel, int confirmation, int badge, int aeFlash) {
        mPrefsKey = prefsKey;
        mFirstLevelResourceId = firstLevel;
        mSecondLevelResourceId = secondLevel;
        mConfirmationResourceId = confirmation;
        mBadgeResourceId = badge;
        mAeFlashRequestValue = aeFlash;
    }

    public static List<FlashMode> getEnabledModes() {
        List<FlashMode> result = new ArrayList<>();
        for (FlashMode mode : values()) {
            if (mode.isEnabled()) result.add(mode);
        }
        return result;
    }

    public static FlashMode getModeByPrefsKey(String key) {
        for (FlashMode mode : values()) {
            if (mode.mPrefsKey.equals(key)) return mode;
        }
        throw new IllegalArgumentException("No matching burst mode found for key: " + key);
    }

    public boolean isEnabled() { return false; }
    public int getAeFlashMode() { return mAeFlashRequestValue; }
    public int getBadgeResourceId() { return mBadgeResourceId; }
    public int getConfirmationResourceId() { return mConfirmationResourceId; }
    public int getFirstLevelResId() { return mFirstLevelResourceId; }
    public String getPrefsKey() { return mPrefsKey; }
    public int getSecondLevelResId() { return mSecondLevelResourceId; }
}
