package openlight.co.camera.view.customviews;

import android.content.Context;
import android.graphics.Point;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Size;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import openlight.co.camera.CameraActivity;
import openlight.co.camera.utils.Util;
import openlight.co.lib.utils.LogUtil;

/* loaded from: /tmp/jadx-13519048814434252820.dex */
public class FocusView extends RelativeLayout {
    private static final boolean DEBUG = true;
    private static final String TAG = "FocusView";
    private static final int TIME_HIDE = 1000;
    private static final int TIME_OUT = 10000;
    private int iCount;
    private boolean isFocusLock;
    AnimationSet mAnimationSet;
    private Context mContext;
    private final Handler mHandler;
    private Handler mHideHandler;
    private Runnable mHideRunnable;
    private ImageView mImageFocusing;
    private OnFocusStateListener mListener;
    private Runnable timeOutRunnable;

    /* loaded from: /tmp/jadx-13519048814434252820.dex */
    public interface OnFocusStateListener {
        void onArchived(boolean z);

        void onFinish(boolean z);

        void onStart();

        void playHaptic();
    }

    public void setFocusLock(boolean z) {
        this.isFocusLock = z;
    }

    public FocusView(Context context) {
        super(context);
        this.mHandler = new Handler();
        this.iCount = 0;
        this.mHideHandler = new Handler();
        this.mContext = context;
        addImageView();
    }

    public void setListener(OnFocusStateListener onFocusStateListener) {
        if (this.mListener == null) {
            this.mListener = onFocusStateListener;
        }
    }

    public FocusView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mHandler = new Handler();
        this.iCount = 0;
        this.mHideHandler = new Handler();
        this.mContext = context;
        addImageView();
    }

    public FocusView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mHandler = new Handler();
        this.iCount = 0;
        this.mHideHandler = new Handler();
    }

    public void startFocus(Point point) {
        if (this.mListener != null) {
            this.mListener.onStart();
        }
        reInitTimeOut();
        addView();
        showFocusView(point);
    }

    public void focusArchived() {
        if (this.mContext == null || !(this.mContext instanceof CameraActivity)) {
            return;
        }
        ((CameraActivity) this.mContext).runOnUiThread(new Runnable() { // from class: openlight.co.camera.view.customviews.FocusView.1
            @Override // java.lang.Runnable
            public void run() {
                new Handler().postDelayed(new Runnable() { // from class: openlight.co.camera.view.customviews.FocusView.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        LogUtil.d(FocusView.TAG, "focus archived ");
                        if (FocusView.this.mAnimationSet != null) {
                            FocusView.this.mImageFocusing.clearAnimation();
                        }
                        FocusView.this.setDrawable(2131230813);
                        FocusView.this.finishFocus(false);
                    }
                }, 200L);
            }
        });
    }

    public void focusFailed() {
        if (this.mContext == null || !(this.mContext instanceof CameraActivity)) {
            return;
        }
        ((CameraActivity) this.mContext).runOnUiThread(new Runnable() { // from class: openlight.co.camera.view.customviews.FocusView.2
            @Override // java.lang.Runnable
            public void run() {
                FocusView.this.updateViewFailed();
                FocusView.this.finishFocus(FocusView.DEBUG);
            }
        });
    }

    private void showFocusView(Point point) {
        LogUtil.d(TAG, "showFocusRing ");
        Size screenSize = Util.getScreenSize(this.mContext);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Util.getDimen(this.mContext, 2131165298), Util.getDimen(this.mContext, 2131165298));
        int dimen = Util.getDimen(this.mContext, 2131165296);
        if (point != null) {
            layoutParams.setMargins(point.x - dimen, point.y - dimen, screenSize.getWidth() - (point.x + dimen), screenSize.getHeight() - (point.y + dimen));
        }
        setLayoutParams(layoutParams);
        setVisibility(0);
    }

    public void reInitTimeOut() {
        releaseHideRunnable();
        releaseRunnable();
        this.timeOutRunnable = getTimeOutRunnable();
        this.mHandler.postDelayed(this.timeOutRunnable, 10000L);
    }

    private Runnable getTimeOutRunnable() {
        return new Runnable() { // from class: openlight.co.camera.view.customviews.FocusView.3
            @Override // java.lang.Runnable
            public void run() {
                LogUtil.d(FocusView.TAG, "Timeout");
                FocusView.this.focusFailed();
            }
        };
    }

    private void releaseRunnable() {
        if (this.timeOutRunnable != null) {
            LogUtil.d(TAG, "releaseRunnable ");
            this.mHandler.removeCallbacks(this.timeOutRunnable);
            this.timeOutRunnable = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDrawable(int i) {
        if (this.mContext == null) {
            return;
        }
        this.mImageFocusing.setImageDrawable(this.mContext.getResources().getDrawable(i, this.mContext.getTheme()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishFocus(boolean z) {
        String str = TAG;
        LogUtil.d(str, "Finish fLock: " + this.isFocusLock);
        releaseRunnable();
        if (!this.isFocusLock) {
            hideFocusView();
        }
        LogUtil.d(TAG, "Finish");
        if (this.mListener != null) {
            this.mListener.onFinish(z);
        }
    }

    private void addView() {
        this.iCount++;
        LogUtil.d(TAG, "add view");
        if (this.mAnimationSet != null) {
            this.mImageFocusing.clearAnimation();
        }
        setDrawable(2131230814);
        initAnimation();
        this.mImageFocusing.setAnimation(this.mAnimationSet);
        this.mImageFocusing.startAnimation(this.mAnimationSet);
    }

    private void addImageView() {
        this.mImageFocusing = new ImageView(this.mContext);
        this.mImageFocusing.setAlpha(0.5f);
        setDrawable(2131230814);
        addView(this.mImageFocusing);
        int dimen = this.mContext != null ? Util.getDimen(this.mContext, 2131165296) : 0;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(dimen, dimen);
        layoutParams.addRule(13, -1);
        this.mImageFocusing.setLayoutParams(layoutParams);
    }

    private void initAnimation() {
        this.mAnimationSet = new AnimationSet(DEBUG);
        Animation loadAnimation = AnimationUtils.loadAnimation(this.mContext, 2130771984);
        loadAnimation.setRepeatCount(-1);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.5f, 1.0f);
        this.mAnimationSet.setDuration(700L);
        this.mAnimationSet.addAnimation(loadAnimation);
        this.mAnimationSet.addAnimation(alphaAnimation);
    }

    private Runnable getHideRunnable() {
        return new Runnable() { // from class: openlight.co.camera.view.customviews.FocusView.4
            @Override // java.lang.Runnable
            public void run() {
                if (FocusView.this.mContext != null && (FocusView.this.mContext instanceof CameraActivity)) {
                    ((CameraActivity) FocusView.this.mContext).runOnUiThread(new Runnable() { // from class: openlight.co.camera.view.customviews.FocusView.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (FocusView.this.mListener != null) {
                                FocusView.this.mListener.onArchived(FocusView.DEBUG);
                            }
                            FocusView.this.setVisibility(8);
                            LogUtil.d(FocusView.TAG, "Hide view ");
                        }
                    });
                }
                FocusView.this.mHideRunnable = null;
            }
        };
    }

    private void resetHideRunnable() {
        LogUtil.d(TAG, "resetHideRunnable");
        releaseHideRunnable();
        this.mHideRunnable = getHideRunnable();
        this.mHideHandler.postDelayed(this.mHideRunnable, 1000L);
    }

    private void releaseHideRunnable() {
        if (this.mHideRunnable != null) {
            LogUtil.d(TAG, "resetHideRunnable");
            this.mHideHandler.removeCallbacks(this.mHideRunnable);
            this.mHideRunnable = null;
        }
    }

    private void hideFocusView() {
        resetHideRunnable();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateViewFailed() {
        LogUtil.d(TAG, "Focus failed");
        if (this.mContext instanceof CameraActivity) {
            ((CameraActivity) this.mContext).runOnUiThread(new Runnable() { // from class: openlight.co.camera.view.customviews.FocusView.5
                @Override // java.lang.Runnable
                public void run() {
                    if (FocusView.this.mAnimationSet != null) {
                        FocusView.this.mImageFocusing.clearAnimation();
                    }
                    FocusView.this.setDrawable(2131230814);
                    if (FocusView.this.mListener != null) {
                        FocusView.this.mListener.onArchived(false);
                    }
                }
            });
        }
    }
}