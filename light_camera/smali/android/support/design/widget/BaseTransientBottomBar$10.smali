.class Landroid/support/design/widget/BaseTransientBottomBar$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BaseTransientBottomBar;->animateViewOut(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BaseTransientBottomBar;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/BaseTransientBottomBar;I)V
    .registers 3

    .line 564
    iput-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$10;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    iput p2, p0, Landroid/support/design/widget/BaseTransientBottomBar$10;->val$event:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 572
    iget-object p1, p0, Landroid/support/design/widget/BaseTransientBottomBar$10;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    iget p0, p0, Landroid/support/design/widget/BaseTransientBottomBar$10;->val$event:I

    invoke-virtual {p1, p0}, Landroid/support/design/widget/BaseTransientBottomBar;->onViewHidden(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 567
    iget-object p0, p0, Landroid/support/design/widget/BaseTransientBottomBar$10;->this$0:Landroid/support/design/widget/BaseTransientBottomBar;

    # getter for: Landroid/support/design/widget/BaseTransientBottomBar;->mContentViewCallback:Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;
    invoke-static {p0}, Landroid/support/design/widget/BaseTransientBottomBar;->access$000(Landroid/support/design/widget/BaseTransientBottomBar;)Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;

    move-result-object p0

    const/4 p1, 0x0

    const/16 v0, 0xb4

    invoke-interface {p0, p1, v0}, Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;->animateContentOut(II)V

    return-void
.end method
