.class public abstract Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# static fields
.field private static final ABS_HORIZONTAL_DIR_FLAGS:I = 0xc0c0c

.field public static final DEFAULT_DRAG_ANIMATION_DURATION:I = 0xc8

.field public static final DEFAULT_SWIPE_ANIMATION_DURATION:I = 0xfa

.field private static final DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS:J = 0x7d0L

.field static final RELATIVE_DIR_FLAGS:I = 0x303030

.field private static final sDragScrollInterpolator:Landroid/view/animation/Interpolator;

.field private static final sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

.field private static final sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;


# instance fields
.field private mCachedMaxScrollSpeed:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1359
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback$1;

    invoke-direct {v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 1366
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback$2;

    invoke-direct {v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback$2;-><init>()V

    sput-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    .line 1382
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1c

    .line 1383
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Api21Impl;

    invoke-direct {v0}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Api21Impl;-><init>()V

    sput-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    goto :goto_23

    .line 1385
    :cond_1c
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$BaseImpl;

    invoke-direct {v0}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$BaseImpl;-><init>()V

    sput-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    :goto_23
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1379
    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    return-void
.end method

.method public static convertToRelativeDirection(II)I
    .registers 5

    const v0, 0xc0c0c

    and-int v1, p0, v0

    if-nez v1, :cond_8

    return p0

    :cond_8
    not-int v2, v1

    and-int/2addr p0, v2

    if-nez p1, :cond_10

    shl-int/lit8 p1, v1, 0x2

    or-int/2addr p0, p1

    return p0

    :cond_10
    shl-int/lit8 p1, v1, 0x1

    const v1, -0xc0c0d

    and-int/2addr v1, p1

    or-int/2addr p0, v1

    and-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x2

    or-int/2addr p0, p1

    return p0
.end method

.method public static getDefaultUIUtil()Landroid/support/v7/widget/helper/ItemTouchUIUtil;
    .registers 1

    .line 1430
    sget-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    return-object v0
.end method

.method private getMaxDragScroll(Landroid/support/v7/widget/RecyclerView;)I
    .registers 4

    .line 1855
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 1856
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v7/recyclerview/R$dimen;->item_touch_helper_max_drag_scroll_per_frame:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    .line 1859
    :cond_11
    iget p0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->mCachedMaxScrollSpeed:I

    return p0
.end method

.method public static makeFlag(II)I
    .registers 2

    mul-int/lit8 p0, p0, 0x8

    shl-int p0, p1, p0

    return p0
.end method

.method public static makeMovementFlags(II)I
    .registers 4

    or-int v0, p1, p0

    const/4 v1, 0x0

    .line 1475
    invoke-static {v1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result v0

    const/4 v1, 0x1

    .line 1476
    invoke-static {v1, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result p1

    or-int/2addr p1, v0

    const/4 v0, 0x2

    .line 1477
    invoke-static {v0, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result p0

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public canDropOver(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method

.method public chooseDropTarget(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;II)",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    .line 1756
    iget-object p0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr p0, p3

    .line 1757
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, p4

    .line 1760
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, p3, v1

    .line 1761
    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, p4, v2

    .line 1762
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    :goto_25
    if-ge v6, v3, :cond_b5

    .line 1764
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-lez v1, :cond_4e

    .line 1766
    iget-object v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    sub-int/2addr v8, p0

    if-gez v8, :cond_4e

    .line 1767
    iget-object v9, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    iget-object v10, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v9, v10, :cond_4e

    .line 1768
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v5, :cond_4e

    move-object v4, v7

    move v5, v8

    :cond_4e
    if-gez v1, :cond_6f

    .line 1776
    iget-object v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v8, p3

    if-lez v8, :cond_6f

    .line 1777
    iget-object v9, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v9

    iget-object v10, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    if-ge v9, v10, :cond_6f

    .line 1778
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v5, :cond_6f

    move-object v4, v7

    move v5, v8

    :cond_6f
    if-gez v2, :cond_90

    .line 1786
    iget-object v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, p4

    if-lez v8, :cond_90

    .line 1787
    iget-object v9, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    if-ge v9, v10, :cond_90

    .line 1788
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v5, :cond_90

    move-object v4, v7

    move v5, v8

    :cond_90
    if-lez v2, :cond_b1

    .line 1797
    iget-object v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    sub-int/2addr v8, v0

    if-gez v8, :cond_b1

    .line 1798
    iget-object v9, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    iget-object v10, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v9, v10, :cond_b1

    .line 1799
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v5, :cond_b1

    move-object v4, v7

    move v5, v8

    :cond_b1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_25

    :cond_b5
    return-object v4
.end method

.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 1992
    sget-object p0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    iget-object p1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->clearView(Landroid/view/View;)V

    return-void
.end method

.method public convertToAbsoluteDirection(II)I
    .registers 5

    const p0, 0x303030

    and-int v0, p1, p0

    if-nez v0, :cond_8

    return p1

    :cond_8
    not-int v1, v0

    and-int/2addr p1, v1

    if-nez p2, :cond_10

    shr-int/lit8 p0, v0, 0x2

    or-int/2addr p0, p1

    return p0

    :cond_10
    shr-int/lit8 p2, v0, 0x1

    const v0, -0x303031

    and-int/2addr v0, p2

    or-int/2addr p1, v0

    and-int/2addr p0, p2

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, p1

    return p0
.end method

.method final getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .registers 3

    .line 1554
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result p2

    .line 1555
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result p0

    return p0
.end method

.method public getAnimationDuration(Landroid/support/v7/widget/RecyclerView;IFF)J
    .registers 5

    .line 2085
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object p0

    const/16 p1, 0x8

    if-nez p0, :cond_10

    if-ne p2, p1, :cond_d

    const-wide/16 p0, 0xc8

    goto :goto_f

    :cond_d
    const-wide/16 p0, 0xfa

    :goto_f
    return-wide p0

    :cond_10
    if-ne p2, p1, :cond_17

    .line 2090
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide p0

    goto :goto_1b

    .line 2091
    :cond_17
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide p0

    :goto_1b
    return-wide p0
.end method

.method public getBoundingBoxMargin()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getMoveThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F
    .registers 2

    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method

.method public abstract getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
.end method

.method public getSwipeEscapeVelocity(F)F
    .registers 2

    return p1
.end method

.method public getSwipeThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F
    .registers 2

    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method

.method public getSwipeVelocityThreshold(F)F
    .registers 2

    return p1
.end method

.method hasDragFlag(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 3

    .line 1559
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result p0

    const/high16 p1, 0xff0000

    and-int/2addr p0, p1

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method hasSwipeFlag(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 3

    .line 1565
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result p0

    const p1, 0xff00

    and-int/2addr p0, p1

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public interpolateOutOfBoundsScroll(Landroid/support/v7/widget/RecyclerView;IIIJ)I
    .registers 8

    .line 2118
    invoke-direct {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getMaxDragScroll(Landroid/support/v7/widget/RecyclerView;)I

    move-result p0

    .line 2119
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p4, p3

    .line 2120
    invoke-static {p4}, Ljava/lang/Math;->signum(F)F

    move-result p4

    float-to-int p4, p4

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 2122
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-int/2addr p4, p0

    int-to-float p0, p4

    .line 2123
    sget-object p2, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sDragViewScrollCapInterpolator:Landroid/view/animation/Interpolator;

    .line 2124
    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    const-wide/16 p1, 0x7d0

    cmp-long p1, p5, p1

    if-lez p1, :cond_29

    goto :goto_2e

    :cond_29
    long-to-float p1, p5

    const/high16 p2, 0x44fa0000    # 2000.0f

    div-float v0, p1, p2

    :goto_2e
    int-to-float p0, p0

    .line 2131
    sget-object p1, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sDragScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 2132
    invoke-interface {p1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    if-nez p0, :cond_3f

    if-lez p3, :cond_3d

    const/4 p0, 0x1

    goto :goto_3e

    :cond_3d
    const/4 p0, -0x1

    :goto_3e
    return p0

    :cond_3f
    return p0
.end method

.method public isItemViewSwipeEnabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isLongPressDragEnabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 16

    .line 2025
    sget-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    iget-object v3, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V

    return-void
.end method

.method public onChildDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 16

    .line 2059
    sget-object v0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    iget-object v3, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V

    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/support/v7/widget/RecyclerView;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    move-object v8, p1

    .line 1932
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v9

    const/4 v0, 0x0

    move v10, v0

    :goto_7
    if-ge v10, v9, :cond_2d

    move-object/from16 v11, p4

    .line 1934
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1935
    invoke-virtual {v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->update()V

    .line 1936
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 1937
    iget-object v3, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v4, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    iget v6, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1939
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_2d
    if-eqz p3, :cond_45

    .line 1942
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p5

    .line 1943
    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1944
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_45
    return-void
.end method

.method onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/support/v7/widget/RecyclerView;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;IFF)V"
        }
    .end annotation

    move-object v8, p1

    move-object/from16 v9, p4

    .line 1951
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    move v12, v11

    :goto_9
    if-ge v12, v10, :cond_2b

    .line 1953
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1954
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v13

    .line 1955
    iget-object v3, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v4, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    iget v6, v0, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1957
    invoke-virtual {p1, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_2b
    if-eqz p3, :cond_44

    .line 1960
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p5

    .line 1961
    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 1962
    invoke-virtual {p1, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_44
    const/4 v0, 0x1

    sub-int/2addr v10, v0

    :goto_46
    if-ltz v10, :cond_62

    .line 1966
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1967
    iget-boolean v2, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-eqz v2, :cond_5a

    iget-boolean v2, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mIsPendingCleanup:Z

    if-nez v2, :cond_5a

    .line 1968
    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5f

    .line 1969
    :cond_5a
    iget-boolean v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v1, :cond_5f

    move v11, v0

    :cond_5f
    :goto_5f
    add-int/lit8 v10, v10, -0x1

    goto :goto_46

    :cond_62
    if-eqz v11, :cond_67

    .line 1974
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_67
    return-void
.end method

.method public abstract onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
.end method

.method public onMoved(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILandroid/support/v7/widget/RecyclerView$ViewHolder;III)V
    .registers 8

    .line 1898
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p0

    .line 1899
    instance-of p3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;

    if-eqz p3, :cond_12

    .line 1900
    check-cast p0, Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;

    iget-object p1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p0, p1, p2, p6, p7}, Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;->prepareForDrop(Landroid/view/View;Landroid/view/View;II)V

    return-void

    .line 1906
    :cond_12
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p2

    if-eqz p2, :cond_3b

    .line 1907
    iget-object p2, p4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result p2

    .line 1908
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result p3

    if-gt p2, p3, :cond_27

    .line 1909
    invoke-virtual {p1, p5}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 1911
    :cond_27
    iget-object p2, p4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p2

    .line 1912
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result p6

    sub-int/2addr p3, p6

    if-lt p2, p3, :cond_3b

    .line 1913
    invoke-virtual {p1, p5}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 1917
    :cond_3b
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result p2

    if-eqz p2, :cond_64

    .line 1918
    iget-object p2, p4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p2

    .line 1919
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result p3

    if-gt p2, p3, :cond_50

    .line 1920
    invoke-virtual {p1, p5}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 1922
    :cond_50
    iget-object p2, p4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p0

    .line 1923
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    if-lt p0, p2, :cond_64

    .line 1924
    invoke-virtual {p1, p5}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    :cond_64
    return-void
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    if-eqz p1, :cond_9

    .line 1850
    sget-object p0, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->sUICallback:Landroid/support/v7/widget/helper/ItemTouchUIUtil;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchUIUtil;->onSelected(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public abstract onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end method
