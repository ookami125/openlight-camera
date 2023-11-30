package openlight.co.camera.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.HashSet;
import java.util.Iterator;
import openlight.co.lib.utils.LogUtil;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class UsbMgr {
    private static final String ACTION_USB_STATE = "android.hardware.usb.action.USB_STATE";
    private static final String EXTRA_CONNECTED = "connected";
    private static final String TAG = "UsbMgr";
    private static UsbMgr sInstance;
    private final HashSet<OnUsbConnectedListener> mListeners = new HashSet<>();
    private boolean mUsbConnected;

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public interface OnUsbConnectedListener {
        void onUsbConnected(boolean z);
    }

    public static UsbMgr get() {
        return sInstance;
    }

    public boolean isUsbConnected() {
        return this.mUsbConnected;
    }

    public boolean addOnUsbStateChangeListener(OnUsbConnectedListener onUsbConnectedListener) {
        if (onUsbConnectedListener == null) {
            throw new NullPointerException("listener must be non-null");
        }
        return this.mListeners.add(onUsbConnectedListener);
    }

    public boolean removeOnUsbStateChangeListener(OnUsbConnectedListener onUsbConnectedListener) {
        return this.mListeners.remove(onUsbConnectedListener);
    }

    public static void init(Context context) {
        sInstance = new UsbMgr(context);
    }

    private UsbMgr(Context context) {
        context.registerReceiver(new BroadcastReceiver() { // from class: openlight.co.camera.utils.UsbMgr.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                boolean booleanExtra = intent.getBooleanExtra(UsbMgr.EXTRA_CONNECTED, false);
                if (booleanExtra != UsbMgr.this.mUsbConnected) {
                    UsbMgr.this.mUsbConnected = booleanExtra;
                    Iterator it = UsbMgr.this.mListeners.iterator();
                    while (it.hasNext()) {
                        try {
                            ((OnUsbConnectedListener) it.next()).onUsbConnected(booleanExtra);
                        } catch (Exception e) {
                            LogUtil.e(UsbMgr.TAG, "Exception in listener", e);
                        }
                    }
                }
            }
        }, new IntentFilter(ACTION_USB_STATE));
    }
}