.class Landroid/support/design/widget/BaseTransientBottomBar$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BaseTransientBottomBar;->animateViewIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar;)V
    .registers 2

    .line 508
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$7;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 518
    iget-object p0, p0, Landroid/support/design/widget/BaseTransientBottomBar$7;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    invoke-virtual {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->onViewShown()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 511
    iget-object p0, p0, Landroid/support/design/widget/BaseTransientBottomBar$7;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    # getter for: Landroid/support/design/widget/BaseTransientBottomBar;->mContentViewCallback:Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;
    invoke-static {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->access$000(Landroid/support/design/widget/BaseTransientBottomBar;)Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;

    move-result-object p0

    const/16 p1, 0x46

    const/16 v0, 0xb4

    invoke-interface {p0, p1, v0}, Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;->animateContentIn(II)V

    return-void
.end method
