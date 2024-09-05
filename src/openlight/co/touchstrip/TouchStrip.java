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

public class TouchStrip {
    private static final boolean IS_ENG_BUILD = Build.TYPE.equalsIgnoreCase("eng");

    public static final String SHARED_PREF_TOUCHSTRIP_SETTING = "device_touchstrip_setting";

    public static final String SHARED_PREF_TOUCHSTRIP_SETTING_DEFAULT = "off";

    public static final String SHARED_PREF_TOUCHSTRIP_SETTING_OFF = "off";

    private static final String TAG = "TouchStrip";

    private static final int TAP_CENTER_OFFSET_RANGE = 100;

    private static final long THRESHOLD_CUMULATIVE_DISTANCE_IN_DURATION = 350L;

    private static final int THRESHOLD_FLING_VELOCITY = 6000;

    private static final long THRESHOLD_NUMBER_OF_EVENTS_IN_DURATION = 8L;

    private static final int THRESHOLD_OFFSET_FROM_CENTER_FOR_TAP_LR = 100;

    private static final int THRESHOLD_SCROLL_MAX_DISTANCE = 150;

    private static final int THRESHOLD_SCROLL_MIN_DISTANCE = 5;

    private static final long TIME_DURATION_TO_COUNT_EVENTS = 400L;

    private static final int TOUCH_STRIP_LENGTH = 800;

    private static final int TOUCH_STRIP_MIDPOINT_EVENT_X = 400;

    private static final boolean VERBOSE_LOG = false;

    private static TouchStrip sInstance;

    private Application mApplication;

    private SharedPreferences mCameraSettingsSharedPreferences;

    private volatile Event mCurrentEventForTimeDurationMatching = Event.UNKNOWN;

    private volatile int mCurrentScrollEventConsecutiveOccurrences = 0;

    private volatile int mCurrentScrollEventsCumulativeDistance = 0;

    private GestureDetectorCompat mDetector;

    // $FF: synthetic method
    static boolean access$902(TouchStrip var0, boolean var1) {
        var0.mTouchStripCurrentlyLongPressedLeft = var1;
        return var1;
    }

    static boolean access$1002(TouchStrip var0, boolean var1) {
        var0.mTouchStripCurrentlyLongPressedRight = var1;
        return var1;
    }

    private final Runnable mFlingGeneratorRunnable = new Runnable() {
        //final TouchStrip this$0;

        public void run() {
            if ((TouchStrip.this.mCurrentEventForTimeDurationMatching == TouchStrip.Event.SWIPE_LEFT
                    || TouchStrip.this.mCurrentEventForTimeDurationMatching == TouchStrip.Event.SWIPE_RIGHT)
                    && (TouchStrip.this.mCurrentScrollEventConsecutiveOccurrences > 8L
                            || TouchStrip.this.mCurrentScrollEventConsecutiveOccurrences > 350L)) {
                TouchStrip.Event event;
                TouchStrip touchStrip = TouchStrip.this;
                if (TouchStrip.this.mCurrentEventForTimeDurationMatching == TouchStrip.Event.SWIPE_LEFT) {
                    event = TouchStrip.Event.FLING_LEFT;
                } else {
                    event = TouchStrip.Event.FLING_RIGHT;
                }
                touchStrip.notifyEventListeners(event);
            }
            TouchStrip.this.stopFlingEventDetection();
        }
    };

    private final Handler mFlingProcessingHandler = new Handler(Looper.getMainLooper());

    private boolean mIsTouchStripDisabled = true;

    private final ArrayList<OnTouchStripEventListener> mOnTouchStripEventListeners = new ArrayList<OnTouchStripEventListener>();

    private final SharedPreferences.OnSharedPreferenceChangeListener mOnTouchStripPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() {
        //final TouchStrip this$0;

        public void onSharedPreferenceChanged(SharedPreferences param1SharedPreferences, String param1String) {
            if (param1String.equals("device_touchstrip_setting")) {
                TouchStrip.this.updateTouchStripStatus(TouchStrip.this.mApplication);
                TouchStrip.this.logIt(TouchStrip.TAG, "Touchstrip shared preferences have been updated");
            }
        }
    };

    private boolean mTouchStripCurrentlyLongPressedLeft = false;

    private boolean mTouchStripCurrentlyLongPressedRight = false;

    private boolean detectLongPressOrProcessEvent(MotionEvent paramMotionEvent) {
        if (paramMotionEvent.getAction() == 1) {
            if (this.mTouchStripCurrentlyLongPressedLeft) {
                logIt(TAG, "onLeftLongPressEnd " + paramMotionEvent.toString());
                this.mTouchStripCurrentlyLongPressedLeft = false;
                notifyEventListeners(Event.LONG_PRESS_END);
                return true;
            }
            if (this.mTouchStripCurrentlyLongPressedRight) {
                this.mTouchStripCurrentlyLongPressedRight = false;
                logIt(TAG, "onRightLongPressEnd " + paramMotionEvent.toString());
                notifyEventListeners(Event.LONG_PRESS_END);
                return true;
            }
        }
        return this.mDetector.onTouchEvent(paramMotionEvent);
    }

    public static TouchStrip get(Application var0) {
        synchronized(TouchStrip.class){}
  
        TouchStrip var4;
        try {
           if (sInstance == null) {
              TouchStrip var1 = new TouchStrip();
              sInstance = var1;
           }
  
           sInstance.updateTouchStripStatus(var0);
           sInstance.mApplication = var0;
           var4 = sInstance;
        } finally {
           ;
        }
  
        return var4;
     }

    private SharedPreferences getSharedPreferences(Context paramContext) {
        if (this.mCameraSettingsSharedPreferences == null) {
            this.mCameraSettingsSharedPreferences = paramContext
                    .getSharedPreferences(paramContext.getString(R.string.camera_mode_preference_key), 0);
            this.mCameraSettingsSharedPreferences
                    .registerOnSharedPreferenceChangeListener(this.mOnTouchStripPreferenceChangeListener);
        }
        return this.mCameraSettingsSharedPreferences;
    }

    private GestureDetectorCompat initTouchDetector() {
        GestureDetector.OnGestureListener onGestureListener = new GestureDetector.OnGestureListener() {
            //final TouchStrip this$0;

            public boolean onDown(MotionEvent param1MotionEvent) {
                TouchStrip touchStrip = TouchStrip.this;
                touchStrip.logIt(TouchStrip.TAG, "onDown " + param1MotionEvent.toString());
                return true;
            }

            public boolean onFling(MotionEvent param1MotionEvent1, MotionEvent param1MotionEvent2, float param1Float1,
                    float param1Float2) {
                if (param1MotionEvent1 == null || param1MotionEvent2 == null) {
                    TouchStrip.this.logIt(TouchStrip.TAG, "onFling: one of the MotionEvents null, strange");
                    return false;
                }
                TouchStrip touchStrip = TouchStrip.this;
                touchStrip.logIt(TouchStrip.TAG, "onFling: " + param1Float1 + " " + param1MotionEvent1.toString() + " " + param1MotionEvent2.toString());
                if (param1Float1 > 6000.0F) {
                    TouchStrip.this.stopFlingEventDetection();
                    TouchStrip.this.notifyEventListeners(TouchStrip.Event.FLING_RIGHT);
                    return true;
                }
                if (param1Float1 < -6000.0F) {
                    TouchStrip.this.stopFlingEventDetection();
                    TouchStrip.this.notifyEventListeners(TouchStrip.Event.FLING_LEFT);
                    return true;
                }
                return false;
            }

            public void onLongPress(MotionEvent param1MotionEvent) {
                TouchStrip.this.stopFlingEventDetection();
                if (param1MotionEvent.getX() < 400.0F) {
                    TouchStrip touchStrip = TouchStrip.this;
                    touchStrip.logIt(TouchStrip.TAG, "onLeftLongPressStart " + param1MotionEvent.toString());
                    TouchStrip.access$902(TouchStrip.this, true);
                    TouchStrip.this.notifyEventListeners(TouchStrip.Event.LONG_PRESS_START_LEFT);
                } else {
                    TouchStrip touchStrip = TouchStrip.this;
                    touchStrip.logIt(TouchStrip.TAG, "onRightLongPressStart " + param1MotionEvent.toString());
                    TouchStrip.access$1002(TouchStrip.this, true);
                    TouchStrip.this.notifyEventListeners(TouchStrip.Event.LONG_PRESS_START_RIGHT);
                }
            }

            public boolean onScroll(MotionEvent param1MotionEvent1, MotionEvent param1MotionEvent2, float param1Float1,
                    float param1Float2) {
                boolean bool1;
                TouchStrip.this.processScrollEventToDetectSensitiveFling(param1Float1);
                if (param1Float1 < -5.0F && param1Float1 > -150.0F) {
                    TouchStrip.this.notifyEventListeners(TouchStrip.Event.SWIPE_RIGHT);
                    bool1 = true;
                } else {
                    bool1 = false;
                }
                boolean bool2 = bool1;
                if (param1Float1 > 5.0F) {
                    bool2 = bool1;
                    if (param1Float1 < 150.0F) {
                        TouchStrip.this.notifyEventListeners(TouchStrip.Event.SWIPE_LEFT);
                        bool2 = true;
                    }
                }
                return bool2;
            }

            public void onShowPress(MotionEvent param1MotionEvent) {
                TouchStrip touchStrip = TouchStrip.this;
                touchStrip.logIt(TouchStrip.TAG, "onShowPress " + param1MotionEvent.toString());
            }

            public boolean onSingleTapUp(MotionEvent param1MotionEvent) {
                boolean bool;
                TouchStrip touchStrip = TouchStrip.this;
                touchStrip.logIt(TouchStrip.TAG, "onSingleTapUp " + param1MotionEvent.toString());
                TouchStrip.this.stopFlingEventDetection();
                if (param1MotionEvent.getX() < 500.0F && param1MotionEvent.getX() > 300.0F) {
                    TouchStrip.this.notifyEventListeners(TouchStrip.Event.TAP_CENTER);
                    bool = true;
                } else {
                    bool = false;
                }
                if (param1MotionEvent.getX() < 100.0F) {
                    TouchStrip.this.notifyEventListeners(TouchStrip.Event.TAP_LEFT);
                    bool = true;
                }
                if (param1MotionEvent.getX() > 700.0F) {
                    TouchStrip.this.notifyEventListeners(TouchStrip.Event.TAP_RIGHT);
                    bool = true;
                }
                return bool;
            }
        };
        return new GestureDetectorCompat((Context) this.mApplication, onGestureListener);
    }

    private void logIt(String paramString1, String paramString2) {
        if (IS_ENG_BUILD)
            Log.d(paramString1, paramString2);
    }

    private void logIt(String paramString1, String paramString2, Exception paramException) {
        if (IS_ENG_BUILD)
            Log.e(paramString1, paramString2, paramException);
    }

    private void notifyEventListeners(Event paramEvent) {
        for (OnTouchStripEventListener onTouchStripEventListener : new ArrayList<OnTouchStripEventListener>(this.mOnTouchStripEventListeners)) {
            try {
                onTouchStripEventListener.onEvent(paramEvent);
            } catch (Exception exception) {
                logIt(TAG, "Exception in one of the listeners, ignoring", exception);
            }
        }
    }

    private void processScrollEventToDetectSensitiveFling(float paramFloat) {
        Event event;
        if (paramFloat < -5.0F) {
            event = Event.SWIPE_RIGHT;
        } else if (paramFloat > 5.0F) {
            event = Event.SWIPE_LEFT;
        } else {
            return;
        }
        if (this.mCurrentEventForTimeDurationMatching == Event.UNKNOWN
                || this.mCurrentEventForTimeDurationMatching != event) {
            stopFlingEventDetection();
            startFlingEventDetection(event);
        }
        if (this.mCurrentEventForTimeDurationMatching == event) {
            this.mCurrentScrollEventConsecutiveOccurrences++;
            this.mCurrentScrollEventsCumulativeDistance = (int) (this.mCurrentScrollEventsCumulativeDistance
                    + Math.abs(paramFloat));
        }
    }

    private void startFlingEventDetection(Event paramEvent) {
        this.mCurrentEventForTimeDurationMatching = paramEvent;
        this.mFlingProcessingHandler.postDelayed(this.mFlingGeneratorRunnable, 400L);
    }

    private void stopFlingEventDetection() {
        this.mCurrentScrollEventConsecutiveOccurrences = 0;
        this.mCurrentScrollEventsCumulativeDistance = 0;
        this.mCurrentEventForTimeDurationMatching = Event.UNKNOWN;
        this.mFlingProcessingHandler.removeCallbacks(this.mFlingGeneratorRunnable);
    }

    private void updateTouchStripStatus(Application paramApplication) {
        this.mIsTouchStripDisabled = "off".equals(getSharedPreferences((Context) paramApplication).getString("device_touchstrip_setting", "on"));
        Log.i(TAG, "TouchStrip Disabled: " + this.mIsTouchStripDisabled);
        if (!this.mIsTouchStripDisabled)
            this.mDetector = initTouchDetector();
    }

    public boolean processEvent(MotionEvent paramMotionEvent) {
        if (!this.mIsTouchStripDisabled && paramMotionEvent.getSource() == 1048584) {
            paramMotionEvent.setSource(2);
            return detectLongPressOrProcessEvent(paramMotionEvent);
        }
        return false;
    }

    public void registerEventListener(OnTouchStripEventListener paramOnTouchStripEventListener) {
        this.mOnTouchStripEventListeners.add(paramOnTouchStripEventListener);
    }

    public void unregisterEventListener(OnTouchStripEventListener paramOnTouchStripEventListener) {
        this.mOnTouchStripEventListeners.remove(paramOnTouchStripEventListener);
    }

    public enum Event {
        FLING_LEFT,
        FLING_RIGHT,
        LONG_PRESS_END,
        LONG_PRESS_START_LEFT,
        LONG_PRESS_START_RIGHT,
        SWIPE_LEFT,
        SWIPE_RIGHT,
        TAP_CENTER,
        TAP_LEFT,
        TAP_RIGHT,
        UNKNOWN;
    }

    public static abstract class OnTouchStripEventListener {
        public abstract void onEvent(TouchStrip.Event param1Event);
    }
}
