package openlight.co.camera.utils;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Point;
import android.hardware.camera2.CaptureResult;
import android.os.Environment;
import android.os.StatFs;
import android.util.Size;
import android.view.View;
import android.view.WindowManager;
import android.widget.Toast;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import openlight.co.camera.CameraApp;
import openlight.co.camera.managers.CameraManager;
import openlight.co.camera.managers.capture.CaptureBurstManager;
import openlight.co.camera.enums.MeteringMode;
import openlight.co.lib.content.CamPrefsFactory;
import openlight.co.lib.content.Prefs;
import openlight.co.lib.utils.FeatureManager;
import openlight.co.lib.utils.LogUtil;

public class Util {
    private static final String TAG = "Util";

    public static final boolean APP_RESTART_ON_ERROR =
            FeatureManager.get().getBoolean("restart.on.error", true);

    private static final long BURST_CAPTURE_EXPOSURE_THRESHOLD = 1000L;
    private static final long EXTRA_TIME_TO_EXPOSURE = 100L;
    private static final long EXTRA_TIME_TO_PLAY_CAPTURE_END_SOUND = 200L;
    private static final long SINGLE_CAPTURE_EXPOSURE_THRESHOLD = 250L;

    private static final int[] sUnitNames = {
        0x7f0e012a,
        0x7f0e012c,
        0x7f0e012d,
        0x7f0e012b,
        0x7f0e0130,
        0x7f0e012e
    };

    public static void broadcastCameraIntent(Context context, String action) {
        Intent intent = new Intent(action);
        intent.setFlags(0x20);
        context.sendBroadcast(intent, "openlight.co.lightcamera.CAMERA_EVENTS");
        LogUtil.d(TAG, "Send Broadcast Event called with action: " + action);
    }

    public static String formatEvValue(Context context, float ev) {
        int rounded = (int) Math.rint((double) (Math.abs(ev) * 3.0f));
        int resId;
        if (rounded % 3 == 0) {
            if (rounded == 0) {
                resId = 0x7f0e0054;
            } else if (ev < 0) {
                resId = 0x7f0e0051;
            } else {
                resId = 0x7f0e0053;
            }
        } else {
            if (ev < 0) {
                resId = 0x7f0e0050;
            } else {
                resId = 0x7f0e0052;
            }
        }
        return context.getString(resId, new Object[]{Float.valueOf(Math.abs(ev))});
    }

    static String generateTimestamp() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss_SSS", Locale.US);
        return sdf.format(new Date());
    }

    public static long getCaptureAnimationDuration(CaptureResult captureResult) {
        if (CameraManager.get().getCameraMode().isManual()) {
            long exposureNs = Constants.exposureTimes[CamPrefsFactory.get().getIntValue("shutter_index")];
            return TimeUnit.NANOSECONDS.toMillis(exposureNs) + EXTRA_TIME_TO_EXPOSURE;
        }
        Long exposureNs = (Long) captureResult.get(CaptureResult.SENSOR_EXPOSURE_TIME);
        long exposureMs = exposureNs != null ? TimeUnit.NANOSECONDS.toMillis(exposureNs) : 10L;
        return exposureMs + EXTRA_TIME_TO_EXPOSURE;
    }

    public static int getCoordinateDifference(float factor, int coord, int size) {
        return (coord - Math.round(factor * (float) size)) / 2;
    }

    public static int getCurrentIso(int isoValue) {
        int hi = Constants.SensitivityValues.values().length - 1;
        int minVal = Constants.SensitivityValues.forIndex(hi).getSensitivityVal();
        int lo = 0;

        if (isoValue <= minVal) {
            return hi;
        }

        int maxVal = Constants.SensitivityValues.forIndex(lo).getSensitivityVal();
        if (isoValue >= maxVal) {
            return lo;
        }

        while (true) {
            int mid = (lo + hi) / 2;
            int midVal = Constants.SensitivityValues.forIndex(mid).getSensitivityVal();
            if (isoValue <= midVal) {
                if (isoValue == midVal) return mid;
                lo = mid + 1;
            } else {
                hi = mid - 1;
                int adjVal = Constants.SensitivityValues.forIndex(hi).getSensitivityVal();
                if (isoValue >= adjVal) {
                    if (isoValue == adjVal) return hi;
                    if (isoValue * isoValue >= midVal * adjVal) {
                        return hi;
                    } else {
                        return mid;
                    }
                }
            }
        }
    }

    public static int getDimen(Context context, int resId) {
        return context.getResources().getDimensionPixelSize(resId);
    }

    public static Intent getGalleryIntent() {
        try {
            CameraApp.get().getPackageManager().getPackageInfo("light.co.lightgallery", 0);
            LogUtil.i(TAG, "External gallery found so using it");
            ComponentName component = new ComponentName(
                    "light.co.lightgallery", "light.co.gallery.GalleryActivity");
            return Intent.makeMainActivity(component);
        } catch (PackageManager.NameNotFoundException e) {
            LogUtil.i(TAG, "No external gallery found so returning null", e);
            return null;
        }
    }

    public static int getHeightOfScreen(Context context) {
        if (context == null) return -1;
        return getScreenSize(context).getHeight();
    }

    public static long getMaxVideoSize() {
        StatFs stat = new StatFs(Environment.getExternalStorageDirectory().getPath());
        long blockSize = stat.getBlockSizeLong();
        long available = stat.getAvailableBlocksLong();
        long freeSpace = blockSize * available;
        long maxSize = freeSpace - 0x40000000L;
        LogUtil.d(TAG, "[VIDEO] Available Free Space: " + freeSpace + " max file size: " + maxSize);
        return maxSize;
    }

    public static int getMeteringIcon(String tag) {
        MeteringMode mode = MeteringMode.forTag(tag);
        return mode != null ? mode.getMeteringIcon() : 0;
    }

    public static int getOrientation(Context context) {
        if (context == null) return 1;
        WindowManager wm = context.getSystemService(WindowManager.class);
        Point size = new Point();
        wm.getDefaultDisplay().getRealSize(size);
        return size.y > size.x ? 1 : 2;
    }

    public static Size getScreenSize(Context context) {
        WindowManager wm = context.getSystemService(WindowManager.class);
        Point point = new Point();
        wm.getDefaultDisplay().getRealSize(point);
        return new Size(point.x, point.y);
    }

    public static int getWidthOfScreen(Context context) {
        if (context == null) return -1;
        return getScreenSize(context).getWidth();
    }

    public static void hideSystemUI(View view) {
        view.setSystemUiVisibility(0xf06);
    }

    public static void hideSystemUIImmersiveSticky(View view) {
        view.setSystemUiVisibility(0x1706);
    }

    public static boolean isAvailableSpace() {
        StatFs stat = new StatFs(Environment.getExternalStorageDirectory().getPath());
        long bytes = stat.getBlockSizeLong() * stat.getAvailableBlocksLong();
        float gb = (float) bytes / 1073741824.0f;
        LogUtil.d(TAG, "isAvailableSpace:: Available Free Space: " + gb);
        return gb > 1.0f;
    }

    public static boolean isIndexOutOfRange(int index, int size) {
        return index > size;
    }

    @TargetApi(17)
    public static boolean isRtl(Resources resources) {
        return resources.getConfiguration().getLayoutDirection() == 1;
    }

    public static boolean isWheelInverseScroll() {
        return "on".equals(CamPrefsFactory.get().getStringValue("wheel_inverse_scroll_setting"));
    }

    public static void resetCameraPreference() {
        Prefs prefs = CamPrefsFactory.get();
        try {
            PackageManager pm = CameraApp.get().getPackageManager();
            int versionCode = pm.getPackageInfo(CameraApp.get().getPackageName(), 0).versionCode;
            if (versionCode <= 7) {
                LogUtil.i(TAG, "Shared Preference change. Clean up!");
                prefs.removeValue("ex_index");
                prefs.removeValue("iso_index");
                prefs.removeValue("shutter_index");
                prefs.removeValue("zoom_value");
                prefs.removeValue("metering_setting");
            }
            int updateVersion = prefs.getIntValue("shared_pref_update");
            if (updateVersion == -1 || updateVersion < 1) {
                LogUtil.i(TAG, "Upgrading Settings based on version: " + updateVersion);
                prefs.removeValue("flash_setting");
                prefs.removeValue("flash_value");
                prefs.removeValue("flash_setting_manual");
                prefs.putValue("shared_pref_update", 1);
            }
            prefs.removeValue("burst_mode");
            prefs.removeValue("focal_length");
            prefs.removeValue("zoom_value");
            prefs.removeValue("white_balance_setting");
        } catch (PackageManager.NameNotFoundException e) {
            LogUtil.e(TAG, "Exception in resettingCameraPreference", e);
        }
    }

    public static void restartAppWithDelay(Activity activity) {
        if (!APP_RESTART_ON_ERROR) return;
        LogUtil.e(TAG, "Forced restart of the app and activity " + activity);
        Intent intent = new Intent(activity, activity.getClass());
        PendingIntent pendingIntent = PendingIntent.getActivity(activity, 0x87a74, intent, 0x10000000);
        AlarmManager am = activity.getSystemService(AlarmManager.class);
        am.set(AlarmManager.RTC, System.currentTimeMillis() + 100L, pendingIntent);
        activity.finish();
        System.exit(0);
    }

    public static String[] reverseArray(String[] array) {
        List<String> list = Arrays.asList(array);
        Collections.reverse(list);
        return (String[]) list.toArray();
    }

    public static void setAlpha(View view, boolean enabled, float alpha) {
        if (view == null) return;
        view.setAlpha(enabled ? 1.0f : alpha);
    }

    public static boolean shouldTriggerManualFlash() {
        long exposureMs = TimeUnit.NANOSECONDS.toMillis(
                Constants.exposureTimes[CamPrefsFactory.get().getIntValue("shutter_index")]);
        if (CameraState.get().getStillCaptureMode().equals(CameraState.StillCaptureMode.SINGLE)) {
            return exposureMs <= SINGLE_CAPTURE_EXPOSURE_THRESHOLD;
        }
        if (CameraState.get().getStillCaptureMode().equals(CameraState.StillCaptureMode.BURST)) {
            int pending = CaptureBurstManager.get().getPendingUserCaptureCount();
            return (exposureMs * pending + EXTRA_TIME_TO_EXPOSURE) <= BURST_CAPTURE_EXPOSURE_THRESHOLD;
        }
        return false;
    }

    public static void showToastForLowMemory(Context context) {
        Toast.makeText(context,
                "Available Memory less than 1GB. Please free up some space to Capture.",
                Toast.LENGTH_SHORT).show();
    }

    public static int shutterSpeedIndex(long exposureNs) {
        int hi = Constants.exposureTimes.length - 1;
        int lo = 0;

        if (exposureNs >= Constants.exposureTimes[0]) return 0;
        if (exposureNs <= Constants.exposureTimes[hi]) return hi;

        while (true) {
            int mid = (lo + hi) / 2;
            long midVal = Constants.exposureTimes[mid];
            if (exposureNs >= midVal) {
                if (exposureNs == midVal) return mid;
                hi = mid - 1;
            } else {
                int next = mid + 1;
                long nextVal = Constants.exposureTimes[next];
                if (exposureNs <= nextVal) {
                    if (exposureNs == nextVal) return next;
                    lo = next;
                } else {
                    float midF = (float) midVal;
                    float nextF = (float) nextVal;
                    float p0F = (float) exposureNs;
                    if (midF * nextF > p0F * p0F) {
                        return next;
                    } else {
                        return mid;
                    }
                }
            }
        }
    }

    public static int toPixels(Resources resources, float dp) {
        return (int) (dp * resources.getDisplayMetrics().density);
    }

    public static int valueOf(Integer integer) {
        return integer != null ? integer.intValue() : 0;
    }

    public static long valueOf(Long longVal) {
        return longVal != null ? longVal.longValue() : 0L;
    }

    public static boolean valueOf(Boolean bool) {
        return bool != null ? bool.booleanValue() : false;
    }
}
