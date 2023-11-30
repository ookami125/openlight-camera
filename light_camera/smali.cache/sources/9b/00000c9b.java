package openlight.co.camera.enums;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public enum OrientationConfig {
    PORTRAIT(1, 90, -90, 90),
    PORTRAIT_REVERSE(1, -90, 90, 270),
    LANDSCAPE(2, 0, 0, 0),
    LANDSCAPE_REVERSE(2, 180, 0, 180);
    
    final int mAndroidOrientationConfiguration;
    final int mDeviceAngle;
    final int mOrientationHint;
    final int mViewRotationAngle;

    OrientationConfig(int i, int i2, int i3, int i4) {
        this.mAndroidOrientationConfiguration = i;
        this.mViewRotationAngle = i3;
        this.mDeviceAngle = i2;
        this.mOrientationHint = i4;
    }

    public int getDeviceAngle() {
        return this.mDeviceAngle;
    }

    public int getViewRotationAngle() {
        return this.mViewRotationAngle;
    }

    public int getAndroidOrientationConfiguration() {
        return this.mAndroidOrientationConfiguration;
    }

    public int getOrientationHint() {
        return this.mOrientationHint;
    }
}