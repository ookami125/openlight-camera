package openlight.co.camera.enums;

import openlight.co.camera.R;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public enum AwbMode {
    AUTO(CAM_AWB_AUTO, R.string.ancillary_awb_option_awb, R.drawable.confirmation_wb_auto, 0, 1) { // from class: openlight.co.camera.enums.AwbMode.1
        @Override // openlight.co.camera.enums.AwbMode
        public boolean isAuto() {
            return true;
        }
    },
    INCANDESCENT(CAM_AWB_INCANDESCENT, (int) R.drawable.capture_toolbar_white_balance_tungsten, (int) R.drawable.capture_toolbar_white_balance_tungsten_selected, (int) R.drawable.confirmation_wb_incandescent, (int) R.drawable.wb_tungsten_badge, 2),
    FLUORESCENT(CAM_AWB_FLUORESCENT, (int) R.drawable.capture_toolbar_white_balance_fluorescent, (int) R.drawable.capture_toolbar_white_balance_fluorescent_selected, (int) R.drawable.confirmation_wb_flourescent, (int) R.drawable.wb_flourescent_badge, 3),
    DAYLIGHT(CAM_AWB_DAY_LIGHT, (int) R.drawable.capture_toolbar_white_balance_daylight, (int) R.drawable.capture_toolbar_white_balance_daylight_selected, (int) R.drawable.confirmation_wb_daylight, (int) R.drawable.wb_daylight_badge, 5),
    CLOUDY(CAM_AWB_CLOUDY, (int) R.drawable.capture_toolbar_white_balance_cloudy, (int) R.drawable.capture_toolbar_white_balance_cloudy_selected, (int) R.drawable.confirmation_wb_cloudy, (int) R.drawable.wb_cloudy_badge, 6);
    
    public static final String CAM_AWB_AUTO = "wb_auto";
    public static final String CAM_AWB_CLOUDY = "wb_cloudy";
    public static final String CAM_AWB_DAY_LIGHT = "wb_daylight";
    public static final String CAM_AWB_FLUORESCENT = "wb_fluorescent";
    public static final String CAM_AWB_INCANDESCENT = "wb_incandescent";
    private final int mBadgeResId;
    private final int mCaptureRequestValue;
    private final int mConfirmationResId;
    private final String mPrefsKey;
    private final int mResId;
    private final int mSelectedResId;

    public boolean isAuto() {
        return false;
    }

    AwbMode(String str, int i, int i2, int i3, int i4, int i5) {
        this.mPrefsKey = str;
        this.mResId = i;
        this.mSelectedResId = i2;
        this.mConfirmationResId = i3;
        this.mBadgeResId = i4;
        this.mCaptureRequestValue = i5;
    }

    AwbMode(String str, int i, int i2, int i3, int i4) {
        this(str, i, -1, i2, i3, i4);
    }

    public static AwbMode getModeByPrefsKey(String str) {
        AwbMode[] values;
        for (AwbMode awbMode : values()) {
            if (awbMode.mPrefsKey.equals(str)) {
                return awbMode;
            }
        }
        throw new IllegalArgumentException("No matching awb mode found for prefsKey " + str);
    }

    public String getPrefsKey() {
        return this.mPrefsKey;
    }

    public int getResourceId() {
        return this.mResId;
    }

    public int getSelectedResId() {
        return this.mSelectedResId;
    }

    public int getConfirmationResId() {
        return this.mConfirmationResId;
    }

    public int getBadgeResId() {
        return this.mBadgeResId;
    }

    public int getCaptureRequestModeValue() {
        return this.mCaptureRequestValue;
    }
}