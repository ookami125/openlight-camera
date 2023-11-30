package com.fihtdc.UploadAgentService.sharedPref;

import android.content.Context;
import com.fihtdc.UploadAgentService.util.Settings;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class SharedPrefHelper {
    public static final String SettingsFile = "AgentSettings";
    private static final String UpTimePrefFile = "UpTime";
    private final String TAG = "com.fihtdc.UploadAgentService(7.0010.05(Evenwell_s))";
    private final String IS_MONITORING = "IS_MONITORING";
    private final String IS_DMC_MONITORING = "IS_DMC_MONITORING";
    private final String UPLOAD_MODE = "UPLOAD_MODE";

    public void updateIsMonitoring(Context context, String str) {
        context.getSharedPreferences(SettingsFile, 4).edit().putString("IS_MONITORING", str).commit();
    }

    public String getIsMonitoring(Context context) {
        return context.getSharedPreferences(SettingsFile, 4).getString("IS_MONITORING", "on");
    }

    public void updateIsDMCMonitoring(Context context, String str) {
        context.getSharedPreferences(SettingsFile, 4).edit().putString("IS_DMC_MONITORING", str).commit();
    }

    public String getIsDMCMonitoring(Context context) {
        return context.getSharedPreferences(SettingsFile, 4).getString("IS_DMC_MONITORING", Settings.IS_DMC_MONITORING_DEFAULT);
    }
}