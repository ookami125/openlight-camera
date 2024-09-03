.class final Landroid/support/v7/widget/OrientationHelper$1;
.super Landroid/support/v7/widget/OrientationHelper;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .registers 3

    const/4 v0, 0x0

    .line 251
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/OrientationHelper;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/OrientationHelper$1;)V

    return-void
.end method


# virtual methods
.method public getDecoratedEnd(Landroid/view/View;)I
    .registers 3

    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 292
    iget-object p0, p0, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr p0, p1

    return p0
.end method

.method public getDecoratedMeasurement(Landroid/view/View;)I
    .registers 3

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 276
    iget-object p0, p0, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr p0, p1

    iget p1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr p0, p1

    return p0
.end method

.method public getDecoratedMeasurementInOther(Landroid/view/View;)I
    .registers 3

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 284
    iget-object p0, p0, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr p0, p1

    iget p1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr p0, p1

    return p0
.end method

.method public getDecoratedStart(Landroid/view/View;)I
    .registers 3

    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 299
    iget-object p0, p0, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public getEnd()I
    .registers 1

    .line 259
    iget-object p0, p0, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p0

    return p0
.end method

.method public getEndAfterPadding()I
    .registers 2

    .line 254
    iget-object v0, p0, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object p0, p0, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getEndPadding()I
    .registers 1

    .line 327
    iget-object p0, p0, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result p0

    return p0
.end method

.method public getMode()I
    .registers 1

    .line 332
    iget-object p0, p0, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result p0

    return p0
.end method

.method public getModeInOther()I
    .registers 1

    .line 337
    iget-object p0, p0, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result p0

    return p0
.end method

.method public getStartAfterPadding()I
    .registers 1

    .line 269
    iget-object p0, p0, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result p0

    return p0
.end method

.method public getTotalSpace()I
    .registers 3

    .line 316
    iget-object v0, p0, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 317
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getTransformedEndWithDecoration(Landroid/view/View;)I
    .registers 5

    .line 304
    iget-object v0, p0, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/OrientationHelper$1;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 305
    iget-object p0, p0, Landroid/support/v7/widget/OrientationHelper$1;->mTmpRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method

.method public getTransformedStartWithDecoration(Landroid/view/View;)I
    .registers 5

    .line 310
    iget-object v0, p0, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/OrientationHelper$1;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 311
    iget-object p0, p0, Landroid/support/v7/widget/OrientationHelper$1;->mTmpRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public offsetChild(Landroid/view/View;I)V
    .registers 3

    .line 322
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    return-void
.end method

.method public offsetChildren(I)V
    .registers 2

    .line 264
    iget-object p0, p0, Landroid/support/v7/widget/OrientationHelper$1;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    return-void
.end method
