package openlight.co.camera.enums;

import openlight.co.camera.R;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public enum GridMode {
    OFF(GRID_OFF, R.drawable.capture_toolbar_grid, R.string.ancillary_option_off),
    THREE_BY_THREE(GRID_3_3, R.drawable.capture_toolbar_grid_3_by_3_even, R.drawable.capture_toolbar_grid_3_by_3_even, R.drawable.capture_toolbar_grid_3by3_selected_4x),
    GOLDEN_RATIO(GRID_GOLDEN_RATIO, R.drawable.capture_toolbar_grid_golden_ratio, R.drawable.capture_toolbar_grid_golden_ratio, R.drawable.capture_toolbar_grid_golden_selected_4x);
    
    public static final String GRID_3_3 = "3x3";
    public static final String GRID_CROSS = "cross";
    public static final String GRID_DENSE = "dense";
    public static final String GRID_GOLDEN_RATIO = "golden_ratio";
    public static final String GRID_OFF = "grid_off";
    private final int mFirstLevelResId;
    private final String mPrefsKey;
    private final int mSecondLevelResId;
    private final int mSelectedResId;

    GridMode(String str, int i, int i2, int i3) {
        this.mPrefsKey = str;
        this.mFirstLevelResId = i;
        this.mSecondLevelResId = i2;
        this.mSelectedResId = i3;
    }

    GridMode(String str, int i, int i2) {
        this(str, i, i2, -1);
    }

    public static GridMode getModeByPrefsKey(String str) {
        GridMode[] values;
        for (GridMode gridMode : values()) {
            if (gridMode.mPrefsKey.equals(str)) {
                return gridMode;
            }
        }
        throw new IllegalArgumentException("No matching Grid mode found for prefsKey: " + str);
    }

    public String getPrefsKey() {
        return this.mPrefsKey;
    }

    public int getFirstLevelResId() {
        return this.mFirstLevelResId;
    }

    public int getSecondLevelResId() {
        return this.mSecondLevelResId;
    }

    public int getSelectedResId() {
        return this.mSelectedResId;
    }
}