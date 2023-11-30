package net.hockeyapp.android;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.provider.Settings;
import android.text.TextUtils;
import java.io.File;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;
import net.hockeyapp.android.utils.HockeyLog;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class Constants {
    public static String ANDROID_BUILD = null;
    public static String ANDROID_VERSION = null;
    public static String APP_PACKAGE = null;
    public static String APP_VERSION = null;
    public static String APP_VERSION_NAME = null;
    public static final String BASE_URL = "https://sdk.hockeyapp.net/";
    private static final String BUNDLE_BUILD_NUMBER = "buildNumber";
    public static String CRASH_IDENTIFIER = null;
    public static String DEVICE_IDENTIFIER = null;
    public static final String FILES_DIRECTORY_NAME = "HockeyApp";
    public static String FILES_PATH = null;
    public static String PHONE_MANUFACTURER = null;
    public static String PHONE_MODEL = null;
    public static final String SDK_NAME = "HockeySDK";
    public static final String SDK_USER_AGENT = "HockeySDK/Android 4.1.2";
    public static final String SDK_VERSION = "4.1.2";
    public static final int UPDATE_PERMISSIONS_REQUEST = 1;

    public static void loadFromContext(Context context) {
        ANDROID_VERSION = Build.VERSION.RELEASE;
        ANDROID_BUILD = Build.DISPLAY;
        PHONE_MODEL = Build.MODEL;
        PHONE_MANUFACTURER = Build.MANUFACTURER;
        loadFilesPath(context);
        loadPackageData(context);
        loadCrashIdentifier(context);
        loadDeviceIdentifier(context);
    }

    public static File getHockeyAppStorageDir() {
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        File file = new File(externalStorageDirectory.getAbsolutePath() + "/HockeyApp");
        if (!(file.exists() || file.mkdirs())) {
            HockeyLog.warn("Couldn't create HockeyApp Storage dir");
        }
        return file;
    }

    private static void loadFilesPath(Context context) {
        if (context != null) {
            try {
                File filesDir = context.getFilesDir();
                if (filesDir != null) {
                    FILES_PATH = filesDir.getAbsolutePath();
                }
            } catch (Exception e) {
                HockeyLog.error("Exception thrown when accessing the files dir:");
                e.printStackTrace();
            }
        }
    }

    private static void loadPackageData(Context context) {
        if (context != null) {
            try {
                PackageManager packageManager = context.getPackageManager();
                PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
                APP_PACKAGE = packageInfo.packageName;
                APP_VERSION = "" + packageInfo.versionCode;
                APP_VERSION_NAME = packageInfo.versionName;
                int loadBuildNumber = loadBuildNumber(context, packageManager);
                if (loadBuildNumber == 0 || loadBuildNumber <= packageInfo.versionCode) {
                    return;
                }
                APP_VERSION = "" + loadBuildNumber;
            } catch (PackageManager.NameNotFoundException e) {
                HockeyLog.error("Exception thrown when accessing the package info:");
                e.printStackTrace();
            }
        }
    }

    private static int loadBuildNumber(Context context, PackageManager packageManager) {
        try {
            Bundle bundle = packageManager.getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle != null) {
                return bundle.getInt(BUNDLE_BUILD_NUMBER, 0);
            }
        } catch (PackageManager.NameNotFoundException e) {
            HockeyLog.error("Exception thrown when accessing the application info:");
            e.printStackTrace();
        }
        return 0;
    }

    private static void loadCrashIdentifier(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (TextUtils.isEmpty(APP_PACKAGE) || TextUtils.isEmpty(string)) {
            return;
        }
        String str = APP_PACKAGE + ":" + string + ":" + createSalt(context);
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            byte[] bytes = str.getBytes("UTF-8");
            messageDigest.update(bytes, 0, bytes.length);
            CRASH_IDENTIFIER = bytesToHex(messageDigest.digest());
        } catch (Throwable th) {
            HockeyLog.error("Couldn't create CrashIdentifier with Exception:" + th.toString());
        }
    }

    private static void loadDeviceIdentifier(Context context) {
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (string != null) {
            String tryHashStringSha256 = tryHashStringSha256(context, string);
            if (tryHashStringSha256 == null) {
                tryHashStringSha256 = UUID.randomUUID().toString();
            }
            DEVICE_IDENTIFIER = tryHashStringSha256;
        }
    }

    private static String tryHashStringSha256(Context context, String str) {
        String createSalt = createSalt(context);
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.reset();
            messageDigest.update(str.getBytes());
            messageDigest.update(createSalt.getBytes());
            return bytesToHex(messageDigest.digest());
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    @SuppressLint({"InlinedApi"})
    private static String createSalt(Context context) {
        String str;
        if (Build.VERSION.SDK_INT >= 21) {
            str = Build.SUPPORTED_ABIS[0];
        } else {
            str = Build.CPU_ABI;
        }
        String str2 = "HA" + (Build.BOARD.length() % 10) + (Build.BRAND.length() % 10) + (str.length() % 10) + (Build.PRODUCT.length() % 10);
        String str3 = "";
        try {
            str3 = Build.class.getField("SERIAL").get(null).toString();
        } catch (Throwable unused) {
        }
        return str2 + ":" + str3;
    }

    private static String bytesToHex(byte[] bArr) {
        char[] charArray = "0123456789ABCDEF".toCharArray();
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            cArr[i3] = charArray[i2 >>> 4];
            cArr[i3 + 1] = charArray[i2 & 15];
        }
        return new String(cArr).replaceAll("(\\w{8})(\\w{4})(\\w{4})(\\w{4})(\\w{12})", "$1-$2-$3-$4-$5");
    }
}