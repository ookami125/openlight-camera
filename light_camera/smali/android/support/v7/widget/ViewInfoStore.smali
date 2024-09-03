.class Landroid/support/v7/widget/ViewInfoStore;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ViewInfoStore$InfoRecord;,
        Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field final mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Landroid/support/v7/widget/ViewInfoStore$InfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    .line 47
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    return-void
.end method

.method private popFromLayoutStep(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 6

    .line 101
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_a

    return-object v0

    .line 105
    :cond_a
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    if-eqz v1, :cond_42

    .line 106
    iget v2, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_42

    .line 107
    iget v0, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    not-int v2, p2

    and-int/2addr v0, v2

    iput v0, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_25

    .line 110
    iget-object p2, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    goto :goto_2b

    :cond_25
    const/16 v0, 0x8

    if-ne p2, v0, :cond_3a

    .line 112
    iget-object p2, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 117
    :goto_2b
    iget v0, v1, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_39

    .line 118
    iget-object p0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 119
    invoke-static {v1}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->recycle(Landroid/support/v7/widget/ViewInfoStore$InfoRecord;)V

    :cond_39
    return-object p2

    .line 114
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must provide flag PRE or POST"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    return-object v0
.end method


# virtual methods
.method addToAppearedInPreLayoutHolders(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 4

    .line 145
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_13

    .line 147
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->obtain()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 148
    iget-object p0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_13
    iget p0, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 p0, p0, 0x2

    iput p0, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 151
    iput-object p2, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    return-void
.end method

.method addToDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 198
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_13

    .line 200
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->obtain()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 201
    iget-object p0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_13
    iget p0, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 p0, p0, 0x1

    iput p0, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method addToOldChangeHolders(JLandroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 4

    .line 132
    iget-object p0, p0, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method addToPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 4

    .line 182
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_13

    .line 184
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->obtain()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 185
    iget-object p0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_13
    iput-object p2, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 188
    iget p0, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 p0, p0, 0x8

    iput p0, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method addToPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 4

    .line 64
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_13

    .line 66
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->obtain()Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 67
    iget-object p0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_13
    iput-object p2, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 70
    iget p0, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 p0, p0, 0x4

    iput p0, v0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method clear()V
    .registers 2

    .line 54
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 55
    iget-object p0, p0, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    return-void
.end method

.method getFromOldChangeHolders(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 173
    iget-object p0, p0, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method isDisappearing(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 2

    .line 74
    iget-object p0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    const/4 p1, 0x1

    if-eqz p0, :cond_11

    .line 75
    iget p0, p0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_11

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method isInPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 2

    .line 161
    iget-object p0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    if-eqz p0, :cond_12

    .line 162
    iget p0, p0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method onDetach()V
    .registers 1

    .line 273
    invoke-static {}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->drainCache()V

    return-void
.end method

.method public onViewDetached(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 277
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ViewInfoStore;->removeFromDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method popFromPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/16 v0, 0x8

    .line 97
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ViewInfoStore;->popFromLayoutStep(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object p0

    return-object p0
.end method

.method popFromPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 86
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ViewInfoStore;->popFromLayoutStep(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object p0

    return-object p0
.end method

.method process(Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;)V
    .registers 7

    .line 219
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_7b

    .line 220
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 221
    iget-object v2, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 222
    iget v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v4, 0x3

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_24

    .line 224
    invoke-interface {p1, v1}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->unused(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_75

    .line 225
    :cond_24
    iget v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3a

    .line 227
    iget-object v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    if-nez v3, :cond_32

    .line 230
    invoke-interface {p1, v1}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->unused(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_75

    .line 232
    :cond_32
    iget-object v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_75

    .line 234
    :cond_3a
    iget v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/16 v4, 0xe

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_49

    .line 236
    iget-object v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processAppeared(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_75

    .line 237
    :cond_49
    iget v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/16 v4, 0xc

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_58

    .line 239
    iget-object v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processPersistent(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_75

    .line 240
    :cond_58
    iget v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_65

    .line 242
    iget-object v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    const/4 v4, 0x0

    invoke-interface {p1, v1, v3, v4}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_75

    .line 243
    :cond_65
    iget v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_73

    .line 245
    iget-object v3, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;->processAppeared(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_75

    .line 246
    :cond_73
    iget v1, v2, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 251
    :goto_75
    invoke-static {v2}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->recycle(Landroid/support/v7/widget/ViewInfoStore$InfoRecord;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_7b
    return-void
.end method

.method removeFromDisappearedInLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 211
    iget-object p0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    if-nez p0, :cond_b

    return-void

    .line 215
    :cond_b
    iget p1, p0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method removeViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 4

    .line 260
    iget-object v0, p0, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1b

    .line 261
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_18

    .line 262
    iget-object v1, p0, Landroid/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LongSparseArray;->removeAt(I)V

    goto :goto_1b

    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 266
    :cond_1b
    :goto_1b
    iget-object p0, p0, Landroid/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;

    if-eqz p0, :cond_28

    .line 268
    invoke-static {p0}, Landroid/support/v7/widget/ViewInfoStore$InfoRecord;->recycle(Landroid/support/v7/widget/ViewInfoStore$InfoRecord;)V

    :cond_28
    return-void
.end method
