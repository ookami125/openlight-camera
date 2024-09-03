.class public Lopenlight/co/camera/view/alerts/OverlayWarningView;
.super Landroid/widget/RelativeLayout;
.source "OverlayWarningView.java"


# static fields
.field private static final FADEOUT_TRANSITION_TIME:I = 0x1f4

.field private static final WARNING_DISMISS_TIME:I = 0x2710


# instance fields
.field private final mDismissWarningRunnable:Ljava/lang/Runnable;

.field private volatile mFinishActivityOnIgnoredWarning:Z

.field private final mTopMarginDimens:I

.field private final mWarningIcon:Landroid/widget/ImageView;

.field private final mWarningMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/view/alerts/OverlayWarningView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, v0}, Lopenlight/co/camera/view/alerts/OverlayWarningView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance p2, Lopenlight/co/camera/view/alerts/OverlayWarningView$1;

    invoke-direct {p2, p0}, Lopenlight/co/camera/view/alerts/OverlayWarningView$1;-><init>(Lopenlight/co/camera/view/alerts/OverlayWarningView;)V

    iput-object p2, p0, Lopenlight/co/camera/view/alerts/OverlayWarningView;->mDismissWarningRunnable:Ljava/lang/Runnable;

    .line 78
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0b005c

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090193

    .line 80
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lopenlight/co/camera/view/alerts/OverlayWarningView;->mWarningMessage:Landroid/widget/TextView;

    const p3, 0x7f090192

    .line 81
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lopenlight/co/camera/view/alerts/OverlayWarningView;->mWarningIcon:Landroid/widget/ImageView;

    const p2, 0x7f070184

    .line 82
    invoke-static {p1, p2}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lopenlight/co/camera/view/alerts/OverlayWarningView;->mTopMarginDimens:I

    .line 83
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/view/rotate/OrientationsController;->getConfig()Lopenlight/co/camera/enums/OrientationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V

    .line 84
    new-instance p1, Lopenlight/co/camera/view/alerts/-$$Lambda$OverlayWarningView$3QDcjs9uh-fqmU2YSfiYyFSBOCg;

    invoke-direct {p1, p0}, Lopenlight/co/camera/view/alerts/-$$Lambda$OverlayWarningView$3QDcjs9uh-fqmU2YSfiYyFSBOCg;-><init>(Lopenlight/co/camera/view/alerts/OverlayWarningView;)V

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/camera/view/alerts/OverlayWarningView;)Z
    .registers 1

    .line 34
    iget-boolean p0, p0, Lopenlight/co/camera/view/alerts/OverlayWarningView;->mFinishActivityOnIgnoredWarning:Z

    return p0
.end method

.method public static synthetic lambda$new$0(Lopenlight/co/camera/view/alerts/OverlayWarningView;Landroid/view/View;)V
    .registers 2

    .line 85
    iget-object p1, p0, Lopenlight/co/camera/view/alerts/OverlayWarningView;->mDismissWarningRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    .line 86
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->setVisibility(Z)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 197
    iget-object v0, p0, Lopenlight/co/camera/view/alerts/OverlayWarningView;->mDismissWarningRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->setVisibility(Z)V

    return-void
.end method

.method public clearActivityFinish()V
    .registers 2

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lopenlight/co/camera/view/alerts/OverlayWarningView;->mFinishActivityOnIgnoredWarning:Z

    .line 190
    invoke-virtual {p0}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->clear()V

    return-void
.end method

.method public finishActivityOnWarningInactivity(Z)V
    .registers 2

    .line 182
    iput-boolean p1, p0, Lopenlight/co/camera/view/alerts/OverlayWarningView;->mFinishActivityOnIgnoredWarning:Z

    return-void
.end method

.method public onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V
    .registers 6

    .line 96
    invoke-virtual {p0}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_42

    .line 99
    :try_start_6
    invoke-virtual {p0}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 101
    sget-object v1, Lopenlight/co/camera/enums/OrientationConfig;->PORTRAIT:Lopenlight/co/camera/enums/OrientationConfig;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_20

    sget-object v1, Lopenlight/co/camera/enums/OrientationConfig;->PORTRAIT_REVERSE:Lopenlight/co/camera/enums/OrientationConfig;

    if-ne p1, v1, :cond_17

    goto :goto_20

    .line 107
    :cond_17
    iget v1, p0, Lopenlight/co/camera/view/alerts/OverlayWarningView;->mTopMarginDimens:I

    iput v1, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    .line 108
    iput v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 109
    iput v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    goto :goto_26

    .line 103
    :cond_20
    :goto_20
    iput v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topMargin:I

    .line 104
    iput v2, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 105
    iput v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 111
    :goto_26
    iput v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->startToStart:I

    .line 112
    iput v3, v0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->topToTop:I

    .line 114
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    invoke-virtual {p1}, Lopenlight/co/camera/enums/OrientationConfig;->getViewRotationAngle()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->setRotation(F)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_35} :catch_36

    goto :goto_42

    :catch_36
    move-exception p0

    .line 117
    const-class p1, Lopenlight/co/camera/view/alerts/OverlayWarningView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Orientation change exception"

    invoke-static {p1, v0, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_42
    :goto_42
    return-void
.end method

.method public setContent(II)V
    .registers 5

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->finishActivityOnWarningInactivity(Z)V

    if-nez p2, :cond_d

    .line 167
    iget-object p2, p0, Lopenlight/co/camera/view/alerts/OverlayWarningView;->mWarningIcon:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_17

    .line 169
    :cond_d
    iget-object v1, p0, Lopenlight/co/camera/view/alerts/OverlayWarningView;->mWarningIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    iget-object p2, p0, Lopenlight/co/camera/view/alerts/OverlayWarningView;->mWarningIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    :goto_17
    iget-object p0, p0, Lopenlight/co/camera/view/alerts/OverlayWarningView;->mWarningMessage:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setVisibility(Z)V
    .registers 4

    .line 129
    iget-object v0, p0, Lopenlight/co/camera/view/alerts/OverlayWarningView;->mDismissWarningRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_1e

    const/4 p1, 0x0

    .line 131
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->setVisibility(I)V

    .line 132
    iget-object p1, p0, Lopenlight/co/camera/view/alerts/OverlayWarningView;->mDismissWarningRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/view/rotate/OrientationsController;->getConfig()Lopenlight/co/camera/enums/OrientationConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V

    goto :goto_3f

    .line 136
    :cond_1e
    invoke-virtual {p0}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3f

    .line 138
    invoke-virtual {p0}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    .line 139
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lopenlight/co/camera/view/alerts/OverlayWarningView$2;

    invoke-direct {v0, p0}, Lopenlight/co/camera/view/alerts/OverlayWarningView$2;-><init>(Lopenlight/co/camera/view/alerts/OverlayWarningView;)V

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_3f
    :goto_3f
    return-void
.end method
