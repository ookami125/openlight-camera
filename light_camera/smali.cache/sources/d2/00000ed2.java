package openlight.co.touchstrip;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.view.GestureDetectorCompat;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class TouchStrip {
    private static final boolean IS_ENG_BUILD = Build.TYPE.equalsIgnoreCase("eng");
    public static final String SHARED_PREF_TOUCHSTRIP_SETTING = "device_touchstrip_setting";
    public static final String SHARED_PREF_TOUCHSTRIP_SETTING_DEFAULT = "off";
    public static final String SHARED_PREF_TOUCHSTRIP_SETTING_OFF = "off";
    private static final String TAG = "TouchStrip";
    private static final int TAP_CENTER_OFFSET_RANGE = 100;
    private static final long THRESHOLD_CUMULATIVE_DISTANCE_IN_DURATION = 350;
    private static final int THRESHOLD_FLING_VELOCITY = 6000;
    private static final long THRESHOLD_NUMBER_OF_EVENTS_IN_DURATION = 8;
    private static final int THRESHOLD_OFFSET_FROM_CENTER_FOR_TAP_LR = 100;
    private static final int THRESHOLD_SCROLL_MAX_DISTANCE = 150;
    private static final int THRESHOLD_SCROLL_MIN_DISTANCE = 5;
    private static final long TIME_DURATION_TO_COUNT_EVENTS = 400;
    private static final int TOUCH_STRIP_LENGTH = 800;
    private static final int TOUCH_STRIP_MIDPOINT_EVENT_X = 400;
    private static final boolean VERBOSE_LOG = false;
    private static TouchStrip sInstance;
    private Application mApplication;
    private SharedPreferences mCameraSettingsSharedPreferences;
    private GestureDetectorCompat mDetector;
    private boolean mIsTouchStripDisabled = true;
    private final Handler mFlingProcessingHandler = new Handler(Looper.getMainLooper());
    private final ArrayList<OnTouchStripEventListener> mOnTouchStripEventListeners = new ArrayList<>();
    private final Runnable mFlingGeneratorRunnable = new Runnable() { // from class: openlight.co.touchstrip.TouchStrip.1
        @Override // java.lang.Runnable
        public void run() {
            if ((TouchStrip.this.mCurrentEventForTimeDurationMatching == Event.SWIPE_LEFT || TouchStrip.this.mCurrentEventForTimeDurationMatching == Event.SWIPE_RIGHT) && (TouchStrip.this.mCurrentScrollEventConsecutiveOccurrences > 8 || TouchStrip.this.mCurrentScrollEventConsecutiveOccurrences > TouchStrip.THRESHOLD_CUMULATIVE_DISTANCE_IN_DURATION)) {
                TouchStrip.this.notifyEventListeners(TouchStrip.this.mCurrentEventForTimeDurationMatching == Event.SWIPE_LEFT ? Event.FLING_LEFT : Event.FLING_RIGHT);
            }
            TouchStrip.this.stopFlingEventDetection();
        }
    };
    private final SharedPreferences.OnSharedPreferenceChangeListener mOnTouchStripPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: openlight.co.touchstrip.TouchStrip.2
        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            if (str.equals("device_touchstrip_setting")) {
                TouchStrip.this.updateTouchStripStatus(TouchStrip.this.mApplication);
                TouchStrip.this.logIt(TouchStrip.TAG, "Touchstrip shared preferences have been updated");
            }
        }
    };
    private volatile Event mCurrentEventForTimeDurationMatching = Event.UNKNOWN;
    private volatile int mCurrentScrollEventConsecutiveOccurrences = 0;
    private volatile int mCurrentScrollEventsCumulativeDistance = 0;
    private boolean mTouchStripCurrentlyLongPressedLeft = false;
    private boolean mTouchStripCurrentlyLongPressedRight = false;

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public enum Event {
        FLING_RIGHT,
        FLING_LEFT,
        LONG_PRESS_START_LEFT,
        LONG_PRESS_START_RIGHT,
        LONG_PRESS_END,
        TAP_LEFT,
        TAP_RIGHT,
        TAP_CENTER,
        SWIPE_LEFT,
        SWIPE_RIGHT,
        UNKNOWN
    }

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public static abstract class OnTouchStripEventListener {
        public abstract void onEvent(Event event);
    }

    private TouchStrip() {
    }

    public static synchronized TouchStrip get(Application application) {
        TouchStrip touchStrip;
        synchronized (TouchStrip.class) {
            if (sInstance == null) {
                sInstance = new TouchStrip();
            }
            sInstance.updateTouchStripStatus(application);
            sInstance.mApplication = application;
            touchStrip = sInstance;
        }
        return touchStrip;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTouchStripStatus(Application application) {
        this.mIsTouchStripDisabled = "off".equals(getSharedPreferences(application).getString("device_touchstrip_setting", "on"));
        String str = TAG;
        Log.i(str, "TouchStrip Disabled: " + this.mIsTouchStripDisabled);
        if (this.mIsTouchStripDisabled) {
            return;
        }
        this.mDetector = initTouchDetector();
    }

    private GestureDetectorCompat initTouchDetector() {
        return new GestureDetectorCompat(this.mApplication, new GestureDetector.OnGestureListener() { // from class: openlight.co.touchstrip.TouchStrip.3
            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                TouchStrip touchStrip = TouchStrip.this;
                String str = TouchStrip.TAG;
                touchStrip.logIt(str, "onDown " + motionEvent.toString());
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onShowPress(MotionEvent motionEvent) {
                TouchStrip touchStrip = TouchStrip.this;
                String str = TouchStrip.TAG;
                touchStrip.logIt(str, "onShowPress " + motionEvent.toString());
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                boolean z;
                TouchStrip.this.logIt(TouchStrip.TAG, "onSingleTapUp " + motionEvent.toString());
                TouchStrip.this.stopFlingEventDetection();
                if (motionEvent.getX() >= 500.0f || motionEvent.getX() <= 300.0f) {
                    z = false;
                } else {
                    TouchStrip.this.notifyEventListeners(Event.TAP_CENTER);
                    z = true;
                }
                if (motionEvent.getX() < 100.0f) {
                    TouchStrip.this.notifyEventListeners(Event.TAP_LEFT);
                    z = true;
                }
                if (motionEvent.getX() > 700.0f) {
                    TouchStrip.this.notifyEventListeners(Event.TAP_RIGHT);
                    return true;
                }
                return z;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                boolean z;
                TouchStrip.this.processScrollEventToDetectSensitiveFling(f);
                if (f >= -5.0f || f <= -150.0f) {
                    z = false;
                } else {
                    TouchStrip.this.notifyEventListeners(Event.SWIPE_RIGHT);
                    z = true;
                }
                if (f <= 5.0f || f >= 150.0f) {
                    return z;
                }
                TouchStrip.this.notifyEventListeners(Event.SWIPE_LEFT);
                return true;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
                TouchStrip.this.stopFlingEventDetection();
                if (motionEvent.getX() < 400.0f) {
                    TouchStrip touchStrip = TouchStrip.this;
                    String str = TouchStrip.TAG;
                    touchStrip.logIt(str, "onLeftLongPressStart " + motionEvent.toString());
                    TouchStrip.this.mTouchStripCurrentlyLongPressedLeft = true;
                    TouchStrip.this.notifyEventListeners(Event.LONG_PRESS_START_LEFT);
                    return;
                }
                TouchStrip touchStrip2 = TouchStrip.this;
                String str2 = TouchStrip.TAG;
                touchStrip2.logIt(str2, "onRightLongPressStart " + motionEvent.toString());
                TouchStrip.this.mTouchStripCurrentlyLongPressedRight = true;
                TouchStrip.this.notifyEventListeners(Event.LONG_PRESS_START_RIGHT);
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (motionEvent == null || motionEvent2 == null) {
                    TouchStrip.this.logIt(TouchStrip.TAG, "onFling: one of the MotionEvents null, strange");
                    return false;
                }
                TouchStrip touchStrip = TouchStrip.this;
                String str = TouchStrip.TAG;
                touchStrip.logIt(str, "onFling: " + f + " " + motionEvent.toString() + " " + motionEvent2.toString());
                if (f > 6000.0f) {
                    TouchStrip.this.stopFlingEventDetection();
                    TouchStrip.this.notifyEventListeners(Event.FLING_RIGHT);
                    return true;
                } else if (f < -6000.0f) {
                    TouchStrip.this.stopFlingEventDetection();
                    TouchStrip.this.notifyEventListeners(Event.FLING_LEFT);
                    return true;
                } else {
                    return false;
                }
            }
        });
    }

    public boolean processEvent(MotionEvent motionEvent) {
        if (this.mIsTouchStripDisabled || motionEvent.getSource() != 1048584) {
            return false;
        }
        motionEvent.setSource(2);
        return detectLongPressOrProcessEvent(motionEvent);
    }

    private boolean detectLongPressOrProcessEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            if (this.mTouchStripCurrentlyLongPressedLeft) {
                String str = TAG;
                logIt(str, "onLeftLongPressEnd " + motionEvent.toString());
                this.mTouchStripCurrentlyLongPressedLeft = false;
                notifyEventListeners(Event.LONG_PRESS_END);
                return true;
            } else if (this.mTouchStripCurrentlyLongPressedRight) {
                this.mTouchStripCurrentlyLongPressedRight = false;
                String str2 = TAG;
                logIt(str2, "onRightLongPressEnd " + motionEvent.toString());
                notifyEventListeners(Event.LONG_PRESS_END);
                return true;
            }
        }
        return this.mDetector.onTouchEvent(motionEvent);
    }

    public void registerEventListener(OnTouchStripEventListener onTouchStripEventListener) {
        this.mOnTouchStripEventListeners.add(onTouchStripEventListener);
    }

    public void unregisterEventListener(OnTouchStripEventListener onTouchStripEventListener) {
        this.mOnTouchStripEventListeners.remove(onTouchStripEventListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyEventListeners(Event event) {
        Iterator it = new ArrayList(this.mOnTouchStripEventListeners).iterator();
        while (it.hasNext()) {
            try {
                ((OnTouchStripEventListener) it.next()).onEvent(event);
            } catch (Exception e) {
                logIt(TAG, "Exception in one of the listeners, ignoring", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processScrollEventToDetectSensitiveFling(float f) {
        Event event;
        if (f < -5.0f) {
            event = Event.SWIPE_RIGHT;
        } else if (f <= 5.0f) {
            return;
        } else {
            event = Event.SWIPE_LEFT;
        }
        if (this.mCurrentEventForTimeDurationMatching == Event.UNKNOWN || this.mCurrentEventForTimeDurationMatching != event) {
            stopFlingEventDetection();
            startFlingEventDetection(event);
        }
        if (this.mCurrentEventForTimeDurationMatching == event) {
            this.mCurrentScrollEventConsecutiveOccurrences++;
            this.mCurrentScrollEventsCumulativeDistance = (int) (this.mCurrentScrollEventsCumulativeDistance + Math.abs(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stopFlingEventDetection() {
        this.mCurrentScrollEventConsecutiveOccurrences = 0;
        this.mCurrentScrollEventsCumulativeDistance = 0;
        this.mCurrentEventForTimeDurationMatching = Event.UNKNOWN;
        this.mFlingProcessingHandler.removeCallbacks(this.mFlingGeneratorRunnable);
    }

    private void startFlingEventDetection(Event event) {
        this.mCurrentEventForTimeDurationMatching = event;
        this.mFlingProcessingHandler.postDelayed(this.mFlingGeneratorRunnable, TIME_DURATION_TO_COUNT_EVENTS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logIt(String str, String str2) {
        if (IS_ENG_BUILD) {
            Log.d(str, str2);
        }
    }

    private void logIt(String str, String str2, Exception exc) {
        if (IS_ENG_BUILD) {
            Log.e(str, str2, exc);
        }
    }

    private SharedPreferences getSharedPreferences(Context context) {
        if (this.mCameraSettingsSharedPreferences == null) {
            this.mCameraSettingsSharedPreferences = context.getSharedPreferences(context.getString(R.string.camera_mode_preference_key), 0);
            this.mCameraSettingsSharedPreferences.registerOnSharedPreferenceChangeListener(this.mOnTouchStripPreferenceChangeListener);
        }
        return this.mCameraSettingsSharedPreferences;
    }
}