.class Landroid/support/v7/widget/SnapHelper$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SnapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mScrolled:Z

.field final synthetic this$0:Landroid/support/v7/widget/SnapHelper;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/SnapHelper;)V
    .registers 2

    .line 45
    iput-object p1, p0, Landroid/support/v7/widget/SnapHelper$1;->this$0:Landroid/support/v7/widget/SnapHelper;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Landroid/support/v7/widget/SnapHelper$1;->mScrolled:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .registers 3

    .line 50
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    if-nez p2, :cond_11

    .line 51
    iget-boolean p1, p0, Landroid/support/v7/widget/SnapHelper$1;->mScrolled:Z

    if-eqz p1, :cond_11

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Landroid/support/v7/widget/SnapHelper$1;->mScrolled:Z

    .line 53
    iget-object p0, p0, Landroid/support/v7/widget/SnapHelper$1;->this$0:Landroid/support/v7/widget/SnapHelper;

    invoke-virtual {p0}, Landroid/support/v7/widget/SnapHelper;->snapToTargetExistingView()V

    :cond_11
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .registers 4

    if-nez p2, :cond_4

    if-eqz p3, :cond_7

    :cond_4
    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Landroid/support/v7/widget/SnapHelper$1;->mScrolled:Z

    :cond_7
    return-void
.end method
