.class public Landroid/support/design/widget/FloatingActionButton$Behavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "FloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$Behavior<",
        "Landroid/support/design/widget/FloatingActionButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final AUTO_HIDE_DEFAULT:Z = true


# instance fields
.field private mAutoHideEnabled:Z

.field private mInternalAutoHideListener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 557
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x1

    .line 558
    iput-boolean v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mAutoHideEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 562
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 563
    sget-object v0, Landroid/support/design/R$styleable;->FloatingActionButton_Behavior_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 565
    sget p2, Landroid/support/design/R$styleable;->FloatingActionButton_Behavior_Layout_behavior_autoHide:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mAutoHideEnabled:Z

    .line 568
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static isBottomSheet(Landroid/view/View;)Z
    .registers 2
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 617
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 618
    instance-of v0, p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_11

    .line 619
    check-cast p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 620
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object p0

    instance-of p0, p0, Landroid/support/design/widget/BottomSheetBehavior;

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private offsetIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;)V
    .registers 8

    .line 735
    iget-object p0, p2, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    if-eqz p0, :cond_59

    .line 737
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    if-lez v0, :cond_59

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    if-lez v0, :cond_59

    .line 739
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 743
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v2

    iget v3, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    if-lt v1, v2, :cond_27

    .line 745
    iget v1, p0, Landroid/graphics/Rect;->right:I

    goto :goto_34

    .line 746
    :cond_27
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result v1

    iget v2, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    if-gt v1, v2, :cond_33

    .line 748
    iget v1, p0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    goto :goto_34

    :cond_33
    move v1, v3

    .line 750
    :goto_34
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getBottom()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result p1

    iget v4, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p1, v4

    if-lt v2, p1, :cond_44

    .line 752
    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_4f

    .line 753
    :cond_44
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result p1

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    if-gt p1, v0, :cond_4f

    .line 755
    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int v3, p0

    :cond_4f
    :goto_4f
    if-eqz v3, :cond_54

    .line 759
    invoke-static {p2, v3}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_54
    if-eqz v1, :cond_59

    .line 762
    invoke-static {p2, v1}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    :cond_59
    return-void
.end method

.method private shouldUpdateVisibility(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z
    .registers 5

    .line 632
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 633
    iget-boolean p0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mAutoHideEnabled:Z

    const/4 v1, 0x0

    if-nez p0, :cond_c

    return v1

    .line 637
    :cond_c
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getAnchorId()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-eq p0, p1, :cond_17

    return v1

    .line 644
    :cond_17
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getUserSetVisibility()I

    move-result p0

    if-eqz p0, :cond_1e

    return v1

    :cond_1e
    const/4 p0, 0x1

    return p0
.end method

.method private updateFabVisibilityForAppBarLayout(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z
    .registers 6

    .line 654
    invoke-direct {p0, p2, p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->shouldUpdateVisibility(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 658
    :cond_8
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    if-nez v0, :cond_13

    .line 659
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    .line 663
    :cond_13
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    .line 664
    invoke-static {p1, p2, v0}, Landroid/support/design/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 666
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getMinimumHeightForVisibleOverlappingContent()I

    move-result p2

    if-gt p1, p2, :cond_26

    .line 668
    iget-object p0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mInternalAutoHideListener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    invoke-virtual {p3, p0, v1}, Landroid/support/design/widget/FloatingActionButton;->hide(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    goto :goto_2b

    .line 671
    :cond_26
    iget-object p0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mInternalAutoHideListener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    invoke-virtual {p3, p0, v1}, Landroid/support/design/widget/FloatingActionButton;->show(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    :goto_2b
    const/4 p0, 0x1

    return p0
.end method

.method private updateFabVisibilityForBottomSheet(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z
    .registers 6

    .line 678
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->shouldUpdateVisibility(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 682
    :cond_8
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 683
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v0

    if-ge p1, v2, :cond_23

    .line 684
    iget-object p0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mInternalAutoHideListener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    invoke-virtual {p2, p0, v1}, Landroid/support/design/widget/FloatingActionButton;->hide(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    goto :goto_28

    .line 686
    :cond_23
    iget-object p0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mInternalAutoHideListener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    invoke-virtual {p2, p0, v1}, Landroid/support/design/widget/FloatingActionButton;->show(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;Z)V

    :goto_28
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getInsetDodgeRect(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/Rect;)Z
    .registers 7
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/design/widget/FloatingActionButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 721
    iget-object p0, p2, Landroid/support/design/widget/FloatingActionButton;->mShadowPadding:Landroid/graphics/Rect;

    .line 722
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getLeft()I

    move-result p1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    .line 723
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getTop()I

    move-result v0

    iget v1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 724
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getRight()I

    move-result v1

    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 725
    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getBottom()I

    move-result p2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p0

    .line 722
    invoke-virtual {p3, p1, v0, v1, p2}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic getInsetDodgeRect(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z
    .registers 4
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 549
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->getInsetDodgeRect(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public isAutoHideEnabled()Z
    .registers 1

    .line 591
    iget-boolean p0, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mAutoHideEnabled:Z

    return p0
.end method

.method public onAttachedToLayoutParams(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V
    .registers 2
    .param p1    # Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 596
    iget p0, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-nez p0, :cond_8

    const/16 p0, 0x50

    .line 599
    iput p0, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    :cond_8
    return-void
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z
    .registers 5

    .line 606
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_a

    .line 609
    check-cast p3, Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0, p1, p3, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->updateFabVisibilityForAppBarLayout(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z

    goto :goto_13

    .line 610
    :cond_a
    invoke-static {p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->isBottomSheet(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 611
    invoke-direct {p0, p3, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->updateFabVisibilityForBottomSheet(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    .line 549
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;I)Z
    .registers 9

    .line 695
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 696
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_2e

    .line 697
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 698
    instance-of v4, v3, Landroid/support/design/widget/AppBarLayout;

    if-eqz v4, :cond_1e

    .line 699
    check-cast v3, Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0, p1, v3, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->updateFabVisibilityForAppBarLayout(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_2e

    .line 703
    :cond_1e
    invoke-static {v3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->isBottomSheet(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 704
    invoke-direct {p0, v3, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->updateFabVisibilityForBottomSheet(Landroid/view/View;Landroid/support/design/widget/FloatingActionButton;)Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_2e

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 710
    :cond_2e
    :goto_2e
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 712
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/FloatingActionButton$Behavior;->offsetIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 4

    .line 549
    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/FloatingActionButton$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/FloatingActionButton;I)Z

    move-result p0

    return p0
.end method

.method public setAutoHideEnabled(Z)V
    .registers 2

    .line 580
    iput-boolean p1, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mAutoHideEnabled:Z

    return-void
.end method

.method setInternalAutoHideListener(Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;)V
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 627
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton$Behavior;->mInternalAutoHideListener:Landroid/support/design/widget/FloatingActionButton$OnVisibilityChangedListener;

    return-void
.end method
