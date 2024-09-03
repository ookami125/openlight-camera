.class final Landroid/support/design/widget/StateListAnimator;
.super Ljava/lang/Object;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/StateListAnimator$Tuple;
    }
.end annotation


# instance fields
.field private final mAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

.field mRunningAnimator:Landroid/animation/ValueAnimator;

.field private final mTuples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/design/widget/StateListAnimator$Tuple;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 31
    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/animation/ValueAnimator;

    .line 33
    new-instance v0, Landroid/support/design/widget/StateListAnimator$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/StateListAnimator$1;-><init>(Landroid/support/design/widget/StateListAnimator;)V

    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mAnimationListener:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method private cancel()V
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    .line 90
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/animation/ValueAnimator;

    :cond_c
    return-void
.end method

.method private start(Landroid/support/design/widget/StateListAnimator$Tuple;)V
    .registers 2

    .line 84
    iget-object p1, p1, Landroid/support/design/widget/StateListAnimator$Tuple;->mAnimator:Landroid/animation/ValueAnimator;

    iput-object p1, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/animation/ValueAnimator;

    .line 85
    iget-object p0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public addState([ILandroid/animation/ValueAnimator;)V
    .registers 4

    .line 51
    new-instance v0, Landroid/support/design/widget/StateListAnimator$Tuple;

    invoke-direct {v0, p1, p2}, Landroid/support/design/widget/StateListAnimator$Tuple;-><init>([ILandroid/animation/ValueAnimator;)V

    .line 52
    iget-object p1, p0, Landroid/support/design/widget/StateListAnimator;->mAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 53
    iget-object p0, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public jumpToCurrentState()V
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    .line 102
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/animation/ValueAnimator;

    :cond_c
    return-void
.end method

.method setState([I)V
    .registers 6

    .line 61
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 63
    iget-object v2, p0, Landroid/support/design/widget/StateListAnimator;->mTuples:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/StateListAnimator$Tuple;

    .line 64
    iget-object v3, v2, Landroid/support/design/widget/StateListAnimator$Tuple;->mSpecs:[I

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_1e

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    const/4 v2, 0x0

    .line 69
    :goto_1e
    iget-object p1, p0, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    if-ne v2, p1, :cond_23

    return-void

    .line 72
    :cond_23
    iget-object p1, p0, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    if-eqz p1, :cond_2a

    .line 73
    invoke-direct {p0}, Landroid/support/design/widget/StateListAnimator;->cancel()V

    .line 76
    :cond_2a
    iput-object v2, p0, Landroid/support/design/widget/StateListAnimator;->mLastMatch:Landroid/support/design/widget/StateListAnimator$Tuple;

    if-eqz v2, :cond_31

    .line 79
    invoke-direct {p0, v2}, Landroid/support/design/widget/StateListAnimator;->start(Landroid/support/design/widget/StateListAnimator$Tuple;)V

    :cond_31
    return-void
.end method
