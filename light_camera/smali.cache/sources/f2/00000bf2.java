package net.hockeyapp.android.utils;

import android.util.Log;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class HockeyLog {
    public static final String HOCKEY_TAG = "HockeyApp";
    private static int sLogLevel = 6;

    public static int getLogLevel() {
        return sLogLevel;
    }

    public static void setLogLevel(int i) {
        sLogLevel = i;
    }

    public static void verbose(String str) {
        verbose((String) null, str);
    }

    public static void verbose(String str, String str2) {
        String sanitizeTag = sanitizeTag(str);
        if (sLogLevel <= 2) {
            Log.v(sanitizeTag, str2);
        }
    }

    public static void verbose(String str, Throwable th) {
        verbose(null, str, th);
    }

    public static void verbose(String str, String str2, Throwable th) {
        String sanitizeTag = sanitizeTag(str);
        if (sLogLevel <= 2) {
            Log.v(sanitizeTag, str2, th);
        }
    }

    public static void debug(String str) {
        debug((String) null, str);
    }

    public static void debug(String str, String str2) {
        String sanitizeTag = sanitizeTag(str);
        if (sLogLevel <= 3) {
            Log.d(sanitizeTag, str2);
        }
    }

    public static void debug(String str, Throwable th) {
        debug(null, str, th);
    }

    public static void debug(String str, String str2, Throwable th) {
        String sanitizeTag = sanitizeTag(str);
        if (sLogLevel <= 3) {
            Log.d(sanitizeTag, str2, th);
        }
    }

    public static void info(String str) {
        info((String) null, str);
    }

    public static void info(String str, String str2) {
        String sanitizeTag = sanitizeTag(str);
        if (sLogLevel <= 4) {
            Log.i(sanitizeTag, str2);
        }
    }

    public static void info(String str, Throwable th) {
        info(str, th);
    }

    public static void info(String str, String str2, Throwable th) {
        String sanitizeTag = sanitizeTag(str);
        if (sLogLevel <= 4) {
            Log.i(sanitizeTag, str2, th);
        }
    }

    public static void warn(String str) {
        warn((String) null, str);
    }

    public static void warn(String str, String str2) {
        String sanitizeTag = sanitizeTag(str);
        if (sLogLevel <= 5) {
            Log.w(sanitizeTag, str2);
        }
    }

    public static void warn(String str, Throwable th) {
        warn(null, str, th);
    }

    public static void warn(String str, String str2, Throwable th) {
        String sanitizeTag = sanitizeTag(str);
        if (sLogLevel <= 5) {
            Log.w(sanitizeTag, str2, th);
        }
    }

    public static void error(String str) {
        error((String) null, str);
    }

    public static void error(String str, String str2) {
        String sanitizeTag = sanitizeTag(str);
        if (sLogLevel <= 6) {
            Log.e(sanitizeTag, str2);
        }
    }

    public static void error(String str, Throwable th) {
        error(null, str, th);
    }

    public static void error(String str, String str2, Throwable th) {
        String sanitizeTag = sanitizeTag(str);
        if (sLogLevel <= 6) {
            Log.e(sanitizeTag, str2, th);
        }
    }

    static String sanitizeTag(String str) {
        return (str == null || str.length() == 0 || str.length() > 23) ? "HockeyApp" : str;
    }
}