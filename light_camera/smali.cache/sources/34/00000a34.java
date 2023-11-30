package com.fihtdc.UploadAgentService;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class SettingReceiver extends BroadcastReceiver {
    private static final String ACTION_CHANGE_IS_WIFI_ONLY = "com.fihtdc.uploadservice.intent.monitor.wifionly";
    private static final String ACTION_CHANGE_UPLOAD_SETTING = "com.fihtdc.uploadservice.intent.monitor.setting";
    private final String TAG = "com.fihtdc.AprUploadAgent.receiver(7.0010.05(Evenwell_s))";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Log.i("com.fihtdc.AprUploadAgent.receiver(7.0010.05(Evenwell_s))", "onReceive");
        String action = intent.getAction();
        if (ACTION_CHANGE_UPLOAD_SETTING.equals(action)) {
            doUploadSettingChange(context, intent);
        } else if (ACTION_CHANGE_IS_WIFI_ONLY.equals(action)) {
            doWifiOnlyChange(context, intent);
        }
    }

    private void doUploadSettingChange(Context context, Intent intent) {
        Log.i("com.fihtdc.AprUploadAgent.receiver(7.0010.05(Evenwell_s))", "doUploadSettingChange");
        boolean z = intent.getExtras().getBoolean("isAgreeUpload");
        Log.i("com.fihtdc.AprUploadAgent.receiver(7.0010.05(Evenwell_s))", "isAgreeUpload: " + z);
    }

    private void doWifiOnlyChange(Context context, Intent intent) {
        Log.i("com.fihtdc.AprUploadAgent.receiver(7.0010.05(Evenwell_s))", "doWifiOnlyChange");
        boolean z = intent.getExtras().getBoolean("isWifiOnly");
        Log.i("com.fihtdc.AprUploadAgent.receiver(7.0010.05(Evenwell_s))", "isWifiOnly: " + z);
    }
}