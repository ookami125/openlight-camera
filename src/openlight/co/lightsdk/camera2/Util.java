package openlight.co.lightsdk.camera2;

import android.os.Build;

/* loaded from: /tmp/jadx-9280409559746157222.dex */
class Util {
    static final String LIGHT_KEY_PREFIX = "co.openlight.";

    Util() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isLightDevice() {
        return Build.MANUFACTURER.equals("Light");
    }
}