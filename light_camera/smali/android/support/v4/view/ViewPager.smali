.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewPager$ViewPositionComparator;,
        Landroid/support/v4/view/ViewPager$LayoutParams;,
        Landroid/support/v4/view/ViewPager$PagerObserver;,
        Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;,
        Landroid/support/v4/view/ViewPager$SavedState;,
        Landroid/support/v4/view/ViewPager$DecorView;,
        Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;,
        Landroid/support/v4/view/ViewPager$PageTransformer;,
        Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$OnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z = false

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mAdapterChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsScrollStarted:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/widget/EdgeEffect;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMargin:I

.field private mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

.field private mPageTransformerLayerType:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    .line 116
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/ViewPager;->LAYOUT_ATTRS:[I

    .line 134
    new-instance v0, Landroid/support/v4/view/ViewPager$1;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$1;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 141
    new-instance v0, Landroid/support/v4/view/ViewPager$2;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$2;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 245
    new-instance v0, Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 385
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 149
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 150
    new-instance p1, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {p1}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 152
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 156
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 158
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const v0, -0x800001

    .line 173
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 174
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    const/4 v0, 0x1

    .line 183
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 201
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 228
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    const/4 p1, 0x0

    .line 229
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 263
    new-instance v0, Landroid/support/v4/view/ViewPager$3;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$3;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 271
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 386
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->initViewPager()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 390
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 150
    new-instance p1, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {p1}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 152
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, -0x1

    .line 156
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    const/4 p2, 0x0

    .line 157
    iput-object p2, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 158
    iput-object p2, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    const p2, -0x800001

    .line 173
    iput p2, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 174
    iput p2, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    const/4 p2, 0x1

    .line 183
    iput p2, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 201
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 228
    iput-boolean p2, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    const/4 p1, 0x0

    .line 229
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 263
    new-instance p2, Landroid/support/v4/view/ViewPager$3;

    invoke-direct {p2, p0}, Landroid/support/v4/view/ViewPager$3;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object p2, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 271
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 391
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->initViewPager()V

    return-void
.end method

.method private calculatePageOffsets(Landroid/support/v4/view/ViewPager$ItemInfo;ILandroid/support/v4/view/ViewPager$ItemInfo;)V
    .registers 14

    .line 1290
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 1291
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v1

    if-lez v1, :cond_12

    .line 1292
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    const/4 v1, 0x0

    if-eqz p3, :cond_b1

    .line 1295
    iget v3, p3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 1297
    iget v4, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v3, v4, :cond_6a

    .line 1300
    iget v4, p3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget p3, p3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, p3

    add-float/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    move p3, v1

    .line 1302
    :goto_25
    iget v5, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-gt v3, v5, :cond_b1

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p3, v5, :cond_b1

    .line 1303
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1304
    :goto_39
    iget v6, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v3, v6, :cond_52

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge p3, v6, :cond_52

    add-int/lit8 p3, p3, 0x1

    .line 1306
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_39

    .line 1308
    :cond_52
    :goto_52
    iget v6, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v3, v6, :cond_61

    .line 1311
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6, v3}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v2

    add-float/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 1314
    :cond_61
    iput v4, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1315
    iget v5, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 1317
    :cond_6a
    iget v4, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v3, v4, :cond_b1

    .line 1318
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1320
    iget p3, p3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    add-int/lit8 v3, v3, -0x1

    .line 1322
    :goto_7a
    iget v5, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-lt v3, v5, :cond_b1

    if-ltz v4, :cond_b1

    .line 1323
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1324
    :goto_88
    iget v6, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v3, v6, :cond_99

    if-lez v4, :cond_99

    add-int/lit8 v4, v4, -0x1

    .line 1326
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_88

    .line 1328
    :cond_99
    :goto_99
    iget v6, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v3, v6, :cond_a8

    .line 1331
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6, v3}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v6

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    add-int/lit8 v3, v3, -0x1

    goto :goto_99

    .line 1334
    :cond_a8
    iget v6, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v2

    sub-float/2addr p3, v6

    .line 1335
    iput p3, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    add-int/lit8 v3, v3, -0x1

    goto :goto_7a

    .line 1341
    :cond_b1
    iget-object p3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 1342
    iget v3, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1343
    iget v4, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v4, v4, -0x1

    .line 1344
    iget v5, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-nez v5, :cond_c4

    iget v5, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    goto :goto_c7

    :cond_c4
    const v5, -0x800001

    :goto_c7
    iput v5, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    .line 1345
    iget v5, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v0, v0, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v5, v0, :cond_d8

    iget v5, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v7, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v7

    sub-float/2addr v5, v6

    goto :goto_db

    :cond_d8
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    :goto_db
    iput v5, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    add-int/lit8 v5, p2, -0x1

    :goto_df
    if-ltz v5, :cond_10a

    .line 1349
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1350
    :goto_e9
    iget v8, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v4, v8, :cond_f9

    .line 1351
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v8, v4}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v4

    add-float/2addr v4, v2

    sub-float/2addr v3, v4

    move v4, v9

    goto :goto_e9

    .line 1353
    :cond_f9
    iget v8, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    sub-float/2addr v3, v8

    .line 1354
    iput v3, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1355
    iget v7, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-nez v7, :cond_105

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    :cond_105
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_df

    .line 1357
    :cond_10a
    iget v3, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v4, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 1358
    iget p1, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :goto_116
    if-ge p2, p3, :cond_145

    .line 1361
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1362
    :goto_120
    iget v5, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge p1, v5, :cond_130

    .line 1363
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v7, p1, 0x1

    invoke-virtual {v5, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr v3, p1

    move p1, v7

    goto :goto_120

    .line 1365
    :cond_130
    iget v5, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v5, v0, :cond_13a

    .line 1366
    iget v5, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v5, v3

    sub-float/2addr v5, v6

    iput v5, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 1368
    :cond_13a
    iput v3, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1369
    iget v4, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v4, v2

    add-float/2addr v3, v4

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_116

    .line 1372
    :cond_145
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    return-void
.end method

.method private completeScroll(Z)V
    .registers 9

    .line 1966
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    if-eqz v0, :cond_3d

    .line 1969
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1970
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_3d

    .line 1972
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1973
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 1974
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v4

    .line 1975
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1976
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v3, v5, :cond_35

    if-eq v4, v6, :cond_3d

    .line 1978
    :cond_35
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    if-eq v5, v3, :cond_3d

    .line 1980
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    .line 1985
    :cond_3d
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    move v3, v0

    move v0, v2

    .line 1986
    :goto_41
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5b

    .line 1987
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1988
    iget-boolean v5, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v5, :cond_58

    .line 1990
    iput-boolean v2, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    move v3, v1

    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_5b
    if-eqz v3, :cond_6a

    if-eqz p1, :cond_65

    .line 1995
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_6a

    .line 1997
    :cond_65
    iget-object p0, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_6a
    :goto_6a
    return-void
.end method

.method private determineTargetPage(IFII)I
    .registers 6

    .line 2398
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Landroid/support/v4/view/ViewPager;->mFlingDistance:I

    if-le p4, v0, :cond_16

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Landroid/support/v4/view/ViewPager;->mMinimumVelocity:I

    if-le p4, v0, :cond_16

    if-lez p3, :cond_13

    goto :goto_24

    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_24

    .line 2401
    :cond_16
    iget p3, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-lt p1, p3, :cond_1e

    const p3, 0x3ecccccd    # 0.4f

    goto :goto_21

    :cond_1e
    const p3, 0x3f19999a    # 0.6f

    :goto_21
    add-float/2addr p2, p3

    float-to-int p2, p2

    add-int/2addr p1, p2

    .line 2405
    :goto_24
    iget-object p2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_51

    .line 2406
    iget-object p2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2407
    iget-object p3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2410
    iget p2, p2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget p0, p0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_51
    return p1
.end method

.method private dispatchOnPageScrolled(IFI)V
    .registers 7

    .line 1915
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    .line 1916
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1918
    :cond_9
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    .line 1919
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_14
    if-ge v0, v1, :cond_26

    .line 1920
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_23

    .line 1922
    invoke-interface {v2, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1926
    :cond_26
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2f

    .line 1927
    iget-object p0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    :cond_2f
    return-void
.end method

.method private dispatchOnPageSelected(I)V
    .registers 5

    .line 1932
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    .line 1933
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1935
    :cond_9
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    .line 1936
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_14
    if-ge v0, v1, :cond_26

    .line 1937
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_23

    .line 1939
    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1943
    :cond_26
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2f

    .line 1944
    iget-object p0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {p0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    :cond_2f
    return-void
.end method

.method private dispatchOnScrollStateChanged(I)V
    .registers 5

    .line 1949
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_9

    .line 1950
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1952
    :cond_9
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    .line 1953
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_14
    if-ge v0, v1, :cond_26

    .line 1954
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v2, :cond_23

    .line 1956
    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1960
    :cond_26
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2f

    .line 1961
    iget-object p0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {p0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_2f
    return-void
.end method

.method private enableLayers(Z)V
    .registers 8

    .line 2007
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_19

    if-eqz p1, :cond_d

    .line 2009
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mPageTransformerLayerType:I

    goto :goto_e

    :cond_d
    move v3, v1

    .line 2011
    :goto_e
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_19
    return-void
.end method

.method private endDrag()V
    .registers 2

    const/4 v0, 0x0

    .line 2651
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 2652
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 2654
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_11

    .line 2655
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 2656
    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_11
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 5

    if-nez p1, :cond_7

    .line 2852
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_7
    if-nez p2, :cond_e

    const/4 p0, 0x0

    .line 2855
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    .line 2858
    :cond_e
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2859
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2860
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2861
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2863
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    .line 2864
    :goto_2a
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5b

    if-eq p2, p0, :cond_5b

    .line 2865
    check-cast p2, Landroid/view/ViewGroup;

    .line 2866
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2867
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2868
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2869
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2871
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_2a

    :cond_5b
    return-object p1
.end method

.method private getClientWidth()I
    .registers 3

    .line 593
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;
    .registers 13

    .line 2355
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_f

    .line 2356
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_10

    :cond_f
    move v2, v1

    :goto_10
    if-lez v0, :cond_19

    .line 2357
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float v0, v3, v0

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    move v8, v1

    move v9, v8

    move v1, v4

    move v7, v5

    move-object v5, v3

    move v3, v6

    .line 2364
    :goto_24
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_75

    .line 2365
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/ViewPager$ItemInfo;

    if-nez v3, :cond_4f

    .line 2367
    iget v11, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/2addr v7, v6

    if-eq v11, v7, :cond_4f

    .line 2369
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    add-float/2addr v8, v9

    add-float/2addr v8, v0

    .line 2370
    iput v8, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 2371
    iput v7, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2372
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v8, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    invoke-virtual {v7, v8}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v7

    iput v7, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v1, v1, -0x1

    .line 2375
    :cond_4f
    iget v8, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 2378
    iget v7, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v8

    add-float/2addr v7, v0

    if-nez v3, :cond_5d

    cmpl-float v3, v2, v8

    if-ltz v3, :cond_5c

    goto :goto_5d

    :cond_5c
    return-object v5

    :cond_5d
    :goto_5d
    cmpg-float v3, v2, v7

    if-ltz v3, :cond_74

    .line 2380
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    if-ne v1, v3, :cond_6b

    goto :goto_74

    .line 2387
    :cond_6b
    iget v7, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2389
    iget v9, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    move-object v5, v10

    goto :goto_24

    :cond_74
    :goto_74
    return-object v10

    :cond_75
    return-object v5
.end method

.method private static isDecorView(Landroid/view/View;)Z
    .registers 2
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1490
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 1491
    const-class v0, Landroid/support/v4/view/ViewPager$DecorView;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private isGutterDrag(FF)Z
    .registers 5

    .line 2003
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_c

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1c

    :cond_c
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    iget p0, p0, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1e

    cmpg-float p0, p2, v1

    if-gez p0, :cond_1e

    :cond_1c
    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 5

    .line 2636
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2637
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2638
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_26

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 2642
    :goto_11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2643
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2644
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_26

    .line 2645
    iget-object p0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_26
    return-void
.end method

.method private pageScrolled(I)Z
    .registers 8

    .line 1810
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 1811
    iget-boolean p1, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    if-eqz p1, :cond_e

    return v1

    .line 1816
    :cond_e
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    const/4 p1, 0x0

    .line 1817
    invoke-virtual {p0, v1, p1, v1}, Landroid/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    .line 1818
    iget-boolean p0, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    if-eqz p0, :cond_19

    return v1

    .line 1819
    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "onPageScrolled did not call superclass implementation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1824
    :cond_21
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    .line 1825
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    .line 1826
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int/2addr v3, v2

    .line 1827
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v4, v4

    int-to-float v2, v2

    div-float/2addr v4, v2

    .line 1828
    iget v5, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    int-to-float p1, p1

    div-float/2addr p1, v2

    .line 1829
    iget v2, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr p1, v2

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v3

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1833
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    .line 1834
    invoke-virtual {p0, v5, p1, v0}, Landroid/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    .line 1835
    iget-boolean p0, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    if-eqz p0, :cond_4a

    const/4 p0, 0x1

    return p0

    .line 1836
    :cond_4a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "onPageScrolled did not call superclass implementation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private performDrag(F)Z
    .registers 11

    .line 2304
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float/2addr v0, p1

    .line 2305
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2307
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    .line 2309
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2311
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    mul-float/2addr v1, v0

    .line 2312
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    mul-float/2addr v2, v0

    .line 2316
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2317
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2318
    iget v6, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eqz v6, :cond_38

    .line 2320
    iget v1, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v1, v0

    move v3, v4

    goto :goto_39

    :cond_38
    move v3, v7

    .line 2322
    :goto_39
    iget v6, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v8}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v7

    if-eq v6, v8, :cond_49

    .line 2324
    iget v2, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v2, v0

    move v5, v4

    goto :goto_4a

    :cond_49
    move v5, v7

    :goto_4a
    cmpg-float v6, p1, v1

    if-gez v6, :cond_5f

    if-eqz v3, :cond_5d

    sub-float p1, v1, p1

    .line 2330
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    move v4, v7

    :cond_5d
    move p1, v1

    goto :goto_72

    :cond_5f
    cmpl-float v1, p1, v2

    if-lez v1, :cond_72

    if-eqz v5, :cond_71

    sub-float/2addr p1, v2

    .line 2337
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v0

    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    move v4, v7

    :cond_71
    move p1, v2

    .line 2343
    :cond_72
    :goto_72
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    float-to-int v1, p1

    int-to-float v2, v1

    sub-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2344
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 2345
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    return v4
.end method

.method private recomputeScrollPosition(IIII)V
    .registers 6

    if-lez p2, :cond_49

    .line 1647
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    .line 1648
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1649
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p2

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result p0

    mul-int/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_79

    .line 1651
    :cond_21
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    .line 1652
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    .line 1654
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p1, p1

    mul-float/2addr p3, p1

    float-to-int p1, p3

    .line 1658
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    goto :goto_79

    .line 1661
    :cond_49
    iget p2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, p2}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object p2

    if-eqz p2, :cond_5a

    .line 1662
    iget p2, p2, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget p3, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_5b

    :cond_5a
    const/4 p2, 0x0

    .line 1664
    :goto_5b
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 1665
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_79

    const/4 p2, 0x0

    .line 1666
    invoke-direct {p0, p2}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 1667
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    :cond_79
    :goto_79
    return-void
.end method

.method private removeNonDecorViews()V
    .registers 3

    const/4 v0, 0x0

    .line 549
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 550
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 551
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 552
    iget-boolean v1, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_1a

    .line 553
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .registers 2

    .line 2295
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 2297
    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    return-void
.end method

.method private resetTouch()Z
    .registers 2

    const/4 v0, -0x1

    .line 2286
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2287
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    .line 2288
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2289
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2290
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object p0, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method

.method private scrollToItem(IZIZ)V
    .registers 10

    .line 669
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 672
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    int-to-float v2, v2

    .line 673
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    iget v0, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 674
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 673
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    if-eqz p2, :cond_29

    .line 677
    invoke-virtual {p0, v0, v1, p3}, Landroid/support/v4/view/ViewPager;->smoothScrollTo(III)V

    if-eqz p4, :cond_37

    .line 679
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchOnPageSelected(I)V

    goto :goto_37

    :cond_29
    if-eqz p4, :cond_2e

    .line 683
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchOnPageSelected(I)V

    .line 685
    :cond_2e
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 686
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 687
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    :cond_37
    :goto_37
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .registers 3

    .line 2661
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_6

    .line 2662
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    :cond_6
    return-void
.end method

.method private sortChildDrawingOrder()V
    .registers 5

    .line 1274
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2f

    .line 1275
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_10

    .line 1276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    goto :goto_15

    .line 1278
    :cond_10
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1280
    :goto_15
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_28

    .line 1282
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1283
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1285
    :cond_28
    iget-object p0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v0, Landroid/support/v4/view/ViewPager;->sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2f
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 2897
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2899
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_2f

    const/4 v2, 0x0

    .line 2902
    :goto_d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 2903
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2904
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    .line 2905
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 2906
    iget v4, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_2c

    .line 2907
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2f
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_39

    .line 2918
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_56

    .line 2921
    :cond_39
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_40

    return-void

    :cond_40
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_51

    .line 2925
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_51

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_51

    return-void

    :cond_51
    if-eqz p1, :cond_56

    .line 2929
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_56
    return-void
.end method

.method addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;
    .registers 5

    .line 1000
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    .line 1001
    iput p1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 1002
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 1003
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result p1

    iput p1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    if-ltz p2, :cond_28

    .line 1004
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_22

    goto :goto_28

    .line 1007
    :cond_22
    iget-object p0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2d

    .line 1005
    :cond_28
    :goto_28
    iget-object p0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2d
    return-object v0
.end method

.method public addOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V
    .registers 3
    .param p1    # Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 574
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 577
    :cond_b
    iget-object p0, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 3

    .line 716
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 719
    :cond_b
    iget-object p0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2942
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 2943
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2944
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_20

    .line 2945
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 2946
    iget v2, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v3, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v2, v3, :cond_20

    .line 2947
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7

    .line 1464
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1465
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1467
    :cond_a
    move-object v0, p3

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1469
    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    invoke-static {p1}, Landroid/support/v4/view/ViewPager;->isDecorView(Landroid/view/View;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    .line 1470
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    if-eqz v1, :cond_30

    if-eqz v0, :cond_29

    .line 1471
    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_21

    goto :goto_29

    .line 1472
    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add pager decor view during layout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    :goto_29
    const/4 v1, 0x1

    .line 1474
    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1475
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_33

    .line 1477
    :cond_30
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_33
    return-void
.end method

.method public arrowScroll(I)Z
    .registers 9

    .line 2785
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p0, :cond_a

    goto :goto_69

    :cond_a
    if-eqz v0, :cond_68

    .line 2790
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_10
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1d

    if-ne v4, p0, :cond_18

    move v4, v1

    goto :goto_1e

    .line 2791
    :cond_18
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_10

    :cond_1d
    move v4, v2

    :goto_1e
    if-nez v4, :cond_68

    .line 2799
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2800
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2801
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_34
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_4d

    const-string v5, " => "

    .line 2803
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2802
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_34

    :cond_4d
    const-string v0, "ViewPager"

    .line 2805
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2806
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2805
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    :cond_68
    move-object v3, v0

    .line 2813
    :goto_69
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v0, :cond_ba

    if-eq v0, v3, :cond_ba

    if-ne p1, v5, :cond_9a

    .line 2819
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2820
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_94

    if-lt v1, v2, :cond_94

    .line 2822
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    move-result v0

    goto :goto_98

    .line 2824
    :cond_94
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    :goto_98
    move v2, v0

    goto :goto_cd

    :cond_9a
    if-ne p1, v4, :cond_cd

    .line 2829
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 2830
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v3, :cond_b5

    if-gt v1, v2, :cond_b5

    .line 2832
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    move-result v0

    goto :goto_98

    .line 2834
    :cond_b5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_98

    :cond_ba
    if-eq p1, v5, :cond_c9

    if-ne p1, v1, :cond_bf

    goto :goto_c9

    :cond_bf
    if-eq p1, v4, :cond_c4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_cd

    .line 2842
    :cond_c4
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    move-result v2

    goto :goto_cd

    .line 2839
    :cond_c9
    :goto_c9
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    move-result v2

    :cond_cd
    :goto_cd
    if-eqz v2, :cond_d6

    .line 2845
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    :cond_d6
    return v2
.end method

.method public beginFakeDrag()Z
    .registers 13

    .line 2520
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 v0, 0x1

    .line 2523
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    .line 2524
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    const/4 v1, 0x0

    .line 2525
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    .line 2526
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1c

    .line 2527
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_21

    .line 2529
    :cond_1c
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 2531
    :goto_21
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v4, v10

    .line 2532
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 2533
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2534
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 2535
    iput-wide v10, p0, Landroid/support/v4/view/ViewPager;->mFakeDragBeginTime:J

    return v0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .registers 18

    move-object v0, p1

    .line 2711
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_52

    .line 2712
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2713
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 2714
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 2715
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_16
    if-ltz v5, :cond_52

    .line 2720
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 2721
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_4f

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_4f

    add-int v8, p5, v4

    .line 2722
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_4f

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_4f

    const/4 v9, 0x1

    .line 2723
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 2724
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    .line 2723
    invoke-virtual/range {v6 .. v11}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_4f

    return v2

    :cond_4f
    add-int/lit8 v5, v5, -0x1

    goto :goto_16

    :cond_52
    if-eqz p2, :cond_5d

    move v1, p3

    neg-int v1, v1

    .line 2730
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    goto :goto_5e

    :cond_5d
    const/4 v2, 0x0

    :goto_5e
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .registers 6

    .line 2684
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2688
    :cond_6
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    .line 2689
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_1a

    int-to-float p1, v0

    .line 2691
    iget p0, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    if-le v2, p0, :cond_19

    move v1, v3

    :cond_19
    return v1

    :cond_1a
    if-lez p1, :cond_25

    int-to-float p1, v0

    .line 2693
    iget p0, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    if-ge v2, p0, :cond_24

    move v1, v3

    :cond_24
    return v1

    :cond_25
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .line 3021
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public clearOnPageChangeListeners()V
    .registers 2

    .line 738
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 739
    iget-object p0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_9
    return-void
.end method

.method public computeScroll()V
    .registers 5

    const/4 v0, 0x1

    .line 1785
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsScrollStarted:Z

    .line 1786
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_41

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1787
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1788
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    .line 1789
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1790
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_2b

    if-eq v1, v3, :cond_3d

    .line 1793
    :cond_2b
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1794
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1795
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    .line 1796
    invoke-virtual {p0, v0, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1801
    :cond_3d
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void

    .line 1806
    :cond_41
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    return-void
.end method

.method dataSetChanged()V
    .registers 11

    .line 1015
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 1016
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    .line 1017
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_21

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 1018
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_21

    move v1, v3

    goto :goto_22

    :cond_21
    move v1, v4

    .line 1019
    :goto_22
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move v5, v1

    move v6, v2

    move v1, v4

    move v2, v1

    .line 1022
    :goto_28
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_84

    .line 1023
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1024
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v9, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_44

    goto :goto_82

    :cond_44
    const/4 v9, -0x2

    if-ne v8, v9, :cond_74

    .line 1031
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    if-nez v2, :cond_56

    .line 1035
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v2, v3

    .line 1039
    :cond_56
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v8, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v9, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, p0, v8, v9}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1042
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iget v7, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v5, v7, :cond_72

    .line 1044
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v6, v0, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v6, v5

    :cond_72
    :goto_72
    move v5, v3

    goto :goto_82

    .line 1050
    :cond_74
    iget v9, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_82

    .line 1051
    iget v5, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v9, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v5, v9, :cond_7f

    move v6, v8

    .line 1056
    :cond_7f
    iput v8, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    goto :goto_72

    :cond_82
    :goto_82
    add-int/2addr v1, v3

    goto :goto_28

    :cond_84
    if-eqz v2, :cond_8b

    .line 1062
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1065
    :cond_8b
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v1, Landroid/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v5, :cond_b5

    .line 1069
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    move v1, v4

    :goto_99
    if-ge v1, v0, :cond_af

    .line 1071
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1072
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1073
    iget-boolean v5, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v5, :cond_ac

    const/4 v5, 0x0

    .line 1074
    iput v5, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    :cond_ac
    add-int/lit8 v1, v1, 0x1

    goto :goto_99

    .line 1078
    :cond_af
    invoke-virtual {p0, v6, v4, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 1079
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    :cond_b5
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 2736
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8

    .line 2989
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_d

    .line 2990
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0

    .line 2994
    :cond_d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_13
    if-ge v2, v0, :cond_36

    .line 2996
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2997
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_33

    .line 2998
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 2999
    iget v4, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_33

    .line 3000
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_33

    const/4 p0, 0x1

    return p0

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_36
    return v1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .registers 2

    const/high16 p0, 0x3f000000    # 0.5f

    sub-float/2addr p1, p0

    const p0, 0x3ef1463b

    mul-float/2addr p1, p0

    float-to-double p0, p1

    .line 921
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 2418
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2421
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1a

    .line 2422
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 2424
    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v2, :cond_1a

    goto :goto_26

    .line 2448
    :cond_1a
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 2449
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_a9

    .line 2425
    :cond_26
    :goto_26
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_66

    .line 2426
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2427
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2428
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    const/high16 v4, 0x43870000    # 270.0f

    .line 2430
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v2

    .line 2431
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2432
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2433
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2434
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2436
    :cond_66
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_a9

    .line 2437
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2438
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    .line 2439
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    .line 2441
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2442
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2443
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2444
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 2445
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_a9
    :goto_a9
    if-eqz v1, :cond_ae

    .line 2454
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_ae
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .line 907
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 908
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    .line 909
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 910
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_14
    return-void
.end method

.method public endFakeDrag()V
    .registers 7

    .line 2546
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_47

    .line 2550
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_40

    .line 2551
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    .line 2552
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2553
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    .line 2554
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 2555
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    .line 2556
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 2557
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 2558
    iget v5, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    .line 2559
    iget v2, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v3, v2

    iget v2, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v3, v2

    .line 2560
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    .line 2561
    invoke-direct {p0, v5, v3, v0, v2}, Landroid/support/v4/view/ViewPager;->determineTargetPage(IFII)I

    move-result v2

    .line 2563
    invoke-virtual {p0, v2, v1, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2565
    :cond_40
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    const/4 v0, 0x0

    .line 2567
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    return-void

    .line 2547
    :cond_47
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    .line 2749
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4e

    .line 2750
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3d

    const/4 v2, 0x2

    if-eq v0, v1, :cond_37

    packed-switch v0, :pswitch_data_50

    goto :goto_4e

    .line 2759
    :pswitch_13
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 2760
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    move-result p0

    goto :goto_4f

    :cond_1e
    const/16 p1, 0x42

    .line 2762
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result p0

    goto :goto_4f

    .line 2752
    :pswitch_25
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 2753
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    move-result p0

    goto :goto_4f

    :cond_30
    const/16 p1, 0x11

    .line 2755
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result p0

    goto :goto_4f

    .line 2766
    :cond_37
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2767
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result p0

    goto :goto_4f

    :cond_42
    const/4 v0, 0x1

    .line 2768
    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 2769
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result p0

    goto :goto_4f

    :cond_4e
    :goto_4e
    const/4 p0, 0x0

    :goto_4f
    return p0

    :pswitch_data_50
    .packed-switch 0x15
        :pswitch_25
        :pswitch_13
    .end packed-switch
.end method

.method public fakeDragBy(F)V
    .registers 12

    .line 2578
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_83

    .line 2582
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v0, :cond_9

    return-void

    .line 2586
    :cond_9
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2588
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    .line 2590
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result p1

    int-to-float p1, p1

    .line 2592
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    mul-float/2addr v1, p1

    .line 2593
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    mul-float/2addr v2, p1

    .line 2595
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2596
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2597
    iget v5, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eqz v5, :cond_3f

    .line 2598
    iget v1, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v1, p1

    .line 2600
    :cond_3f
    iget v3, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_4e

    .line 2601
    iget v2, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v2, p1

    :cond_4e
    cmpg-float p1, v0, v1

    if-gez p1, :cond_54

    move v0, v1

    goto :goto_59

    :cond_54
    cmpl-float p1, v0, v2

    if-lez p1, :cond_59

    move v0, v2

    .line 2610
    :cond_59
    :goto_59
    iget p1, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    float-to-int v1, v0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    add-float/2addr p1, v0

    iput p1, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2611
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 2612
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    .line 2615
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2616
    iget-wide v2, p0, Landroid/support/v4/view/ViewPager;->mFakeDragBeginTime:J

    const/4 v6, 0x2

    iget v7, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2618
    iget-object p0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2619
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    .line 2579
    :cond_83
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 1

    .line 3011
    new-instance p0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 3026
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 3016
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .registers 1

    .line 565
    iget-object p0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object p0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 5

    .line 794
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    .line 795
    :cond_9
    iget-object p0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 796
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget p0, p0, Landroid/support/v4/view/ViewPager$LayoutParams;->childIndex:I

    return p0
.end method

.method public getCurrentItem()I
    .registers 1

    .line 620
    iget p0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    return p0
.end method

.method public getOffscreenPageLimit()I
    .registers 1

    .line 820
    iget p0, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    return p0
.end method

.method public getPageMargin()I
    .registers 1

    .line 876
    iget p0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    return p0
.end method

.method infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .registers 3

    .line 1515
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_13

    if-eqz v0, :cond_11

    .line 1516
    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_d

    goto :goto_11

    .line 1519
    :cond_d
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_11
    :goto_11
    const/4 p0, 0x0

    return-object p0

    .line 1521
    :cond_13
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object p0

    return-object p0
.end method

.method infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .registers 6

    const/4 v0, 0x0

    .line 1504
    :goto_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 1505
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1506
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-object v1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;
    .registers 5

    const/4 v0, 0x0

    .line 1525
    :goto_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 1526
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1527
    iget v2, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_16

    return-object v1

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method initViewPager()V
    .registers 6

    const/4 v0, 0x0

    .line 395
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    const/high16 v0, 0x40000

    .line 396
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    .line 397
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 398
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 399
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Landroid/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 400
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 401
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 403
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v4

    iput v4, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    const/high16 v4, 0x43c80000    # 400.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 404
    iput v4, p0, Landroid/support/v4/view/ViewPager;->mMinimumVelocity:I

    .line 405
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    .line 406
    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 407
    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 409
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mFlingDistance:I

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 410
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mCloseEnough:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v3, v1

    float-to-int v1, v3

    .line 411
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mDefaultGutterSize:I

    .line 413
    new-instance v1, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;

    invoke-direct {v1, p0}, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 415
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_6b

    .line 417
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 421
    :cond_6b
    new-instance v0, Landroid/support/v4/view/ViewPager$4;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$4;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public isFakeDragging()Z
    .registers 1

    .line 2632
    iget-boolean p0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 1536
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 1537
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 473
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 475
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_16

    .line 476
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 478
    :cond_16
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    .line 2460
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2463
    iget v1, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    if-lez v1, :cond_b0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b0

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_b0

    .line 2464
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    .line 2465
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    .line 2467
    iget v3, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 2469
    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2470
    iget v7, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 2471
    iget-object v8, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2472
    iget v9, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2473
    iget-object v10, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/ViewPager$ItemInfo;

    iget v10, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    :goto_45
    if-ge v9, v10, :cond_b0

    .line 2475
    :goto_47
    iget v11, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v9, v11, :cond_58

    if-ge v6, v8, :cond_58

    .line 2476
    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_47

    .line 2480
    :cond_58
    iget v11, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v9, v11, :cond_69

    .line 2481
    iget v7, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v11, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v11

    mul-float/2addr v7, v4

    .line 2482
    iget v11, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v12, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v11, v12

    add-float/2addr v11, v3

    goto :goto_76

    .line 2484
    :cond_69
    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v11, v9}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v11

    add-float v12, v7, v11

    mul-float/2addr v12, v4

    add-float/2addr v11, v3

    add-float/2addr v7, v11

    move v11, v7

    move v7, v12

    .line 2489
    :goto_76
    iget v12, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v12, v12

    add-float/2addr v12, v7

    int-to-float v13, v1

    cmpl-float v12, v12, v13

    if-lez v12, :cond_9e

    .line 2490
    iget-object v12, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v14, v0, Landroid/support/v4/view/ViewPager;->mTopPageBounds:I

    iget v15, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v15, v15

    add-float/2addr v15, v7

    .line 2491
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move/from16 v16, v3

    iget v3, v0, Landroid/support/v4/view/ViewPager;->mBottomPageBounds:I

    .line 2490
    invoke-virtual {v12, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2492
    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v12, p1

    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_a2

    :cond_9e
    move-object/from16 v12, p1

    move/from16 v16, v3

    :goto_a2
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v7, v3

    if-lez v3, :cond_aa

    goto :goto_b0

    :cond_aa
    add-int/lit8 v9, v9, 0x1

    move v7, v11

    move/from16 v3, v16

    goto :goto_45

    :cond_b0
    :goto_b0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 17

    move-object v6, p0

    move-object/from16 v7, p1

    .line 2023
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v8, 0x0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_116

    const/4 v9, 0x1

    if-ne v0, v9, :cond_12

    goto/16 :goto_116

    :cond_12
    if-eqz v0, :cond_1e

    .line 2036
    iget-boolean v1, v6, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_19

    return v9

    .line 2040
    :cond_19
    iget-boolean v1, v6, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    if-eqz v1, :cond_1e

    return v8

    :cond_1e
    const/4 v1, 0x2

    if-eqz v0, :cond_b4

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x6

    if-eq v0, v1, :cond_28

    goto/16 :goto_104

    .line 2140
    :cond_28
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_104

    .line 2057
    :cond_2d
    iget v0, v6, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_34

    goto/16 :goto_104

    .line 2063
    :cond_34
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2064
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 2065
    iget v1, v6, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float v1, v10, v1

    .line 2066
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 2067
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    .line 2068
    iget v0, v6, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/4 v0, 0x0

    cmpl-float v14, v1, v0

    if-eqz v14, :cond_70

    .line 2071
    iget v0, v6, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    invoke-direct {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_70

    const/4 v2, 0x0

    float-to-int v3, v1

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    .line 2072
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 2074
    iput v10, v6, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2075
    iput v12, v6, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 2076
    iput-boolean v9, v6, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    return v8

    .line 2079
    :cond_70
    iget v0, v6, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_9d

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v11, v0

    cmpl-float v0, v11, v13

    if-lez v0, :cond_9d

    .line 2081
    iput-boolean v9, v6, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 2082
    invoke-direct {p0, v9}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2083
    invoke-virtual {p0, v9}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    if-lez v14, :cond_8f

    .line 2084
    iget v0, v6, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iget v1, v6, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_95

    :cond_8f
    iget v0, v6, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iget v1, v6, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_95
    iput v0, v6, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2086
    iput v12, v6, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 2087
    invoke-direct {p0, v9}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_a6

    .line 2088
    :cond_9d
    iget v0, v6, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_a6

    .line 2094
    iput-boolean v9, v6, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 2096
    :cond_a6
    :goto_a6
    iget-boolean v0, v6, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_104

    .line 2098
    invoke-direct {p0, v10}, Landroid/support/v4/view/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_104

    .line 2099
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_104

    .line 2110
    :cond_b4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iput v0, v6, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2111
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    iput v0, v6, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 2112
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2113
    iput-boolean v8, v6, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 2115
    iput-boolean v9, v6, Landroid/support/v4/view/ViewPager;->mIsScrollStarted:Z

    .line 2116
    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 2117
    iget v0, v6, Landroid/support/v4/view/ViewPager;->mScrollState:I

    if-ne v0, v1, :cond_ff

    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 2118
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Landroid/support/v4/view/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_ff

    .line 2120
    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2121
    iput-boolean v8, v6, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 2122
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 2123
    iput-boolean v9, v6, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 2124
    invoke-direct {p0, v9}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2125
    invoke-virtual {p0, v9}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto :goto_104

    .line 2127
    :cond_ff
    invoke-direct {p0, v8}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 2128
    iput-boolean v8, v6, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 2144
    :cond_104
    :goto_104
    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_10e

    .line 2145
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2147
    :cond_10e
    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2153
    iget-boolean v0, v6, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    return v0

    .line 2029
    :cond_116
    :goto_116
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->resetTouch()Z

    return v8
.end method

.method protected onLayout(ZIIII)V
    .registers 24

    move-object/from16 v0, p0

    .line 1674
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    .line 1677
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v4

    .line 1678
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v5

    .line 1679
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v6

    .line 1680
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v7

    .line 1681
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v8

    move v10, v7

    const/4 v11, 0x0

    move v7, v5

    move v5, v4

    const/4 v4, 0x0

    :goto_23
    const/16 v12, 0x8

    if-ge v4, v1, :cond_b9

    .line 1688
    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1689
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_b5

    .line 1690
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1693
    iget-boolean v14, v12, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v14, :cond_b5

    .line 1694
    iget v14, v12, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v14, 0x7

    .line 1695
    iget v12, v12, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_66

    const/4 v15, 0x3

    if-eq v14, v15, :cond_5b

    const/4 v15, 0x5

    if-eq v14, v15, :cond_4e

    move v14, v5

    goto :goto_72

    :cond_4e
    sub-int v14, v2, v6

    .line 1709
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    .line 1710
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_72

    .line 1702
    :cond_5b
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v5

    move/from16 v17, v14

    move v14, v5

    move/from16 v5, v17

    goto :goto_72

    .line 1705
    :cond_66
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_72
    const/16 v15, 0x10

    if-eq v12, v15, :cond_98

    const/16 v15, 0x30

    if-eq v12, v15, :cond_8d

    const/16 v15, 0x50

    if-eq v12, v15, :cond_80

    move v12, v7

    goto :goto_a4

    :cond_80
    sub-int v12, v3, v10

    .line 1726
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    .line 1727
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v10, v15

    goto :goto_a4

    .line 1719
    :cond_8d
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v7

    move/from16 v17, v12

    move v12, v7

    move/from16 v7, v17

    goto :goto_a4

    .line 1722
    :cond_98
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_a4
    add-int/2addr v14, v8

    .line 1732
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v14

    .line 1733
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v12, v16

    .line 1731
    invoke-virtual {v13, v14, v12, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    :cond_b5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_23

    :cond_b9
    sub-int/2addr v2, v5

    sub-int/2addr v2, v6

    const/4 v4, 0x0

    :goto_bc
    if-ge v4, v1, :cond_109

    .line 1742
    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1743
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v12, :cond_106

    .line 1744
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1746
    iget-boolean v9, v8, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v9, :cond_106

    invoke-virtual {v0, v6}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v9

    if-eqz v9, :cond_106

    int-to-float v13, v2

    .line 1747
    iget v9, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v9, v13

    float-to-int v9, v9

    add-int/2addr v9, v5

    .line 1750
    iget-boolean v14, v8, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v14, :cond_f9

    const/4 v14, 0x0

    .line 1753
    iput-boolean v14, v8, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1754
    iget v8, v8, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v13, v8

    float-to-int v8, v13

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v8, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    sub-int v14, v3, v7

    sub-int/2addr v14, v10

    .line 1757
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1760
    invoke-virtual {v6, v8, v13}, Landroid/view/View;->measure(II)V

    .line 1768
    :cond_f9
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v9

    .line 1769
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v13, v7

    .line 1767
    invoke-virtual {v6, v9, v7, v8, v13}, Landroid/view/View;->layout(IIII)V

    :cond_106
    add-int/lit8 v4, v4, 0x1

    goto :goto_bc

    .line 1773
    :cond_109
    iput v7, v0, Landroid/support/v4/view/ViewPager;->mTopPageBounds:I

    sub-int/2addr v3, v10

    .line 1774
    iput v3, v0, Landroid/support/v4/view/ViewPager;->mBottomPageBounds:I

    .line 1775
    iput v11, v0, Landroid/support/v4/view/ViewPager;->mDecorChildCount:I

    .line 1777
    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_11b

    .line 1778
    iget v1, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    goto :goto_11c

    :cond_11b
    const/4 v2, 0x0

    .line 1780
    :goto_11c
    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    .line 1547
    invoke-static {v1, v2}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v2

    move/from16 v3, p2

    .line 1548
    invoke-static {v1, v3}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v3

    .line 1547
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    .line 1550
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v2

    .line 1551
    div-int/lit8 v3, v2, 0xa

    .line 1552
    iget v4, v0, Landroid/support/v4/view/ViewPager;->mDefaultGutterSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    .line 1555
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1556
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1563
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    move v5, v3

    move v3, v2

    move v2, v1

    :goto_3f
    const/16 v6, 0x8

    const/4 v7, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-ge v2, v4, :cond_c4

    .line 1565
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1566
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v6, :cond_bf

    .line 1567
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v6, :cond_bf

    .line 1568
    iget-boolean v10, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v10, :cond_bf

    .line 1569
    iget v10, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v10, v10, 0x7

    .line 1570
    iget v11, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v11, v11, 0x70

    const/16 v12, 0x30

    if-eq v11, v12, :cond_6f

    const/16 v12, 0x50

    if-ne v11, v12, :cond_6d

    goto :goto_6f

    :cond_6d
    move v11, v1

    goto :goto_70

    :cond_6f
    :goto_6f
    move v11, v7

    :goto_70
    const/4 v12, 0x3

    if-eq v10, v12, :cond_78

    const/4 v12, 0x5

    if-ne v10, v12, :cond_77

    goto :goto_78

    :cond_77
    move v7, v1

    :cond_78
    :goto_78
    const/high16 v10, -0x80000000

    if-eqz v11, :cond_7f

    move v12, v10

    move v10, v8

    goto :goto_84

    :cond_7f
    if-eqz v7, :cond_83

    move v12, v8

    goto :goto_84

    :cond_83
    move v12, v10

    .line 1584
    :goto_84
    iget v13, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    const/4 v14, -0x1

    const/4 v15, -0x2

    if-eq v13, v15, :cond_95

    .line 1586
    iget v10, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    if-eq v10, v14, :cond_92

    .line 1587
    iget v10, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    move v13, v10

    goto :goto_93

    :cond_92
    move v13, v3

    :goto_93
    move v10, v8

    goto :goto_96

    :cond_95
    move v13, v3

    .line 1590
    :goto_96
    iget v1, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    if-eq v1, v15, :cond_a3

    .line 1592
    iget v1, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    if-eq v1, v14, :cond_a1

    .line 1593
    iget v1, v6, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    goto :goto_a5

    :cond_a1
    move v1, v5

    goto :goto_a5

    :cond_a3
    move v1, v5

    move v8, v12

    .line 1596
    :goto_a5
    invoke-static {v13, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1597
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1598
    invoke-virtual {v9, v6, v1}, Landroid/view/View;->measure(II)V

    if-eqz v11, :cond_b8

    .line 1601
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v5, v1

    goto :goto_bf

    :cond_b8
    if-eqz v7, :cond_bf

    .line 1603
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v3, v1

    :cond_bf
    :goto_bf
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto/16 :goto_3f

    .line 1609
    :cond_c4
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/view/ViewPager;->mChildWidthMeasureSpec:I

    .line 1610
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, v0, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    .line 1613
    iput-boolean v7, v0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 1614
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->populate()V

    const/4 v1, 0x0

    .line 1615
    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 1618
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    :goto_dc
    if-ge v1, v2, :cond_105

    .line 1620
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1621
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v6, :cond_102

    .line 1626
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$LayoutParams;

    if-eqz v5, :cond_f4

    .line 1627
    iget-boolean v7, v5, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v7, :cond_102

    :cond_f4
    int-to-float v7, v3

    .line 1628
    iget v5, v5, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v7, v5

    float-to-int v5, v7

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1630
    iget v7, v0, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v4, v5, v7}, Landroid/view/View;->measure(II)V

    :cond_102
    add-int/lit8 v1, v1, 0x1

    goto :goto_dc

    :cond_105
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .registers 16
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 1857
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mDecorChildCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_6d

    .line 1858
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1859
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v3

    .line 1860
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v4

    .line 1861
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v5

    .line 1862
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v6

    move v7, v4

    move v4, v3

    move v3, v1

    :goto_1d
    if-ge v3, v6, :cond_6d

    .line 1864
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1865
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1866
    iget-boolean v10, v9, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_2e

    goto :goto_6a

    .line 1868
    :cond_2e
    iget v9, v9, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v9, v9, 0x7

    if-eq v9, v2, :cond_4f

    const/4 v10, 0x3

    if-eq v9, v10, :cond_49

    const/4 v10, 0x5

    if-eq v9, v10, :cond_3c

    move v9, v4

    goto :goto_5e

    :cond_3c
    sub-int v9, v5, v7

    .line 1883
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    .line 1884
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v7, v10

    goto :goto_5b

    .line 1876
    :cond_49
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v4

    goto :goto_5e

    .line 1879
    :cond_4f
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_5b
    move v11, v9

    move v9, v4

    move v4, v11

    :goto_5e
    add-int/2addr v4, v0

    .line 1889
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v4, v10

    if-eqz v4, :cond_69

    .line 1891
    invoke-virtual {v8, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_69
    move v4, v9

    :goto_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 1896
    :cond_6d
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->dispatchOnPageScrolled(IFI)V

    .line 1898
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-eqz p1, :cond_a1

    .line 1899
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result p1

    .line 1900
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result p2

    :goto_7c
    if-ge v1, p2, :cond_a1

    .line 1902
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 1903
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1905
    iget-boolean v0, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v0, :cond_8d

    goto :goto_9e

    .line 1906
    :cond_8d
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 1907
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    invoke-interface {v3, p3, v0}, Landroid/support/v4/view/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    :goto_9e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    .line 1911
    :cond_a1
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 11

    .line 2962
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_f

    move v2, v0

    move v0, v3

    move v1, v4

    goto :goto_12

    :cond_f
    add-int/lit8 v0, v0, -0x1

    move v1, v2

    :goto_12
    if-eq v0, v2, :cond_33

    .line 2973
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2974
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_31

    .line 2975
    invoke-virtual {p0, v5}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_31

    .line 2976
    iget v6, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v7, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v6, v7, :cond_31

    .line 2977
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_31

    return v4

    :cond_31
    add-int/2addr v0, v1

    goto :goto_12

    :cond_33
    return v3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    .line 1444
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v0, :cond_8

    .line 1445
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1449
    :cond_8
    check-cast p1, Landroid/support/v4/view/ViewPager$SavedState;

    .line 1450
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1452
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_26

    .line 1453
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p1, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v2, p1, Landroid/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1454
    iget p1, p1, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_32

    .line 1456
    :cond_26
    iget v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 1457
    iget-object v0, p1, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1458
    iget-object p1, p1, Landroid/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    :goto_32
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1433
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1434
    new-instance v1, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1435
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iput v0, v1, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    .line 1436
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_19

    .line 1437
    iget-object p0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object p0

    iput-object p0, v1, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    :cond_19
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 1638
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_c

    .line 1642
    iget p2, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    iget p4, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, p2, p4}, Landroid/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 2158
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 2165
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_14

    return v2

    .line 2171
    :cond_14
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_158

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_158

    .line 2176
    :cond_22
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2c

    .line 2177
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2179
    :cond_2c
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_15a

    :pswitch_3a
    goto/16 :goto_152

    .line 2274
    :pswitch_3c
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2275
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    goto/16 :goto_152

    .line 2267
    :pswitch_4d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2268
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2269
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2270
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    goto/16 :goto_152

    .line 2261
    :pswitch_5f
    iget-boolean p1, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz p1, :cond_152

    .line 2262
    iget p1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-direct {p0, p1, v1, v2, v2}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    .line 2263
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->resetTouch()Z

    move-result v2

    goto/16 :goto_152

    .line 2197
    :pswitch_6e
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_d1

    .line 2198
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_81

    .line 2202
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->resetTouch()Z

    move-result v2

    goto/16 :goto_152

    .line 2205
    :cond_81
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 2206
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2207
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 2208
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 2212
    iget v6, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-lez v6, :cond_d1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_d1

    .line 2214
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 2215
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2216
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_b8

    iget v3, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    goto :goto_be

    :cond_b8
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    :goto_be
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2218
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 2219
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 2220
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 2223
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_d1

    .line 2225
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2230
    :cond_d1
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_152

    .line 2232
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 2233
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 2234
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->performDrag(F)Z

    move-result p1

    or-int/2addr v2, p1

    goto :goto_152

    .line 2238
    :pswitch_e5
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_152

    .line 2239
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    .line 2240
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2241
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 2242
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 2243
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    .line 2244
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 2245
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 2246
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v5, v5

    int-to-float v2, v2

    div-float/2addr v5, v2

    .line 2247
    iget v6, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 2248
    iget v2, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v3, v2

    iget v2, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v2, v5

    div-float/2addr v3, v2

    .line 2250
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 2251
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 2252
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    .line 2253
    invoke-direct {p0, v6, v3, v0, p1}, Landroid/support/v4/view/ViewPager;->determineTargetPage(IFII)I

    move-result p1

    .line 2255
    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2257
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->resetTouch()Z

    move-result v2

    goto :goto_152

    .line 2186
    :pswitch_132
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2187
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 2188
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 2191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 2193
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    :cond_152
    :goto_152
    if-eqz v2, :cond_157

    .line 2279
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_157
    return v1

    :cond_158
    :goto_158
    return v2

    nop

    :pswitch_data_15a
    .packed-switch 0x0
        :pswitch_132
        :pswitch_e5
        :pswitch_6e
        :pswitch_5f
        :pswitch_3a
        :pswitch_4d
        :pswitch_3c
    .end packed-switch
.end method

.method pageLeft()Z
    .registers 3

    .line 2877
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-lez v0, :cond_c

    .line 2878
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return v1

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method pageRight()Z
    .registers 4

    .line 2885
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_17

    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_17

    .line 2886
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return v2

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method populate()V
    .registers 2

    .line 1084
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->populate(I)V

    return-void
.end method

.method populate(I)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1089
    iget v2, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-eq v2, v1, :cond_11

    .line 1090
    iget v2, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    .line 1091
    iput v1, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    .line 1094
    :goto_12
    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v1, :cond_1a

    .line 1095
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    return-void

    .line 1103
    :cond_1a
    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    if-eqz v1, :cond_22

    .line 1105
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    return-void

    .line 1112
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_29

    return-void

    .line 1116
    :cond_29
    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1118
    iget v1, v0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 1119
    iget v4, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1120
    iget-object v6, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    .line 1121
    iget v8, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/2addr v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1123
    iget v7, v0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    if-ne v6, v7, :cond_21a

    move v7, v5

    .line 1141
    :goto_4c
    iget-object v8, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_6c

    .line 1142
    iget-object v8, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1143
    iget v9, v8, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v10, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-lt v9, v10, :cond_69

    .line 1144
    iget v9, v8, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v10, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v9, v10, :cond_6c

    goto :goto_6d

    :cond_69
    add-int/lit8 v7, v7, 0x1

    goto :goto_4c

    :cond_6c
    const/4 v8, 0x0

    :goto_6d
    if-nez v8, :cond_77

    if-lez v6, :cond_77

    .line 1150
    iget v8, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {v0, v8, v7}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v8

    :cond_77
    const/4 v9, 0x0

    if-eqz v8, :cond_19a

    add-int/lit8 v10, v7, -0x1

    if-ltz v10, :cond_87

    .line 1159
    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_88

    :cond_87
    const/4 v11, 0x0

    .line 1160
    :goto_88
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    if-gtz v12, :cond_92

    move v3, v9

    goto :goto_9f

    .line 1161
    :cond_92
    iget v14, v8, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    sub-float v14, v13, v14

    .line 1162
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v15

    int-to-float v15, v15

    int-to-float v3, v12

    div-float/2addr v15, v3

    add-float v3, v14, v15

    .line 1163
    :goto_9f
    iget v14, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v14, v14, -0x1

    move v15, v7

    move v7, v9

    :goto_a5
    if-ltz v14, :cond_105

    cmpl-float v16, v7, v3

    if-ltz v16, :cond_d3

    if-ge v14, v4, :cond_d3

    if-nez v11, :cond_b0

    goto :goto_105

    .line 1168
    :cond_b0
    iget v5, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v14, v5, :cond_101

    iget-boolean v5, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-nez v5, :cond_101

    .line 1169
    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1170
    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v11, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v5, v0, v14, v11}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v15, v15, -0x1

    if-ltz v10, :cond_ff

    .line 1177
    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_100

    :cond_d3
    if-eqz v11, :cond_e9

    .line 1179
    iget v5, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v14, v5, :cond_e9

    .line 1180
    iget v5, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v5

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_ff

    .line 1182
    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_100

    :cond_e9
    add-int/lit8 v5, v10, 0x1

    .line 1184
    invoke-virtual {v0, v14, v5}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v5

    .line 1185
    iget v5, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v7, v5

    add-int/lit8 v15, v15, 0x1

    if-ltz v10, :cond_ff

    .line 1187
    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_100

    :cond_ff
    const/4 v5, 0x0

    :goto_100
    move-object v11, v5

    :cond_101
    add-int/lit8 v14, v14, -0x1

    const/4 v5, 0x0

    goto :goto_a5

    .line 1191
    :cond_105
    :goto_105
    iget v3, v8, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-int/lit8 v4, v15, 0x1

    cmpg-float v5, v3, v13

    if-gez v5, :cond_197

    .line 1194
    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_11e

    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_11f

    :cond_11e
    const/4 v5, 0x0

    :goto_11f
    if-gtz v12, :cond_123

    move v7, v9

    goto :goto_12b

    .line 1196
    :cond_123
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v7

    int-to-float v7, v7

    int-to-float v10, v12

    div-float/2addr v7, v10

    add-float/2addr v7, v13

    .line 1197
    :goto_12b
    iget v10, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    :goto_12d
    add-int/lit8 v10, v10, 0x1

    if-ge v10, v6, :cond_197

    cmpl-float v11, v3, v7

    if-ltz v11, :cond_161

    if-le v10, v1, :cond_161

    if-nez v5, :cond_13a

    goto :goto_197

    .line 1202
    :cond_13a
    iget v11, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v10, v11, :cond_196

    iget-boolean v11, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-nez v11, :cond_196

    .line 1203
    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1204
    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v5, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v11, v0, v10, v5}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1209
    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_15f

    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_196

    :cond_15f
    const/4 v5, 0x0

    goto :goto_196

    :cond_161
    if-eqz v5, :cond_17d

    .line 1211
    iget v11, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v10, v11, :cond_17d

    .line 1212
    iget v5, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    .line 1214
    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_15f

    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_196

    .line 1216
    :cond_17d
    invoke-virtual {v0, v10, v4}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 1218
    iget v5, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v3, v5

    .line 1219
    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_15f

    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    :cond_196
    :goto_196
    goto :goto_12d

    .line 1224
    :cond_197
    :goto_197
    invoke-direct {v0, v8, v15, v2}, Landroid/support/v4/view/ViewPager;->calculatePageOffsets(Landroid/support/v4/view/ViewPager$ItemInfo;ILandroid/support/v4/view/ViewPager$ItemInfo;)V

    .line 1234
    :cond_19a
    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v2, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-eqz v8, :cond_1a3

    iget-object v3, v8, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    goto :goto_1a4

    :cond_1a3
    const/4 v3, 0x0

    :goto_1a4
    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1236
    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1240
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1b1
    if-ge v2, v1, :cond_1da

    .line 1242
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1243
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1244
    iput v2, v4, Landroid/support/v4/view/ViewPager$LayoutParams;->childIndex:I

    .line 1245
    iget-boolean v5, v4, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v5, :cond_1d7

    iget v5, v4, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    cmpl-float v5, v5, v9

    if-nez v5, :cond_1d7

    .line 1247
    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_1d7

    .line 1249
    iget v5, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    iput v5, v4, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    .line 1250
    iget v3, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iput v3, v4, Landroid/support/v4/view/ViewPager$LayoutParams;->position:I

    :cond_1d7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b1

    .line 1254
    :cond_1da
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    .line 1256
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_219

    .line 1257
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1ee

    .line 1258
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v3

    goto :goto_1ef

    :cond_1ee
    const/4 v3, 0x0

    :goto_1ef
    if-eqz v3, :cond_1f7

    .line 1259
    iget v1, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v2, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-eq v1, v2, :cond_219

    :cond_1f7
    const/4 v1, 0x0

    .line 1260
    :goto_1f8
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_219

    .line 1261
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1262
    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_216

    .line 1263
    iget v3, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v4, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_216

    const/4 v3, 0x2

    .line 1264
    invoke-virtual {v2, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-eqz v2, :cond_216

    goto :goto_219

    :cond_216
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f8

    :cond_219
    :goto_219
    return-void

    .line 1126
    :cond_21a
    :try_start_21a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_226
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21a .. :try_end_226} :catch_227

    goto :goto_22f

    .line 1128
    :catch_227
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1130
    :goto_22f
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pager class: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Problematic adapter: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 1135
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V
    .registers 3
    .param p1    # Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 587
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 588
    iget-object p0, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 3

    .line 729
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 730
    iget-object p0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3

    .line 1496
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_8

    .line 1497
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_b

    .line 1499
    :cond_8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_b
    return-void
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .registers 9

    .line 500
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3f

    .line 501
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 502
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v0, v2

    .line 503
    :goto_11
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2d

    .line 504
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 505
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v5, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v3, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v3}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 507
    :cond_2d
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 508
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 509
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->removeNonDecorViews()V

    .line 510
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 511
    invoke-virtual {p0, v2, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 514
    :cond_3f
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 515
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 516
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    .line 518
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v3, :cond_8d

    .line 519
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    if-nez v3, :cond_54

    .line 520
    new-instance v3, Landroid/support/v4/view/ViewPager$PagerObserver;

    invoke-direct {v3, p0}, Landroid/support/v4/view/ViewPager$PagerObserver;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    .line 522
    :cond_54
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 523
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 524
    iget-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    const/4 v4, 0x1

    .line 525
    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 526
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    iput v5, p0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    .line 527
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    if-ltz v5, :cond_84

    .line 528
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v5, v6}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 529
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v3, v2, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    const/4 v3, -0x1

    .line 530
    iput v3, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 531
    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 532
    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_8d

    :cond_84
    if-nez v3, :cond_8a

    .line 534
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    goto :goto_8d

    .line 536
    :cond_8a
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 541
    :cond_8d
    :goto_8d
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v1, :cond_af

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_af

    .line 542
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_9f
    if-ge v2, v1, :cond_af

    .line 543
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    invoke-interface {v3, p0, v0, p1}, Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9f

    :cond_af
    return-void
.end method

.method public setCurrentItem(I)V
    .registers 4

    const/4 v0, 0x0

    .line 604
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 605
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 4

    const/4 v0, 0x0

    .line 615
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 616
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .registers 5

    const/4 v0, 0x0

    .line 624
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .registers 8

    .line 628
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_73

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_f

    goto/16 :goto_73

    :cond_f
    if-nez p3, :cond_21

    .line 632
    iget p3, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne p3, p1, :cond_21

    iget-object p3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_21

    .line 633
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    :cond_21
    const/4 p3, 0x1

    if-gez p1, :cond_26

    move p1, v1

    goto :goto_35

    .line 639
    :cond_26
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_35

    .line 640
    iget-object p1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, p3

    .line 642
    :cond_35
    :goto_35
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 643
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_41

    iget v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_57

    :cond_41
    move v0, v1

    .line 647
    :goto_42
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_57

    .line 648
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    iput-boolean p3, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 651
    :cond_57
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-eq v0, p1, :cond_5c

    goto :goto_5d

    :cond_5c
    move p3, v1

    .line 653
    :goto_5d
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_6c

    .line 656
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-eqz p3, :cond_68

    .line 658
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchOnPageSelected(I)V

    .line 660
    :cond_68
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_72

    .line 662
    :cond_6c
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->populate(I)V

    .line 663
    invoke-direct {p0, p1, p2, p4, p3}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    :goto_72
    return-void

    .line 629
    :cond_73
    :goto_73
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .registers 3

    .line 807
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 808
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .registers 6

    const/4 v0, 0x1

    if-ge p1, v0, :cond_22

    const-string v1, "ViewPager"

    .line 842
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested offscreen page limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 846
    :cond_22
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_2b

    .line 847
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 848
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    :cond_2b
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 702
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setPageMargin(I)V
    .registers 4

    .line 861
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    .line 862
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    .line 864
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    .line 865
    invoke-direct {p0, v1, v1, p1, v0}, Landroid/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    .line 867
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 897
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 885
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    .line 886
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->refreshDrawableState()V

    :cond_7
    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 887
    :goto_c
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 888
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    return-void
.end method

.method public setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V
    .registers 4

    const/4 v0, 0x2

    .line 761
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;I)V

    return-void
.end method

.method public setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;I)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    .line 780
    :goto_7
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-eqz v3, :cond_d

    move v3, v1

    goto :goto_e

    :cond_d
    move v3, v0

    :goto_e
    if-eq v2, v3, :cond_12

    move v3, v1

    goto :goto_13

    :cond_12
    move v3, v0

    .line 781
    :goto_13
    iput-object p2, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    .line 782
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->setChildrenDrawingOrderEnabled(Z)V

    if-eqz v2, :cond_22

    if-eqz p1, :cond_1d

    const/4 v1, 0x2

    .line 784
    :cond_1d
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    .line 785
    iput p3, p0, Landroid/support/v4/view/ViewPager;->mPageTransformerLayerType:I

    goto :goto_24

    .line 787
    :cond_22
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    :goto_24
    if-eqz v3, :cond_29

    .line 789
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    :cond_29
    return-void
.end method

.method setScrollState(I)V
    .registers 3

    .line 482
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_5

    return-void

    .line 486
    :cond_5
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 487
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-eqz v0, :cond_13

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 489
    :goto_10
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->enableLayers(Z)V

    .line 491
    :cond_13
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchOnScrollStateChanged(I)V

    return-void
.end method

.method smoothScrollTo(II)V
    .registers 4

    const/4 v0, 0x0

    .line 931
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->smoothScrollTo(III)V

    return-void
.end method

.method smoothScrollTo(III)V
    .registers 13

    .line 942
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 944
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void

    .line 949
    :cond_b
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1a

    move v0, v2

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    if-eqz v0, :cond_37

    .line 955
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsScrollStarted:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    goto :goto_2e

    :cond_28
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    move-result v0

    .line 957
    :goto_2e
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 958
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_3b

    .line 960
    :cond_37
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    :goto_3b
    move v4, v0

    .line 962
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v5

    sub-int v6, p1, v4

    sub-int v7, p2, v5

    if-nez v6, :cond_52

    if-nez v7, :cond_52

    .line 966
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 967
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 968
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    return-void

    .line 972
    :cond_52
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    const/4 p1, 0x2

    .line 973
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 975
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result p1

    .line 976
    div-int/lit8 p2, p1, 0x2

    .line 977
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p2, p2

    .line 979
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v0

    mul-float/2addr v0, p2

    add-float/2addr p2, v0

    .line 982
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_8a

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 984
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_a2

    .line 986
    :cond_8a
    iget-object p2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget p3, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {p2, p3}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result p2

    mul-float/2addr p1, p2

    .line 987
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    div-float/2addr p2, p1

    add-float/2addr p2, v2

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    :goto_a2
    const/16 p2, 0x258

    .line 990
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 994
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mIsScrollStarted:Z

    .line 995
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 996
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 902
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p0, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method
