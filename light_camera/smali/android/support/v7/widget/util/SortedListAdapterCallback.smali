.class public abstract Landroid/support/v7/widget/util/SortedListAdapterCallback;
.super Landroid/support/v7/util/SortedList$Callback;
.source "SortedListAdapterCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/util/SortedList$Callback<",
        "TT2;>;"
    }
.end annotation


# instance fields
.field final mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/support/v7/util/SortedList$Callback;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/support/v7/widget/util/SortedListAdapterCallback;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-void
.end method


# virtual methods
.method public onChanged(II)V
    .registers 3

    .line 57
    iget-object p0, p0, Landroid/support/v7/widget/util/SortedListAdapterCallback;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onInserted(II)V
    .registers 3

    .line 42
    iget-object p0, p0, Landroid/support/v7/widget/util/SortedListAdapterCallback;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onMoved(II)V
    .registers 3

    .line 52
    iget-object p0, p0, Landroid/support/v7/widget/util/SortedListAdapterCallback;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .registers 3

    .line 47
    iget-object p0, p0, Landroid/support/v7/widget/util/SortedListAdapterCallback;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
