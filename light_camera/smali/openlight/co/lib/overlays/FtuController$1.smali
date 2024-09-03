.class Lopenlight/co/lib/overlays/FtuController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FtuController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/lib/overlays/FtuController;->transitionView(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/lib/overlays/FtuController;

.field final synthetic val$anim:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$from:Landroid/view/View;

.field final synthetic val$runAfter:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lopenlight/co/lib/overlays/FtuController;Landroid/view/ViewPropertyAnimator;Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 5

    .line 223
    iput-object p1, p0, Lopenlight/co/lib/overlays/FtuController$1;->this$0:Lopenlight/co/lib/overlays/FtuController;

    iput-object p2, p0, Lopenlight/co/lib/overlays/FtuController$1;->val$anim:Landroid/view/ViewPropertyAnimator;

    iput-object p3, p0, Lopenlight/co/lib/overlays/FtuController$1;->val$from:Landroid/view/View;

    iput-object p4, p0, Lopenlight/co/lib/overlays/FtuController$1;->val$runAfter:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 238
    iget-object p0, p0, Lopenlight/co/lib/overlays/FtuController$1;->val$anim:Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 226
    iget-object p1, p0, Lopenlight/co/lib/overlays/FtuController$1;->val$anim:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 228
    iget-object p1, p0, Lopenlight/co/lib/overlays/FtuController$1;->val$from:Landroid/view/View;

    if-nez p1, :cond_13

    iget-object p1, p0, Lopenlight/co/lib/overlays/FtuController$1;->val$runAfter:Ljava/lang/Runnable;

    if-eqz p1, :cond_13

    .line 229
    iget-object p0, p0, Lopenlight/co/lib/overlays/FtuController$1;->val$runAfter:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_13
    return-void
.end method
