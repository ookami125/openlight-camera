.class public Landroid/support/v7/widget/RecyclerView$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field final mDecorInsets:Landroid/graphics/Rect;

.field mInsetsDirty:Z

.field mPendingInvalidate:Z

.field mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 10965
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 10953
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 10954
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    const/4 p1, 0x0

    .line 10958
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 10961
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10953
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 10954
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    const/4 p1, 0x0

    .line 10958
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V
    .registers 2

    .line 10977
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10953
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 10954
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    const/4 p1, 0x0

    .line 10958
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    .line 10973
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10953
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 10954
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    const/4 p1, 0x0

    .line 10958
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 2

    .line 10969
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 10953
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 10954
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    const/4 p1, 0x0

    .line 10958
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    return-void
.end method


# virtual methods
.method public getViewAdapterPosition()I
    .registers 1

    .line 11049
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p0

    return p0
.end method

.method public getViewLayoutPosition()I
    .registers 1

    .line 11037
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p0

    return p0
.end method

.method public getViewPosition()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11027
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result p0

    return p0
.end method

.method public isItemChanged()Z
    .registers 1

    .line 11019
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result p0

    return p0
.end method

.method public isItemRemoved()Z
    .registers 1

    .line 11008
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result p0

    return p0
.end method

.method public isViewInvalid()Z
    .registers 1

    .line 10997
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result p0

    return p0
.end method

.method public viewNeedsUpdate()Z
    .registers 1

    .line 10987
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result p0

    return p0
.end method
