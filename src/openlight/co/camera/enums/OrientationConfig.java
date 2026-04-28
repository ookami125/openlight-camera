package openlight.co.camera.enums;

public enum OrientationConfig {
    PORTRAIT(1, 90, -90, 90),
    PORTRAIT_REVERSE(1, -90, 90, 270),
    LANDSCAPE(2, 0, 0, 0),
    LANDSCAPE_REVERSE(2, 180, 0, 180);

    final int mAndroidOrientationConfiguration;
    final int mDeviceAngle;
    final int mViewRotationAngle;
    final int mOrientationHint;

    OrientationConfig(int androidOrientationConfig, int deviceAngle, int viewRotationAngle, int orientationHint) {
        mAndroidOrientationConfiguration = androidOrientationConfig;
        mDeviceAngle = deviceAngle;
        mViewRotationAngle = viewRotationAngle;
        mOrientationHint = orientationHint;
    }

    public int getAndroidOrientationConfiguration() { return mAndroidOrientationConfiguration; }
    public int getDeviceAngle() { return mDeviceAngle; }
    public int getViewRotationAngle() { return mViewRotationAngle; }
    public int getOrientationHint() { return mOrientationHint; }
}
