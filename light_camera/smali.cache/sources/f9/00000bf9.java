package net.hockeyapp.android.utils;

import android.app.Activity;
import android.app.ProgressDialog;
import android.widget.Toast;
import java.lang.ref.WeakReference;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class UiThreadUtil {
    private UiThreadUtil() {
    }

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    private static class WbUtilHolder {
        public static final UiThreadUtil INSTANCE = new UiThreadUtil();

        private WbUtilHolder() {
        }
    }

    public static UiThreadUtil getInstance() {
        return WbUtilHolder.INSTANCE;
    }

    public void dismissLoadingDialogAndDisplayError(WeakReference<Activity> weakReference, final ProgressDialog progressDialog, final int i) {
        final Activity activity;
        if (weakReference == null || (activity = weakReference.get()) == null) {
            return;
        }
        activity.runOnUiThread(new Runnable() { // from class: net.hockeyapp.android.utils.UiThreadUtil.1
            @Override // java.lang.Runnable
            public void run() {
                if (progressDialog != null && progressDialog.isShowing()) {
                    progressDialog.dismiss();
                }
                activity.showDialog(i);
            }
        });
    }

    public void dismissLoading(WeakReference<Activity> weakReference, final ProgressDialog progressDialog) {
        Activity activity;
        if (weakReference == null || (activity = weakReference.get()) == null) {
            return;
        }
        activity.runOnUiThread(new Runnable() { // from class: net.hockeyapp.android.utils.UiThreadUtil.2
            @Override // java.lang.Runnable
            public void run() {
                if (progressDialog == null || !progressDialog.isShowing()) {
                    return;
                }
                progressDialog.dismiss();
            }
        });
    }

    public void displayToastMessage(WeakReference<Activity> weakReference, final String str, final int i) {
        final Activity activity;
        if (weakReference == null || (activity = weakReference.get()) == null) {
            return;
        }
        activity.runOnUiThread(new Runnable() { // from class: net.hockeyapp.android.utils.UiThreadUtil.3
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(activity, str, i).show();
            }
        });
    }
}