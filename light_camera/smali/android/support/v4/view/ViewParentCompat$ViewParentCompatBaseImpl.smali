.class Landroid/support/v4/view/ViewParentCompat$ViewParentCompatBaseImpl;
.super Ljava/lang/Object;
.source "ViewParentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewParentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewParentCompatBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifySubtreeAccessibilityStateChanged(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    return-void
.end method

.method public onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
    .registers 6

    .line 77
    instance-of p0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz p0, :cond_b

    .line 78
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/NestedScrollingParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z
    .registers 5

    .line 86
    instance-of p0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz p0, :cond_b

    .line 87
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
    .registers 6

    .line 70
    instance-of p0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz p0, :cond_9

    .line 71
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/NestedScrollingParent;->onNestedPreScroll(Landroid/view/View;II[I)V

    :cond_9
    return-void
.end method

.method public onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
    .registers 13

    .line 62
    instance-of p0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz p0, :cond_f

    .line 63
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/NestedScrollingParent;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingParent;->onNestedScroll(Landroid/view/View;IIII)V

    :cond_f
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    .line 48
    instance-of p0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz p0, :cond_9

    .line 49
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    :cond_9
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
    .registers 5

    .line 39
    instance-of p0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz p0, :cond_b

    .line 40
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
    .registers 3

    .line 55
    instance-of p0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz p0, :cond_9

    .line 56
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    invoke-interface {p1, p2}, Landroid/support/v4/view/NestedScrollingParent;->onStopNestedScroll(Landroid/view/View;)V

    :cond_9
    return-void
.end method
