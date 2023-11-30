package net.hockeyapp.android.utils;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Patterns;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.hockeyapp.android.R;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class Util {
    public static final String APP_IDENTIFIER_KEY = "net.hockeyapp.android.appIdentifier";
    public static final int APP_IDENTIFIER_LENGTH = 32;
    private static final String APP_SECRET_KEY = "net.hockeyapp.android.appSecret";
    public static final String LOG_IDENTIFIER = "HockeyApp";
    public static final String PREFS_FEEDBACK_TOKEN = "net.hockeyapp.android.prefs_feedback_token";
    public static final String PREFS_KEY_FEEDBACK_TOKEN = "net.hockeyapp.android.prefs_key_feedback_token";
    public static final String PREFS_KEY_NAME_EMAIL_SUBJECT = "net.hockeyapp.android.prefs_key_name_email";
    public static final String PREFS_NAME_EMAIL_SUBJECT = "net.hockeyapp.android.prefs_name_email";
    private static final String SDK_VERSION_KEY = "net.hockeyapp.android.sdkVersion";
    public static final String APP_IDENTIFIER_PATTERN = "[0-9a-f]+";
    private static final Pattern appIdentifierPattern = Pattern.compile(APP_IDENTIFIER_PATTERN, 2);
    private static final char[] HEX_ARRAY = "0123456789ABCDEF".toCharArray();
    private static final ThreadLocal<DateFormat> DATE_FORMAT_THREAD_LOCAL = new ThreadLocal<DateFormat>() { // from class: net.hockeyapp.android.utils.Util.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public DateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            return simpleDateFormat;
        }
    };

    public static String encodeParam(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static final boolean isValidEmail(String str) {
        return !TextUtils.isEmpty(str) && Patterns.EMAIL_ADDRESS.matcher(str).matches();
    }

    @SuppressLint({"NewApi"})
    public static Boolean fragmentsSupported() {
        try {
            return Boolean.valueOf(Build.VERSION.SDK_INT >= 11 && classExists("android.app.Fragment"));
        } catch (NoClassDefFoundError unused) {
            return false;
        }
    }

    public static Boolean runsOnTablet(WeakReference<Activity> weakReference) {
        Activity activity;
        boolean z = false;
        if (weakReference != null && (activity = weakReference.get()) != null) {
            Configuration configuration = activity.getResources().getConfiguration();
            return Boolean.valueOf(((configuration.screenLayout & 15) == 3 || (configuration.screenLayout & 15) == 4) ? true : true);
        }
        return false;
    }

    public static String sanitizeAppIdentifier(String str) throws IllegalArgumentException {
        if (str == null) {
            throw new IllegalArgumentException("App ID must not be null.");
        }
        String trim = str.trim();
        Matcher matcher = appIdentifierPattern.matcher(trim);
        if (trim.length() != 32) {
            throw new IllegalArgumentException("App ID length must be 32 characters.");
        }
        if (matcher.matches()) {
            return trim;
        }
        throw new IllegalArgumentException("App ID must match regex pattern /[0-9a-f]+/i");
    }

    public static String getFormString(Map<String, String> map) throws UnsupportedEncodingException {
        ArrayList arrayList = new ArrayList();
        for (String str : map.keySet()) {
            String encode = URLEncoder.encode(str, "UTF-8");
            String encode2 = URLEncoder.encode(map.get(str), "UTF-8");
            arrayList.add(encode + "=" + encode2);
        }
        return TextUtils.join("&", arrayList);
    }

    public static boolean classExists(String str) {
        try {
            return Class.forName(str) != null;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static boolean isNotificationBuilderSupported() {
        return Build.VERSION.SDK_INT >= 11 && classExists("android.app.Notification.Builder");
    }

    public static Notification createNotification(Context context, PendingIntent pendingIntent, String str, String str2, int i) {
        if (isNotificationBuilderSupported()) {
            return buildNotificationWithBuilder(context, pendingIntent, str, str2, i);
        }
        return buildNotificationPreHoneycomb(context, pendingIntent, str, str2, i);
    }

    private static Notification buildNotificationPreHoneycomb(Context context, PendingIntent pendingIntent, String str, String str2, int i) {
        Notification notification = new Notification(i, "", System.currentTimeMillis());
        try {
            notification.getClass().getMethod("setLatestEventInfo", Context.class, CharSequence.class, CharSequence.class, PendingIntent.class).invoke(notification, context, str, str2, pendingIntent);
        } catch (Exception unused) {
        }
        return notification;
    }

    @TargetApi(11)
    private static Notification buildNotificationWithBuilder(Context context, PendingIntent pendingIntent, String str, String str2, int i) {
        Notification.Builder smallIcon = new Notification.Builder(context).setContentTitle(str).setContentText(str2).setContentIntent(pendingIntent).setSmallIcon(i);
        if (Build.VERSION.SDK_INT < 16) {
            return smallIcon.getNotification();
        }
        return smallIcon.build();
    }

    public static String getAppIdentifier(Context context) {
        return getManifestString(context, APP_IDENTIFIER_KEY);
    }

    public static String getAppSecret(Context context) {
        return getManifestString(context, APP_SECRET_KEY);
    }

    public static String getManifestString(Context context, String str) {
        return getBundle(context).getString(str);
    }

    private static Bundle getBundle(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    public static boolean isConnectedToNetwork(Context context) {
        NetworkInfo activeNetworkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
        return (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) ? false : true;
    }

    public static String getAppName(Context context) {
        if (context == null) {
            return "";
        }
        PackageManager packageManager = context.getPackageManager();
        ApplicationInfo applicationInfo = null;
        try {
            applicationInfo = packageManager.getApplicationInfo(context.getApplicationInfo().packageName, 0);
        } catch (PackageManager.NameNotFoundException unused) {
        }
        if (applicationInfo != null) {
            return (String) packageManager.getApplicationLabel(applicationInfo);
        }
        return context.getString(R.string.hockeyapp_crash_dialog_app_name_fallback);
    }

    public static String getSdkVersionFromManifest(Context context) {
        return getManifestString(context, SDK_VERSION_KEY);
    }

    public static String convertAppIdentifierToGuid(String str) throws IllegalArgumentException {
        try {
            String sanitizeAppIdentifier = sanitizeAppIdentifier(str);
            if (sanitizeAppIdentifier != null) {
                StringBuffer stringBuffer = new StringBuffer(sanitizeAppIdentifier);
                stringBuffer.insert(20, '-');
                stringBuffer.insert(16, '-');
                stringBuffer.insert(12, '-');
                stringBuffer.insert(8, '-');
                return stringBuffer.toString();
            }
            return null;
        } catch (IllegalArgumentException e) {
            throw e;
        }
    }

    public static boolean isEmulator() {
        return Build.BRAND.equalsIgnoreCase("generic");
    }

    public static String dateToISO8601(Date date) {
        if (date == null) {
            date = new Date();
        }
        return DATE_FORMAT_THREAD_LOCAL.get().format(date);
    }

    public static boolean sessionTrackingSupported() {
        return Build.VERSION.SDK_INT >= 14;
    }
}