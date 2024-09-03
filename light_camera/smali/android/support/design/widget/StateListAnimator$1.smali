.class Landroid/support/design/widget/StateListAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StateListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/StateListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/StateListAnimator;


# direct methods
.method constructor <init>(Landroid/support/design/widget/StateListAnimator;)V
    .registers 2

    .line 34
    iput-object p1, p0, Landroid/support/design/widget/StateListAnimator$1;->this$0:Landroid/support/design/widget/StateListAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 37
    iget-object v0, p0, Landroid/support/design/widget/StateListAnimator$1;->this$0:Landroid/support/design/widget/StateListAnimator;

    iget-object v0, v0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/animation/ValueAnimator;

    if-ne v0, p1, :cond_b

    .line 38
    iget-object p0, p0, Landroid/support/design/widget/StateListAnimator$1;->this$0:Landroid/support/design/widget/StateListAnimator;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/design/widget/StateListAnimator;->mRunningAnimator:Landroid/animation/ValueAnimator;

    :cond_b
    return-void
.end method
