.class public abstract Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanSizeLookup"
.end annotation


# instance fields
.field private mCacheSpanIndices:Z

.field final mSpanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 831
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 833
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return-void
.end method


# virtual methods
.method findReferenceIndexFromCache(I)I
    .registers 6

    .line 940
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_9
    if-gt v1, v0, :cond_1f

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 944
    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-ge v3, p1, :cond_1b

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_9

    :cond_1b
    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_9

    :cond_1f
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_32

    .line 952
    iget-object p1, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    if-ge v1, p1, :cond_32

    .line 953
    iget-object p0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p0

    return p0

    :cond_32
    const/4 p0, -0x1

    return p0
.end method

.method getCachedSpanIndex(II)I
    .registers 5

    .line 872
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-nez v0, :cond_9

    .line 873
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result p0

    return p0

    .line 875
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_13

    return v0

    .line 879
    :cond_13
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result p2

    .line 880
    iget-object p0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return p2
.end method

.method public getSpanGroupIndex(II)I
    .registers 9

    .line 971
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_8
    if-ge v2, p1, :cond_1d

    .line 973
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v5

    add-int/2addr v3, v5

    if-ne v3, p2, :cond_15

    add-int/lit8 v4, v4, 0x1

    move v3, v1

    goto :goto_1a

    :cond_15
    if-le v3, p2, :cond_1a

    add-int/lit8 v4, v4, 0x1

    move v3, v5

    :cond_1a
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    add-int/2addr v3, v0

    if-le v3, p2, :cond_22

    add-int/lit8 v4, v4, 0x1

    :cond_22
    return v4
.end method

.method public getSpanIndex(II)I
    .registers 8

    .line 908
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p2, :cond_8

    return v1

    .line 915
    :cond_8
    iget-boolean v2, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-eqz v2, :cond_28

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-lez v2, :cond_28

    .line 916
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->findReferenceIndexFromCache(I)I

    move-result v2

    if-ltz v2, :cond_28

    .line 918
    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_28
    move v2, v1

    move v3, v2

    :goto_2a
    if-ge v2, p1, :cond_3b

    .line 923
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v4

    add-int/2addr v3, v4

    if-ne v3, p2, :cond_35

    move v3, v1

    goto :goto_38

    :cond_35
    if-le v3, p2, :cond_38

    move v3, v4

    :cond_38
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_3b
    add-int/2addr v0, v3

    if-gt v0, p2, :cond_3f

    return v3

    :cond_3f
    return v1
.end method

.method public abstract getSpanSize(I)I
.end method

.method public invalidateSpanIndexCache()V
    .registers 1

    .line 859
    iget-object p0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public isSpanIndexCacheEnabled()Z
    .registers 1

    .line 868
    iget-boolean p0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return p0
.end method

.method public setSpanIndexCacheEnabled(Z)V
    .registers 2

    .line 851
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return-void
.end method
