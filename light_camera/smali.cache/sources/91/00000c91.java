package openlight.co.camera.enums;

import openlight.co.camera.R;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public enum BurstMode {
    OFF(BURST_MODE_OFF, R.drawable.burst_off_50_4x, R.string.ancillary_option_off, R.drawable.confirmation_burst_off_4x),
    CAPTURE_THREE(BURST_MODE_3_CAPTURE, R.drawable.badge_burst_3_4x, R.string.ancillary_burst_option_3, R.drawable.confirmation_burst_3_4x),
    CAPTURE_SIX(BURST_MODE_6_CAPTURE, R.drawable.badge_burst_6_4x, R.string.ancillary_burst_option_6, R.drawable.confirmation_burst_6_4x);
    
    public static final String BURST_MODE_3_CAPTURE = "burst_3";
    public static final String BURST_MODE_6_CAPTURE = "burst_6";
    public static final String BURST_MODE_9_CAPTURE = "burst_9";
    public static final String BURST_MODE_OFF = "burst_off";
    private final int mConfirmationResId;
    private final int mFirstLevelResId;
    private final String mPrefsKey;
    private final int mSecondLevelResId;

    BurstMode(String str, int i, int i2, int i3) {
        this.mPrefsKey = str;
        this.mFirstLevelResId = i;
        this.mSecondLevelResId = i2;
        this.mConfirmationResId = i3;
    }

    public static BurstMode getModeByPrefsKey(String str) {
        BurstMode[] values;
        for (BurstMode burstMode : values()) {
            if (burstMode.mPrefsKey.equals(str)) {
                return burstMode;
            }
        }
        throw new IllegalArgumentException("No matching burst mode found for key: " + str);
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

    public int getConfirmationResId() {
        return this.mConfirmationResId;
    }
}