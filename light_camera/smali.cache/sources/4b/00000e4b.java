package openlight.co.camera.view.timer;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.widget.ImageView;
import android.widget.TextView;
import openlight.co.lib.utils.AnimationUtils;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class VideoTimer {
    private ImageView mBlinker;
    private Context mContext;
    private TextView mRecordingTimer;
    private Handler mCustomHandler = new Handler();
    private long mTimeInMillis = 0;
    private long mTimeSwap = 0;
    private long mUpdatedTime = 0;
    private long mStartTime = 0;
    private Runnable updateTimerThread = new Runnable() { // from class: openlight.co.camera.view.timer.VideoTimer.1
        @Override // java.lang.Runnable
        public void run() {
            VideoTimer.this.mTimeInMillis = SystemClock.uptimeMillis() - VideoTimer.this.mStartTime;
            VideoTimer.this.mUpdatedTime = VideoTimer.this.mTimeSwap + VideoTimer.this.mTimeInMillis;
            int i = (int) (VideoTimer.this.mUpdatedTime / 1000);
            int i2 = i / 60;
            int i3 = i % 60;
            int i4 = i2 / 60;
            int i5 = i2 % 60;
            if (VideoTimer.this.mRecordingTimer != null) {
                TextView textView = VideoTimer.this.mRecordingTimer;
                textView.setText(String.format("%02d", Integer.valueOf(i4)) + ":" + String.format("%02d", Integer.valueOf(i5)) + ":" + String.format("%02d", Integer.valueOf(i3)));
            }
            VideoTimer.this.mCustomHandler.postDelayed(this, 0L);
        }
    };

    public VideoTimer(Context context, TextView textView, ImageView imageView) {
        this.mContext = context;
        this.mRecordingTimer = textView;
        this.mBlinker = imageView;
    }

    public void setTextRecordViews(TextView textView, ImageView imageView) {
        this.mRecordingTimer = textView;
        this.mBlinker = imageView;
    }

    public void startRecordingAnimation() {
        this.mStartTime = SystemClock.uptimeMillis();
        this.mCustomHandler.postDelayed(this.updateTimerThread, 0L);
        if (this.mBlinker == null) {
            return;
        }
        AnimationUtils.blinkAnimation(this.mBlinker);
    }

    public void stopRecordingAnimation() {
        this.mTimeSwap = 0L;
        this.mCustomHandler.removeCallbacks(this.updateTimerThread);
        this.mBlinker.clearAnimation();
    }
}