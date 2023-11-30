package net.hockeyapp.android;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class Tracking {
    protected static final String START_TIME_KEY = "startTime";
    protected static final String USAGE_TIME_KEY = "usageTime";

    public static void startUsage(Activity activity) {
        long currentTimeMillis = System.currentTimeMillis();
        if (activity == null) {
            return;
        }
        SharedPreferences.Editor edit = getPreferences(activity).edit();
        edit.putLong(START_TIME_KEY + activity.hashCode(), currentTimeMillis);
        edit.apply();
    }

    public static void stopUsage(Activity activity) {
        long currentTimeMillis = System.currentTimeMillis();
        if (activity != null && checkVersion(activity)) {
            SharedPreferences preferences = getPreferences(activity);
            long j = preferences.getLong(START_TIME_KEY + activity.hashCode(), 0L);
            long j2 = preferences.getLong(USAGE_TIME_KEY + Constants.APP_VERSION, 0L);
            if (j > 0) {
                long j3 = currentTimeMillis - j;
                long j4 = j2 + j3;
                if (j3 <= 0 || j4 < 0) {
                    return;
                }
                SharedPreferences.Editor edit = preferences.edit();
                edit.putLong(USAGE_TIME_KEY + Constants.APP_VERSION, j4);
                edit.apply();
            }
        }
    }

    public static long getUsageTime(Context context) {
        if (checkVersion(context)) {
            SharedPreferences preferences = getPreferences(context);
            long j = preferences.getLong(USAGE_TIME_KEY + Constants.APP_VERSION, 0L);
            if (j < 0) {
                SharedPreferences.Editor edit = preferences.edit();
                edit.remove(USAGE_TIME_KEY + Constants.APP_VERSION).apply();
                return 0L;
            }
            return j / 1000;
        }
        return 0L;
    }

    private static boolean checkVersion(Context context) {
        if (Constants.APP_VERSION == null) {
            Constants.loadFromContext(context);
            return Constants.APP_VERSION != null;
        }
        return true;
    }

    protected static SharedPreferences getPreferences(Context context) {
        return context.getSharedPreferences("HockeyApp", 0);
    }
}