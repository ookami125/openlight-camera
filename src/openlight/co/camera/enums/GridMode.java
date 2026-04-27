package openlight.co.camera.enums;

public enum GridMode {
    OFF("grid_off", 0x7f080095, 0x7f0e002a, -1),
    THREE_BY_THREE("3x3", 0x7f080096, 0x7f080096, 0x7f080097),
    GOLDEN_RATIO("golden_ratio", 0x7f08009a, 0x7f08009a, 0x7f08009b);

    public static final String GRID_3_3 = "3x3";
    public static final String GRID_CROSS = "cross";
    public static final String GRID_DENSE = "dense";
    public static final String GRID_GOLDEN_RATIO = "golden_ratio";
    public static final String GRID_OFF = "grid_off";

    private final String mPrefsKey;
    private final int mFirstLevelResId;
    private final int mSecondLevelResId;
    private final int mSelectedResId;

    GridMode(String prefsKey, int firstLevelResId, int secondLevelResId, int selectedResId) {
        mPrefsKey = prefsKey;
        mFirstLevelResId = firstLevelResId;
        mSecondLevelResId = secondLevelResId;
        mSelectedResId = selectedResId;
    }

    public static GridMode getModeByPrefsKey(String key) {
        for (GridMode mode : values()) {
            if (mode.mPrefsKey.equals(key)) return mode;
        }
        throw new IllegalArgumentException("No matching Grid mode found for prefsKey: " + key);
    }

    public String getPrefsKey() { return mPrefsKey; }
    public int getFirstLevelResId() { return mFirstLevelResId; }
    public int getSecondLevelResId() { return mSecondLevelResId; }
    public int getSelectedResId() { return mSelectedResId; }
}
