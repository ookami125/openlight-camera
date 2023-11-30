package openlight.co.camera.view.notification;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.app.NotificationCompat;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public abstract class BatteryStatusMonitor extends BroadcastReceiver {
    private int mBatteryLevel = 100;
    private int mChargingStatus = 5;

    public abstract void onBatteryUpdate(int i, int i2);

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action == null || !action.equals("android.intent.action.BATTERY_CHANGED")) {
            return;
        }
        int intExtra = intent.getIntExtra("level", -1);
        int intExtra2 = intent.getIntExtra(NotificationCompat.CATEGORY_STATUS, -1);
        boolean z = false;
        if (intExtra != -1 && this.mBatteryLevel != intExtra) {
            this.mBatteryLevel = intExtra;
            z = true;
        }
        if (intExtra2 != -1 && this.mChargingStatus != intExtra2) {
            this.mChargingStatus = intExtra2;
            z = true;
        }
        if (z) {
            onBatteryUpdate(intExtra, intExtra2);
        }
    }

    public int getBatteryLevel() {
        return this.mBatteryLevel;
    }

    public int getChargingStatus() {
        return this.mChargingStatus;
    }

    public void register(Context context) {
        context.registerReceiver(this, getIntentFilter());
    }

    public void unregister(Context context) {
        context.unregisterReceiver(this);
    }

    private IntentFilter getIntentFilter() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
        return intentFilter;
    }
}