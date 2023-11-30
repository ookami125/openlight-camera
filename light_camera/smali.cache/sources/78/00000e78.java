package openlight.co.lib.overlays;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import openlight.co.lib.R;
import openlight.co.lib.view.cache.FontCache;

/* loaded from: /tmp/jadx-11175800792829446388.dex */
public class GalleryEditorFtuOverlay {
    private ImageView mAnimCircle;
    private final int mBackgroundDrawable;
    private final ViewGroup mContainer;
    private final Context mContext;
    private int mCount;
    private boolean mFirstTime;
    private FtuCompleteListener mFtuCompleteListener;
    private View mFtuEditView;

    /* loaded from: /tmp/jadx-11175800792829446388.dex */
    public interface FtuCompleteListener {
        void ftuEditViewCompleted();
    }

    static /* synthetic */ int access$508(GalleryEditorFtuOverlay galleryEditorFtuOverlay) {
        int i = galleryEditorFtuOverlay.mCount;
        galleryEditorFtuOverlay.mCount = i + 1;
        return i;
    }

    public GalleryEditorFtuOverlay(Context context, ViewGroup viewGroup) {
        this(context, viewGroup, 0);
    }

    public GalleryEditorFtuOverlay(Context context, ViewGroup viewGroup, int i) {
        this.mFirstTime = true;
        this.mCount = 0;
        this.mContext = context;
        this.mContainer = viewGroup;
        this.mBackgroundDrawable = i;
    }

    public void addView() {
        this.mFtuEditView = LayoutInflater.from(this.mContext).inflate(R.layout.ftu_edit_layout, this.mContainer, false);
        this.mContainer.addView(this.mFtuEditView, new RelativeLayout.LayoutParams(-1, -1));
        initChildView();
    }

    private void initChildView() {
        if (this.mBackgroundDrawable != 0) {
            this.mFtuEditView.setBackgroundResource(this.mBackgroundDrawable);
        }
        FontCache fontCache = FontCache.get();
        ((TextView) this.mFtuEditView.findViewById(R.id.tag_text)).setTypeface(fontCache.getHarmoniaSemibold());
        ((TextView) this.mFtuEditView.findViewById(R.id.tag_sub_text)).setTypeface(fontCache.getHarmoniaRegular());
        ((TextView) this.mFtuEditView.findViewById(R.id.button_skip)).setOnClickListener(new View.OnClickListener() { // from class: openlight.co.lib.overlays.-$$Lambda$GalleryEditorFtuOverlay$OVqScmoGpuUdOMkMddCvNYulWy0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GalleryEditorFtuOverlay.lambda$initChildView$0(GalleryEditorFtuOverlay.this, view);
            }
        });
        this.mFtuEditView.setOnClickListener(new View.OnClickListener() { // from class: openlight.co.lib.overlays.-$$Lambda$GalleryEditorFtuOverlay$Xb1Yp2lixJ4YQ4RBLUlimunN4YY
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GalleryEditorFtuOverlay.lambda$initChildView$1(GalleryEditorFtuOverlay.this, view);
            }
        });
        this.mAnimCircle = (ImageView) this.mFtuEditView.findViewById(R.id.anim_circle);
        animationScaleAndDisappear(10L);
        this.mFirstTime = false;
    }

    public static /* synthetic */ void lambda$initChildView$0(GalleryEditorFtuOverlay galleryEditorFtuOverlay, View view) {
        galleryEditorFtuOverlay.close(true);
    }

    public static /* synthetic */ void lambda$initChildView$1(GalleryEditorFtuOverlay galleryEditorFtuOverlay, View view) {
        galleryEditorFtuOverlay.close(true);
    }

    public void setFtuCompleteListener(FtuCompleteListener ftuCompleteListener) {
        this.mFtuCompleteListener = ftuCompleteListener;
    }

    public void close(boolean z) {
        if (this.mContainer != null) {
            if (z && this.mFtuCompleteListener != null) {
                this.mFtuCompleteListener.ftuEditViewCompleted();
            }
            this.mFtuCompleteListener = null;
            this.mContainer.removeView(this.mFtuEditView);
            this.mFtuEditView = null;
        }
    }

    public void animationScaleAndAppear(long j) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mAnimCircle, "alpha", 1.0f);
        ofFloat.setDuration(j);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.mAnimCircle, "scaleX", 1.0f);
        ofFloat2.setDuration(j);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.mAnimCircle, "scaleY", 1.0f);
        ofFloat3.setDuration(j);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3);
        animatorSet.setStartDelay(1000L);
        animatorSet.start();
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: openlight.co.lib.overlays.GalleryEditorFtuOverlay.1
            {
                GalleryEditorFtuOverlay.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                GalleryEditorFtuOverlay.this.translateAnim();
            }
        });
    }

    public void animationScaleAndDisappear(long j) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mAnimCircle, "alpha", 0.0f);
        ofFloat.setDuration(j);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.mAnimCircle, "scaleX", 0.0f);
        ofFloat2.setDuration(j);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.mAnimCircle, "scaleY", 0.0f);
        ofFloat3.setDuration(j);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3);
        animatorSet.start();
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: openlight.co.lib.overlays.GalleryEditorFtuOverlay.2
            {
                GalleryEditorFtuOverlay.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                if (!GalleryEditorFtuOverlay.this.mFirstTime) {
                    GalleryEditorFtuOverlay.this.resetTranslate();
                } else {
                    GalleryEditorFtuOverlay.this.animationScaleAndAppear(300L);
                }
            }
        });
    }

    public void translateAnim() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mAnimCircle, "translationY", -300.0f);
        ofFloat.setDuration(1000L);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.mAnimCircle, "translationY", 300.0f);
        ofFloat2.setDuration(1600L);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ofFloat).before(ofFloat2);
        animatorSet.setStartDelay(200L);
        animatorSet.start();
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: openlight.co.lib.overlays.GalleryEditorFtuOverlay.3
            {
                GalleryEditorFtuOverlay.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                GalleryEditorFtuOverlay.this.animationScaleAndDisappear(300L);
            }
        });
    }

    public void resetTranslate() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.mAnimCircle, "translationY", 0.0f);
        ofFloat.setDuration(10L);
        ofFloat.start();
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: openlight.co.lib.overlays.GalleryEditorFtuOverlay.4
            {
                GalleryEditorFtuOverlay.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (GalleryEditorFtuOverlay.this.mCount < 3) {
                    GalleryEditorFtuOverlay.this.animationScaleAndAppear(300L);
                } else if (GalleryEditorFtuOverlay.this.mCount == 3) {
                    GalleryEditorFtuOverlay.this.close(true);
                }
                GalleryEditorFtuOverlay.access$508(GalleryEditorFtuOverlay.this);
            }
        });
    }
}