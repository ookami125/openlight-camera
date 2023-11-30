package net.hockeyapp.android.utils;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class VersionCache {
    private static String PREF_VERSION_INFO_KEY = "versionInfo";

    public static void setVersionInfo(Context context, String str) {
        if (context != null) {
            SharedPreferences.Editor edit = context.getSharedPreferences("HockeyApp", 0).edit();
            edit.putString(PREF_VERSION_INFO_KEY, str);
            edit.apply();
        }
    }

    public static String getVersionInfo(Context context) {
        return context != null ? context.getSharedPreferences("HockeyApp", 0).getString(PREF_VERSION_INFO_KEY, "[]") : "[]";
    }
}