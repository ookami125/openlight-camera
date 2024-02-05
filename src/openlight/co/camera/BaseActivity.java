package openlight.co.camera;

import android.app.Activity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import openlight.co.camera.listener.HardKeyManager;
import openlight.co.camera.utils.HockeyAppUtil;
import openlight.co.lib.utils.LogUtil;
import openlight.co.touchstrip.TouchStrip;

/* loaded from: /tmp/jadx-16839415630477009267.dex */
public class BaseActivity extends Activity {
    private static final String TAG = "BaseActivity";
    private final TouchStrip mTouchStrip = TouchStrip.get(CameraApp.get());
    private final HardKeyManager mHardKeyManager = HardKeyManager.get();

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        HockeyAppUtil.init(this, getIntent());
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        HockeyAppUtil.tearDown(this);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        String str = TAG;
        LogUtil.d(str, "[KEYEVENT] KeyCode onKeyDown: " + i);
        return this.mHardKeyManager.processEvent(i, keyEvent, HardKeyManager.KeyAction.DOWN) || super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        String str = TAG;
        LogUtil.d(str, "[KEYEVENT] KeyCode onKeyLongPress: " + i);
        return this.mHardKeyManager.processEvent(i, keyEvent, HardKeyManager.KeyAction.LONG_PRESS) || super.onKeyLongPress(i, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        String str = TAG;
        LogUtil.d(str, "[KEYEVENT] KeyCode onKeyUp: " + i);
        return this.mHardKeyManager.processEvent(i, keyEvent, HardKeyManager.KeyAction.UP) || super.onKeyUp(i, keyEvent);
    }

    @Override // android.app.Activity
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        return (motionEvent.getSource() == 1048584) && this.mTouchStrip.processEvent(motionEvent);
    }
}