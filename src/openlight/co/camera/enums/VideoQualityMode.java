package openlight.co.camera.enums;

public enum VideoQualityMode {
    QUALITY_480P(4, 0x7f0e002e),
    QUALITY_720P(5, 0x7f0e002f),
    QUALITY_1080P(6, 0x7f0e002c),
    QUALITY_2160P(8, 0x7f0e002d),
    QUALITY_HIGH(1, 0x7f0e0030);

    public static final String DEFAULT = QUALITY_1080P.toString();

    private final int mQualityProfile;
    private final int mResId;

    VideoQualityMode(int qualityProfile, int resId) {
        mQualityProfile = qualityProfile;
        mResId = resId;
    }

    public int getQualityProfile() { return mQualityProfile; }
    public int getResId() { return mResId; }
}
