.class Landroid/support/transition/ChangeClipBounds$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeClipBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/ChangeClipBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/transition/ChangeClipBounds;

.field final synthetic val$endView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/transition/ChangeClipBounds;Landroid/view/View;)V
    .registers 3

    .line 111
    iput-object p1, p0, Landroid/support/transition/ChangeClipBounds$1;->this$0:Landroid/support/transition/ChangeClipBounds;

    iput-object p2, p0, Landroid/support/transition/ChangeClipBounds$1;->val$endView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 114
    iget-object p0, p0, Landroid/support/transition/ChangeClipBounds$1;->val$endView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
