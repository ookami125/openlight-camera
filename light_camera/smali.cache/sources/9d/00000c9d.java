package openlight.co.camera.enums;

import openlight.co.camera.R;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public enum VideoQualityMode {
    QUALITY_480P(4, R.string.ancillary_quality_profile_480),
    QUALITY_720P(5, R.string.ancillary_quality_profile_720),
    QUALITY_1080P(6, R.string.ancillary_quality_profile_1080),
    QUALITY_2160P(8, R.string.ancillary_quality_profile_2160),
    QUALITY_HIGH(1, R.string.ancillary_quality_profile_high);
    
    private final int mQualityProfile;
    private final int mResId;
    public static final String DEFAULT = QUALITY_1080P.toString();

    VideoQualityMode(int i, int i2) {
        this.mQualityProfile = i;
        this.mResId = i2;
    }

    public int getQualityProfile() {
        return this.mQualityProfile;
    }

    public int getResId() {
        return this.mResId;
    }
}