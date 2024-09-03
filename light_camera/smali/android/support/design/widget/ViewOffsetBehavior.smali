.class Landroid/support/design/widget/ViewOffsetBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "ViewOffsetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private mTempLeftRightOffset:I

.field private mTempTopBottomOffset:I

.field private mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 31
    iput v0, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 31
    iput p1, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    return-void
.end method


# virtual methods
.method public getLeftAndRightOffset()I
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    if-eqz v0, :cond_b

    iget-object p0, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    invoke-virtual {p0}, Landroid/support/design/widget/ViewOffsetHelper;->getLeftAndRightOffset()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public getTopAndBottomOffset()I
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    if-eqz v0, :cond_b

    iget-object p0, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    invoke-virtual {p0}, Landroid/support/design/widget/ViewOffsetHelper;->getTopAndBottomOffset()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method protected layoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    .line 63
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    return-void
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/ViewOffsetBehavior;->layoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 44
    iget-object p1, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    if-nez p1, :cond_e

    .line 45
    new-instance p1, Landroid/support/design/widget/ViewOffsetHelper;

    invoke-direct {p1, p2}, Landroid/support/design/widget/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    .line 47
    :cond_e
    iget-object p1, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    invoke-virtual {p1}, Landroid/support/design/widget/ViewOffsetHelper;->onViewLayout()V

    .line 49
    iget p1, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    const/4 p2, 0x0

    if-eqz p1, :cond_21

    .line 50
    iget-object p1, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    iget p3, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    invoke-virtual {p1, p3}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 51
    iput p2, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    .line 53
    :cond_21
    iget p1, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    if-eqz p1, :cond_2e

    .line 54
    iget-object p1, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    iget p3, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    invoke-virtual {p1, p3}, Landroid/support/design/widget/ViewOffsetHelper;->setLeftAndRightOffset(I)Z

    .line 55
    iput p2, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    :cond_2e
    const/4 p0, 0x1

    return p0
.end method

.method public setLeftAndRightOffset(I)Z
    .registers 3

    .line 76
    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    if-eqz v0, :cond_b

    .line 77
    iget-object p0, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/ViewOffsetHelper;->setLeftAndRightOffset(I)Z

    move-result p0

    return p0

    .line 79
    :cond_b
    iput p1, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    const/4 p0, 0x0

    return p0
.end method

.method public setTopAndBottomOffset(I)Z
    .registers 3

    .line 67
    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    if-eqz v0, :cond_b

    .line 68
    iget-object p0, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Landroid/support/design/widget/ViewOffsetHelper;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    move-result p0

    return p0

    .line 70
    :cond_b
    iput p1, p0, Landroid/support/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    const/4 p0, 0x0

    return p0
.end method
