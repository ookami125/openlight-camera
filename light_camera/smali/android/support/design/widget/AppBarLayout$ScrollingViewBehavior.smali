.class public Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;
.super Landroid/support/design/widget/HeaderScrollingViewBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollingViewBehavior"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1363
    invoke-direct {p0}, Landroid/support/design/widget/HeaderScrollingViewBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 1366
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/HeaderScrollingViewBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1368
    sget-object v0, Landroid/support/design/R$styleable;->ScrollingViewBehavior_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1370
    sget p2, Landroid/support/design/R$styleable;->ScrollingViewBehavior_Layout_behavior_overlapTop:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->setOverlayTop(I)V

    .line 1372
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static getAppBarLayoutOffset(Landroid/support/design/widget/AppBarLayout;)I
    .registers 2

    .line 1447
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object p0

    .line 1448
    instance-of v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;

    if-eqz v0, :cond_15

    .line 1449
    check-cast p0, Landroid/support/design/widget/AppBarLayout$Behavior;

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method private offsetChildAsNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .registers 6

    .line 1411
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object p1

    .line 1412
    instance-of v0, p1, Landroid/support/design/widget/AppBarLayout$Behavior;

    if-eqz v0, :cond_2b

    .line 1415
    check-cast p1, Landroid/support/design/widget/AppBarLayout$Behavior;

    .line 1416
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1417
    # getter for: Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I
    invoke-static {p1}, Landroid/support/design/widget/AppBarLayout$Behavior;->access$000(Landroid/support/design/widget/AppBarLayout$Behavior;)I

    move-result p1

    add-int/2addr v0, p1

    .line 1418
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getVerticalLayoutGap()I

    move-result p1

    add-int/2addr v0, p1

    .line 1419
    invoke-virtual {p0, p3}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getOverlapPixelsForOffset(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    .line 1416
    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_2b
    return-void
.end method


# virtual methods
.method findFirstDependency(Ljava/util/List;)Landroid/support/design/widget/AppBarLayout;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/support/design/widget/AppBarLayout;"
        }
    .end annotation

    .line 1456
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_17

    .line 1457
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1458
    instance-of v2, v1, Landroid/support/design/widget/AppBarLayout;

    if-eqz v2, :cond_14

    .line 1459
    check-cast v1, Landroid/support/design/widget/AppBarLayout;

    return-object v1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method bridge synthetic findFirstDependency(Ljava/util/List;)Landroid/view/View;
    .registers 2

    .line 1361
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/support/design/widget/AppBarLayout;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .registers 1

    .line 1361
    invoke-super {p0}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getLeftAndRightOffset()I

    move-result p0

    return p0
.end method

.method getOverlapRatioForOffset(Landroid/view/View;)F
    .registers 5

    .line 1425
    instance-of p0, p1, Landroid/support/design/widget/AppBarLayout;

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    .line 1426
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    .line 1427
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p0

    .line 1428
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v1

    .line 1429
    invoke-static {p1}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getAppBarLayoutOffset(Landroid/support/design/widget/AppBarLayout;)I

    move-result p1

    if-eqz v1, :cond_1a

    add-int v2, p0, p1

    if-gt v2, v1, :cond_1a

    return v0

    :cond_1a
    sub-int/2addr p0, v1

    if-eqz p0, :cond_24

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    add-float/2addr p1, v0

    return p1

    :cond_24
    return v0
.end method

.method getScrollRange(Landroid/view/View;)I
    .registers 3

    .line 1467
    instance-of v0, p1, Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_b

    .line 1468
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p0

    return p0

    .line 1470
    :cond_b
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getScrollRange(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .registers 1

    .line 1361
    invoke-super {p0}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->getTopAndBottomOffset()I

    move-result p0

    return p0
.end method

.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    .line 1378
    instance-of p0, p3, Landroid/support/design/widget/AppBarLayout;

    return p0
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    .line 1384
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->offsetChildAsNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 4

    .line 1361
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .registers 7

    .line 1361
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result p0

    return p0
.end method

.method public onRequestChildRectangleOnScreen(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 8

    .line 1391
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Landroid/support/design/widget/AppBarLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 1394
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p3, v2, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 1396
    iget-object p0, p0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->mTempRect1:Landroid/graphics/Rect;

    .line 1397
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result p1

    invoke-virtual {p0, v1, v1, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1399
    invoke-virtual {p0, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p0

    if-nez p0, :cond_30

    const/4 p0, 0x1

    xor-int/lit8 p1, p4, 0x1

    .line 1402
    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZ)V

    return p0

    :cond_30
    return v1
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .registers 2

    .line 1361
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->setLeftAndRightOffset(I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .registers 2

    .line 1361
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderScrollingViewBehavior;->setTopAndBottomOffset(I)Z

    move-result p0

    return p0
.end method
