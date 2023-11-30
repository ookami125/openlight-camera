package openlight.co.camera.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class NetworkManager {
    public static boolean isNetworkConnected(Context context) {
        return ((ConnectivityManager) context.getSystemService(ConnectivityManager.class)).getActiveNetworkInfo() != null;
    }

    public static boolean checkAppInstalled(Context context, String str) {
        try {
            context.getPackageManager().getApplicationInfo(str, 0);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }
}