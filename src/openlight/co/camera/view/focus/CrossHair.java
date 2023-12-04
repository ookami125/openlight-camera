package openlight.co.camera.view.focus;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import openlight.co.camera.enums.OrientationConfig;
import openlight.co.camera.haptic.Immersion;
import openlight.co.camera.haptic.PlayHaptic;
import openlight.co.camera.managers.focus.SmartAFTriggerMgr;
import openlight.co.camera.models.MeteringPoint;
import openlight.co.camera.view.rotate.OrientationsController;
import openlight.co.lib.utils.LogUtil;

/* loaded from: /tmp/jadx-13519048814434252820.dex */
public class CrossHair extends View {
    private static final float COLOR_FADE_ALPHA = 90.0f;
    private static final float COLOR_STANDARD_ALPHA = 255.0f;
    private static final int FADE_ANIMATION_DURATION = 100;
    private static final int FOCUS_ACHIEVED_ANIM_DURATION = 100;
    private static final int FOCUS_START_ANIM_DURATION = 1000;
    private static final int MSG_FOCUS_ACHIEVED = 1;
    private static final int MSG_FOCUS_FAILED = 2;
    private static final int MSG_REMOVE_CROSS_HAIR = 3;
    private static final int MSG_START_CROSS_HAIR_FADE = 4;
    private static final int MSG_START_FOCUSING = 0;
    private static final int MSG_UPDATE_CROSS_HAIR_ON_UP = 5;
    private static final int REMOVE_CROSS_HAIR_DELAY_MILLS = 5000;
    private static final int SHAKE_ANIMATION_DURATION = 900;
    private static final int START_FADE_ANIM_DELAY_MILLS = 1000;
    private static final String TAG = "CrossHair";
    private final AnimatorRectF mAnimationRectF;
    private final ValueAnimator.AnimatorUpdateListener mAnimatorUpdateListener;
    private final AnimatorSet mCrossHairAnimator;
    private final Animator.AnimatorListener mCrossHairAnimatorListener;
    private Drawable mCrossHairDrawable;
    private final int mCrossHairHeight;
    private final Paint mCrossHairPaint;
    private final Handler mCrossHairStatusHandler;
    private final int mCrossHairWidth;
    private final ValueAnimator mFadeAnimator;
    private final Animator.AnimatorListener mFadeAnimatorListener;
    private final ValueAnimator.AnimatorUpdateListener mFadeAnimatorUpdateListener;
    private boolean mFocusAchieved;
    private float mOrientationAngle;
    private final AnimatorRectF mOriginalRectF;
    private final PlayHaptic mPlayHaptic;
    private final int mRectangleCornerRadius;
    private final AnimatorSet mShakeAnimator;
    private final Animator.AnimatorListener mShakeAnimatorListener;
    private final SmartAFTriggerMgr mSmartAFTriggerMgr;
    private static final float ANIMATION_TRANSLATE_VALUE = 25.0f;
    private static final float[] SHAKE_ANIMATION_VALUES = {0.0f, 40.0f, -40.0f, 40.0f, -40.0f, ANIMATION_TRANSLATE_VALUE, -25.0f, 12.0f, -12.0f, 0.0f};

    public CrossHair(Context context) {
        this(context, null);
    }

    public CrossHair(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CrossHair(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mSmartAFTriggerMgr = SmartAFTriggerMgr.get();
        this.mCrossHairAnimator = new AnimatorSet();
        this.mShakeAnimator = new AnimatorSet();
        this.mFadeAnimator = ValueAnimator.ofFloat(COLOR_STANDARD_ALPHA, COLOR_FADE_ALPHA);
        this.mOriginalRectF = new AnimatorRectF();
        this.mAnimationRectF = new AnimatorRectF();
        this.mPlayHaptic = PlayHaptic.get();
        this.mOrientationAngle = 0.0f;
        this.mFocusAchieved = false;
        this.mCrossHairAnimatorListener = new Animator.AnimatorListener() { // from class: openlight.co.camera.view.focus.CrossHair.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (!CrossHair.this.mFocusAchieved || CrossHair.this.mSmartAFTriggerMgr.isFocusLocked()) {
                    return;
                }
                CrossHair.this.mCrossHairStatusHandler.sendEmptyMessageDelayed(4, 1000L);
            }
        };
        this.mShakeAnimatorListener = new Animator.AnimatorListener() { // from class: openlight.co.camera.view.focus.CrossHair.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                CrossHair.this.removeCrossHair();
            }
        };
        this.mFadeAnimatorListener = new Animator.AnimatorListener() { // from class: openlight.co.camera.view.focus.CrossHair.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (CrossHair.this.mSmartAFTriggerMgr.isFocusLocked()) {
                    return;
                }
                LogUtil.d(CrossHair.TAG, "remove cross hair delayed msg");
                CrossHair.this.mCrossHairStatusHandler.sendEmptyMessageDelayed(3, 5000L);
            }
        };
        this.mAnimatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: openlight.co.camera.view.focus.CrossHair.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                CrossHair.this.invalidate();
            }
        };
        this.mFadeAnimatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: openlight.co.camera.view.focus.CrossHair.5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (CrossHair.this.mSmartAFTriggerMgr.getLastFocusTriggeredFace() != null) {
                    CrossHair.this.mCrossHairPaint.setAlpha(Math.round(((Float) valueAnimator.getAnimatedValue()).floatValue()));
                } else if (CrossHair.this.mCrossHairDrawable != null) {
                    CrossHair.this.mCrossHairDrawable.setAlpha(Math.round(((Float) valueAnimator.getAnimatedValue()).floatValue()));
                }
                CrossHair.this.invalidate();
            }
        };
        this.mCrossHairStatusHandler = new Handler(Looper.getMainLooper()) { // from class: openlight.co.camera.view.focus.CrossHair.6
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                String str = CrossHair.TAG;
                LogUtil.d(str, "handleMethod: " + message.what);
                switch (message.what) {
                    case 0:
                        CrossHair.this.mFocusAchieved = false;
                        CrossHair.this.startCrossHairAnimations((MeteringPoint) message.obj);
                        return;
                    case 1:
                        CrossHair.this.mFocusAchieved = true;
                        CrossHair.this.startCrossHairAnimations(null);
                        return;
                    case 2:
                        CrossHair.this.startShakeAnimation();
                        return;
                    case 3:
                        CrossHair.this.clear();
                        CrossHair.this.removeCrossHair();
                        return;
                    case 4:
                        CrossHair.this.startFadeAnimation();
                        return;
                    default:
                        return;
                }
            }
        };
        this.mRectangleCornerRadius = getResources().getDimensionPixelSize(2131165380);
        this.mCrossHairWidth = getResources().getDimensionPixelSize(2131165330);
        this.mCrossHairHeight = getResources().getDimensionPixelSize(2131165329);
        this.mCrossHairPaint = new Paint();
        this.mCrossHairPaint.setAntiAlias(true);
        this.mCrossHairPaint.setStyle(Paint.Style.STROKE);
        this.mCrossHairPaint.setStrokeWidth(getResources().getDimension(2131165381));
    }

    public void showFocusStartAtCoordinates(@NonNull MeteringPoint meteringPoint) {
        Message message = new Message();
        message.what = 0;
        message.obj = meteringPoint;
        this.mCrossHairStatusHandler.sendMessage(message);
    }

    public void showFocusAchieved() {
        this.mCrossHairStatusHandler.sendEmptyMessage(1);
    }

    public void showFocusFailed() {
        this.mCrossHairStatusHandler.sendEmptyMessage(2);
    }

    public void remove() {
        this.mCrossHairStatusHandler.sendEmptyMessage(3);
    }

    public void clear() {
        LogUtil.d(TAG, "clear");
        setVisibility(8);
        this.mCrossHairAnimator.cancel();
        this.mCrossHairAnimator.removeAllListeners();
        this.mShakeAnimator.cancel();
        this.mShakeAnimator.removeAllListeners();
        this.mFadeAnimator.cancel();
        this.mFadeAnimator.removeAllUpdateListeners();
        this.mFadeAnimator.removeAllListeners();
        this.mCrossHairStatusHandler.removeCallbacksAndMessages(null);
    }

    public void onOrientationChange(OrientationConfig orientationConfig) {
        if (this.mSmartAFTriggerMgr.isFocusLocked()) {
            this.mOrientationAngle = orientationConfig.getViewRotationAngle();
            invalidate();
        }
    }

    public void setSize(int i, int i2) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i2;
        setLayoutParams(layoutParams);
        requestLayout();
    }

    public void updateCoordinatesAndDraw(MeteringPoint meteringPoint) {
        clear();
        setVisibility(0);
        showFocusStartAtCoordinates(meteringPoint);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mSmartAFTriggerMgr.isFocusLocked()) {
            canvas.rotate(this.mOrientationAngle, this.mAnimationRectF.centerX(), this.mAnimationRectF.centerY());
        }
        if (this.mSmartAFTriggerMgr.getLastFocusTriggeredFace() != null) {
            canvas.drawRoundRect(this.mAnimationRectF, this.mRectangleCornerRadius, this.mRectangleCornerRadius, this.mCrossHairPaint);
        } else if (this.mAnimationRectF.isEmpty() || this.mCrossHairDrawable == null) {
        } else {
            this.mCrossHairDrawable.setBounds((int) this.mAnimationRectF.left, (int) this.mAnimationRectF.top, (int) this.mAnimationRectF.right, (int) this.mAnimationRectF.bottom);
            this.mCrossHairDrawable.draw(canvas);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeCrossHair() {
        setVisibility(8);
        this.mCrossHairDrawable = null;
        this.mOriginalRectF.setEmpty();
        this.mAnimationRectF.setEmpty();
        LogUtil.d(TAG, "removeCrossHair");
    }

    private void convertTouchPointToRectF(MeteringPoint meteringPoint) {
        this.mOriginalRectF.left = meteringPoint.getX() - (getLeft() + (this.mCrossHairWidth / 2));
        this.mOriginalRectF.top = meteringPoint.getY() - (this.mCrossHairHeight / 2);
        this.mOriginalRectF.right = this.mOriginalRectF.left + this.mCrossHairWidth;
        this.mOriginalRectF.bottom = this.mOriginalRectF.top + this.mCrossHairHeight;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startCrossHairAnimations(MeteringPoint meteringPoint) {
        ObjectAnimator ofFloat;
        ObjectAnimator ofFloat2;
        ObjectAnimator ofFloat3;
        ObjectAnimator ofFloat4;
        clear();
        setVisibility(0);
        if (this.mFocusAchieved) {
            ofFloat = ObjectAnimator.ofFloat(this.mAnimationRectF, "left", this.mAnimationRectF.left, this.mOriginalRectF.left);
            ofFloat2 = ObjectAnimator.ofFloat(this.mAnimationRectF, "top", this.mAnimationRectF.top, this.mOriginalRectF.top);
            ofFloat3 = ObjectAnimator.ofFloat(this.mAnimationRectF, "right", this.mAnimationRectF.right, this.mOriginalRectF.right);
            ofFloat4 = ObjectAnimator.ofFloat(this.mAnimationRectF, "bottom", this.mAnimationRectF.bottom, this.mOriginalRectF.bottom);
            this.mCrossHairPaint.setColor(getResources().getColor(2131099730, null));
            this.mCrossHairDrawable = getResources().getDrawable(this.mSmartAFTriggerMgr.isFocusLocked() ? 2131230966 : 2131230965, null);
            this.mPlayHaptic.playHaptic(this.mSmartAFTriggerMgr.isFocusLocked() ? Immersion.FOCUS_LOCK : Immersion.FOCUS_ACHIEVED);
        } else {
            if (this.mSmartAFTriggerMgr.getLastFocusTriggeredFace() == null) {
                convertTouchPointToRectF(meteringPoint);
            } else {
                this.mOriginalRectF.copyValues(this.mSmartAFTriggerMgr.getLastFocusTriggeredFace().getBounds());
            }
            this.mAnimationRectF.copyValues(this.mOriginalRectF);
            ofFloat = ObjectAnimator.ofFloat(this.mAnimationRectF, "left", this.mAnimationRectF.left, this.mAnimationRectF.left - ANIMATION_TRANSLATE_VALUE);
            ofFloat2 = ObjectAnimator.ofFloat(this.mAnimationRectF, "top", this.mAnimationRectF.top, this.mAnimationRectF.top - ANIMATION_TRANSLATE_VALUE);
            ofFloat3 = ObjectAnimator.ofFloat(this.mAnimationRectF, "right", this.mAnimationRectF.right, this.mAnimationRectF.right + ANIMATION_TRANSLATE_VALUE);
            ofFloat4 = ObjectAnimator.ofFloat(this.mAnimationRectF, "bottom", this.mAnimationRectF.bottom, this.mAnimationRectF.bottom + ANIMATION_TRANSLATE_VALUE);
            this.mCrossHairPaint.setColor(getResources().getColor(2131099731, null));
            this.mCrossHairDrawable = getResources().getDrawable(this.mSmartAFTriggerMgr.isFocusLocked() ? 2131230962 : 2131230961, null);
        }
        this.mCrossHairPaint.setAlpha(Math.round((float) COLOR_STANDARD_ALPHA));
        this.mCrossHairDrawable.setAlpha(Math.round((float) COLOR_STANDARD_ALPHA));
        this.mOrientationAngle = OrientationsController.get().getConfig().getViewRotationAngle();
        ofFloat4.addUpdateListener(this.mAnimatorUpdateListener);
        this.mCrossHairAnimator.addListener(this.mCrossHairAnimatorListener);
        this.mCrossHairAnimator.playTogether(ofFloat, ofFloat3, ofFloat2, ofFloat4);
        this.mCrossHairAnimator.setDuration(this.mFocusAchieved ? 100L : 1000L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startShakeAnimation() {
        clear();
        setVisibility(0);
        this.mAnimationRectF.setEmpty();
        this.mAnimationRectF.copyValues(this.mOriginalRectF);
        if (this.mAnimationRectF.isEmpty()) {
            return;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mAnimationRectF, "left", getShakeAnimationCoordinates(this.mAnimationRectF.left));
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.mAnimationRectF, "right", getShakeAnimationCoordinates(this.mAnimationRectF.right));
        this.mShakeAnimator.addListener(this.mShakeAnimatorListener);
        ofFloat.addUpdateListener(this.mAnimatorUpdateListener);
        this.mShakeAnimator.playTogether(ofFloat, ofFloat2);
        this.mShakeAnimator.setDuration(900L).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startFadeAnimation() {
        clear();
        setVisibility(0);
        this.mFadeAnimator.addUpdateListener(this.mFadeAnimatorUpdateListener);
        this.mFadeAnimator.addListener(this.mFadeAnimatorListener);
        this.mFadeAnimator.setDuration(100L).start();
    }

    private float[] getShakeAnimationCoordinates(float f) {
        int length = SHAKE_ANIMATION_VALUES.length;
        float[] fArr = new float[length];
        for (int i = 0; i < length; i++) {
            fArr[i] = f - SHAKE_ANIMATION_VALUES[i];
        }
        return fArr;
    }

    private void updateCrossHairAfterLockRelease() {
        LogUtil.d(TAG, "updateCrossHairAfterLockRelease");
        this.mCrossHairDrawable = getResources().getDrawable(this.mFocusAchieved ? 2131230965 : 2131230961, null);
        removeCrossHair();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /tmp/jadx-13519048814434252820.dex */
    public final class AnimatorRectF extends RectF {
        private AnimatorRectF() {
        }

        public void setTop(float f) {
            this.top = f;
        }

        public void setBottom(float f) {
            this.bottom = f;
        }

        public void setRight(float f) {
            this.right = f;
        }

        public void setLeft(float f) {
            this.left = f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void copyValues(RectF rectF) {
            if (rectF != null) {
                this.left = rectF.left;
                this.top = rectF.top;
                this.right = rectF.right;
                this.bottom = rectF.bottom;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void copyValues(Rect rect) {
            if (rect != null) {
                this.left = rect.left;
                this.top = rect.top;
                this.right = rect.right;
                this.bottom = rect.bottom;
            }
        }
    }
}