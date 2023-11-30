package openlight.co.camera.view.level;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class Clamp {
    public static int clamp(int i, int i2, int i3) {
        return i > i3 ? i3 : i < i2 ? i2 : i;
    }
}