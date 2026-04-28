package openlight.co.camera.enums;

public enum CafMode {
    AFS("cam_caf_mode_afs", 0x7f080155, 0x7f0e002a, 0x7f080069, 0x7f0800cc),
    AFD("cam_caf_mode_afd", 0x7f080154, 0x7f0e002b, 0x7f080068, 0x7f0800cb);

    public static final String CAM_CAF_MODE_AFD = "cam_caf_mode_afd";
    public static final String CAM_CAF_MODE_AFS = "cam_caf_mode_afs";

    private final String mPrefsKey;
    private final int mFirstLevelResId;
    private final int mSecondLevelResId;
    private final int mStatusBarId;
    private final int mConfirmationResId;

    CafMode(String prefsKey, int firstLevelResId, int secondLevelResId, int statusBarId, int confirmationResId) {
        mPrefsKey = prefsKey;
        mFirstLevelResId = firstLevelResId;
        mSecondLevelResId = secondLevelResId;
        mStatusBarId = statusBarId;
        mConfirmationResId = confirmationResId;
    }

    public static CafMode getModeByPrefsKey(String key) {
        for (CafMode mode : values()) {
            if (mode.mPrefsKey.equals(key)) return mode;
        }
        throw new IllegalArgumentException("No matching Caf mode found for key: " + key);
    }

    public String getPrefsKey() { return mPrefsKey; }
    public int getFirstLevelResId() { return mFirstLevelResId; }
    public int getSecondLevelResId() { return mSecondLevelResId; }
    public int getStatusBarId() { return mStatusBarId; }
    public int getConfirmationResId() { return mConfirmationResId; }
}
