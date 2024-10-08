.class public Landroid/support/design/internal/BaselineLayout;
.super Landroid/view/ViewGroup;
.source "BaselineLayout.java"


# instance fields
.field private mBaseline:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, v0, v1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    return-void
.end method


# virtual methods
.method public getBaseline()I
    .registers 1

    .line 114
    iget p0, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    return p0
.end method

.method protected onLayout(ZIIII)V
    .registers 12

    .line 85
    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getChildCount()I

    move-result p1

    .line 86
    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p4, p2

    .line 87
    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    sub-int/2addr p4, p3

    .line 89
    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getPaddingTop()I

    move-result p2

    const/4 p5, 0x0

    :goto_14
    if-ge p5, p1, :cond_4d

    .line 92
    invoke-virtual {p0, p5}, Landroid/support/design/internal/BaselineLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_23

    goto :goto_4a

    .line 97
    :cond_23
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v3, p4, v1

    .line 100
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p3

    .line 102
    iget v4, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_44

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v4

    if-eq v4, v5, :cond_44

    .line 103
    iget v4, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    add-int/2addr v4, p2

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_45

    :cond_44
    move v4, p2

    :goto_45
    add-int/2addr v1, v3

    add-int/2addr v2, v4

    .line 108
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    :goto_4a
    add-int/lit8 p5, p5, 0x1

    goto :goto_14

    :cond_4d
    return-void
.end method

.method protected onMeasure(II)V
    .registers 14

    .line 47
    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    move v4, v3

    move v5, v2

    move v6, v5

    move v7, v6

    :goto_b
    if-ge v2, v0, :cond_4b

    .line 55
    invoke-virtual {p0, v2}, Landroid/support/design/internal/BaselineLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 56
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1a

    goto :goto_48

    .line 60
    :cond_1a
    invoke-virtual {p0, v8, p1, p2}, Landroid/support/design/internal/BaselineLayout;->measureChild(Landroid/view/View;II)V

    .line 61
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v9

    if-eq v9, v1, :cond_30

    .line 63
    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 64
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 66
    :cond_30
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 67
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 68
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v8

    invoke-static {v7, v8}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v7

    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_4b
    if-eq v3, v1, :cond_5c

    .line 71
    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getPaddingBottom()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v3

    .line 72
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 73
    iput v3, p0, Landroid/support/design/internal/BaselineLayout;->mBaseline:I

    .line 75
    :cond_5c
    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 76
    invoke-virtual {p0}, Landroid/support/design/internal/BaselineLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 78
    invoke-static {v1, p1, v7}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v1, v7, 0x10

    .line 79
    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 77
    invoke-virtual {p0, p1, p2}, Landroid/support/design/internal/BaselineLayout;->setMeasuredDimension(II)V

    return-void
.end method
