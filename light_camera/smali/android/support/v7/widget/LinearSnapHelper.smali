.class public Landroid/support/v7/widget/LinearSnapHelper;
.super Landroid/support/v7/widget/SnapHelper;
.source "LinearSnapHelper.java"


# static fields
.field private static final INVALID_DISTANCE:F = 1.0f


# instance fields
.field private mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Landroid/support/v7/widget/SnapHelper;-><init>()V

    return-void
.end method

.method private computeDistancePerChild(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)F
    .registers 12

    .line 236
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p0, :cond_9

    return v0

    :cond_9
    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    move v5, v4

    move-object v4, v2

    :goto_12
    if-ge v1, p0, :cond_2b

    .line 242
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 243
    invoke-virtual {p1, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_20

    goto :goto_28

    :cond_20
    if-ge v7, v3, :cond_24

    move-object v2, v6

    move v3, v7

    :cond_24
    if-le v7, v5, :cond_28

    move-object v4, v6

    move v5, v7

    :cond_28
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2b
    if-eqz v2, :cond_54

    if-nez v4, :cond_30

    goto :goto_54

    .line 259
    :cond_30
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    .line 260
    invoke-virtual {p2, v4}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    .line 259
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 261
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    .line 262
    invoke-virtual {p2, v4}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p2

    .line 261
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, p0

    if-nez p1, :cond_4c

    return v0

    :cond_4c
    int-to-float p0, p1

    mul-float/2addr p0, v0

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    int-to-float p1, v5

    div-float/2addr p0, p1

    return p0

    :cond_54
    :goto_54
    return v0
.end method

.method private distanceToCenter(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)I
    .registers 4
    .param p1    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 142
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    .line 143
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p0, p2

    .line 145
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 146
    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    goto :goto_23

    .line 148
    :cond_1d
    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    :goto_23
    sub-int/2addr p0, p1

    return p0
.end method

.method private estimateNextPositionDiffForFling(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;II)I
    .registers 6

    .line 166
    invoke-virtual {p0, p3, p4}, Landroid/support/v7/widget/LinearSnapHelper;->calculateScrollDistance(II)[I

    move-result-object p3

    .line 167
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearSnapHelper;->computeDistancePerChild(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)F

    move-result p0

    const/4 p1, 0x0

    cmpg-float p1, p0, p1

    const/4 p2, 0x0

    if-gtz p1, :cond_f

    return p2

    .line 171
    :cond_f
    aget p1, p3, p2

    .line 172
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 p4, 0x1

    aget v0, p3, p4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p1, v0, :cond_21

    aget p1, p3, p2

    goto :goto_23

    :cond_21
    aget p1, p3, p4

    :goto_23
    int-to-float p1, p1

    div-float/2addr p1, p0

    .line 173
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private findCenterView(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;
    .registers 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 188
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 195
    :cond_8
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 196
    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    goto :goto_20

    .line 198
    :cond_1a
    invoke-virtual {p2}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    :goto_20
    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_24
    if-ge v3, p0, :cond_41

    .line 203
    invoke-virtual {p1, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 204
    invoke-virtual {p2, v4}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 205
    invoke-virtual {p2, v4}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v1

    .line 206
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v2, :cond_3e

    move-object v0, v4

    move v2, v5

    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_41
    return-object v0
.end method

.method private getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    .registers 3
    .param p1    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 281
    iget-object v0, p0, Landroid/support/v7/widget/LinearSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/widget/LinearSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    iget-object v0, v0, Landroid/support/v7/widget/OrientationHelper;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_10

    .line 282
    :cond_a
    invoke-static {p1}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/LinearSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 284
    :cond_10
    iget-object p0, p0, Landroid/support/v7/widget/LinearSnapHelper;->mHorizontalHelper:Landroid/support/v7/widget/OrientationHelper;

    return-object p0
.end method

.method private getVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    .registers 3
    .param p1    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 272
    iget-object v0, p0, Landroid/support/v7/widget/LinearSnapHelper;->mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/widget/LinearSnapHelper;->mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;

    iget-object v0, v0, Landroid/support/v7/widget/OrientationHelper;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_10

    .line 273
    :cond_a
    invoke-static {p1}, Landroid/support/v7/widget/OrientationHelper;->createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/LinearSnapHelper;->mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;

    .line 275
    :cond_10
    iget-object p0, p0, Landroid/support/v7/widget/LinearSnapHelper;->mVerticalHelper:Landroid/support/v7/widget/OrientationHelper;

    return-object p0
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .registers 7
    .param p1    # Landroid/support/v7/widget/RecyclerView$LayoutManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 45
    new-array v0, v0, [I

    .line 46
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 48
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSnapHelper;->getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v1

    .line 47
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/LinearSnapHelper;->distanceToCenter(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_17

    :cond_15
    aput v2, v0, v2

    .line 53
    :goto_17
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_29

    .line 55
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSnapHelper;->getVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v1

    .line 54
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/LinearSnapHelper;->distanceToCenter(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroid/support/v7/widget/OrientationHelper;)I

    move-result p0

    aput p0, v0, v3

    goto :goto_2b

    :cond_29
    aput v2, v0, v3

    :goto_2b
    return-object v0
.end method

.method public findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .registers 3

    .line 132
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 133
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSnapHelper;->getVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearSnapHelper;->findCenterView(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 134
    :cond_f
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 135
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSnapHelper;->getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearSnapHelper;->findCenterView(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public findTargetSnapPosition(Landroid/support/v7/widget/RecyclerView$LayoutManager;II)I
    .registers 12

    .line 65
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 69
    :cond_6
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    if-nez v0, :cond_d

    return v1

    .line 74
    :cond_d
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearSnapHelper;->findSnapView(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_14

    return v1

    .line 79
    :cond_14
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    if-ne v2, v1, :cond_1b

    return v1

    .line 84
    :cond_1b
    move-object v3, p1

    check-cast v3, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    add-int/lit8 v4, v0, -0x1

    .line 89
    invoke-interface {v3, v4}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v3

    if-nez v3, :cond_27

    return v1

    .line 96
    :cond_27
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_3f

    .line 98
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSnapHelper;->getHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v5

    .line 97
    invoke-direct {p0, p1, v5, p2, v7}, Landroid/support/v7/widget/LinearSnapHelper;->estimateNextPositionDiffForFling(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;II)I

    move-result p2

    .line 99
    iget v5, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_40

    neg-int p2, p2

    goto :goto_40

    :cond_3f
    move p2, v7

    .line 105
    :cond_40
    :goto_40
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 107
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearSnapHelper;->getVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v5

    .line 106
    invoke-direct {p0, p1, v5, v7, p3}, Landroid/support/v7/widget/LinearSnapHelper;->estimateNextPositionDiffForFling(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper;II)I

    move-result p0

    .line 108
    iget p3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float p3, p3, v6

    if-gez p3, :cond_57

    neg-int p0, p0

    goto :goto_57

    :cond_56
    move p0, v7

    .line 115
    :cond_57
    :goto_57
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result p1

    if-eqz p1, :cond_5e

    goto :goto_5f

    :cond_5e
    move p0, p2

    :goto_5f
    if-nez p0, :cond_62

    return v1

    :cond_62
    add-int/2addr v2, p0

    if-gez v2, :cond_66

    move v2, v7

    :cond_66
    if-lt v2, v0, :cond_69

    move v2, v4

    :cond_69
    return v2
.end method
