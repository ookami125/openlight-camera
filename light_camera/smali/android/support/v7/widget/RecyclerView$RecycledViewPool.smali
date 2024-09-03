.class public Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SCRAP:I = 0x5


# instance fields
.field private mAttachCount:I

.field mScrap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5133
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 5135
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method private getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;
    .registers 3

    .line 5258
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    if-nez v0, :cond_14

    .line 5260
    new-instance v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;-><init>()V

    .line 5261
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method


# virtual methods
.method attach(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .registers 2

    .line 5225
    iget p1, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method public clear()V
    .registers 3

    const/4 v0, 0x0

    .line 5138
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 5139
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    .line 5140
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method detach()V
    .registers 2

    .line 5229
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method factorInBindTime(IJ)V
    .registers 6

    .line 5209
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object p1

    .line 5210
    iget-wide v0, p1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    return-void
.end method

.method factorInCreateTime(IJ)V
    .registers 6

    .line 5203
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object p1

    .line 5204
    iget-wide v0, p1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->runningAverage(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    return-void
.end method

.method public getRecycledView(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 2

    .line 5163
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    if-eqz p0, :cond_21

    .line 5164
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_21

    .line 5165
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5166
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p0

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRecycledViewCount(I)I
    .registers 2

    .line 5159
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object p0

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;Z)V
    .registers 4

    if-eqz p1, :cond_5

    .line 5247
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->detach()V

    :cond_5
    if-nez p3, :cond_e

    .line 5249
    iget p1, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    if-nez p1, :cond_e

    .line 5250
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->clear()V

    :cond_e
    if-eqz p2, :cond_13

    .line 5253
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->attach(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_13
    return-void
.end method

.method public putRecycledView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 4

    .line 5183
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 5184
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    .line 5185
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    iget p0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p0, v0, :cond_1b

    return-void

    .line 5191
    :cond_1b
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 5192
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method runningAverage(JJ)J
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-nez p0, :cond_7

    return-wide p3

    :cond_7
    const-wide/16 v0, 0x4

    .line 5199
    div-long/2addr p1, v0

    const-wide/16 v2, 0x3

    mul-long/2addr p1, v2

    div-long/2addr p3, v0

    add-long/2addr p1, p3

    return-wide p1
.end method

.method public setMaxRecycledViews(II)V
    .registers 3

    .line 5145
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object p0

    .line 5146
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mMaxScrap:I

    .line 5147
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    if-eqz p0, :cond_1a

    .line 5149
    :goto_a
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, p2, :cond_1a

    .line 5150
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_a

    :cond_1a
    return-void
.end method

.method size()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 5173
    :goto_2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 5174
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mScrapHeap:Ljava/util/ArrayList;

    if-eqz v2, :cond_1b

    .line 5176
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1e
    return v1
.end method

.method willBindInTime(IJJ)Z
    .registers 8

    .line 5220
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object p0

    iget-wide p0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mBindRunningAverageNs:J

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_14

    add-long/2addr p2, p0

    cmp-long p0, p2, p4

    if-gez p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method

.method willCreateInTime(IJJ)Z
    .registers 8

    .line 5215
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getScrapDataForType(I)Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;

    move-result-object p0

    iget-wide p0, p0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool$ScrapData;->mCreateRunningAverageNs:J

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_14

    add-long/2addr p2, p0

    cmp-long p0, p2, p4

    if-gez p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method
