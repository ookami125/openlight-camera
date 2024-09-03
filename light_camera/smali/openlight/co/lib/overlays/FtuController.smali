.class public Lopenlight/co/lib/overlays/FtuController;
.super Ljava/lang/Object;
.source "FtuController.java"

# interfaces
.implements Lopenlight/co/lib/customviews/FtuScreen$OnButtonClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/lib/overlays/FtuController$OnScreenChangedListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c


# instance fields
.field private final mContainer:Landroid/view/ViewGroup;

.field private mCurrentScreen:I

.field private mDone:Landroid/view/View;

.field private final mFtuDimmer:Landroid/view/View;

.field private mIsShown:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListener:Lopenlight/co/lib/overlays/FtuController$OnScreenChangedListener;

.field private final mScreens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lopenlight/co/lib/customviews/FtuScreen;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreensResId:I

.field private mScreensRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .registers 6
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lopenlight/co/lib/overlays/FtuController;->mScreens:Ljava/util/ArrayList;

    .line 84
    iput-object p1, p0, Lopenlight/co/lib/overlays/FtuController;->mContainer:Landroid/view/ViewGroup;

    .line 85
    iput-object p2, p0, Lopenlight/co/lib/overlays/FtuController;->mFtuDimmer:Landroid/view/View;

    .line 86
    iput p3, p0, Lopenlight/co/lib/overlays/FtuController;->mScreensResId:I

    .line 87
    iput p4, p0, Lopenlight/co/lib/overlays/FtuController;->mCurrentScreen:I

    .line 88
    iget-object p1, p0, Lopenlight/co/lib/overlays/FtuController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/lib/overlays/FtuController;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private animateOff(Landroid/view/View;ILjava/lang/Runnable;)V
    .registers 8
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/high16 v0, 0x3f800000    # 1.0f

    .line 262
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 264
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v1, 0x12c

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v1, Lopenlight/co/lib/overlays/FtuController$2;

    invoke-direct {v1, p0, p1, v0, p3}, Lopenlight/co/lib/overlays/FtuController$2;-><init>(Lopenlight/co/lib/overlays/FtuController;Landroid/view/View;Landroid/view/ViewPropertyAnimator;Ljava/lang/Runnable;)V

    .line 265
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private animateOff(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 252
    invoke-direct {p0, p1, v0, p2}, Lopenlight/co/lib/overlays/FtuController;->animateOff(Landroid/view/View;ILjava/lang/Runnable;)V

    return-void
.end method

.method private done()V
    .registers 2

    .line 291
    iget-object v0, p0, Lopenlight/co/lib/overlays/FtuController;->mListener:Lopenlight/co/lib/overlays/FtuController$OnScreenChangedListener;

    if-eqz v0, :cond_9

    .line 292
    iget-object p0, p0, Lopenlight/co/lib/overlays/FtuController;->mListener:Lopenlight/co/lib/overlays/FtuController$OnScreenChangedListener;

    invoke-interface {p0}, Lopenlight/co/lib/overlays/FtuController$OnScreenChangedListener;->done()V

    :cond_9
    return-void
.end method

.method public static synthetic lambda$show$0(Lopenlight/co/lib/overlays/FtuController;Landroid/view/ViewGroup;)V
    .registers 3

    .line 128
    iget-object v0, p0, Lopenlight/co/lib/overlays/FtuController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lopenlight/co/lib/overlays/FtuController;->mScreensRoot:Landroid/view/ViewGroup;

    if-ne v0, p1, :cond_c

    const/4 p1, 0x0

    .line 131
    iput-object p1, p0, Lopenlight/co/lib/overlays/FtuController;->mScreensRoot:Landroid/view/ViewGroup;

    :cond_c
    return-void
.end method

.method private navigateBy(I)V
    .registers 3

    .line 301
    iget v0, p0, Lopenlight/co/lib/overlays/FtuController;->mCurrentScreen:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lopenlight/co/lib/overlays/FtuController;->setCurrentScreen(I)V

    return-void
.end method

.method private screenAt(I)Lopenlight/co/lib/customviews/FtuScreen;
    .registers 2

    .line 318
    iget-object p0, p0, Lopenlight/co/lib/overlays/FtuController;->mScreens:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/lib/customviews/FtuScreen;

    return-object p0
.end method

.method private showScreen(Landroid/view/View;)V
    .registers 2

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method private transitionView(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 7
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_2d

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 217
    invoke-direct {p0, p2}, Lopenlight/co/lib/overlays/FtuController;->showScreen(Landroid/view/View;)V

    if-eqz p1, :cond_14

    const/16 v0, 0x12c

    .line 220
    invoke-direct {p0, p1, v0, p3}, Lopenlight/co/lib/overlays/FtuController;->animateOff(Landroid/view/View;ILjava/lang/Runnable;)V

    .line 222
    :cond_14
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 223
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lopenlight/co/lib/overlays/FtuController$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lopenlight/co/lib/overlays/FtuController$1;-><init>(Lopenlight/co/lib/overlays/FtuController;Landroid/view/ViewPropertyAnimator;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_32

    :cond_2d
    if-eqz p1, :cond_32

    .line 242
    invoke-direct {p0, p1, p3}, Lopenlight/co/lib/overlays/FtuController;->animateOff(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_32
    :goto_32
    return-void
.end method


# virtual methods
.method public getCurrentScreen()I
    .registers 1

    .line 147
    iget p0, p0, Lopenlight/co/lib/overlays/FtuController;->mCurrentScreen:I

    return p0
.end method

.method public onButtonClicked(I)V
    .registers 2

    if-nez p1, :cond_4

    const/4 p1, -0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x1

    .line 188
    :goto_5
    invoke-direct {p0, p1}, Lopenlight/co/lib/overlays/FtuController;->navigateBy(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 193
    iget-object v0, p0, Lopenlight/co/lib/overlays/FtuController;->mDone:Landroid/view/View;

    if-ne p1, v0, :cond_d

    iget-object p1, p0, Lopenlight/co/lib/overlays/FtuController;->mListener:Lopenlight/co/lib/overlays/FtuController$OnScreenChangedListener;

    if-eqz p1, :cond_d

    .line 194
    iget-object p0, p0, Lopenlight/co/lib/overlays/FtuController;->mListener:Lopenlight/co/lib/overlays/FtuController$OnScreenChangedListener;

    invoke-interface {p0}, Lopenlight/co/lib/overlays/FtuController$OnScreenChangedListener;->done()V

    :cond_d
    return-void
.end method

.method public onRotate()V
    .registers 2

    .line 199
    iget-boolean v0, p0, Lopenlight/co/lib/overlays/FtuController;->mIsShown:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0, v0}, Lopenlight/co/lib/overlays/FtuController;->show(Z)V

    const/4 v0, 0x1

    .line 201
    invoke-virtual {p0, v0}, Lopenlight/co/lib/overlays/FtuController;->show(Z)V

    :cond_c
    return-void
.end method

.method public setCurrentScreen(I)V
    .registers 5

    if-gez p1, :cond_3

    return-void

    .line 160
    :cond_3
    iget-object v0, p0, Lopenlight/co/lib/overlays/FtuController;->mScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_f

    .line 161
    invoke-direct {p0}, Lopenlight/co/lib/overlays/FtuController;->done()V

    return-void

    .line 166
    :cond_f
    iget-object v0, p0, Lopenlight/co/lib/overlays/FtuController;->mListener:Lopenlight/co/lib/overlays/FtuController$OnScreenChangedListener;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lopenlight/co/lib/overlays/FtuController;->mListener:Lopenlight/co/lib/overlays/FtuController$OnScreenChangedListener;

    iget v1, p0, Lopenlight/co/lib/overlays/FtuController;->mCurrentScreen:I

    .line 167
    invoke-interface {v0, v1, p1}, Lopenlight/co/lib/overlays/FtuController$OnScreenChangedListener;->aboutToShowScreen(II)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v0, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v0, 0x1

    :goto_21
    if-eqz v0, :cond_33

    .line 169
    iget v0, p0, Lopenlight/co/lib/overlays/FtuController;->mCurrentScreen:I

    invoke-direct {p0, v0}, Lopenlight/co/lib/overlays/FtuController;->screenAt(I)Lopenlight/co/lib/customviews/FtuScreen;

    move-result-object v0

    invoke-direct {p0, p1}, Lopenlight/co/lib/overlays/FtuController;->screenAt(I)Lopenlight/co/lib/customviews/FtuScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lopenlight/co/lib/overlays/FtuController;->transitionView(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 170
    iput p1, p0, Lopenlight/co/lib/overlays/FtuController;->mCurrentScreen:I

    :cond_33
    return-void
.end method

.method public setOnScreenChangedListener(Lopenlight/co/lib/overlays/FtuController$OnScreenChangedListener;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lopenlight/co/lib/overlays/FtuController;->mListener:Lopenlight/co/lib/overlays/FtuController$OnScreenChangedListener;

    return-void
.end method

.method public show(Z)V
    .registers 7

    .line 96
    iget-boolean v0, p0, Lopenlight/co/lib/overlays/FtuController;->mIsShown:Z

    if-eq p1, v0, :cond_a1

    .line 97
    iput-boolean p1, p0, Lopenlight/co/lib/overlays/FtuController;->mIsShown:Z

    if-eqz p1, :cond_82

    .line 99
    iget-object p1, p0, Lopenlight/co/lib/overlays/FtuController;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v0, p0, Lopenlight/co/lib/overlays/FtuController;->mScreensResId:I

    iget-object v1, p0, Lopenlight/co/lib/overlays/FtuController;->mContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lopenlight/co/lib/overlays/FtuController;->mScreensRoot:Landroid/view/ViewGroup;

    .line 100
    iget-object p1, p0, Lopenlight/co/lib/overlays/FtuController;->mScreensRoot:Landroid/view/ViewGroup;

    sget v0, Lopenlight/co/lib/R$id;->screensContainer:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 101
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 102
    iget v1, p0, Lopenlight/co/lib/overlays/FtuController;->mCurrentScreen:I

    if-lt v1, v0, :cond_2d

    add-int/lit8 v1, v0, -0x1

    .line 103
    iput v1, p0, Lopenlight/co/lib/overlays/FtuController;->mCurrentScreen:I

    .line 105
    :cond_2d
    iget-object v1, p0, Lopenlight/co/lib/overlays/FtuController;->mScreens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    :goto_33
    if-ge v1, v0, :cond_59

    .line 107
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 108
    check-cast v3, Lopenlight/co/lib/customviews/FtuScreen;

    .line 109
    iget-object v4, p0, Lopenlight/co/lib/overlays/FtuController;->mScreens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget v4, p0, Lopenlight/co/lib/overlays/FtuController;->mCurrentScreen:I

    if-ne v1, v4, :cond_46

    move v4, v2

    goto :goto_48

    :cond_46
    const/16 v4, 0x8

    :goto_48
    invoke-virtual {v3, v4}, Lopenlight/co/lib/customviews/FtuScreen;->setVisibility(I)V

    .line 112
    invoke-virtual {v3, p0}, Lopenlight/co/lib/customviews/FtuScreen;->setOnButtonClickListener(Lopenlight/co/lib/customviews/FtuScreen$OnButtonClickListener;)V

    if-lez v1, :cond_52

    const/4 v4, 0x1

    goto :goto_53

    :cond_52
    move v4, v2

    .line 114
    :goto_53
    invoke-virtual {v3, v2, v4}, Lopenlight/co/lib/customviews/FtuScreen;->setButtonVisibility(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 116
    :cond_59
    iget p1, p0, Lopenlight/co/lib/overlays/FtuController;->mCurrentScreen:I

    invoke-direct {p0, p1}, Lopenlight/co/lib/overlays/FtuController;->screenAt(I)Lopenlight/co/lib/customviews/FtuScreen;

    move-result-object p1

    invoke-direct {p0, p1}, Lopenlight/co/lib/overlays/FtuController;->showScreen(Landroid/view/View;)V

    .line 117
    iget-object p1, p0, Lopenlight/co/lib/overlays/FtuController;->mScreensRoot:Landroid/view/ViewGroup;

    sget v0, Lopenlight/co/lib/R$id;->done:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/lib/overlays/FtuController;->mDone:Landroid/view/View;

    .line 118
    iget-object p1, p0, Lopenlight/co/lib/overlays/FtuController;->mDone:Landroid/view/View;

    if-eqz p1, :cond_75

    .line 119
    iget-object p1, p0, Lopenlight/co/lib/overlays/FtuController;->mDone:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    :cond_75
    iget-object p1, p0, Lopenlight/co/lib/overlays/FtuController;->mContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lopenlight/co/lib/overlays/FtuController;->mScreensRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    iget-object p0, p0, Lopenlight/co/lib/overlays/FtuController;->mFtuDimmer:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a1

    .line 126
    :cond_82
    iget-object p1, p0, Lopenlight/co/lib/overlays/FtuController;->mScreensRoot:Landroid/view/ViewGroup;

    .line 127
    iget v0, p0, Lopenlight/co/lib/overlays/FtuController;->mCurrentScreen:I

    invoke-direct {p0, v0}, Lopenlight/co/lib/overlays/FtuController;->screenAt(I)Lopenlight/co/lib/customviews/FtuScreen;

    move-result-object v0

    new-instance v1, Lopenlight/co/lib/overlays/-$$Lambda$FtuController$XlUTUBT-bdQ6UMoZGAkXugHPRZk;

    invoke-direct {v1, p0, p1}, Lopenlight/co/lib/overlays/-$$Lambda$FtuController$XlUTUBT-bdQ6UMoZGAkXugHPRZk;-><init>(Lopenlight/co/lib/overlays/FtuController;Landroid/view/ViewGroup;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lopenlight/co/lib/overlays/FtuController;->transitionView(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 134
    iget-object v0, p0, Lopenlight/co/lib/overlays/FtuController;->mFtuDimmer:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lopenlight/co/lib/overlays/FtuController;->animateOff(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 135
    iget-object v0, p0, Lopenlight/co/lib/overlays/FtuController;->mDone:Landroid/view/View;

    if-eqz v0, :cond_a1

    .line 136
    iget-object v0, p0, Lopenlight/co/lib/overlays/FtuController;->mDone:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lopenlight/co/lib/overlays/FtuController;->animateOff(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_a1
    :goto_a1
    return-void
.end method
