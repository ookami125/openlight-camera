package openlight.co.camera.listener;

import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import openlight.co.camera.utils.TimingLoggerUtil;
import openlight.co.lib.utils.LogUtil;

/* loaded from: /tmp/jadx-12686117411691202657.dex */
public class HardKeyManager {
    private static final long MAX_TIME_DURATION_BETWEEN_HALF_AND_FULL_PRESS = 250;
    private static final String TAG = "HardKeyManager";
    private static final boolean VERBOSE_LOG = true;
    private static final HardKeyManager sInstance = new HardKeyManager();
    private volatile KeyAction mCurrentHalfKeyPressAction;
    private OnKeyListener mOnKeyListener;
    private final TimingLoggerUtil mTimingLoggerUtil = TimingLoggerUtil.get();
    private final Handler mHalfPressProcessingHandler = new Handler(Looper.getMainLooper());
    private final Runnable mHalfPressEventGeneratorRunnable = new Runnable() { // from class: openlight.co.camera.listener.HardKeyManager.1
        @Override // java.lang.Runnable
        public void run() {
            HardKeyManager.this.callListener(KeyType.HALF_KEY, HardKeyManager.this.mCurrentHalfKeyPressAction);
            HardKeyManager.this.mIsProcessingHalfPressDownEvent = false;
        }
    };
    private volatile boolean mIsDownEventProcessedAsHalfPress = false;
    private volatile boolean mIsProcessingHalfPressDownEvent = false;

    /* loaded from: /tmp/jadx-12686117411691202657.dex */
    public enum KeyAction {
        UP,
        DOWN,
        LONG_PRESS
    }

    /* loaded from: /tmp/jadx-12686117411691202657.dex */
    public enum KeyType {
        FULL_KEY,
        HALF_KEY
    }

    /* loaded from: /tmp/jadx-12686117411691202657.dex */
    public interface OnKeyListener {
        boolean onHardKeyEvent(KeyType keyType, KeyAction keyAction);
    }

    private HardKeyManager() {
    }

    public static HardKeyManager get() {
        return sInstance;
    }

    public void registerKeyListener(OnKeyListener onKeyListener) {
        this.mOnKeyListener = onKeyListener;
    }

    public void unregisterKeyListener(OnKeyListener onKeyListener) {
        if (this.mOnKeyListener.equals(onKeyListener)) {
            this.mOnKeyListener = null;
        } else {
            LogUtil.w(TAG, "Unregistering an listener that was not previously registered");
        }
    }

    public boolean processEvent(int i, KeyEvent keyEvent, KeyAction keyAction) {
        int repeatCount = keyEvent.getRepeatCount();
        String str = TAG;
        LogUtil.d(str, "KeyEvent : Code: " + i + " Action: " + keyAction.name() + " Repeat: " + keyEvent.getRepeatCount());
        if (i == 24 || i == 27) {
            if (repeatCount == 0) {
                this.mHalfPressProcessingHandler.removeCallbacks(this.mHalfPressEventGeneratorRunnable);
                this.mIsProcessingHalfPressDownEvent = false;
                return callListener(KeyType.FULL_KEY, keyAction);
            }
        } else if (i == 80) {
            if (keyAction == KeyAction.UP && repeatCount == 0) {
                if (this.mIsProcessingHalfPressDownEvent) {
                    this.mHalfPressProcessingHandler.removeCallbacks(this.mHalfPressEventGeneratorRunnable);
                    callListener(KeyType.HALF_KEY, KeyAction.DOWN);
                    return callListener(KeyType.HALF_KEY, KeyAction.UP);
                } else if (this.mIsDownEventProcessedAsHalfPress) {
                    this.mIsDownEventProcessedAsHalfPress = false;
                    return callListener(KeyType.HALF_KEY, keyAction);
                }
            } else if (keyAction == KeyAction.DOWN && repeatCount == 0) {
                this.mTimingLoggerUtil.captureTiming(TimingLoggerUtil.TimeToAutoFocusSplits.HARD_KEY_PRESS_START);
                keyEvent.startTracking();
                this.mIsDownEventProcessedAsHalfPress = VERBOSE_LOG;
                this.mIsProcessingHalfPressDownEvent = VERBOSE_LOG;
                this.mCurrentHalfKeyPressAction = keyAction;
                this.mHalfPressProcessingHandler.postDelayed(this.mHalfPressEventGeneratorRunnable, MAX_TIME_DURATION_BETWEEN_HALF_AND_FULL_PRESS);
                return VERBOSE_LOG;
            } else if (keyAction == KeyAction.LONG_PRESS) {
                return callListener(KeyType.HALF_KEY, keyAction);
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean callListener(KeyType keyType, KeyAction keyAction) {
        try {
            if (this.mOnKeyListener != null) {
                if (this.mOnKeyListener.onHardKeyEvent(keyType, keyAction)) {
                    return VERBOSE_LOG;
                }
                return false;
            }
            return false;
        } catch (Exception e) {
            LogUtil.e(TAG, "Exception onHardKeyEvent listener ", e);
            return false;
        }
    }
}