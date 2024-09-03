.class Lopenlight/co/lib/overlays/FtuController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FtuController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/lib/overlays/FtuController;->animateOff(Landroid/view/View;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/lib/overlays/FtuController;

.field final synthetic val$anim:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$runAfter:Ljava/lang/Runnable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lopenlight/co/lib/overlays/FtuController;Landroid/view/View;Landroid/view/ViewPropertyAnimator;Ljava/lang/Runnable;)V
    .registers 5

    .line 265
    iput-object p1, p0, Lopenlight/co/lib/overlays/FtuController$2;->this$0:Lopenlight/co/lib/overlays/FtuController;

    iput-object p2, p0, Lopenlight/co/lib/overlays/FtuController$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lopenlight/co/lib/overlays/FtuController$2;->val$anim:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lopenlight/co/lib/overlays/FtuController$2;->val$runAfter:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 282
    iget-object p0, p0, Lopenlight/co/lib/overlays/FtuController$2;->val$anim:Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 268
    iget-object p1, p0, Lopenlight/co/lib/overlays/FtuController$2;->val$view:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object p1, p0, Lopenlight/co/lib/overlays/FtuController$2;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 271
    iget-object p1, p0, Lopenlight/co/lib/overlays/FtuController$2;->val$anim:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 272
    iget-object p1, p0, Lopenlight/co/lib/overlays/FtuController$2;->val$runAfter:Ljava/lang/Runnable;

    if-eqz p1, :cond_1d

    .line 273
    iget-object p0, p0, Lopenlight/co/lib/overlays/FtuController$2;->val$runAfter:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1d
    return-void
.end method
