package openlight.co.camera.enums;

import openlight.co.camera.R;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public enum CafMode {
    AFS("cam_caf_mode_afs", R.drawable.toolbar_caf_mode_afs, R.string.ancillary_option_off, R.drawable.badge_caf_mode_afs, R.drawable.confirmation_caf_mode_afs),
    AFD("cam_caf_mode_afd", R.drawable.toolbar_caf_mode_afd, R.string.ancillary_option_on, R.drawable.badge_caf_mode_afd, R.drawable.confirmation_caf_mode_afd);
    
    public static final String CAM_CAF_MODE_AFD = "cam_caf_mode_afd";
    public static final String CAM_CAF_MODE_AFS = "cam_caf_mode_afs";
    private final int mConfirmationResId;
    private final int mFirstLevelResId;
    private final String mPrefsKey;
    private final int mSecondLevelResId;
    private final int mStatusBarId;

    CafMode(String str, int i, int i2, int i3, int i4) {
        this.mPrefsKey = str;
        this.mFirstLevelResId = i;
        this.mSecondLevelResId = i2;
        this.mStatusBarId = i3;
        this.mConfirmationResId = i4;
    }

    public static CafMode getModeByPrefsKey(String str) {
        CafMode[] values;
        for (CafMode cafMode : values()) {
            if (cafMode.mPrefsKey.equals(str)) {
                return cafMode;
            }
        }
        throw new IllegalArgumentException("No matching Caf mode found for key: " + str);
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

    public int getStatusBarId() {
        return this.mStatusBarId;
    }

    public int getConfirmationResId() {
        return this.mConfirmationResId;
    }
}