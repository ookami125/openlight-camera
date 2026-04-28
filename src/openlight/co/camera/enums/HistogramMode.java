package openlight.co.camera.enums;

public enum HistogramMode {
    OFF("histogram_off", 0x7f08009e, 0x7f0e002a),
    ON("histogram_on", 0x7f08009f, 0x7f0e002b);

    public static final String CAM_HISTOGRAM_OFF = "histogram_off";
    public static final String CAM_HISTOGRAM_ON = "histogram_on";

    private final String mPrefsKey;
    private final int mFirstLevelResId;
    private final int mSecondLevelResId;

    HistogramMode(String prefsKey, int firstLevelResId, int secondLevelResId) {
        mPrefsKey = prefsKey;
        mFirstLevelResId = firstLevelResId;
        mSecondLevelResId = secondLevelResId;
    }

    public static HistogramMode getModeByPrefsKey(String key) {
        for (HistogramMode mode : values()) {
            if (mode.mPrefsKey.equals(key)) return mode;
        }
        throw new IllegalArgumentException("No matching Histogram mode found for prefsKey: " + key);
    }

    public String getPrefsKey() { return mPrefsKey; }
    public int getFirstLevelResId() { return mFirstLevelResId; }
    public int getSecondLevelResId() { return mSecondLevelResId; }
}
