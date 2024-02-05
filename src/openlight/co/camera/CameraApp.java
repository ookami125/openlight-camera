package openlight.co.camera;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.StrictMode;
import openlight.co.TheaterMode.TheaterModeSettings;
import openlight.co.camera.metrics.Metrics;
import openlight.co.camera.utils.CameraPreferences;
import openlight.co.camera.utils.LensObstructionDetector;
import openlight.co.camera.utils.LocationManager;
import openlight.co.camera.utils.UsbMgr;
import openlight.co.camera.utils.Util;
import openlight.co.lib.R;
import openlight.co.lib.content.CamPrefsFactory;
import openlight.co.lib.content.Prefs;
import openlight.co.lib.utils.CommonConstants;
import openlight.co.lib.utils.LogUtil;
import openlight.co.lib.utils.Utils;
import openlight.co.lightsdk.camera2.Light;

/* loaded from: /tmp/jadx-17798855998592446105.dex */
public class CameraApp extends Application {
    private static final boolean ENABLE_STRICT_MODE = false;
    private static final String TAG = "CameraApp";
    private static CameraApp sInstance;

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        sInstance = this;
        Utils.init(this);
        LocationManager.init(this);
        initCamPrefs(this);
        UsbMgr.init(this);
        Util.resetCameraPreference();
        Util.broadcastCameraIntent(this, CommonConstants.ACTION_CAMERA_APP_STARTED);
        TheaterModeSettings.init();
        LensObstructionDetector.get().init(this);
        Light.init(this);
    }

    public static synchronized Prefs initCamPrefs(Context context) {
        Prefs prefs;
        synchronized (CameraApp.class) {
            prefs = CamPrefsFactory.get();
            if (prefs == null) {
                prefs = new CameraPreferences(context.getSharedPreferences(context.getString(R.string.camera_mode_preference_key), 0));
                CamPrefsFactory.set(prefs);
            }
        }
        return prefs;
    }

    public static CameraApp get() {
        return sInstance;
    }

    public static boolean isLight() {
        return "Light".equals(Build.MANUFACTURER);
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        LogUtil.w(TAG, "Application Low Memory");
        Metrics.get().add(Metrics.EVENT_LOW_MEMORY);
    }

    private void enableStrictMode() {
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectCustomSlowCalls().detectNetwork().detectResourceMismatches().penaltyLog().penaltyFlashScreen().build());
        StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder().detectLeakedSqlLiteObjects().detectLeakedClosableObjects().detectAll().penaltyLog().penaltyDropBox().build());
    }
}