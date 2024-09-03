.class public Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;
.super Landroid/support/v7/widget/RecyclerView;
.source "FastScrollRecycler.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$SectionedAdapter;,
        Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;
    }
.end annotation


# instance fields
.field private mDownX:I

.field private mDownY:I

.field private mLastY:I

.field private mScrollPosState:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;

.field private mScrollbar:Lopenlight/co/camera/view/setting/scroll/FastScroller;

.field private mStateChangeListener:Lopenlight/co/camera/view/setting/scroll/OnFastScrollStateChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance p3, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;

    invoke-direct {p3}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;-><init>()V

    iput-object p3, p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollPosState:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;

    .line 53
    new-instance p3, Lopenlight/co/camera/view/setting/scroll/FastScroller;

    invoke-direct {p3, p1, p0, p2}, Lopenlight/co/camera/view/setting/scroll/FastScroller;-><init>(Landroid/content/Context;Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;Landroid/util/AttributeSet;)V

    iput-object p3, p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollbar:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    return-void
.end method

.method private getCurScrollState(Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;)V
    .registers 5

    const/4 v0, -0x1

    .line 262
    iput v0, p1, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;->rowIndex:I

    .line 263
    iput v0, p1, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;->rowTopOffset:I

    .line 264
    iput v0, p1, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;->rowHeight:I

    .line 266
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_5d

    .line 269
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getChildCount()I

    move-result v0

    if-nez v0, :cond_18

    goto :goto_5d

    :cond_18
    const/4 v0, 0x0

    .line 273
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 275
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    iput v1, p1, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;->rowIndex:I

    .line 276
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_3a

    .line 277
    iget v1, p1, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;->rowIndex:I

    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    div-int/2addr v1, v2

    iput v1, p1, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;->rowIndex:I

    .line 279
    :cond_3a
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    iput v1, p1, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;->rowTopOffset:I

    .line 280
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 281
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p0

    add-int/2addr v1, p0

    iput v1, p1, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;->rowHeight:I

    return-void

    :cond_5d
    :goto_5d
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 18

    move-object/from16 v0, p0

    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 90
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    packed-switch v1, :pswitch_data_52

    goto :goto_4b

    .line 100
    :pswitch_14
    iput v3, v0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mLastY:I

    .line 101
    iget-object v4, v0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollbar:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    iget v6, v0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mDownX:I

    iget v7, v0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mDownY:I

    iget v8, v0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mLastY:I

    iget-object v9, v0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mStateChangeListener:Lopenlight/co/camera/view/setting/scroll/OnFastScrollStateChangeListener;

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->handleTouchEvent(Landroid/view/MotionEvent;IIILopenlight/co/camera/view/setting/scroll/OnFastScrollStateChangeListener;)V

    goto :goto_4b

    .line 105
    :pswitch_26
    iget-object v10, v0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollbar:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    iget v12, v0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mDownX:I

    iget v13, v0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mDownY:I

    iget v14, v0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mLastY:I

    iget-object v15, v0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mStateChangeListener:Lopenlight/co/camera/view/setting/scroll/OnFastScrollStateChangeListener;

    move-object/from16 v11, p1

    invoke-virtual/range {v10 .. v15}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->handleTouchEvent(Landroid/view/MotionEvent;IIILopenlight/co/camera/view/setting/scroll/OnFastScrollStateChangeListener;)V

    goto :goto_4b

    .line 95
    :pswitch_36
    iput v2, v0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mDownX:I

    .line 96
    iput v3, v0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mLastY:I

    iput v3, v0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mDownY:I

    .line 97
    iget-object v1, v0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollbar:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    iget v3, v0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mDownX:I

    iget v4, v0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mDownY:I

    iget v5, v0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mLastY:I

    iget-object v6, v0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mStateChangeListener:Lopenlight/co/camera/view/setting/scroll/OnFastScrollStateChangeListener;

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->handleTouchEvent(Landroid/view/MotionEvent;IIILopenlight/co/camera/view/setting/scroll/OnFastScrollStateChangeListener;)V

    .line 108
    :goto_4b
    iget-object v0, v0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollbar:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    invoke-virtual {v0}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->isDragging()Z

    move-result v0

    return v0

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_36
        :pswitch_26
        :pswitch_14
        :pswitch_26
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 143
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 144
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->onUpdateScrollbar()V

    .line 145
    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollbar:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected getAvailableScrollBarHeight()I
    .registers 2

    .line 136
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getHeight()I

    move-result v0

    .line 137
    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollbar:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->getThumbHeight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method protected getAvailableScrollHeight(III)I
    .registers 6

    .line 125
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getHeight()I

    move-result v0

    .line 126
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, p3

    mul-int/2addr p1, p2

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getPaddingBottom()I

    move-result p0

    add-int/2addr v1, p0

    sub-int/2addr v1, v0

    return v1
.end method

.method public getScrollBarThumbHeight()I
    .registers 1

    .line 61
    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollbar:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->getThumbHeight()I

    move-result p0

    return p0
.end method

.method public getScrollBarWidth()I
    .registers 1

    .line 57
    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollbar:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->getWidth()I

    move-result p0

    return p0
.end method

.method public marginRightFast(I)V
    .registers 2

    .line 285
    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollbar:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->setMarginRight(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .line 66
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onFinishInflate()V

    .line 67
    invoke-virtual {p0, p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 76
    invoke-direct {p0, p2}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 3

    .line 81
    invoke-direct {p0, p2}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public onUpdateScrollbar()V
    .registers 5

    .line 233
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 237
    :cond_7
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 238
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_29

    .line 239
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    int-to-double v2, v0

    int-to-double v0, v1

    div-double/2addr v2, v0

    .line 240
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    :cond_29
    const/4 v1, -0x1

    if-nez v0, :cond_32

    .line 244
    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollbar:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    invoke-virtual {p0, v1, v1}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->setThumbPosition(II)V

    return-void

    .line 249
    :cond_32
    iget-object v2, p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollPosState:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;

    invoke-direct {p0, v2}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getCurScrollState(Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;)V

    .line 250
    iget-object v2, p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollPosState:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;

    iget v2, v2, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;->rowIndex:I

    if-gez v2, :cond_43

    .line 251
    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollbar:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    invoke-virtual {p0, v1, v1}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->setThumbPosition(II)V

    return-void

    .line 255
    :cond_43
    iget-object v1, p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollPosState:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->synchronizeScrollBarThumbOffsetToViewScroll(Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;II)V

    return-void
.end method

.method public scrollToPositionAtProgress(F)Ljava/lang/String;
    .registers 8

    .line 188
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_d

    const-string p0, ""

    return-object p0

    :cond_d
    const/4 v1, 0x1

    .line 194
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v2, :cond_29

    .line 195
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    int-to-double v2, v0

    int-to-double v4, v1

    div-double/2addr v2, v4

    .line 196
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    goto :goto_2a

    :cond_29
    move v2, v0

    .line 200
    :goto_2a
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->stopScroll()V

    .line 202
    iget-object v3, p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollPosState:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;

    invoke-direct {p0, v3}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getCurScrollState(Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;)V

    int-to-float v0, v0

    mul-float/2addr v0, p1

    .line 206
    iget-object v3, p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollPosState:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;

    iget v3, v3, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;->rowHeight:I

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getAvailableScrollHeight(III)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    .line 214
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutManager;

    mul-int/2addr v1, v2

    .line 215
    iget-object v4, p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollPosState:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;

    iget v4, v4, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;->rowHeight:I

    div-int/2addr v1, v4

    iget-object v4, p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollPosState:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;

    iget v4, v4, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;->rowHeight:I

    rem-int/2addr v2, v4

    neg-int v2, v2

    invoke-virtual {v3, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 218
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    instance-of v1, v1, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$SectionedAdapter;

    if-nez v1, :cond_60

    const-string p0, ""

    return-object p0

    :cond_60
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_67

    sub-float/2addr v0, v1

    :cond_67
    float-to-int p1, v0

    .line 224
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$SectionedAdapter;

    .line 225
    invoke-interface {p0, p1}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$SectionedAdapter;->getSectionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setAutoHideDelay(I)V
    .registers 2

    .line 297
    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollbar:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->setAutoHideDelay(I)V

    return-void
.end method

.method public setAutoHideEnabled(Z)V
    .registers 2

    .line 301
    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollbar:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->setAutoHideEnabled(Z)V

    return-void
.end method

.method public setPopupPosition(I)V
    .registers 2

    return-void
.end method

.method public setStateChangeListener(Lopenlight/co/camera/view/setting/scroll/OnFastScrollStateChangeListener;)V
    .registers 2

    .line 305
    iput-object p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mStateChangeListener:Lopenlight/co/camera/view/setting/scroll/OnFastScrollStateChangeListener;

    return-void
.end method

.method public setThumbColor(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 289
    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollbar:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->setThumbColor(I)V

    return-void
.end method

.method public setTrackColor(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 293
    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollbar:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->setTrackColor(I)V

    return-void
.end method

.method protected synchronizeScrollBarThumbOffsetToViewScroll(Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;II)V
    .registers 7

    .line 159
    iget v0, p1, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;->rowHeight:I

    invoke-virtual {p0, p2, v0, p3}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getAvailableScrollHeight(III)I

    move-result p2

    .line 160
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getAvailableScrollBarHeight()I

    move-result v0

    if-gtz p2, :cond_13

    .line 164
    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollbar:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    const/4 p1, -0x1

    invoke-virtual {p0, p1, p1}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->setThumbPosition(II)V

    return-void

    .line 171
    :cond_13
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, p3

    iget p3, p1, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;->rowIndex:I

    iget v2, p1, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;->rowHeight:I

    mul-int/2addr p3, v2

    add-int/2addr v1, p3

    iget p1, p1, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler$ScrollPositionState;->rowTopOffset:I

    sub-int/2addr v1, p1

    int-to-float p1, v1

    int-to-float p2, p2

    div-float/2addr p1, p2

    int-to-float p2, v0

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 176
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2}, Lopenlight/co/camera/utils/Util;->isRtl(Landroid/content/res/Resources;)Z

    move-result p2

    if-eqz p2, :cond_33

    const/4 p2, 0x0

    goto :goto_3e

    .line 179
    :cond_33
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getWidth()I

    move-result p2

    iget-object p3, p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollbar:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    invoke-virtual {p3}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    .line 181
    :goto_3e
    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->mScrollbar:Lopenlight/co/camera/view/setting/scroll/FastScroller;

    invoke-virtual {p0, p2, p1}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->setThumbPosition(II)V

    return-void
.end method
