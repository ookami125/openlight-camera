.class public Landroid/support/v4/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "NestedScrollView.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent;
.implements Landroid/support/v4/view/NestedScrollingChild2;
.implements Landroid/support/v4/view/ScrollingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;,
        Landroid/support/v4/widget/NestedScrollView$SavedState;,
        Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_DELEGATE:Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;

.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final SCROLLVIEW_STYLEABLE:[I

.field private static final TAG:Ljava/lang/String; = "NestedScrollView"


# instance fields
.field private mActivePointerId:I

.field private final mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLaidOut:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mLastScrollerY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private mOnScrollChangeListener:Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;

.field private final mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScroller:Landroid/widget/OverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 171
    new-instance v0, Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;-><init>()V

    sput-object v0, Landroid/support/v4/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;

    const/4 v0, 0x1

    .line 173
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101017a

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 185
    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 193
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLayoutDirty:Z

    const/4 v1, 0x0

    .line 112
    iput-boolean v1, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLaidOut:Z

    const/4 v2, 0x0

    .line 119
    iput-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 126
    iput-boolean v1, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 142
    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v2, -0x1

    .line 152
    iput v2, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    const/4 v2, 0x2

    .line 157
    new-array v3, v2, [I

    iput-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    .line 158
    new-array v2, v2, [I

    iput-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    .line 194
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->initScrollView()V

    .line 196
    sget-object v2, Landroid/support/v4/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 199
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->setFillViewport(Z)V

    .line 201
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 203
    new-instance p1, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {p1, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 204
    new-instance p1, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {p1, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 207
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 209
    sget-object p1, Landroid/support/v4/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private canScroll()Z
    .registers 5

    const/4 v0, 0x0

    .line 452
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 454
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 455
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result p0

    add-int/2addr v1, p0

    if-ge v2, v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0

    :cond_1d
    return v0
.end method

.method private static clamp(III)I
    .registers 4

    if-ge p1, p2, :cond_c

    if-gez p0, :cond_5

    goto :goto_c

    :cond_5
    add-int v0, p1, p0

    if-le v0, p2, :cond_b

    sub-int/2addr p2, p1

    return p2

    :cond_b
    return p0

    :cond_c
    :goto_c
    const/4 p0, 0x0

    return p0
.end method

.method private doScrollY(I)V
    .registers 4

    if-eqz p1, :cond_e

    .line 1310
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 1311
    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    goto :goto_e

    .line 1313
    :cond_b
    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    :cond_e
    :goto_e
    return-void
.end method

.method private endDrag()V
    .registers 2

    const/4 v0, 0x0

    .line 1771
    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 1773
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 1774
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll(I)V

    .line 1776
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_17

    .line 1777
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 1778
    iget-object p0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_17
    return-void
.end method

.method private ensureGlows()V
    .registers 3

    .line 1801
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    .line 1802
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_23

    .line 1803
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1804
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1805
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_23

    :cond_1e
    const/4 v0, 0x0

    .line 1808
    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1809
    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    :cond_23
    :goto_23
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .registers 15

    const/4 v0, 0x2

    .line 1057
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object p0

    .line 1069
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move-object v3, v2

    move v2, v4

    :goto_e
    if-ge v2, v0, :cond_54

    .line 1071
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1072
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1073
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v7

    const/4 v8, 0x1

    if-ge p2, v7, :cond_51

    if-ge v6, p3, :cond_51

    if-ge p2, v6, :cond_29

    if-ge v7, p3, :cond_29

    move v9, v8

    goto :goto_2a

    :cond_29
    move v9, v1

    :goto_2a
    if-nez v3, :cond_2f

    move-object v3, v5

    move v4, v9

    goto :goto_51

    :cond_2f
    if-eqz p1, :cond_37

    .line 1089
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v6, v10, :cond_3f

    :cond_37
    if-nez p1, :cond_41

    .line 1090
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    if-le v7, v6, :cond_41

    :cond_3f
    move v6, v8

    goto :goto_42

    :cond_41
    move v6, v1

    :goto_42
    if-eqz v4, :cond_49

    if-eqz v9, :cond_51

    if-eqz v6, :cond_51

    goto :goto_50

    :cond_49
    if-eqz v9, :cond_4e

    move-object v3, v5

    move v4, v8

    goto :goto_51

    :cond_4e
    if-eqz v6, :cond_51

    :goto_50
    move-object v3, v5

    :cond_51
    :goto_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_54
    return-object v3
.end method

.method private flingWithNestedDispatch(I)V
    .registers 6

    .line 1761
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    if-gtz v0, :cond_8

    if-lez p1, :cond_11

    .line 1763
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_13

    if-gez p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    int-to-float v1, p1

    const/4 v2, 0x0

    .line 1764
    invoke-virtual {p0, v2, v1}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v3

    if-nez v3, :cond_22

    .line 1765
    invoke-virtual {p0, v2, v1, v0}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 1766
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->fling(I)V

    :cond_22
    return-void
.end method

.method private getVerticalScrollFactorCompat()F
    .registers 6

    .line 952
    iget v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVerticalScrollFactor:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_35

    .line 953
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 954
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 955
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 961
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 960
    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVerticalScrollFactor:F

    goto :goto_35

    .line 957
    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Expected theme to define listPreferredItemHeight."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 963
    :cond_35
    :goto_35
    iget p0, p0, Landroid/support/v4/widget/NestedScrollView;->mVerticalScrollFactor:F

    return p0
.end method

.method private inChild(II)Z
    .registers 6

    .line 598
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2b

    .line 599
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    .line 600
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 601
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    if-lt p2, v2, :cond_2a

    .line 602
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge p2, v2, :cond_2a

    .line 603
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p2

    if-lt p1, p2, :cond_2a

    .line 604
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p0

    if-ge p1, p0, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    return v1

    :cond_2b
    return v1
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    .line 610
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 611
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_10

    .line 613
    :cond_b
    iget-object p0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :goto_10
    return-void
.end method

.method private initScrollView()V
    .registers 3

    .line 389
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    const/4 v0, 0x1

    .line 390
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->setFocusable(Z)V

    const/high16 v0, 0x40000

    .line 391
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    const/4 v0, 0x0

    .line 392
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->setWillNotDraw(Z)V

    .line 393
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    .line 395
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->mMinimumVelocity:I

    .line 396
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->mMaximumVelocity:I

    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    .line 618
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 619
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .registers 4

    .line 1288
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v4/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1736
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 1737
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_15

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .registers 5

    .line 1296
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1297
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1299
    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    if-lt p1, v0, :cond_23

    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    .line 1300
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p0

    add-int/2addr p0, p3

    if-gt p1, p0, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    return p0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    .line 907
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 908
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 909
    iget v2, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    if-ne v1, v2, :cond_27

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 914
    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 915
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 916
    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_27

    .line 917
    iget-object p0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_27
    return-void
.end method

.method private recycleVelocityTracker()V
    .registers 2

    .line 624
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 625
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 626
    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_c
    return-void
.end method

.method private scrollAndFocus(III)Z
    .registers 10

    .line 1203
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    .line 1204
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x21

    if-ne p1, v4, :cond_11

    move v4, v3

    goto :goto_12

    :cond_11
    move v4, v2

    .line 1208
    :goto_12
    invoke-direct {p0, v4, p2, p3}, Landroid/support/v4/widget/NestedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_19

    move-object v5, p0

    :cond_19
    if-lt p2, v1, :cond_1e

    if-gt p3, v0, :cond_1e

    goto :goto_28

    :cond_1e
    if-eqz v4, :cond_22

    sub-int/2addr p2, v1

    goto :goto_24

    :cond_22
    sub-int p2, p3, v0

    .line 1217
    :goto_24
    invoke-direct {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->doScrollY(I)V

    move v2, v3

    .line 1220
    :goto_28
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object p0

    if-eq v5, p0, :cond_31

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_31
    return v2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .registers 3

    .line 1506
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1509
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1511
    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p1, :cond_16

    const/4 v0, 0x0

    .line 1514
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    :cond_16
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .registers 5

    .line 1527
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    move v1, v0

    :goto_a
    if-eqz v1, :cond_15

    if-eqz p2, :cond_12

    .line 1531
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_15

    .line 1533
    :cond_12
    invoke-virtual {p0, v0, p1}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    :cond_15
    :goto_15
    return v1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 3

    .line 401
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 405
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    .line 402
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ScrollView can host only one direct child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addView(Landroid/view/View;I)V
    .registers 4

    .line 410
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 414
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void

    .line 411
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ScrollView can host only one direct child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    .line 428
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 432
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 429
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ScrollView can host only one direct child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    .line 419
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_a

    .line 423
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 420
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ScrollView can host only one direct child"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public arrowScroll(I)Z
    .registers 9

    .line 1234
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_7

    const/4 v0, 0x0

    .line 1237
    :cond_7
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1239
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getMaxScrollAmount()I

    move-result v2

    if-eqz v1, :cond_36

    .line 1241
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/support/v4/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1242
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1243
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1244
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v2

    .line 1245
    invoke-direct {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->doScrollY(I)V

    .line 1246
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    goto :goto_74

    :cond_36
    const/16 v1, 0x21

    const/4 v3, 0x0

    const/16 v4, 0x82

    if-ne p1, v1, :cond_48

    .line 1251
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v2, :cond_48

    .line 1252
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    goto :goto_6a

    :cond_48
    if-ne p1, v4, :cond_6a

    .line 1254
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_6a

    .line 1255
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1256
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v1, v5

    if-ge v1, v2, :cond_6a

    move v2, v1

    :cond_6a
    :goto_6a
    if-nez v2, :cond_6d

    return v3

    :cond_6d
    if-ne p1, v4, :cond_70

    goto :goto_71

    :cond_70
    neg-int v2, v2

    .line 1265
    :goto_71
    invoke-direct {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->doScrollY(I)V

    :goto_74
    if-eqz v0, :cond_91

    .line 1268
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_91

    .line 1269
    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_91

    .line 1275
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getDescendantFocusability()I

    move-result p1

    const/high16 v0, 0x20000

    .line 1276
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 1277
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestFocus()Z

    .line 1278
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    :cond_91
    const/4 p0, 0x1

    return p0
.end method

.method public computeHorizontalScrollExtent()I
    .registers 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1416
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollOffset()I
    .registers 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1409
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollRange()I
    .registers 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1402
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    move-result p0

    return p0
.end method

.method public computeScroll()V
    .registers 19

    move-object/from16 v10, p0

    .line 1451
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    const/4 v12, 0x1

    if-eqz v0, :cond_9c

    .line 1452
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    .line 1453
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v13

    .line 1455
    iget v0, v10, Landroid/support/v4/widget/NestedScrollView;->mLastScrollerY:I

    sub-int v6, v13, v0

    const/4 v1, 0x0

    .line 1458
    iget-object v3, v10, Landroid/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1459
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    aget v0, v0, v12

    sub-int/2addr v6, v0

    :cond_2d
    move v14, v6

    if-eqz v14, :cond_96

    .line 1463
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v15

    .line 1464
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v9

    const/4 v1, 0x0

    .line 1466
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v2, v14

    move v4, v9

    move v6, v15

    move v11, v9

    move/from16 v9, v16

    invoke-virtual/range {v0 .. v9}, Landroid/support/v4/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    .line 1468
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    sub-int v2, v0, v11

    sub-int v4, v14, v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    .line 1471
    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    if-nez v0, :cond_96

    .line 1473
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_6e

    if-ne v0, v12, :cond_6b

    if-lez v15, :cond_6b

    goto :goto_6e

    :cond_6b
    const/16 v17, 0x0

    goto :goto_70

    :cond_6e
    :goto_6e
    move/from16 v17, v12

    :goto_70
    if-eqz v17, :cond_96

    .line 1477
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->ensureGlows()V

    if-gtz v13, :cond_86

    if-lez v11, :cond_86

    .line 1479
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iget-object v1, v10, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_96

    :cond_86
    if-lt v13, v15, :cond_96

    if-ge v11, v15, :cond_96

    .line 1481
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    iget-object v1, v10, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 1488
    :cond_96
    :goto_96
    iput v13, v10, Landroid/support/v4/widget/NestedScrollView;->mLastScrollerY:I

    .line 1489
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_a8

    .line 1492
    :cond_9c
    invoke-virtual {v10, v12}, Landroid/support/v4/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 1493
    invoke-virtual {v10, v12}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll(I)V

    :cond_a5
    const/4 v0, 0x0

    .line 1496
    iput v0, v10, Landroid/support/v4/widget/NestedScrollView;->mLastScrollerY:I

    :goto_a8
    return-void
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .registers 9

    .line 1548
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1550
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    .line 1551
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    add-int v3, v2, v0

    .line 1554
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v4

    .line 1557
    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1b

    add-int/2addr v2, v4

    .line 1562
    :cond_1b
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_28

    sub-int/2addr v3, v4

    .line 1568
    :cond_28
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v3, :cond_4d

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-le v4, v2, :cond_4d

    .line 1573
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_3b

    .line 1575
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    add-int/2addr p1, v1

    goto :goto_3f

    .line 1578
    :cond_3b
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v3

    add-int/2addr p1, v1

    .line 1582
    :goto_3f
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    sub-int/2addr p0, v3

    .line 1584
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_6d

    .line 1586
    :cond_4d
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ge v4, v2, :cond_6d

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v3, :cond_6d

    .line 1591
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v0, :cond_60

    .line 1593
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p1

    sub-int/2addr v1, v3

    goto :goto_64

    .line 1596
    :cond_60
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    .line 1600
    :goto_64
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p0

    neg-int p0, p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_6d
    :goto_6d
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .registers 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1395
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollOffset()I
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1388
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollRange()I
    .registers 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1366
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    .line 1367
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v0, :cond_15

    return v1

    :cond_15
    const/4 v0, 0x0

    .line 1372
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1373
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p0

    sub-int v1, v2, v1

    .line 1374
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gez p0, :cond_2c

    sub-int/2addr v2, p0

    goto :goto_30

    :cond_2c
    if-le p0, v0, :cond_30

    sub-int/2addr p0, v0

    add-int/2addr v2, p0

    :cond_30
    :goto_30
    return v2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 544
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 4

    .line 281
    iget-object p0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 3

    .line 286
    iget-object p0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 5

    .line 270
    iget-object p0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .registers 12

    .line 276
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12

    .line 257
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p0

    return p0
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .registers 14

    .line 264
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 1815
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1816
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_96

    .line 1817
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    .line 1818
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 1819
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1820
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1822
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1823
    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1824
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1825
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1827
    :cond_47
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1829
    :cond_4a
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_96

    .line 1830
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1831
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1832
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    neg-int v4, v2

    .line 1834
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 1835
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v3

    int-to-float v0, v0

    .line 1834
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x43340000    # 180.0f

    int-to-float v4, v2

    const/4 v5, 0x0

    .line 1836
    invoke-virtual {p1, v0, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1837
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 1838
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 1839
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1841
    :cond_93
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_96
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    .line 556
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 558
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->canScroll()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x82

    if-nez v0, :cond_37

    .line 559
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_36

    .line 560
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_22

    const/4 p1, 0x0

    .line 562
    :cond_22
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_35

    if-eq p1, p0, :cond_35

    .line 566
    invoke-virtual {p1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result p0

    if-eqz p0, :cond_35

    const/4 v1, 0x1

    :cond_35
    return v1

    :cond_36
    return v1

    .line 572
    :cond_37
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_75

    .line 573
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x3e

    const/16 v4, 0x21

    if-eq v0, v3, :cond_6b

    packed-switch v0, :pswitch_data_76

    goto :goto_75

    .line 582
    :pswitch_4b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_56

    .line 583
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_75

    .line 585
    :cond_56
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_75

    .line 575
    :pswitch_5b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p1

    if-nez p1, :cond_66

    .line 576
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_75

    .line 578
    :cond_66
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_75

    .line 589
    :cond_6b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_72

    move v2, v4

    :cond_72
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->pageScroll(I)Z

    :cond_75
    :goto_75
    return v1

    :pswitch_data_76
    .packed-switch 0x13
        :pswitch_5b
        :pswitch_4b
    .end packed-switch
.end method

.method public fling(I)V
    .registers 15

    .line 1748
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2c

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 1749
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(II)Z

    .line 1750
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v6, p1

    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 1755
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/NestedScrollView;->mLastScrollerY:I

    .line 1756
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_2c
    return-void
.end method

.method public fullScroll(I)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x82

    if-ne p1, v2, :cond_8

    move v2, v1

    goto :goto_9

    :cond_8
    move v2, v0

    .line 1171
    :goto_9
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    .line 1173
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 1174
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_38

    .line 1177
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_38

    sub-int/2addr v0, v1

    .line 1179
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1180
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1181
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1185
    :cond_38
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->scrollAndFocus(III)Z

    move-result p0

    return p0
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 4

    .line 366
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 370
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 371
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    .line 372
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p0

    sub-int/2addr v2, p0

    sub-int/2addr v2, v1

    if-ge v2, v0, :cond_2a

    int-to-float p0, v2

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0

    :cond_2a
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getMaxScrollAmount()I
    .registers 2

    .line 385
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public getNestedScrollAxes()I
    .registers 1

    .line 339
    iget-object p0, p0, Landroid/support/v4/widget/NestedScrollView;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result p0

    return p0
.end method

.method getScrollRange()I
    .registers 5

    .line 1032
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_22

    .line 1033
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1035
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result p0

    sub-int/2addr v2, p0

    sub-int/2addr v0, v2

    .line 1034
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_22
    return v1
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 2

    .line 351
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 355
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 356
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p0

    if-ge p0, v0, :cond_16

    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0

    :cond_16
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public hasNestedScrollingParent()Z
    .registers 1

    .line 246
    iget-object p0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result p0

    return p0
.end method

.method public hasNestedScrollingParent(I)Z
    .registers 2

    .line 251
    iget-object p0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result p0

    return p0
.end method

.method public isFillViewport()Z
    .registers 1

    .line 468
    iget-boolean p0, p0, Landroid/support/v4/widget/NestedScrollView;->mFillViewport:Z

    return p0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 1

    .line 221
    iget-object p0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result p0

    return p0
.end method

.method public isSmoothScrollingEnabled()Z
    .registers 1

    .line 490
    iget-boolean p0, p0, Landroid/support/v4/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    return p0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 5

    .line 1422
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1427
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v0

    .line 1428
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result p0

    add-int/2addr v0, p0

    iget p0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1427
    invoke-static {p2, v0, p0}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result p0

    const/4 p2, 0x0

    .line 1430
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1432
    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 6

    .line 1438
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1441
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result p5

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result p0

    add-int/2addr p5, p0

    iget p0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p5, p0

    iget p0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p5, p0

    add-int/2addr p5, p3

    iget p0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1440
    invoke-static {p2, p5, p0}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result p0

    .line 1443
    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p2, p3

    const/4 p3, 0x0

    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1446
    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 1703
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 1705
    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLaidOut:Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 924
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    .line 925
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_12

    goto :goto_43

    .line 927
    :cond_12
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-nez v0, :cond_43

    const/16 v0, 0x9

    .line 928
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_43

    .line 930
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 931
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v0

    .line 932
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int p1, v2, p1

    if-gez p1, :cond_35

    move p1, v1

    goto :goto_38

    :cond_35
    if-le p1, v0, :cond_38

    move p1, v0

    :cond_38
    :goto_38
    if-eq p1, v2, :cond_43

    .line 940
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    invoke-super {p0, v0, p1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    const/4 p0, 0x1

    return p0

    :cond_43
    :goto_43
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14

    .line 651
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_d

    .line 652
    iget-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_d

    return v2

    :cond_d
    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x6

    if-eq v0, v3, :cond_cf

    const/4 v3, -0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_d6

    goto/16 :goto_d2

    .line 667
    :pswitch_19
    iget v0, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    if-ne v0, v3, :cond_1f

    goto/16 :goto_d2

    .line 673
    :cond_1f
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-ne v5, v3, :cond_42

    const-string p1, "NestedScrollView"

    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in onInterceptTouchEvent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d2

    .line 680
    :cond_42
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 681
    iget v3, p0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 682
    iget v5, p0, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    if-le v3, v5, :cond_d2

    .line 683
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getNestedScrollAxes()I

    move-result v3

    and-int/2addr v1, v3

    if-nez v1, :cond_d2

    .line 684
    iput-boolean v2, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 685
    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 686
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 687
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 688
    iput v4, p0, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    .line 689
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_d2

    .line 691
    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_d2

    .line 729
    :pswitch_72
    iput-boolean v4, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 730
    iput v3, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 731
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 732
    iget-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v11

    invoke-virtual/range {v5 .. v11}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_93

    .line 733
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 735
    :cond_93
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll(I)V

    goto :goto_d2

    .line 698
    :pswitch_97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 699
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v3, v0}, Landroid/support/v4/widget/NestedScrollView;->inChild(II)Z

    move-result v3

    if-nez v3, :cond_ad

    .line 700
    iput-boolean v4, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 701
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->recycleVelocityTracker()V

    goto :goto_d2

    .line 709
    :cond_ad
    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 710
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 712
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->initOrResetVelocityTracker()V

    .line 713
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 720
    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 721
    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 722
    invoke-virtual {p0, v1, v4}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(II)Z

    goto :goto_d2

    .line 738
    :cond_cf
    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 746
    :cond_d2
    :goto_d2
    iget-boolean p0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    return p0

    nop

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_97
        :pswitch_72
        :pswitch_19
        :pswitch_72
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .line 1670
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 1671
    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 1673
    iget-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz p2, :cond_17

    iget-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {p2, p0}, Landroid/support/v4/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 1674
    iget-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    :cond_17
    const/4 p2, 0x0

    .line 1676
    iput-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1678
    iget-boolean p4, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLaidOut:Z

    if-nez p4, :cond_6a

    .line 1679
    iget-object p4, p0, Landroid/support/v4/widget/NestedScrollView;->mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

    if-eqz p4, :cond_2f

    .line 1680
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result p4

    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

    iget v0, v0, Landroid/support/v4/widget/NestedScrollView$SavedState;->scrollPosition:I

    invoke-virtual {p0, p4, v0}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 1681
    iput-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

    .line 1684
    :cond_2f
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_3e

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    goto :goto_3f

    :cond_3e
    move p2, p1

    :goto_3f
    sub-int/2addr p5, p3

    .line 1686
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    sub-int/2addr p2, p5

    .line 1685
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1689
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p3

    if-le p3, p2, :cond_5d

    .line 1690
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    goto :goto_6a

    .line 1691
    :cond_5d
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p2

    if-gez p2, :cond_6a

    .line 1692
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 1697
    :cond_6a
    :goto_6a
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    const/4 p1, 0x1

    .line 1698
    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLaidOut:Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 512
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 514
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mFillViewport:Z

    if-nez v0, :cond_8

    return-void

    .line 518
    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_f

    return-void

    .line 523
    :cond_f
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_4c

    const/4 p2, 0x0

    .line 524
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 525
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getMeasuredHeight()I

    move-result v0

    .line 526
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-ge v1, v0, :cond_4c

    .line 527
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 530
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 529
    invoke-static {p1, v2, v1}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result p1

    .line 531
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 532
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    .line 534
    invoke-static {v0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 536
    invoke-virtual {p2, p1, p0}, Landroid/view/View;->measure(II)V

    :cond_4c
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    if-nez p4, :cond_8

    float-to-int p1, p3

    .line 326
    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->flingWithNestedDispatch(I)V

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    .line 334
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result p0

    return p0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 5

    const/4 p1, 0x0

    .line 320
    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[I)Z

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 12

    .line 311
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p1

    const/4 p2, 0x0

    .line 312
    invoke-virtual {p0, p2, p5}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    .line 313
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p2

    sub-int v2, p2, p1

    sub-int v4, p5, v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 315
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[I)Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    .line 298
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    const/4 p1, 0x2

    .line 299
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(I)Z

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 5

    .line 969
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 5

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    const/16 p1, 0x82

    goto :goto_b

    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    const/16 p1, 0x21

    :cond_b
    :goto_b
    if-nez p2, :cond_17

    .line 1637
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1f

    .line 1638
    :cond_17
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    :goto_1f
    const/4 v1, 0x0

    if-nez v0, :cond_23

    return v1

    .line 1645
    :cond_23
    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_2a

    return v1

    .line 1649
    :cond_2a
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1878
    instance-of v0, p1, Landroid/support/v4/widget/NestedScrollView$SavedState;

    if-nez v0, :cond_8

    .line 1879
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1883
    :cond_8
    check-cast p1, Landroid/support/v4/widget/NestedScrollView$SavedState;

    .line 1884
    invoke-virtual {p1}, Landroid/support/v4/widget/NestedScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1885
    iput-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

    .line 1886
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1891
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1892
    new-instance v1, Landroid/support/v4/widget/NestedScrollView$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1893
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result p0

    iput p0, v1, Landroid/support/v4/widget/NestedScrollView$SavedState;->scrollPosition:I

    return-object v1
.end method

.method protected onScrollChanged(IIII)V
    .registers 12

    .line 503
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 505
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mOnScrollChangeListener:Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;

    if-eqz v0, :cond_11

    .line 506
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mOnScrollChangeListener:Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;->onScrollChange(Landroid/support/v4/widget/NestedScrollView;IIII)V

    :cond_11
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 1710
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1712
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_27

    if-ne p0, p1, :cond_c

    goto :goto_27

    :cond_c
    const/4 p2, 0x0

    .line 1720
    invoke-direct {p0, p1, p2, p4}, Landroid/support/v4/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 1721
    iget-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1722
    iget-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1723
    iget-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result p1

    .line 1724
    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->doScrollY(I)V

    :cond_26
    return-void

    :cond_27
    :goto_27
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 4

    and-int/lit8 p0, p3, 0x2

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3

    .line 304
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 305
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 25

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 751
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 753
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    .line 755
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v13, 0x0

    if-nez v0, :cond_14

    .line 758
    iput v13, v10, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    .line 760
    :cond_14
    iget v1, v10, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    int-to-float v1, v1

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v1, -0x1

    const/4 v15, 0x1

    packed-switch v0, :pswitch_data_262

    :pswitch_20
    goto/16 :goto_255

    .line 894
    :pswitch_22
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 895
    iget v0, v10, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    goto/16 :goto_255

    .line 888
    :pswitch_34
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 889
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v10, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 890
    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    goto/16 :goto_255

    .line 878
    :pswitch_47
    iget-boolean v0, v10, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_6b

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6b

    .line 879
    iget-object v2, v10, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 880
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    .line 879
    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 881
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 884
    :cond_6b
    iput v1, v10, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 885
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->endDrag()V

    goto/16 :goto_255

    .line 789
    :pswitch_72
    iget v0, v10, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    if-ne v9, v1, :cond_99

    const-string v0, "NestedScrollView"

    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in onTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_255

    .line 795
    :cond_99
    invoke-virtual {v11, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v6, v0

    .line 796
    iget v0, v10, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    sub-int v7, v0, v6

    const/4 v1, 0x0

    .line 797
    iget-object v3, v10, Landroid/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    iget-object v4, v10, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 799
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    aget v0, v0, v15

    sub-int/2addr v7, v0

    .line 800
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    aget v0, v0, v15

    int-to-float v0, v0

    invoke-virtual {v12, v14, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 801
    iget v0, v10, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    iget-object v1, v10, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    aget v1, v1, v15

    add-int/2addr v0, v1

    iput v0, v10, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    .line 803
    :cond_c7
    iget-boolean v0, v10, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-nez v0, :cond_e7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v10, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    if-le v0, v1, :cond_e7

    .line 804
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_dc

    .line 806
    invoke-interface {v0, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 808
    :cond_dc
    iput-boolean v15, v10, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-lez v7, :cond_e4

    .line 810
    iget v0, v10, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    sub-int/2addr v7, v0

    goto :goto_e7

    .line 812
    :cond_e4
    iget v0, v10, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    add-int/2addr v7, v0

    :cond_e7
    :goto_e7
    move v8, v7

    .line 815
    iget-boolean v0, v10, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_255

    .line 817
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    aget v0, v0, v15

    sub-int/2addr v6, v0

    iput v6, v10, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 819
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v16

    .line 820
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v7

    .line 821
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_109

    if-ne v0, v15, :cond_106

    if-lez v7, :cond_106

    goto :goto_109

    :cond_106
    move/from16 v17, v13

    goto :goto_10b

    :cond_109
    :goto_109
    move/from16 v17, v15

    :goto_10b
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 827
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move v2, v8

    move v6, v7

    move/from16 v21, v7

    move/from16 v7, v18

    move v14, v8

    move/from16 v8, v19

    move/from16 v22, v9

    move/from16 v9, v20

    invoke-virtual/range {v0 .. v9}, Landroid/support/v4/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    move-result v0

    if-eqz v0, :cond_138

    .line 828
    invoke-virtual {v10, v13}, Landroid/support/v4/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v0

    if-nez v0, :cond_138

    .line 830
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 833
    :cond_138
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    sub-int v2, v0, v16

    sub-int v4, v14, v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 835
    iget-object v5, v10, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    if-eqz v0, :cond_16a

    .line 837
    iget v0, v10, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    iget-object v1, v10, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    aget v1, v1, v15

    sub-int/2addr v0, v1

    iput v0, v10, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 838
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    aget v0, v0, v15

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {v12, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 839
    iget v0, v10, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    iget-object v1, v10, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    aget v1, v1, v15

    add-int/2addr v0, v1

    iput v0, v10, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    goto/16 :goto_255

    :cond_16a
    if-eqz v17, :cond_255

    .line 841
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->ensureGlows()V

    add-int v0, v16, v14

    if-gez v0, :cond_199

    .line 844
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v1, v14

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    move/from16 v2, v22

    .line 845
    invoke-virtual {v11, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 844
    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 846
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1c5

    .line 847
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1c5

    :cond_199
    move/from16 v1, v21

    move/from16 v2, v22

    if-le v0, v1, :cond_1c5

    .line 850
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v1, v14

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    .line 851
    invoke-virtual {v11, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 852
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    sub-float/2addr v3, v2

    .line 850
    invoke-static {v0, v1, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 853
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1c5

    .line 854
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 857
    :cond_1c5
    :goto_1c5
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_255

    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 858
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1d9

    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_255

    .line 859
    :cond_1d9
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_255

    .line 865
    :pswitch_1de
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    .line 866
    iget v3, v10, Landroid/support/v4/widget/NestedScrollView;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 867
    iget v2, v10, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 868
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, v10, Landroid/support/v4/widget/NestedScrollView;->mMinimumVelocity:I

    if-le v2, v3, :cond_1fc

    neg-int v0, v0

    .line 869
    invoke-direct {v10, v0}, Landroid/support/v4/widget/NestedScrollView;->flingWithNestedDispatch(I)V

    goto :goto_216

    .line 870
    :cond_1fc
    iget-object v2, v10, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 871
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    .line 870
    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_216

    .line 872
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 874
    :cond_216
    :goto_216
    iput v1, v10, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 875
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->endDrag()V

    goto :goto_255

    .line 764
    :pswitch_21c
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_223

    return v13

    .line 767
    :cond_223
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    xor-int/2addr v0, v15

    iput-boolean v0, v10, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_237

    .line 768
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_237

    .line 770
    invoke-interface {v0, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 778
    :cond_237
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_244

    .line 779
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 783
    :cond_244
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, v10, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 784
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v10, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    const/4 v0, 0x2

    .line 785
    invoke-virtual {v10, v0, v13}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(II)Z

    .line 899
    :cond_255
    :goto_255
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_25e

    .line 900
    iget-object v0, v10, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v12}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 902
    :cond_25e
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    return v15

    :pswitch_data_262
    .packed-switch 0x0
        :pswitch_21c
        :pswitch_1de
        :pswitch_72
        :pswitch_47
        :pswitch_20
        :pswitch_34
        :pswitch_22
    .end packed-switch
.end method

.method overScrollByCompat(IIIIIIIIZ)Z
    .registers 22

    move-object v0, p0

    .line 977
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getOverScrollMode()I

    move-result v1

    .line 979
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->computeHorizontalScrollRange()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v2, v3, :cond_13

    move v2, v5

    goto :goto_14

    :cond_13
    move v2, v4

    .line 981
    :goto_14
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->computeVerticalScrollRange()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->computeVerticalScrollExtent()I

    move-result v6

    if-le v3, v6, :cond_20

    move v3, v5

    goto :goto_21

    :cond_20
    move v3, v4

    :goto_21
    if-eqz v1, :cond_2a

    if-ne v1, v5, :cond_28

    if-eqz v2, :cond_28

    goto :goto_2a

    :cond_28
    move v2, v4

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v2, v5

    :goto_2b
    if-eqz v1, :cond_34

    if-ne v1, v5, :cond_32

    if-eqz v3, :cond_32

    goto :goto_34

    :cond_32
    move v6, v4

    goto :goto_35

    :cond_34
    :goto_34
    move v6, v5

    :goto_35
    add-int v1, p3, p1

    if-nez v2, :cond_3b

    move v7, v4

    goto :goto_3d

    :cond_3b
    move/from16 v7, p7

    :goto_3d
    add-int v2, p4, p2

    if-nez v6, :cond_43

    move v3, v4

    goto :goto_45

    :cond_43
    move/from16 v3, p8

    :goto_45
    neg-int v6, v7

    add-int v7, v7, p5

    neg-int v8, v3

    add-int v3, v3, p6

    if-le v1, v7, :cond_50

    move v1, v5

    move v6, v7

    goto :goto_56

    :cond_50
    if-ge v1, v6, :cond_54

    move v1, v5

    goto :goto_56

    :cond_54
    move v6, v1

    move v1, v4

    :goto_56
    if-le v2, v3, :cond_5b

    move v8, v3

    :goto_59
    move v2, v5

    goto :goto_60

    :cond_5b
    if-ge v2, v8, :cond_5e

    goto :goto_59

    :cond_5e
    move v8, v2

    move v2, v4

    :goto_60
    if-eqz v2, :cond_7f

    .line 1021
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/NestedScrollView;->hasNestedScrollingParent(I)Z

    move-result v3

    if-nez v3, :cond_7f

    .line 1022
    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v11

    move-object p1, v3

    move p2, v6

    move p3, v8

    move/from16 p4, v7

    move/from16 p5, v9

    move/from16 p6, v10

    move/from16 p7, v11

    invoke-virtual/range {p1 .. p7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 1025
    :cond_7f
    invoke-virtual {p0, v6, v8, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->onOverScrolled(IIZZ)V

    if-nez v1, :cond_86

    if-eqz v2, :cond_87

    :cond_86
    move v4, v5

    :cond_87
    return v4
.end method

.method public pageScroll(I)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x82

    if-ne p1, v2, :cond_8

    move v2, v1

    goto :goto_9

    :cond_8
    move v2, v0

    .line 1135
    :goto_9
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    if-eqz v2, :cond_38

    .line 1138
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1139
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4b

    sub-int/2addr v0, v1

    .line 1141
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1142
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v1, v2, :cond_4b

    .line 1143
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    goto :goto_4b

    .line 1147
    :cond_38
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1148
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gez v1, :cond_4b

    .line 1149
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1152
    :cond_4b
    :goto_4b
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1154
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->scrollAndFocus(III)Z

    move-result p0

    return p0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 1607
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_8

    .line 1608
    invoke-direct {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    goto :goto_a

    .line 1611
    :cond_8
    iput-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1613
    :goto_a
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6

    .line 1656
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1657
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 1656
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1659
    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/NestedScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result p0

    return p0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2

    if-eqz p1, :cond_5

    .line 633
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 635
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .registers 2

    const/4 v0, 0x1

    .line 1664
    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 1665
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .registers 6

    .line 1790
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_46

    const/4 v0, 0x0

    .line 1791
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1792
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->clamp(III)I

    move-result p1

    .line 1793
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p2, v1, v0}, Landroid/support/v4/widget/NestedScrollView;->clamp(III)I

    move-result p2

    .line 1794
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    if-ne p1, v0, :cond_43

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    if-eq p2, v0, :cond_46

    .line 1795
    :cond_43
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_46
    return-void
.end method

.method public setFillViewport(Z)V
    .registers 3

    .line 480
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_9

    .line 481
    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->mFillViewport:Z

    .line 482
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 2

    .line 216
    iget-object p0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;)V
    .registers 2

    .line 445
    iput-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mOnScrollChangeListener:Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;

    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2

    .line 498
    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final smoothScrollBy(II)V
    .registers 7

    .line 1325
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1329
    :cond_7
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/v4/widget/NestedScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_4b

    .line 1331
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    .line 1332
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, p1

    .line 1333
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1334
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    add-int/2addr p2, v1

    .line 1335
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, v1

    .line 1337
    iget-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p2, v2, v1, v0, p1}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 1338
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_5b

    .line 1340
    :cond_4b
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_58

    .line 1341
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 1343
    :cond_58
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    .line 1345
    :goto_5b
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/support/v4/widget/NestedScrollView;->mLastScroll:J

    return-void
.end method

.method public final smoothScrollTo(II)V
    .registers 4

    .line 1355
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 2

    .line 226
    iget-object p0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p0

    return p0
.end method

.method public startNestedScroll(II)Z
    .registers 3

    .line 231
    iget-object p0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result p0

    return p0
.end method

.method public stopNestedScroll()V
    .registers 1

    .line 236
    iget-object p0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 2

    .line 241
    iget-object p0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {p0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method
