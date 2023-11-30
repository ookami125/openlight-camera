package openlight.co.lightsdk.camera2;

import android.os.Build;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class Util {
    static final String LIGHT_KEY_PREFIX = "co.openlight.";

    Util() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isLightDevice() {
        return Build.MANUFACTURER.equals("Light");
    }
}