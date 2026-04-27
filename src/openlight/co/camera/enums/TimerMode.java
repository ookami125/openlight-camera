package openlight.co.camera.enums;

public enum TimerMode {
    OFF("timer_off", 0x7f0800b6, 0x7f0e002a, 0x7f0800d9),
    THREE_SEC("3s", 0x7f0800b0, 0x7f0e0033, 0x7f0800d7),
    FIVE_SEC("5s", 0x7f0800b3, 0x7f0e0034, 0x7f0800d8),
    TEN_SEC("10s", 0x7f0800aa, 0x7f0e0031, 0x7f0800d5),
    TWENTY_SEC("20s", 0x7f0800ad, 0x7f0e0032, 0x7f0800d6);

    public static final String TIMER_10S = "10s";
    public static final String TIMER_20S = "20s";
    public static final String TIMER_3S = "3s";
    public static final String TIMER_5S = "5s";
    public static final String TIMER_OFF = "timer_off";

    private final String mPrefsKey;
    private final int mFirstLevelResId;
    private final int mSecondLevelResId;
    private final int mConfirmationResId;

    TimerMode(String prefsKey, int firstLevelResId, int secondLevelResId, int confirmationResId) {
        mPrefsKey = prefsKey;
        mFirstLevelResId = firstLevelResId;
        mSecondLevelResId = secondLevelResId;
        mConfirmationResId = confirmationResId;
    }

    public static TimerMode getModeByPrefsKey(String key) {
        for (TimerMode mode : values()) {
            if (mode.mPrefsKey.equals(key)) return mode;
        }
        throw new IllegalArgumentException("No matching timer mode found for key: " + key);
    }

    public String getPrefsKey() { return mPrefsKey; }
    public int getFirstLevelResId() { return mFirstLevelResId; }
    public int getSecondLevelResId() { return mSecondLevelResId; }
    public int getConfirmationResId() { return mConfirmationResId; }
}
