package openlight.co.camera.enums;

import openlight.co.camera.R;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public enum TimerMode {
    OFF(TIMER_OFF, R.drawable.capture_toolbar_timer_off, R.string.ancillary_option_off, R.drawable.confirmation_timer_off),
    THREE_SEC(TIMER_3S, R.drawable.capture_toolbar_timer_3, R.string.ancillary_timer_option_3, R.drawable.confirmation_timer_3s),
    FIVE_SEC(TIMER_5S, R.drawable.capture_toolbar_timer_5, R.string.ancillary_timer_option_5, R.drawable.confirmation_timer_5s),
    TEN_SEC(TIMER_10S, R.drawable.capture_toolbar_timer_10, R.string.ancillary_timer_option_10, R.drawable.confirmation_timer_10s),
    TWENTY_SEC(TIMER_20S, R.drawable.capture_toolbar_timer_20, R.string.ancillary_timer_option_20, R.drawable.confirmation_timer_20s);
    
    public static final String TIMER_10S = "10s";
    public static final String TIMER_20S = "20s";
    public static final String TIMER_3S = "3s";
    public static final String TIMER_5S = "5s";
    public static final String TIMER_OFF = "timer_off";
    private final int mConfirmationResId;
    private final int mFirstLevelResId;
    private final String mPrefsKey;
    private final int mSecondLevelResId;

    TimerMode(String str, int i, int i2, int i3) {
        this.mPrefsKey = str;
        this.mFirstLevelResId = i;
        this.mSecondLevelResId = i2;
        this.mConfirmationResId = i3;
    }

    public static TimerMode getModeByPrefsKey(String str) {
        TimerMode[] values;
        for (TimerMode timerMode : values()) {
            if (timerMode.mPrefsKey.equals(str)) {
                return timerMode;
            }
        }
        throw new IllegalArgumentException("No matching timer mode found for key: " + str);
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