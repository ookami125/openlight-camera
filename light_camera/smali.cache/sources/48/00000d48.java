package openlight.co.camera.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.widget.Toast;
import openlight.co.camera.R;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class PermissionsManager {
    private static final String[] CAMERA_PERMISSIONS = {"android.permission.CAMERA", "android.permission.RECORD_AUDIO", "android.permission.ACCESS_FINE_LOCATION", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"};
    public static final int REQUEST_CAMERA_PERMISSIONS = 1;
    private static final String TAG = "PermissionsManager";
    private static PermissionsManager sInstance;

    public static synchronized PermissionsManager get() {
        PermissionsManager permissionsManager;
        synchronized (PermissionsManager.class) {
            if (sInstance == null) {
                sInstance = new PermissionsManager();
            }
            permissionsManager = sInstance;
        }
        return permissionsManager;
    }

    private void requestCameraPermissions(Activity activity) {
        if (shouldShowRationale(activity)) {
            PermissionConfirmationDialogFragment.newInstance().show(activity.getFragmentManager(), "dialog");
        } else {
            activity.requestPermissions(CAMERA_PERMISSIONS, 1);
        }
    }

    public boolean hasAllPermissionsGranted(Activity activity) {
        String[] strArr;
        for (String str : CAMERA_PERMISSIONS) {
            if (activity != null && ContextCompat.checkSelfPermission(activity, str) != 0) {
                requestCameraPermissions(activity);
                return false;
            }
        }
        return true;
    }

    private boolean shouldShowRationale(Activity activity) {
        for (String str : CAMERA_PERMISSIONS) {
            if (activity.shouldShowRequestPermissionRationale(str)) {
                return true;
            }
        }
        return false;
    }

    public void showMissingPermissionError(Activity activity) {
        if (activity != null) {
            Toast.makeText(activity, (int) R.string.request_permission, 0).show();
            activity.finish();
        }
    }

    public static boolean hasCameraPermission(Context context) {
        return context.checkSelfPermission("android.permission.CAMERA") == 0;
    }

    public static boolean hasLocationPermission(Context context) {
        return context.checkSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0;
    }

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public static class PermissionConfirmationDialogFragment extends DialogFragment {
        public static PermissionConfirmationDialogFragment newInstance() {
            return new PermissionConfirmationDialogFragment();
        }

        @Override // android.app.DialogFragment
        public Dialog onCreateDialog(Bundle bundle) {
            return new AlertDialog.Builder(getActivity()).setMessage(R.string.request_permission).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: openlight.co.camera.utils.PermissionsManager.PermissionConfirmationDialogFragment.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    PermissionConfirmationDialogFragment.this.requestPermissions(PermissionsManager.CAMERA_PERMISSIONS, 1);
                }
            }).setNegativeButton(17039360, new DialogInterface.OnClickListener() { // from class: openlight.co.camera.utils.PermissionsManager.PermissionConfirmationDialogFragment.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    PermissionConfirmationDialogFragment.this.getActivity().finish();
                }
            }).create();
        }
    }
}