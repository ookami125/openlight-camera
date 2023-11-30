package net.hockeyapp.android.utils;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class PrefsUtil {
    private SharedPreferences mFeedbackTokenPrefs;
    private SharedPreferences.Editor mFeedbackTokenPrefsEditor;
    private SharedPreferences mNameEmailSubjectPrefs;
    private SharedPreferences.Editor mNameEmailSubjectPrefsEditor;

    private PrefsUtil() {
    }

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    private static class PrefsUtilHolder {
        public static final PrefsUtil INSTANCE = new PrefsUtil();

        private PrefsUtilHolder() {
        }
    }

    public static PrefsUtil getInstance() {
        return PrefsUtilHolder.INSTANCE;
    }

    public void saveFeedbackTokenToPrefs(Context context, String str) {
        if (context != null) {
            this.mFeedbackTokenPrefs = context.getSharedPreferences(Util.PREFS_FEEDBACK_TOKEN, 0);
            if (this.mFeedbackTokenPrefs != null) {
                this.mFeedbackTokenPrefsEditor = this.mFeedbackTokenPrefs.edit();
                this.mFeedbackTokenPrefsEditor.putString(Util.PREFS_KEY_FEEDBACK_TOKEN, str);
                this.mFeedbackTokenPrefsEditor.apply();
            }
        }
    }

    public String getFeedbackTokenFromPrefs(Context context) {
        if (context == null) {
            return null;
        }
        this.mFeedbackTokenPrefs = context.getSharedPreferences(Util.PREFS_FEEDBACK_TOKEN, 0);
        if (this.mFeedbackTokenPrefs == null) {
            return null;
        }
        return this.mFeedbackTokenPrefs.getString(Util.PREFS_KEY_FEEDBACK_TOKEN, null);
    }

    public void saveNameEmailSubjectToPrefs(Context context, String str, String str2, String str3) {
        if (context != null) {
            this.mNameEmailSubjectPrefs = context.getSharedPreferences(Util.PREFS_NAME_EMAIL_SUBJECT, 0);
            if (this.mNameEmailSubjectPrefs != null) {
                this.mNameEmailSubjectPrefsEditor = this.mNameEmailSubjectPrefs.edit();
                if (str == null || str2 == null || str3 == null) {
                    this.mNameEmailSubjectPrefsEditor.putString(Util.PREFS_KEY_NAME_EMAIL_SUBJECT, null);
                } else {
                    this.mNameEmailSubjectPrefsEditor.putString(Util.PREFS_KEY_NAME_EMAIL_SUBJECT, String.format("%s|%s|%s", str, str2, str3));
                }
                this.mNameEmailSubjectPrefsEditor.apply();
            }
        }
    }

    public String getNameEmailFromPrefs(Context context) {
        if (context == null) {
            return null;
        }
        this.mNameEmailSubjectPrefs = context.getSharedPreferences(Util.PREFS_NAME_EMAIL_SUBJECT, 0);
        if (this.mNameEmailSubjectPrefs == null) {
            return null;
        }
        return this.mNameEmailSubjectPrefs.getString(Util.PREFS_KEY_NAME_EMAIL_SUBJECT, null);
    }
}