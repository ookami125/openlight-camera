package openlight.co.camera.enums;

import openlight.co.camera.R;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public enum HistogramMode {
    OFF(CAM_HISTOGRAM_OFF, R.drawable.capture_toolbar_histogram, R.string.ancillary_option_off),
    ON(CAM_HISTOGRAM_ON, R.drawable.capture_toolbar_histogram_on, R.string.ancillary_option_on);
    
    public static final String CAM_HISTOGRAM_OFF = "histogram_off";
    public static final String CAM_HISTOGRAM_ON = "histogram_on";
    private final int mFirstLevelResId;
    private final String mPrefsKey;
    private final int mSecondLevelResId;

    HistogramMode(String str, int i, int i2) {
        this.mPrefsKey = str;
        this.mFirstLevelResId = i;
        this.mSecondLevelResId = i2;
    }

    public static HistogramMode getModeByPrefsKey(String str) {
        HistogramMode[] values;
        for (HistogramMode histogramMode : values()) {
            if (histogramMode.mPrefsKey.equals(str)) {
                return histogramMode;
            }
        }
        throw new IllegalArgumentException("No matching Histogram mode found for prefsKey: " + str);
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
}