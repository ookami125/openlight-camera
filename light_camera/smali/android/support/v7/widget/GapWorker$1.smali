.class final Landroid/support/v7/widget/GapWorker$1;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/support/v7/widget/GapWorker$Task;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/support/v7/widget/GapWorker$Task;Landroid/support/v7/widget/GapWorker$Task;)I
    .registers 7

    .line 191
    iget-object p0, p1, Landroid/support/v7/widget/GapWorker$Task;->view:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_8

    move p0, v1

    goto :goto_9

    :cond_8
    move p0, v0

    :goto_9
    iget-object v2, p2, Landroid/support/v7/widget/GapWorker$Task;->view:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_f

    move v2, v1

    goto :goto_10

    :cond_f
    move v2, v0

    :goto_10
    const/4 v3, -0x1

    if-eq p0, v2, :cond_1a

    .line 192
    iget-object p0, p1, Landroid/support/v7/widget/GapWorker$Task;->view:Landroid/support/v7/widget/RecyclerView;

    if-nez p0, :cond_18

    goto :goto_19

    :cond_18
    move v1, v3

    :goto_19
    return v1

    .line 196
    :cond_1a
    iget-boolean p0, p1, Landroid/support/v7/widget/GapWorker$Task;->immediate:Z

    iget-boolean v2, p2, Landroid/support/v7/widget/GapWorker$Task;->immediate:Z

    if-eq p0, v2, :cond_26

    .line 197
    iget-boolean p0, p1, Landroid/support/v7/widget/GapWorker$Task;->immediate:Z

    if-eqz p0, :cond_25

    move v1, v3

    :cond_25
    return v1

    .line 201
    :cond_26
    iget p0, p2, Landroid/support/v7/widget/GapWorker$Task;->viewVelocity:I

    iget v1, p1, Landroid/support/v7/widget/GapWorker$Task;->viewVelocity:I

    sub-int/2addr p0, v1

    if-eqz p0, :cond_2e

    return p0

    .line 205
    :cond_2e
    iget p0, p1, Landroid/support/v7/widget/GapWorker$Task;->distanceToItem:I

    iget p1, p2, Landroid/support/v7/widget/GapWorker$Task;->distanceToItem:I

    sub-int/2addr p0, p1

    if-eqz p0, :cond_36

    return p0

    :cond_36
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 187
    check-cast p1, Landroid/support/v7/widget/GapWorker$Task;

    check-cast p2, Landroid/support/v7/widget/GapWorker$Task;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GapWorker$1;->compare(Landroid/support/v7/widget/GapWorker$Task;Landroid/support/v7/widget/GapWorker$Task;)I

    move-result p0

    return p0
.end method
