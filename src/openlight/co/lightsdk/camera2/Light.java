package openlight.co.lightsdk.camera2;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import java.lang.ref.WeakReference;

/* loaded from: /tmp/jadx-9280409559746157222.dex */
public class Light {
    static final String SHARED_PREFERENCES = "openlight.co.lightsdk.PREFERENCE_FILE";
    private static final String TAG = "Light";
    private static Light sInstance;
    private final WeakReference<Context> mContext;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isInitalized() {
        return sInstance != null && sInstance.mContext.get() != null && ContextCompat.checkSelfPermission(sInstance.mContext.get(), "android.permission.WRITE_EXTERNAL_STORAGE") == 0 && ContextCompat.checkSelfPermission(sInstance.mContext.get(), "android.permission.READ_EXTERNAL_STORAGE") == 0;
    }

    public static synchronized void init(Context context) {
        synchronized (Light.class) {
            if (sInstance == null) {
                sInstance = new Light(context.getApplicationContext());
                Log.i(TAG, "Light SDK initialized");
            } else {
                Log.e(TAG, "Light SDK previously initialized, cannot call init twice");
                throw new IllegalStateException("Light SDK previously initialized");
            }
        }
    }

    public static Light get() {
        if (sInstance == null || sInstance.mContext.get() == null) {
            throw new IllegalStateException("Instance not created yet. Call init.");
        }
        return sInstance;
    }

    public Context getContext() {
        return this.mContext.get();
    }

    private Light(Context context) {
        this.mContext = new WeakReference<>(context);
    }
}