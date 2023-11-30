package openlight.co.lib.utils;

import android.app.Activity;
import android.view.View;
import android.view.Window;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class SystemUiHelper {
    private int mDelayToHide;
    private int mExtraFlags;
    private final boolean mIsActivity;
    private final Window mWindow;

    /* renamed from: lambda$9YGHZ_E6NkhiP_XOD34ENT-PesA */
    public static /* synthetic */ void m12lambda$9YGHZ_E6NkhiP_XOD34ENTPesA(SystemUiHelper systemUiHelper) {
        systemUiHelper.hideSystemUI();
    }

    /* renamed from: lambda$ixUU2dK-11-2j1T6g8OCLmxFw9w */
    public static /* synthetic */ void m13lambda$ixUU2dK112j1T6g8OCLmxFw9w(SystemUiHelper systemUiHelper, int i) {
        systemUiHelper.onSystemUiVisibilityChange(i);
    }

    public SystemUiHelper(Activity activity) {
        this(activity.getWindow(), true);
    }

    public SystemUiHelper(Window window) {
        this(window, false);
    }

    public SystemUiHelper delayToHide(int i) {
        this.mDelayToHide = i;
        return this;
    }

    public SystemUiHelper extraFlags(int i) {
        this.mExtraFlags = i;
        return this;
    }

    public SystemUiHelper start() {
        hideSystemUI();
        return this;
    }

    public void hideSystemUI() {
        this.mWindow.addFlags(this.mExtraFlags | (this.mIsActivity ? 1024 : 8));
        if (this.mIsActivity) {
            this.mWindow.getDecorView().setSystemUiVisibility(4102);
        }
    }

    public void release() {
        this.mWindow.getDecorView().setOnSystemUiVisibilityChangeListener(null);
    }

    public void onSystemUiVisibilityChange(int i) {
        if ((i & 4) == 0) {
            this.mWindow.getDecorView().postDelayed(new Runnable() { // from class: openlight.co.lib.utils.-$$Lambda$SystemUiHelper$9YGHZ_E6NkhiP_XOD34ENT-PesA
                @Override // java.lang.Runnable
                public final void run() {
                    SystemUiHelper.m12lambda$9YGHZ_E6NkhiP_XOD34ENTPesA(SystemUiHelper.this);
                }
            }, this.mDelayToHide);
        }
    }

    private SystemUiHelper(Window window, boolean z) {
        this.mWindow = window;
        this.mIsActivity = z;
        this.mWindow.getDecorView().setOnSystemUiVisibilityChangeListener(new View.OnSystemUiVisibilityChangeListener() { // from class: openlight.co.lib.utils.-$$Lambda$SystemUiHelper$ixUU2dK-11-2j1T6g8OCLmxFw9w
            @Override // android.view.View.OnSystemUiVisibilityChangeListener
            public final void onSystemUiVisibilityChange(int i) {
                SystemUiHelper.m13lambda$ixUU2dK112j1T6g8OCLmxFw9w(SystemUiHelper.this, i);
            }
        });
    }
}