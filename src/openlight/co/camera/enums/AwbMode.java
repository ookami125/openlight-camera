package openlight.co.camera.enums;

public enum AwbMode {
    AUTO("wb_auto", 0x7f0e0026, -1, 0x7f0800dd, 0, 1) {
        @Override
        public boolean isAuto() { return true; }
    },
    INCANDESCENT("wb_incandescent", 0x7f0800c0, 0x7f0800c1, 0x7f0800e1, 0x7f080169, 2),
    FLUORESCENT("wb_fluorescent", 0x7f0800be, 0x7f0800bf, 0x7f0800e0, 0x7f080168, 3),
    DAYLIGHT("wb_daylight", 0x7f0800bc, 0x7f0800bd, 0x7f0800df, 0x7f080167, 5),
    CLOUDY("wb_cloudy", 0x7f0800ba, 0x7f0800bb, 0x7f0800de, 0x7f080166, 6);

    public static final String CAM_AWB_AUTO = "wb_auto";
    public static final String CAM_AWB_CLOUDY = "wb_cloudy";
    public static final String CAM_AWB_DAY_LIGHT = "wb_daylight";
    public static final String CAM_AWB_FLUORESCENT = "wb_fluorescent";
    public static final String CAM_AWB_INCANDESCENT = "wb_incandescent";

    private final String mPrefsKey;
    private final int mResId;
    private final int mSelectedResId;
    private final int mConfirmationResId;
    private final int mBadgeResId;
    private final int mCaptureRequestValue;

    AwbMode(String prefsKey, int resId, int selectedResId, int confirmationResId, int badgeResId, int captureRequestValue) {
        mPrefsKey = prefsKey;
        mResId = resId;
        mSelectedResId = selectedResId;
        mConfirmationResId = confirmationResId;
        mBadgeResId = badgeResId;
        mCaptureRequestValue = captureRequestValue;
    }

    public static AwbMode getModeByPrefsKey(String key) {
        for (AwbMode mode : values()) {
            if (mode.mPrefsKey.equals(key)) return mode;
        }
        throw new IllegalArgumentException("No matching awb mode found for prefsKey " + key);
    }

    public boolean isAuto() { return false; }
    public int getBadgeResId() { return mBadgeResId; }
    public int getCaptureRequestModeValue() { return mCaptureRequestValue; }
    public int getConfirmationResId() { return mConfirmationResId; }
    public String getPrefsKey() { return mPrefsKey; }
    public int getResourceId() { return mResId; }
    public int getSelectedResId() { return mSelectedResId; }
}
