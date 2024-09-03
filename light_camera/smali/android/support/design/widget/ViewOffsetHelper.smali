.class Landroid/support/design/widget/ViewOffsetHelper;
.super Ljava/lang/Object;
.source "ViewOffsetHelper.java"


# instance fields
.field private mLayoutLeft:I

.field private mLayoutTop:I

.field private mOffsetLeft:I

.field private mOffsetTop:I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/support/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    return-void
.end method

.method private updateOffsets()V
    .registers 5

    .line 53
    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    iget v1, p0, Landroid/support/design/widget/ViewOffsetHelper;->mOffsetTop:I

    iget-object v2, p0, Landroid/support/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Landroid/support/design/widget/ViewOffsetHelper;->mLayoutTop:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 54
    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    iget v1, p0, Landroid/support/design/widget/ViewOffsetHelper;->mOffsetLeft:I

    iget-object v2, p0, Landroid/support/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget p0, p0, Landroid/support/design/widget/ViewOffsetHelper;->mLayoutLeft:I

    sub-int/2addr v2, p0

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public getLayoutLeft()I
    .registers 1

    .line 100
    iget p0, p0, Landroid/support/design/widget/ViewOffsetHelper;->mLayoutLeft:I

    return p0
.end method

.method public getLayoutTop()I
    .registers 1

    .line 96
    iget p0, p0, Landroid/support/design/widget/ViewOffsetHelper;->mLayoutTop:I

    return p0
.end method

.method public getLeftAndRightOffset()I
    .registers 1

    .line 92
    iget p0, p0, Landroid/support/design/widget/ViewOffsetHelper;->mOffsetLeft:I

    return p0
.end method

.method public getTopAndBottomOffset()I
    .registers 1

    .line 88
    iget p0, p0, Landroid/support/design/widget/ViewOffsetHelper;->mOffsetTop:I

    return p0
.end method

.method public onViewLayout()V
    .registers 2

    .line 45
    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->mLayoutTop:I

    .line 46
    iget-object v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->mLayoutLeft:I

    .line 49
    invoke-direct {p0}, Landroid/support/design/widget/ViewOffsetHelper;->updateOffsets()V

    return-void
.end method

.method public setLeftAndRightOffset(I)Z
    .registers 3

    .line 79
    iget v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->mOffsetLeft:I

    if-eq v0, p1, :cond_b

    .line 80
    iput p1, p0, Landroid/support/design/widget/ViewOffsetHelper;->mOffsetLeft:I

    .line 81
    invoke-direct {p0}, Landroid/support/design/widget/ViewOffsetHelper;->updateOffsets()V

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public setTopAndBottomOffset(I)Z
    .registers 3

    .line 64
    iget v0, p0, Landroid/support/design/widget/ViewOffsetHelper;->mOffsetTop:I

    if-eq v0, p1, :cond_b

    .line 65
    iput p1, p0, Landroid/support/design/widget/ViewOffsetHelper;->mOffsetTop:I

    .line 66
    invoke-direct {p0}, Landroid/support/design/widget/ViewOffsetHelper;->updateOffsets()V

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method
