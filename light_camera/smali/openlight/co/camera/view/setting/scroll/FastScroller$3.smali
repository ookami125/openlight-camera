.class Lopenlight/co/camera/view/setting/scroll/FastScroller$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/setting/scroll/FastScroller;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/setting/scroll/FastScroller;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/setting/scroll/FastScroller;)V
    .registers 2

    .line 280
    iput-object p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller$3;->this$0:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 283
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 284
    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller$3;->this$0:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    const/4 p1, 0x0

    # setter for: Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAnimatingShow:Z
    invoke-static {p0, p1}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->access$402(Lopenlight/co/camera/view/setting/scroll/FastScroller;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 289
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 290
    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller$3;->this$0:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    const/4 p1, 0x0

    # setter for: Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAnimatingShow:Z
    invoke-static {p0, p1}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->access$402(Lopenlight/co/camera/view/setting/scroll/FastScroller;Z)Z

    return-void
.end method
