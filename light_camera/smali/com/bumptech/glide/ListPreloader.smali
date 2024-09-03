.class public Lcom/bumptech/glide/ListPreloader;
.super Ljava/lang/Object;
.source "ListPreloader.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/ListPreloader$PreloadTarget;,
        Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;,
        Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;,
        Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private isIncreasing:Z

.field private lastEnd:I

.field private lastFirstVisible:I

.field private lastStart:I

.field private final maxPreload:I

.field private final preloadDimensionProvider:Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final preloadModelProvider:Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/ListPreloader$PreloadModelProvider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final preloadTargetQueue:Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

.field private totalItemCount:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/bumptech/glide/ListPreloader;->isIncreasing:Z

    .line 103
    new-instance v1, Lcom/bumptech/glide/ListPreloader$1;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/ListPreloader$1;-><init>(Lcom/bumptech/glide/ListPreloader;)V

    iput-object v1, p0, Lcom/bumptech/glide/ListPreloader;->preloadModelProvider:Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;

    .line 114
    new-instance v1, Lcom/bumptech/glide/ListPreloader$2;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/ListPreloader$2;-><init>(Lcom/bumptech/glide/ListPreloader;)V

    iput-object v1, p0, Lcom/bumptech/glide/ListPreloader;->preloadDimensionProvider:Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;

    .line 121
    iput p1, p0, Lcom/bumptech/glide/ListPreloader;->maxPreload:I

    .line 122
    new-instance v1, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

    add-int/2addr p1, v0

    invoke-direct {v1, p1}, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;-><init>(I)V

    iput-object v1, p0, Lcom/bumptech/glide/ListPreloader;->preloadTargetQueue:Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/ListPreloader$PreloadModelProvider<",
            "TT;>;",
            "Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider<",
            "TT;>;I)V"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/bumptech/glide/ListPreloader;->isIncreasing:Z

    .line 136
    iput-object p1, p0, Lcom/bumptech/glide/ListPreloader;->preloadModelProvider:Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;

    .line 137
    iput-object p2, p0, Lcom/bumptech/glide/ListPreloader;->preloadDimensionProvider:Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;

    .line 138
    iput p3, p0, Lcom/bumptech/glide/ListPreloader;->maxPreload:I

    .line 139
    new-instance p1, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

    add-int/2addr p3, v0

    invoke-direct {p1, p3}, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;-><init>(I)V

    iput-object p1, p0, Lcom/bumptech/glide/ListPreloader;->preloadTargetQueue:Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

    return-void
.end method

.method private cancelAll()V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 276
    :goto_2
    iget v2, p0, Lcom/bumptech/glide/ListPreloader;->maxPreload:I

    if-ge v1, v2, :cond_12

    .line 277
    iget-object v2, p0, Lcom/bumptech/glide/ListPreloader;->preloadTargetQueue:Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

    invoke-virtual {v2, v0, v0}, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->next(II)Lcom/bumptech/glide/ListPreloader$PreloadTarget;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->clear(Lcom/bumptech/glide/request/target/Target;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    return-void
.end method

.method private preload(II)V
    .registers 7

    if-ge p1, p2, :cond_b

    .line 228
    iget v0, p0, Lcom/bumptech/glide/ListPreloader;->lastEnd:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    move v0, p2

    goto :goto_12

    .line 232
    :cond_b
    iget v0, p0, Lcom/bumptech/glide/ListPreloader;->lastStart:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, p2

    .line 234
    :goto_12
    iget v2, p0, Lcom/bumptech/glide/ListPreloader;->totalItemCount:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 235
    iget v2, p0, Lcom/bumptech/glide/ListPreloader;->totalItemCount:I

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge p1, p2, :cond_35

    move p1, v1

    :goto_26
    if-ge p1, v0, :cond_45

    .line 240
    iget-object p2, p0, Lcom/bumptech/glide/ListPreloader;->preloadModelProvider:Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;->getPreloadItems(I)Ljava/util/List;

    move-result-object p2

    const/4 v2, 0x1

    invoke-direct {p0, p2, p1, v2}, Lcom/bumptech/glide/ListPreloader;->preloadAdapterPosition(Ljava/util/List;IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_26

    :cond_35
    add-int/lit8 p1, v0, -0x1

    :goto_37
    if-lt p1, v1, :cond_45

    .line 245
    iget-object p2, p0, Lcom/bumptech/glide/ListPreloader;->preloadModelProvider:Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;->getPreloadItems(I)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2, p1, v3}, Lcom/bumptech/glide/ListPreloader;->preloadAdapterPosition(Ljava/util/List;IZ)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_37

    .line 249
    :cond_45
    iput v1, p0, Lcom/bumptech/glide/ListPreloader;->lastStart:I

    .line 250
    iput v0, p0, Lcom/bumptech/glide/ListPreloader;->lastEnd:I

    return-void
.end method

.method private preload(IZ)V
    .registers 4

    .line 217
    iget-boolean v0, p0, Lcom/bumptech/glide/ListPreloader;->isIncreasing:Z

    if-eq v0, p2, :cond_9

    .line 218
    iput-boolean p2, p0, Lcom/bumptech/glide/ListPreloader;->isIncreasing:Z

    .line 219
    invoke-direct {p0}, Lcom/bumptech/glide/ListPreloader;->cancelAll()V

    :cond_9
    if-eqz p2, :cond_e

    .line 221
    iget p2, p0, Lcom/bumptech/glide/ListPreloader;->maxPreload:I

    goto :goto_11

    :cond_e
    iget p2, p0, Lcom/bumptech/glide/ListPreloader;->maxPreload:I

    neg-int p2, p2

    :goto_11
    add-int/2addr p2, p1

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/ListPreloader;->preload(II)V

    return-void
.end method

.method private preloadAdapterPosition(Ljava/util/List;IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;IZ)V"
        }
    .end annotation

    .line 254
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz p3, :cond_13

    const/4 p3, 0x0

    :goto_7
    if-ge p3, v0, :cond_21

    .line 257
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/bumptech/glide/ListPreloader;->preloadItem(Ljava/lang/Object;II)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :cond_13
    add-int/lit8 v0, v0, -0x1

    :goto_15
    if-ltz v0, :cond_21

    .line 261
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p3, p2, v0}, Lcom/bumptech/glide/ListPreloader;->preloadItem(Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    :cond_21
    return-void
.end method

.method private preloadItem(Ljava/lang/Object;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/bumptech/glide/ListPreloader;->preloadDimensionProvider:Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;

    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;->getPreloadSize(Ljava/lang/Object;II)[I

    move-result-object p2

    if-eqz p2, :cond_1d

    .line 270
    iget-object p3, p0, Lcom/bumptech/glide/ListPreloader;->preloadModelProvider:Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;

    invoke-interface {p3, p1}, Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;->getPreloadRequestBuilder(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;

    move-result-object p1

    .line 271
    iget-object p0, p0, Lcom/bumptech/glide/ListPreloader;->preloadTargetQueue:Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;

    const/4 p3, 0x0

    aget p3, p2, p3

    const/4 v0, 0x1

    aget p2, p2, v0

    invoke-virtual {p0, p3, p2}, Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;->next(II)Lcom/bumptech/glide/ListPreloader$PreloadTarget;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/GenericRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    :cond_1d
    return-void
.end method


# virtual methods
.method protected getDimensions(Ljava/lang/Object;)[I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You must either provide a PreloadDimensionProvider or override getDimensions()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getItems(II)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You must either provide a PreloadModelProvider or override getItems()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getRequestBuilder(Ljava/lang/Object;)Lcom/bumptech/glide/GenericRequestBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/bumptech/glide/GenericRequestBuilder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "You must either provide a PreloadModelProvider, or override getRequestBuilder()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    .line 150
    iput p4, p0, Lcom/bumptech/glide/ListPreloader;->totalItemCount:I

    .line 151
    iget p1, p0, Lcom/bumptech/glide/ListPreloader;->lastFirstVisible:I

    if-le p2, p1, :cond_c

    add-int/2addr p3, p2

    const/4 p1, 0x1

    .line 152
    invoke-direct {p0, p3, p1}, Lcom/bumptech/glide/ListPreloader;->preload(IZ)V

    goto :goto_14

    .line 153
    :cond_c
    iget p1, p0, Lcom/bumptech/glide/ListPreloader;->lastFirstVisible:I

    if-ge p2, p1, :cond_14

    const/4 p1, 0x0

    .line 154
    invoke-direct {p0, p2, p1}, Lcom/bumptech/glide/ListPreloader;->preload(IZ)V

    .line 156
    :cond_14
    :goto_14
    iput p2, p0, Lcom/bumptech/glide/ListPreloader;->lastFirstVisible:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    return-void
.end method
