package openlight.co.camera;

import android.app.Fragment;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.OrientationEventListener;
import android.view.View;
import openlight.co.camera.view.rotate.OrientationsController;
import openlight.co.camera.view.setting.SettingsActivity;
import openlight.co.lib.content.CamPrefsFactory;
import openlight.co.lib.utils.FeatureManager;
import openlight.co.lib.utils.LifecycleLogger;
import openlight.co.lib.utils.LockStateHelper;
import openlight.co.lib.utils.Utils;
import openlight.co.camera.utils.Util;

public class CameraActivity extends BaseActivity {
    public static final boolean HISTOGRAM_SUPPORTED;
    private static final String TAG;

    static {
        HISTOGRAM_SUPPORTED = FeatureManager.get().getBoolean("histogram.enable");
        TAG = CameraActivity.class.getSimpleName();
    }

    private final LockStateHelper mLockStateHelper = new LockStateHelper();
    private final View.OnClickListener mMutePreviewStatusOnClickListener = new View.OnClickListener() {
        @Override
        public void onClick(View v) {
            launchSettingsActivity(null, "device_microphone_setting");
        }
    };
    private OrientationEventListener mOrientationListener;

    private void addFragment() {
        String modeKey = CamPrefsFactory.get().getStringValue("camera_mode_setting");
        CameraMode mode = CameraMode.getMode(modeKey);
        Fragment fragment;
        if (mode.isVideo()) {
            VideoFragment videoFragment = new VideoFragment();
            videoFragment.setMutePreviewStatusListener(mMutePreviewStatusOnClickListener);
            fragment = videoFragment;
        } else {
            fragment = new ImagePreviewFragment();
        }
        getFragmentManager()
                .beginTransaction()
                .replace(0x1020002, fragment)
                .commit();
    }

    public void clear() {
        Fragment fragment = getFragmentManager().findFragmentById(0x1020002);
        if (fragment != null) {
            getFragmentManager()
                    .beginTransaction()
                    .remove(fragment)
                    .commit();
        }
    }

    public void launchSettingsActivity(String settingsIndex, String scrollToKey) {
        Intent intent = new Intent(this, SettingsActivity.class);
        if (settingsIndex != null) {
            intent.putExtra("settings_index", settingsIndex);
        }
        if (scrollToKey != null) {
            intent.putExtra("settings_scroll_to_index_key", scrollToKey);
        }
        startActivity(intent);
    }

    @Override
    public void onBackPressed() {
        LifecycleLogger.get().log(this, "onBackPressed()");
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        setRequestedOrientation(0);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        mLockStateHelper.register(this);
        getWindow().addFlags(0x80000);
        onConfigurationChanged(new Configuration());
        if (savedInstanceState == null) {
            addFragment();
        }
        mOrientationListener = new OrientationEventListener(this) {
            @Override
            public void onOrientationChanged(int orientation) {
                OrientationsController.get().update(orientation);
            }
        };
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        mLockStateHelper.unregister(this);
    }

    @Override
    public void onPause() {
        super.onPause();
        mOrientationListener.disable();
    }

    @Override
    public void onResume() {
        super.onResume();
        mOrientationListener.enable();
        Utils.get().updateLockedState();
    }

    @Override
    protected void onStart() {
        super.onStart();
        Util.broadcastCameraIntent(this, "openlight.co.lightcamera.broadcast.ACTION_CAMERA_ACTIVITY_STARTED");
    }

    @Override
    protected void onStop() {
        super.onStop();
        Util.broadcastCameraIntent(this, "openlight.co.lightcamera.broadcast.ACTION_CAMERA_ACTIVITY_STOPPED");
    }
}
