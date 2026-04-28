package openlight.co.camera.enums;

public enum BurstMode {
    OFF("burst_off", 0x7f080074, 0x7f0e002a, 0x7f0800c9),
    CAPTURE_THREE("burst_3", 0x7f080065, 0x7f0e0027, 0x7f0800c3),
    CAPTURE_SIX("burst_6", 0x7f080066, 0x7f0e0028, 0x7f0800c5);

    public static final String BURST_MODE_3_CAPTURE = "burst_3";
    public static final String BURST_MODE_6_CAPTURE = "burst_6";
    public static final String BURST_MODE_9_CAPTURE = "burst_9";
    public static final String BURST_MODE_OFF = "burst_off";

    private final String mPrefsKey;
    private final int mFirstLevelResId;
    private final int mSecondLevelResId;
    private final int mConfirmationResId;

    BurstMode(String prefsKey, int firstLevelResId, int secondLevelResId, int confirmationResId) {
        mPrefsKey = prefsKey;
        mFirstLevelResId = firstLevelResId;
        mSecondLevelResId = secondLevelResId;
        mConfirmationResId = confirmationResId;
    }

    public static BurstMode getModeByPrefsKey(String key) {
        for (BurstMode mode : values()) {
            if (mode.mPrefsKey.equals(key)) return mode;
        }
        throw new IllegalArgumentException("No matching burst mode found for key: " + key);
    }

    public String getPrefsKey() { return mPrefsKey; }
    public int getFirstLevelResId() { return mFirstLevelResId; }
    public int getSecondLevelResId() { return mSecondLevelResId; }
    public int getConfirmationResId() { return mConfirmationResId; }
}
