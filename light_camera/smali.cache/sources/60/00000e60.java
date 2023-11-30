package openlight.co.lib.content;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class CamPrefsFactory {
    private static Prefs sInstance;

    public static Prefs get() {
        return sInstance;
    }

    public static void set(Prefs prefs) {
        sInstance = prefs;
    }
}