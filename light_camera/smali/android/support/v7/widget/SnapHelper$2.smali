.class Landroid/support/v7/widget/SnapHelper$2;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "SnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/SnapHelper;->createSnapScroller(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/LinearSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SnapHelper;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SnapHelper;Landroid/content/Context;)V
    .registers 3

    .line 229
    iput-object p1, p0, Landroid/support/v7/widget/SnapHelper$2;->this$0:Landroid/support/v7/widget/SnapHelper;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .registers 2

    .line 244
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p1, p0

    return p1
.end method

.method protected onTargetFound(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 6

    .line 232
    iget-object p2, p0, Landroid/support/v7/widget/SnapHelper$2;->this$0:Landroid/support/v7/widget/SnapHelper;

    iget-object v0, p0, Landroid/support/v7/widget/SnapHelper$2;->this$0:Landroid/support/v7/widget/SnapHelper;

    iget-object v0, v0, Landroid/support/v7/widget/SnapHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Landroid/support/v7/widget/SnapHelper;->calculateDistanceToFinalSnap(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p1

    const/4 p2, 0x0

    .line 234
    aget p2, p1, p2

    const/4 v0, 0x1

    .line 235
    aget p1, p1, v0

    .line 236
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SnapHelper$2;->calculateTimeForDeceleration(I)I

    move-result v0

    if-lez v0, :cond_2b

    .line 238
    iget-object p0, p0, Landroid/support/v7/widget/SnapHelper$2;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, v0, p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_2b
    return-void
.end method
