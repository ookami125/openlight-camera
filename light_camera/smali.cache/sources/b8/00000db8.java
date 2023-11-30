package openlight.co.camera.view.ftu;

import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.AnticipateInterpolator;
import openlight.co.lib.utils.LogUtil;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class FtuAnimationUtils {
    private static final long ALPHA_ANIMATION_DURATION = 300;
    private static final float ALPHA_OPAQUE = 1.0f;
    private static final float ALPHA_TRANSPARENT = 0.0f;
    private static final long ANIMATION_START_DELAY = 1000;
    private static final int FLICK_DISTANCE = 200;
    private static final String TAG = "FtuAnimationUtils";
    private static final int TRANSLATE_ANIMATION_DURATION = 500;
    private static final int TRANSLATE_DISTANCE = 200;
    private static boolean sAnimPlaying;

    public static void setOnAnimationPlaying(boolean z) {
        sAnimPlaying = z;
    }

    public static void translateUpAndDownAnimation(View view, boolean z) {
        sAnimPlaying = z;
        String str = TAG;
        LogUtil.d(str, "FTU Animation Now playing: " + sAnimPlaying);
        translateDown(view);
    }

    public static void flickToPrimeAnimation(View view, boolean z) {
        sAnimPlaying = z;
        setToStartPosition(view);
    }

    public static void fadeIn(View view, Runnable runnable, long j) {
        view.animate().setDuration(j).alpha(1.0f).withEndAction(runnable).start();
    }

    public static void fadeOut(View view, Runnable runnable, long j) {
        view.animate().setDuration(j).alpha(0.0f).withEndAction(runnable).start();
    }

    private static void translateDown(final View view) {
        view.animate().setDuration(500L).translationY(200.0f).withEndAction(new Runnable() { // from class: openlight.co.camera.view.ftu.-$$Lambda$FtuAnimationUtils$rEDgJVtKet-z2f1FiKvkKbHLXXA
            @Override // java.lang.Runnable
            public final void run() {
                FtuAnimationUtils.lambda$translateDown$0(view);
            }
        }).start();
    }

    public static /* synthetic */ void lambda$translateDown$0(View view) {
        translateUp(view);
    }

    public static void translateUp(final View view) {
        view.animate().setDuration(500L).translationY(-200.0f).withEndAction(new Runnable() { // from class: openlight.co.camera.view.ftu.-$$Lambda$FtuAnimationUtils$Q2U0RHTcQMeVZmtG8FOJsZdLgac
            @Override // java.lang.Runnable
            public final void run() {
                FtuAnimationUtils.lambda$translateUp$1(view);
            }
        }).start();
    }

    public static /* synthetic */ void lambda$translateUp$1(View view) {
        translateDownAndDisappear(view);
    }

    public static void translateDownAndDisappear(final View view) {
        final ViewPropertyAnimator animate = view.animate();
        animate.setDuration(500L).translationY(0.0f).withEndAction(new Runnable() { // from class: openlight.co.camera.view.ftu.-$$Lambda$FtuAnimationUtils$5-PGPkZD2c9xz_e8iC9PkBPJK9c
            @Override // java.lang.Runnable
            public final void run() {
                FtuAnimationUtils.lambda$translateDownAndDisappear$3(animate, view);
            }
        }).start();
    }

    public static /* synthetic */ void lambda$translateDownAndDisappear$3(ViewPropertyAnimator viewPropertyAnimator, final View view) {
        viewPropertyAnimator.setDuration(ALPHA_ANIMATION_DURATION).alpha(0.0f).withEndAction(new Runnable() { // from class: openlight.co.camera.view.ftu.-$$Lambda$FtuAnimationUtils$D-1F3kErreKzOyENsMoLVLA2j2Y
            @Override // java.lang.Runnable
            public final void run() {
                FtuAnimationUtils.lambda$null$2(view);
            }
        }).start();
    }

    public static /* synthetic */ void lambda$null$2(View view) {
        appearAgain(view);
    }

    public static void appearAgain(final View view) {
        view.animate().setDuration(1300L).alpha(1.0f).withEndAction(new Runnable() { // from class: openlight.co.camera.view.ftu.-$$Lambda$FtuAnimationUtils$wof7s8sUJvBqr6WhAQImP_Bn5Oo
            @Override // java.lang.Runnable
            public final void run() {
                FtuAnimationUtils.lambda$appearAgain$4(view);
            }
        }).start();
    }

    public static /* synthetic */ void lambda$appearAgain$4(View view) {
        if (sAnimPlaying) {
            translateDown(view);
        }
    }

    private static void setToStartPosition(final View view) {
        final ViewPropertyAnimator animate = view.animate();
        animate.translationY(200.0f).setDuration(10L).withStartAction(new Runnable() { // from class: openlight.co.camera.view.ftu.-$$Lambda$FtuAnimationUtils$ZHpO1bcKevjhZLQ3h_puhfWI2zE
            @Override // java.lang.Runnable
            public final void run() {
                FtuAnimationUtils.lambda$setToStartPosition$5(animate);
            }
        }).withEndAction(new Runnable() { // from class: openlight.co.camera.view.ftu.-$$Lambda$FtuAnimationUtils$KLwjzpph8EtUlz4On9s3vWxnasY
            @Override // java.lang.Runnable
            public final void run() {
                FtuAnimationUtils.lambda$setToStartPosition$6(view);
            }
        }).start();
    }

    public static /* synthetic */ void lambda$setToStartPosition$5(ViewPropertyAnimator viewPropertyAnimator) {
        viewPropertyAnimator.setDuration(10L).alpha(0.0f).start();
    }

    public static /* synthetic */ void lambda$setToStartPosition$6(View view) {
        view.setVisibility(0);
        flickUpAnimation(view);
    }

    private static void flickUpAnimation(final View view) {
        final ViewPropertyAnimator animate = view.animate();
        animate.setStartDelay(1000L).setDuration(ALPHA_ANIMATION_DURATION).alpha(1.0f).withEndAction(new Runnable() { // from class: openlight.co.camera.view.ftu.-$$Lambda$FtuAnimationUtils$LiKZ-OoQYfyRfpGnw7EGR7mpZX8
            @Override // java.lang.Runnable
            public final void run() {
                FtuAnimationUtils.lambda$flickUpAnimation$9(animate, view);
            }
        }).start();
    }

    public static /* synthetic */ void lambda$flickUpAnimation$9(final ViewPropertyAnimator viewPropertyAnimator, final View view) {
        viewPropertyAnimator.setDuration(500L).translationY(-200.0f).setInterpolator(new AnticipateInterpolator()).withEndAction(new Runnable() { // from class: openlight.co.camera.view.ftu.-$$Lambda$FtuAnimationUtils$soJ7vSdMyeAE2FJyrhsIw7ngU7s
            @Override // java.lang.Runnable
            public final void run() {
                FtuAnimationUtils.lambda$null$8(viewPropertyAnimator, view);
            }
        }).start();
    }

    public static /* synthetic */ void lambda$null$8(ViewPropertyAnimator viewPropertyAnimator, final View view) {
        viewPropertyAnimator.setDuration(ALPHA_ANIMATION_DURATION).alpha(0.0f).withEndAction(new Runnable() { // from class: openlight.co.camera.view.ftu.-$$Lambda$FtuAnimationUtils$02cOIfvujnrIucgOZiE1wK1Bza4
            @Override // java.lang.Runnable
            public final void run() {
                FtuAnimationUtils.lambda$null$7(view);
            }
        }).start();
    }

    public static /* synthetic */ void lambda$null$7(View view) {
        flickDownAnimation(view);
    }

    public static void flickDownAnimation(final View view) {
        final ViewPropertyAnimator animate = view.animate();
        animate.setStartDelay(1000L).setDuration(ALPHA_ANIMATION_DURATION).alpha(1.0f).withEndAction(new Runnable() { // from class: openlight.co.camera.view.ftu.-$$Lambda$FtuAnimationUtils$5APKDBU27YMuT4uWCJaR4x-ym1g
            @Override // java.lang.Runnable
            public final void run() {
                FtuAnimationUtils.lambda$flickDownAnimation$12(animate, view);
            }
        }).start();
    }

    public static /* synthetic */ void lambda$flickDownAnimation$12(final ViewPropertyAnimator viewPropertyAnimator, final View view) {
        viewPropertyAnimator.setDuration(500L).translationY(200.0f).setInterpolator(new AnticipateInterpolator()).withEndAction(new Runnable() { // from class: openlight.co.camera.view.ftu.-$$Lambda$FtuAnimationUtils$9T9VOjXhoQ9wq18SKY9P501ENV0
            @Override // java.lang.Runnable
            public final void run() {
                FtuAnimationUtils.lambda$null$11(viewPropertyAnimator, view);
            }
        }).start();
    }

    public static /* synthetic */ void lambda$null$11(ViewPropertyAnimator viewPropertyAnimator, final View view) {
        viewPropertyAnimator.setDuration(ALPHA_ANIMATION_DURATION).alpha(0.0f).withEndAction(new Runnable() { // from class: openlight.co.camera.view.ftu.-$$Lambda$FtuAnimationUtils$LJHZ8xUcOsNHAxvF8Fw1soNjphM
            @Override // java.lang.Runnable
            public final void run() {
                FtuAnimationUtils.lambda$null$10(view);
            }
        }).start();
    }

    public static /* synthetic */ void lambda$null$10(View view) {
        if (sAnimPlaying) {
            flickUpAnimation(view);
        }
    }
}