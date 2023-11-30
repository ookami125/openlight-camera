package openlight.co.lib.utils;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class AnimationUtils {
    private static final int DEFAULT_ANIMATION_DURATION = 50;

    public static ObjectAnimator appearFromBottom(View view, float f, float f2) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "translationY", f, f2);
        ofFloat.setDuration(50L);
        return ofFloat;
    }

    public static ObjectAnimator disappearToBottom(View view, float f, float f2) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "translationY", f, f2);
        ofFloat.setDuration(50L);
        return ofFloat;
    }

    public static ObjectAnimator alphaAppear(View view) {
        view.setVisibility(0);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f);
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat.setDuration(50L);
        return ofFloat;
    }

    public static ObjectAnimator alphaDisappear(View view) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", 1.0f, 0.0f);
        ofFloat.setInterpolator(new DecelerateInterpolator());
        ofFloat.setDuration(50L);
        return ofFloat;
    }

    public static void blinkAnimation(View view) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f);
        ofFloat.setInterpolator(new AccelerateInterpolator());
        ofFloat.setDuration(500L);
        ofFloat.setRepeatMode(2);
        ofFloat.setRepeatCount(-1);
        ofFloat.start();
    }

    public static void hideAnimation(View view) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", view.getAlpha(), 0.0f);
        ofFloat.setInterpolator(new AccelerateInterpolator());
        ofFloat.setDuration(500L);
        ofFloat.start();
    }

    public static void rotateOnOrientationChange(View view, int i, int i2) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "rotation", i);
        ofFloat.setDuration(i2);
        ofFloat.setInterpolator(new AccelerateInterpolator());
        ofFloat.start();
    }

    public static void rotateOnOrientationChange(List<View> list, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < list.size(); i3++) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(list.get(i3), "rotation", i);
            ofFloat.setDuration(i2);
            ofFloat.setInterpolator(new AccelerateInterpolator());
            arrayList.add(ofFloat);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.start();
    }

    public static void scaleIn(View view, int i, Animator.AnimatorListener animatorListener, float f) {
        scaleIn(view, i, animatorListener, 0.5f, 0.5f, f);
    }

    public static void scaleIn(View view, int i, Animator.AnimatorListener animatorListener, float f, float f2, float f3) {
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        view.setPivotX(f * view.getWidth());
        view.setPivotY(f2 * view.getHeight());
        view.animate().scaleX(f3).scaleY(f3).setListener(animatorListener).setDuration(i);
    }

    public static void scaleOut(View view, int i, Animator.AnimatorListener animatorListener, float f, float f2) {
        view.setScaleX(0.0f);
        view.setScaleY(0.0f);
        view.setPivotX(f * view.getWidth());
        view.setPivotY(f2 * view.getHeight());
        view.animate().scaleX(1.0f).scaleY(1.0f).setListener(animatorListener).setDuration(i);
    }

    public static void scaleOut(View view, int i, Animator.AnimatorListener animatorListener) {
        scaleOut(view, i, animatorListener, 0.5f, 0.5f);
    }

    public static void translateAnimationView(View view, float f, float f2, float f3, float f4, Animation.AnimationListener animationListener, int i) {
        TranslateAnimation translateAnimation = new TranslateAnimation(1, f, 1, f2, 1, f3, 1, f4);
        translateAnimation.setAnimationListener(animationListener);
        translateAnimation.setDuration(i);
        view.startAnimation(translateAnimation);
    }

    public static void scaleInButton(View view, Animation.AnimationListener animationListener) {
        ScaleAnimation scaleAnimation = new ScaleAnimation(0.95f, 1.0f, 0.95f, 1.0f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(200L);
        scaleAnimation.setFillAfter(true);
        scaleAnimation.setAnimationListener(animationListener);
        view.startAnimation(scaleAnimation);
    }

    public static void scaleView(View view, float f, float f2, float f3, float f4, int i, Animation.AnimationListener animationListener) {
        if (view == null) {
            return;
        }
        ScaleAnimation scaleAnimation = new ScaleAnimation(f, f3, f2, f4, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(i);
        scaleAnimation.setAnimationListener(animationListener);
        view.startAnimation(scaleAnimation);
    }

    public static void translateView(View view, float f, float f2, float f3, float f4, int i, Animation.AnimationListener animationListener) {
        if (view == null) {
            return;
        }
        TranslateAnimation translateAnimation = new TranslateAnimation(1, f, 1, f3, 1, f2, 1, f4);
        translateAnimation.setAnimationListener(animationListener);
        translateAnimation.setDuration(i);
        view.startAnimation(translateAnimation);
    }
}