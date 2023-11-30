package android.support.v4.view;

import android.view.KeyEvent;
import android.view.View;

@Deprecated
/* loaded from: /tmp/jadx-11175800792829446388.dex */
public final class KeyEventCompat {
    @Deprecated
    public static int normalizeMetaState(int i) {
        return KeyEvent.normalizeMetaState(i);
    }

    @Deprecated
    public static boolean metaStateHasModifiers(int i, int i2) {
        return KeyEvent.metaStateHasModifiers(i, i2);
    }

    @Deprecated
    public static boolean metaStateHasNoModifiers(int i) {
        return KeyEvent.metaStateHasNoModifiers(i);
    }

    @Deprecated
    public static boolean hasModifiers(KeyEvent keyEvent, int i) {
        return keyEvent.hasModifiers(i);
    }

    @Deprecated
    public static boolean hasNoModifiers(KeyEvent keyEvent) {
        return keyEvent.hasNoModifiers();
    }

    @Deprecated
    public static void startTracking(KeyEvent keyEvent) {
        keyEvent.startTracking();
    }

    @Deprecated
    public static boolean isTracking(KeyEvent keyEvent) {
        return keyEvent.isTracking();
    }

    @Deprecated
    public static Object getKeyDispatcherState(View view) {
        return view.getKeyDispatcherState();
    }

    @Deprecated
    public static boolean dispatch(KeyEvent keyEvent, KeyEvent.Callback callback, Object obj, Object obj2) {
        return keyEvent.dispatch(callback, (KeyEvent.DispatcherState) obj, obj2);
    }

    @Deprecated
    public static boolean isCtrlPressed(KeyEvent keyEvent) {
        return keyEvent.isCtrlPressed();
    }

    private KeyEventCompat() {
    }
}