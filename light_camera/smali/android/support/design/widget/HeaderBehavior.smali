.class abstract Landroid/support/design/widget/HeaderBehavior;
.super Landroid/support/design/widget/ViewOffsetBehavior;
.source "HeaderBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/HeaderBehavior$FlingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/ViewOffsetBehavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mFlingRunnable:Ljava/lang/Runnable;

.field private mIsBeingDragged:Z

.field private mLastMotionY:I

.field mScroller:Landroid/widget/OverScroller;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/support/design/widget/ViewOffsetBehavior;-><init>()V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 44
    iput v0, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 42
    iput p1, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 44
    iput p1, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    return-void
.end method

.method private ensureVelocityTracker()V
    .registers 2

    .line 280
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 281
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method


# virtual methods
.method canDragView(Landroid/view/View;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method final fling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;IIF)Z"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    .line 228
    iget-object v2, v0, Landroid/support/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_e

    .line 229
    iget-object v2, v0, Landroid/support/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    .line 230
    iput-object v2, v0, Landroid/support/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 233
    :cond_e
    iget-object v2, v0, Landroid/support/design/widget/HeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    if-nez v2, :cond_1d

    .line 234
    new-instance v2, Landroid/widget/OverScroller;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Landroid/support/design/widget/HeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    .line 237
    :cond_1d
    iget-object v4, v0, Landroid/support/design/widget/HeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    const/4 v5, 0x0

    .line 238
    invoke-virtual {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v6

    const/4 v7, 0x0

    .line 239
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v11, p3

    move/from16 v12, p4

    .line 237
    invoke-virtual/range {v4 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 243
    iget-object v2, v0, Landroid/support/design/widget/HeaderBehavior;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 244
    new-instance v2, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;

    move-object v3, p1

    invoke-direct {v2, p0, p1, p2}, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;-><init>(Landroid/support/design/widget/HeaderBehavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    iput-object v2, v0, Landroid/support/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    .line 245
    iget-object v0, v0, Landroid/support/design/widget/HeaderBehavior;->mFlingRunnable:Ljava/lang/Runnable;

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0

    :cond_49
    move-object v3, p1

    .line 248
    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/HeaderBehavior;->onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    const/4 v0, 0x0

    return v0
.end method

.method getMaxDragOffset(Landroid/view/View;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method getScrollRangeForDragFling(Landroid/view/View;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .registers 1

    .line 217
    invoke-virtual {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result p0

    return p0
.end method

.method onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 55
    iget v0, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    if-gez v0, :cond_12

    .line 56
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    .line 59
    :cond_12
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1f

    .line 62
    iget-boolean v0, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    if-eqz v0, :cond_1f

    return v2

    .line 66
    :cond_1f
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, -0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_8c

    goto :goto_7f

    .line 80
    :pswitch_29
    iget p1, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    if-ne p1, v1, :cond_2e

    goto :goto_7f

    .line 85
    :cond_2e
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-ne p1, v1, :cond_35

    goto :goto_7f

    .line 90
    :cond_35
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 91
    iget p2, p0, Landroid/support/design/widget/HeaderBehavior;->mLastMotionY:I

    sub-int p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 92
    iget v0, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    if-le p2, v0, :cond_7f

    .line 93
    iput-boolean v2, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 94
    iput p1, p0, Landroid/support/design/widget/HeaderBehavior;->mLastMotionY:I

    goto :goto_7f

    .line 101
    :pswitch_4b
    iput-boolean v3, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 102
    iput v1, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 103
    iget-object p1, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_7f

    .line 104
    iget-object p1, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_7f

    .line 68
    :pswitch_5c
    iput-boolean v3, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 69
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 70
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 71
    invoke-virtual {p0, p2}, Landroid/support/design/widget/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_7f

    .line 72
    iput v1, p0, Landroid/support/design/widget/HeaderBehavior;->mLastMotionY:I

    .line 73
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 74
    invoke-direct {p0}, Landroid/support/design/widget/HeaderBehavior;->ensureVelocityTracker()V

    .line 111
    :cond_7f
    :goto_7f
    iget-object p1, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_88

    .line 112
    iget-object p1, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 115
    :cond_88
    iget-boolean p0, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    return p0

    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_4b
        :pswitch_29
        :pswitch_4b
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 120
    iget v0, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    if-gez v0, :cond_12

    .line 121
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    .line 124
    :cond_12
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_bc

    goto/16 :goto_b1

    .line 140
    :pswitch_1e
    iget v0, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v2, :cond_27

    return v3

    .line 145
    :cond_27
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 146
    iget v2, p0, Landroid/support/design/widget/HeaderBehavior;->mLastMotionY:I

    sub-int/2addr v2, v0

    .line 148
    iget-boolean v3, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    if-nez v3, :cond_46

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    if-le v3, v4, :cond_46

    .line 149
    iput-boolean v1, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    if-lez v2, :cond_43

    .line 151
    iget v3, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    sub-int/2addr v2, v3

    goto :goto_46

    .line 153
    :cond_43
    iget v3, p0, Landroid/support/design/widget/HeaderBehavior;->mTouchSlop:I

    add-int/2addr v2, v3

    :cond_46
    :goto_46
    move v6, v2

    .line 157
    iget-boolean v2, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    if-eqz v2, :cond_b1

    .line 158
    iput v0, p0, Landroid/support/design/widget/HeaderBehavior;->mLastMotionY:I

    .line 160
    invoke-virtual {p0, p2}, Landroid/support/design/widget/HeaderBehavior;->getMaxDragOffset(Landroid/view/View;)I

    move-result v7

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Landroid/support/design/widget/HeaderBehavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    goto :goto_b1

    .line 166
    :pswitch_59
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7d

    .line 167
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 168
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 169
    iget-object v0, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v10

    .line 170
    invoke-virtual {p0, p2}, Landroid/support/design/widget/HeaderBehavior;->getScrollRangeForDragFling(Landroid/view/View;)I

    move-result v0

    neg-int v8, v0

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v5 .. v10}, Landroid/support/design/widget/HeaderBehavior;->fling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    .line 174
    :cond_7d
    :pswitch_7d
    iput-boolean v3, p0, Landroid/support/design/widget/HeaderBehavior;->mIsBeingDragged:Z

    .line 175
    iput v2, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 176
    iget-object p1, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_b1

    .line 177
    iget-object p1, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 178
    iput-object p1, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_b1

    .line 126
    :pswitch_8e
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 127
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 129
    invoke-virtual {p1, p2, v0, v2}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_b0

    invoke-virtual {p0, p2}, Landroid/support/design/widget/HeaderBehavior;->canDragView(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 130
    iput v2, p0, Landroid/support/design/widget/HeaderBehavior;->mLastMotionY:I

    .line 131
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/HeaderBehavior;->mActivePointerId:I

    .line 132
    invoke-direct {p0}, Landroid/support/design/widget/HeaderBehavior;->ensureVelocityTracker()V

    goto :goto_b1

    :cond_b0
    return v3

    .line 184
    :cond_b1
    :goto_b1
    iget-object p1, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_ba

    .line 185
    iget-object p0, p0, Landroid/support/design/widget/HeaderBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_ba
    return v1

    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_59
        :pswitch_1e
        :pswitch_7d
    .end packed-switch
.end method

.method final scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int v4, v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    .line 222
    invoke-virtual/range {v1 .. v6}, Landroid/support/design/widget/HeaderBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p0

    return p0
.end method

.method setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)I"
        }
    .end annotation

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 192
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/HeaderBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p0

    return p0
.end method

.method setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result p1

    if-eqz p4, :cond_15

    if-lt p1, p4, :cond_15

    if-gt p1, p5, :cond_15

    .line 204
    invoke-static {p3, p4, p5}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result p2

    if-eq p1, p2, :cond_15

    .line 207
    invoke-virtual {p0, p2}, Landroid/support/design/widget/HeaderBehavior;->setTopAndBottomOffset(I)Z

    sub-int/2addr p1, p2

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method
