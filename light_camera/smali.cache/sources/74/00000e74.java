package openlight.co.lib.overlays;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import openlight.co.lib.R;
import openlight.co.lib.customviews.FtuScreen;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class FtuController implements FtuScreen.OnButtonClickListener, View.OnClickListener {
    private static final int ANIMATION_DURATION = 300;
    private final ViewGroup mContainer;
    private int mCurrentScreen;
    private View mDone;
    private final View mFtuDimmer;
    private boolean mIsShown;
    private final LayoutInflater mLayoutInflater;
    private OnScreenChangedListener mListener;
    private final ArrayList<FtuScreen> mScreens = new ArrayList<>();
    private final int mScreensResId;
    private ViewGroup mScreensRoot;

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public interface OnScreenChangedListener {
        boolean aboutToShowScreen(int i, int i2);

        void done();
    }

    public FtuController(@NonNull ViewGroup viewGroup, View view, int i, int i2) {
        this.mContainer = viewGroup;
        this.mFtuDimmer = view;
        this.mScreensResId = i;
        this.mCurrentScreen = i2;
        this.mLayoutInflater = LayoutInflater.from(this.mContainer.getContext());
    }

    public void show(boolean z) {
        if (z != this.mIsShown) {
            this.mIsShown = z;
            if (z) {
                this.mScreensRoot = (ViewGroup) this.mLayoutInflater.inflate(this.mScreensResId, this.mContainer, false);
                ViewGroup viewGroup = (ViewGroup) this.mScreensRoot.findViewById(R.id.screensContainer);
                int childCount = viewGroup.getChildCount();
                if (this.mCurrentScreen >= childCount) {
                    this.mCurrentScreen = childCount - 1;
                }
                this.mScreens.clear();
                int i = 0;
                while (i < childCount) {
                    FtuScreen ftuScreen = (FtuScreen) viewGroup.getChildAt(i);
                    this.mScreens.add(ftuScreen);
                    ftuScreen.setVisibility(i == this.mCurrentScreen ? 0 : 8);
                    ftuScreen.setOnButtonClickListener(this);
                    ftuScreen.setButtonVisibility(0, i > 0);
                    i++;
                }
                showScreen(screenAt(this.mCurrentScreen));
                this.mDone = this.mScreensRoot.findViewById(R.id.done);
                if (this.mDone != null) {
                    this.mDone.setOnClickListener(this);
                }
                this.mContainer.addView(this.mScreensRoot);
                this.mFtuDimmer.setVisibility(0);
                return;
            }
            final ViewGroup viewGroup2 = this.mScreensRoot;
            transitionView(screenAt(this.mCurrentScreen), null, new Runnable() { // from class: openlight.co.lib.overlays.-$$Lambda$FtuController$XlUTUBT-bdQ6UMoZGAkXugHPRZk
                @Override // java.lang.Runnable
                public final void run() {
                    FtuController.lambda$show$0(FtuController.this, viewGroup2);
                }
            });
            animateOff(this.mFtuDimmer, null);
            if (this.mDone != null) {
                animateOff(this.mDone, null);
            }
        }
    }

    public static /* synthetic */ void lambda$show$0(FtuController ftuController, ViewGroup viewGroup) {
        ftuController.mContainer.removeView(viewGroup);
        if (ftuController.mScreensRoot == viewGroup) {
            ftuController.mScreensRoot = null;
        }
    }

    public int getCurrentScreen() {
        return this.mCurrentScreen;
    }

    public void setCurrentScreen(int i) {
        if (i < 0) {
            return;
        }
        if (i >= this.mScreens.size()) {
            done();
            return;
        }
        if (this.mListener == null || this.mListener.aboutToShowScreen(this.mCurrentScreen, i)) {
            transitionView(screenAt(this.mCurrentScreen), screenAt(i), null);
            this.mCurrentScreen = i;
        }
    }

    public void setOnScreenChangedListener(OnScreenChangedListener onScreenChangedListener) {
        this.mListener = onScreenChangedListener;
    }

    @Override // openlight.co.lib.customviews.FtuScreen.OnButtonClickListener
    public void onButtonClicked(int i) {
        navigateBy(i == 0 ? -1 : 1);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view != this.mDone || this.mListener == null) {
            return;
        }
        this.mListener.done();
    }

    public void onRotate() {
        if (this.mIsShown) {
            show(false);
            show(true);
        }
    }

    private void transitionView(@Nullable final View view, @Nullable View view2, final Runnable runnable) {
        if (view2 == null) {
            if (view != null) {
                animateOff(view, runnable);
                return;
            }
            return;
        }
        view2.setAlpha(0.0f);
        view2.setVisibility(0);
        showScreen(view2);
        if (view != null) {
            animateOff(view, ANIMATION_DURATION, runnable);
        }
        final ViewPropertyAnimator animate = view2.animate();
        animate.alpha(1.0f).setDuration(300L).setListener(new AnimatorListenerAdapter() { // from class: openlight.co.lib.overlays.FtuController.1
            {
                FtuController.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animate.setListener(null);
                if (view != null || runnable == null) {
                    return;
                }
                runnable.run();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                animate.setListener(null);
            }
        });
    }

    private void animateOff(@NonNull View view, @Nullable Runnable runnable) {
        animateOff(view, 0, runnable);
    }

    private void animateOff(@NonNull final View view, int i, @Nullable final Runnable runnable) {
        view.setAlpha(1.0f);
        final ViewPropertyAnimator animate = view.animate();
        animate.alpha(0.0f).setStartDelay(i).setDuration(300L).setListener(new AnimatorListenerAdapter() { // from class: openlight.co.lib.overlays.FtuController.2
            {
                FtuController.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view.setVisibility(8);
                view.setAlpha(1.0f);
                animate.setListener(null);
                if (runnable != null) {
                    runnable.run();
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                animate.setListener(null);
            }
        });
    }

    private void done() {
        if (this.mListener != null) {
            this.mListener.done();
        }
    }

    private void navigateBy(int i) {
        setCurrentScreen(this.mCurrentScreen + i);
    }

    private void showScreen(View view) {
        view.getParent().bringChildToFront(view);
    }

    private FtuScreen screenAt(int i) {
        return this.mScreens.get(i);
    }
}