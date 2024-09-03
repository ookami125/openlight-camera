.class public Lopenlight/co/camera/view/customviews/ScrollingLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "ScrollingLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/view/customviews/ScrollingLinearLayoutManager$SmoothScroller;
    }
.end annotation


# instance fields
.field private final duration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZI)V
    .registers 5

    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 15
    iput p4, p0, Lopenlight/co/camera/view/customviews/ScrollingLinearLayoutManager;->duration:I

    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .registers 6

    const/4 p2, 0x0

    .line 21
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 22
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 23
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v1, p3

    mul-int/2addr v1, v0

    .line 24
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-nez v0, :cond_1e

    .line 26
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-int v0, p2

    .line 28
    :cond_1e
    new-instance p2, Lopenlight/co/camera/view/customviews/ScrollingLinearLayoutManager$SmoothScroller;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lopenlight/co/camera/view/customviews/ScrollingLinearLayoutManager;->duration:I

    invoke-direct {p2, p0, p1, v0, v1}, Lopenlight/co/camera/view/customviews/ScrollingLinearLayoutManager$SmoothScroller;-><init>(Lopenlight/co/camera/view/customviews/ScrollingLinearLayoutManager;Landroid/content/Context;II)V

    .line 29
    invoke-virtual {p2, p3}, Lopenlight/co/camera/view/customviews/ScrollingLinearLayoutManager$SmoothScroller;->setTargetPosition(I)V

    .line 30
    invoke-virtual {p0, p2}, Lopenlight/co/camera/view/customviews/ScrollingLinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
