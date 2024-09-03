.class Lopenlight/co/camera/view/setting/scroll/FastScroller$1;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/setting/scroll/FastScroller;-><init>(Landroid/content/Context;Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;Landroid/util/AttributeSet;)V
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

    .line 112
    iput-object p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller$1;->this$0:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 115
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller$1;->this$0:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    # getter for: Lopenlight/co/camera/view/setting/scroll/FastScroller;->mIsDragging:Z
    invoke-static {v0}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->access$000(Lopenlight/co/camera/view/setting/scroll/FastScroller;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 116
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller$1;->this$0:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    # getter for: Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;
    invoke-static {v0}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->access$100(Lopenlight/co/camera/view/setting/scroll/FastScroller;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 117
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller$1;->this$0:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    # getter for: Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;
    invoke-static {v0}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->access$100(Lopenlight/co/camera/view/setting/scroll/FastScroller;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 119
    :cond_19
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller$1;->this$0:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    iget-object v1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller$1;->this$0:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    const-string v2, "offsetX"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget-object v5, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller$1;->this$0:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    # getter for: Lopenlight/co/camera/view/setting/scroll/FastScroller;->mRecyclerView:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;
    invoke-static {v5}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->access$200(Lopenlight/co/camera/view/setting/scroll/FastScroller;)Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;

    move-result-object v5

    invoke-virtual {v5}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lopenlight/co/camera/utils/Util;->isRtl(Landroid/content/res/Resources;)Z

    move-result v5

    if-eqz v5, :cond_36

    const/16 v5, -0x14

    goto :goto_38

    :cond_36
    const/16 v5, 0x14

    :goto_38
    iget-object v6, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller$1;->this$0:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    # getter for: Lopenlight/co/camera/view/setting/scroll/FastScroller;->mWidth:I
    invoke-static {v6}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->access$300(Lopenlight/co/camera/view/setting/scroll/FastScroller;)I

    move-result v6

    mul-int/2addr v5, v6

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    # setter for: Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->access$102(Lopenlight/co/camera/view/setting/scroll/FastScroller;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 120
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller$1;->this$0:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    # getter for: Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;
    invoke-static {v0}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->access$100(Lopenlight/co/camera/view/setting/scroll/FastScroller;)Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Landroid/support/v4/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v1}, Landroid/support/v4/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 121
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller$1;->this$0:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    # getter for: Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;
    invoke-static {v0}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->access$100(Lopenlight/co/camera/view/setting/scroll/FastScroller;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 122
    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller$1;->this$0:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    # getter for: Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;
    invoke-static {p0}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->access$100(Lopenlight/co/camera/view/setting/scroll/FastScroller;)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_6a
    return-void
.end method
