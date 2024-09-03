.class public Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;
.super Ljava/lang/Object;
.source "GalleryEditorFtuOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$FtuCompleteListener;
    }
.end annotation


# instance fields
.field private mAnimCircle:Landroid/widget/ImageView;

.field private final mBackgroundDrawable:I

.field private final mContainer:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mFirstTime:Z

.field private mFtuCompleteListener:Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$FtuCompleteListener;

.field private mFtuEditView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 4

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mFirstTime:Z

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mCount:I

    .line 41
    iput-object p1, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mContainer:Landroid/view/ViewGroup;

    .line 43
    iput p3, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mBackgroundDrawable:I

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;)V
    .registers 1

    .line 19
    invoke-direct {p0}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->translateAnim()V

    return-void
.end method

.method static synthetic access$100(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;)Z
    .registers 1

    .line 19
    iget-boolean p0, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mFirstTime:Z

    return p0
.end method

.method static synthetic access$200(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;)V
    .registers 1

    .line 19
    invoke-direct {p0}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->resetTranslate()V

    return-void
.end method

.method static synthetic access$300(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;J)V
    .registers 3

    .line 19
    invoke-direct {p0, p1, p2}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->animationScaleAndAppear(J)V

    return-void
.end method

.method static synthetic access$400(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;J)V
    .registers 3

    .line 19
    invoke-direct {p0, p1, p2}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->animationScaleAndDisappear(J)V

    return-void
.end method

.method static synthetic access$500(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;)I
    .registers 1

    .line 19
    iget p0, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mCount:I

    return p0
.end method

.method static synthetic access$508(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;)I
    .registers 3

    .line 19
    iget v0, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mCount:I

    return v0
.end method

.method private animationScaleAndAppear(J)V
    .registers 11

    .line 91
    iget-object v0, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mAnimCircle:Landroid/widget/ImageView;

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 93
    iget-object v1, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mAnimCircle:Landroid/widget/ImageView;

    const-string v3, "scaleX"

    new-array v6, v2, [F

    aput v4, v6, v5

    invoke-static {v1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 94
    invoke-virtual {v1, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 95
    iget-object v3, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mAnimCircle:Landroid/widget/ImageView;

    const-string v6, "scaleY"

    new-array v7, v2, [F

    aput v4, v7, v5

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 96
    invoke-virtual {v3, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 97
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p2, 0x3

    .line 98
    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v0, p2, v5

    aput-object v1, p2, v2

    const/4 v0, 0x2

    aput-object v3, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x3e8

    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 100
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 101
    new-instance p2, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$1;

    invoke-direct {p2, p0}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$1;-><init>(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private animationScaleAndDisappear(J)V
    .registers 11

    .line 110
    iget-object v0, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mAnimCircle:Landroid/widget/ImageView;

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 112
    iget-object v1, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mAnimCircle:Landroid/widget/ImageView;

    const-string v3, "scaleX"

    new-array v6, v2, [F

    aput v4, v6, v5

    invoke-static {v1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 113
    invoke-virtual {v1, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 114
    iget-object v3, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mAnimCircle:Landroid/widget/ImageView;

    const-string v6, "scaleY"

    new-array v7, v2, [F

    aput v4, v7, v5

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 115
    invoke-virtual {v3, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 116
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p2, 0x3

    .line 117
    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v0, p2, v5

    aput-object v1, p2, v2

    const/4 v0, 0x2

    aput-object v3, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 118
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 119
    new-instance p2, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$2;

    invoke-direct {p2, p0}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$2;-><init>(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private initChildView()V
    .registers 4

    .line 57
    iget v0, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mBackgroundDrawable:I

    if-eqz v0, :cond_b

    .line 58
    iget-object v0, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mFtuEditView:Landroid/view/View;

    iget v1, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mBackgroundDrawable:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 60
    :cond_b
    invoke-static {}, Lopenlight/co/lib/view/cache/FontCache;->get()Lopenlight/co/lib/view/cache/FontCache;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mFtuEditView:Landroid/view/View;

    sget v2, Lopenlight/co/lib/R$id;->tag_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 62
    invoke-virtual {v0}, Lopenlight/co/lib/view/cache/FontCache;->getHarmoniaSemibold()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 63
    iget-object v1, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mFtuEditView:Landroid/view/View;

    sget v2, Lopenlight/co/lib/R$id;->tag_sub_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 64
    invoke-virtual {v0}, Lopenlight/co/lib/view/cache/FontCache;->getHarmoniaRegular()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 65
    iget-object v0, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mFtuEditView:Landroid/view/View;

    sget v1, Lopenlight/co/lib/R$id;->button_skip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    new-instance v1, Lopenlight/co/lib/overlays/-$$Lambda$GalleryEditorFtuOverlay$OVqScmoGpuUdOMkMddCvNYulWy0;

    invoke-direct {v1, p0}, Lopenlight/co/lib/overlays/-$$Lambda$GalleryEditorFtuOverlay$OVqScmoGpuUdOMkMddCvNYulWy0;-><init>(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mFtuEditView:Landroid/view/View;

    new-instance v1, Lopenlight/co/lib/overlays/-$$Lambda$GalleryEditorFtuOverlay$Xb1Yp2lixJ4YQ4RBLUlimunN4YY;

    invoke-direct {v1, p0}, Lopenlight/co/lib/overlays/-$$Lambda$GalleryEditorFtuOverlay$Xb1Yp2lixJ4YQ4RBLUlimunN4YY;-><init>(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mFtuEditView:Landroid/view/View;

    sget v1, Lopenlight/co/lib/R$id;->anim_circle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mAnimCircle:Landroid/widget/ImageView;

    const-wide/16 v0, 0xa

    .line 69
    invoke-direct {p0, v0, v1}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->animationScaleAndDisappear(J)V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mFirstTime:Z

    return-void
.end method

.method public static synthetic lambda$initChildView$0(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->close(Z)V

    return-void
.end method

.method public static synthetic lambda$initChildView$1(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x1

    .line 67
    invoke-virtual {p0, p1}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->close(Z)V

    return-void
.end method

.method private resetTranslate()V
    .registers 6

    .line 162
    iget-object v0, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mAnimCircle:Landroid/widget/ImageView;

    const-string v1, "translationY"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xa

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 164
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 165
    new-instance v1, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$4;

    invoke-direct {v1, p0}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$4;-><init>(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private translateAnim()V
    .registers 8

    .line 139
    iget-object v0, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mAnimCircle:Landroid/widget/ImageView;

    const-string v1, "translationY"

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/high16 v5, -0x3c6a0000    # -300.0f

    aput v5, v3, v4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0x3e8

    .line 140
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 141
    iget-object v1, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mAnimCircle:Landroid/widget/ImageView;

    const-string v3, "translationY"

    new-array v2, v2, [F

    const/high16 v5, 0x43960000    # 300.0f

    aput v5, v2, v4

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x640

    .line 142
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 143
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 144
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v0, 0xc8

    .line 145
    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 146
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 147
    new-instance v0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$3;

    invoke-direct {v0, p0}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$3;-><init>(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public addView()V
    .registers 5

    .line 47
    iget-object v0, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 48
    sget v1, Lopenlight/co/lib/R$layout;->ftu_edit_layout:I

    iget-object v2, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mContainer:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mFtuEditView:Landroid/view/View;

    .line 49
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52
    iget-object v1, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mFtuEditView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-direct {p0}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->initChildView()V

    return-void
.end method

.method public close(Z)V
    .registers 4

    .line 80
    iget-object v0, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1b

    if-eqz p1, :cond_f

    .line 81
    iget-object p1, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mFtuCompleteListener:Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$FtuCompleteListener;

    if-eqz p1, :cond_f

    .line 82
    iget-object p1, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mFtuCompleteListener:Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$FtuCompleteListener;

    invoke-interface {p1}, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$FtuCompleteListener;->ftuEditViewCompleted()V

    :cond_f
    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mFtuCompleteListener:Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$FtuCompleteListener;

    .line 85
    iget-object v0, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mFtuEditView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 86
    iput-object p1, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mFtuEditView:Landroid/view/View;

    :cond_1b
    return-void
.end method

.method public setFtuCompleteListener(Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$FtuCompleteListener;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay;->mFtuCompleteListener:Lopenlight/co/lib/overlays/GalleryEditorFtuOverlay$FtuCompleteListener;

    return-void
.end method
