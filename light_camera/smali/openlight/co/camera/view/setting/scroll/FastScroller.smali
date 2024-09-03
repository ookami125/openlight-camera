.class public Lopenlight/co/camera/view/setting/scroll/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/view/setting/scroll/FastScroller$FastScrollerPopupPosition;
    }
.end annotation


# static fields
.field private static final DEFAULT_AUTO_HIDE_DELAY:I = 0x5dc


# instance fields
.field private drawable:Landroid/graphics/drawable/Drawable;

.field private mAnimatingShow:Z

.field private mAutoHideAnimator:Landroid/animation/Animator;

.field private mAutoHideDelay:I

.field private mAutoHideEnabled:Z

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private mInvalidateRect:Landroid/graphics/Rect;

.field private mInvalidateTmpRect:Landroid/graphics/Rect;

.field private mIsDragging:Z

.field private mMarginRight:I

.field private mOffset:Landroid/graphics/Point;

.field private mRecyclerView:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;

.field private mThumb:Landroid/graphics/Paint;

.field private mThumbHeight:I

.field private mThumbMarginBottom:I

.field private mThumbMarginTop:I

.field private mThumbPosition:Landroid/graphics/Point;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTouchInset:I

.field private mTouchOffset:I

.field private mTrack:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;Landroid/util/AttributeSet;)V
    .registers 8

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mTmpRect:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mInvalidateRect:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mInvalidateTmpRect:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    .line 57
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    const/16 v0, 0x5dc

    .line 63
    iput v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideDelay:I

    const/4 v2, 0x1

    .line 64
    iput-boolean v2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideEnabled:Z

    const/16 v3, 0x18

    .line 66
    iput v3, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mMarginRight:I

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 85
    iput-object p2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mRecyclerView:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;

    const/high16 p2, 0x41000000    # 8.0f

    .line 87
    invoke-static {v3, p2}, Lopenlight/co/camera/utils/Util;->toPixels(Landroid/content/res/Resources;F)I

    move-result p2

    iput p2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mWidth:I

    const/high16 p2, -0x3e400000    # -24.0f

    .line 89
    invoke-static {v3, p2}, Lopenlight/co/camera/utils/Util;->toPixels(Landroid/content/res/Resources;F)I

    move-result p2

    iput p2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mTouchInset:I

    .line 91
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumb:Landroid/graphics/Paint;

    .line 92
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mTrack:Landroid/graphics/Paint;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object p2, Lopenlight/co/camera/R$styleable;->fastScrollRecycler:[I

    invoke-virtual {p1, p3, p2, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 97
    :try_start_61
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideEnabled:Z

    .line 98
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideDelay:I

    const/4 p2, 0x2

    .line 99
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mMarginRight:I

    const/16 p2, 0xa

    .line 100
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbHeight:I

    const/16 p2, 0xc

    .line 101
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbMarginTop:I

    const/16 p2, 0xb

    .line 102
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbMarginBottom:I

    const/16 p2, 0x9

    .line 103
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->drawable:Landroid/graphics/drawable/Drawable;

    const/16 p2, 0x8

    const/high16 p3, -0x1000000

    .line 104
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    const/4 p3, 0x5

    .line 105
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 106
    iget-object p3, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mTrack:Landroid/graphics/Paint;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object p3, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumb:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_aa
    .catchall {:try_start_61 .. :try_end_aa} :catchall_c6

    .line 109
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    new-instance p1, Lopenlight/co/camera/view/setting/scroll/FastScroller$1;

    invoke-direct {p1, p0}, Lopenlight/co/camera/view/setting/scroll/FastScroller$1;-><init>(Lopenlight/co/camera/view/setting/scroll/FastScroller;)V

    iput-object p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    .line 127
    iget-object p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mRecyclerView:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;

    new-instance p2, Lopenlight/co/camera/view/setting/scroll/FastScroller$2;

    invoke-direct {p2, p0}, Lopenlight/co/camera/view/setting/scroll/FastScroller$2;-><init>(Lopenlight/co/camera/view/setting/scroll/FastScroller;)V

    invoke-virtual {p1, p2}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 138
    iget-boolean p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideEnabled:Z

    if-eqz p1, :cond_c5

    .line 139
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->postAutoHideDelayed()V

    :cond_c5
    return-void

    :catchall_c6
    move-exception p0

    .line 109
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    throw p0
.end method

.method static synthetic access$000(Lopenlight/co/camera/view/setting/scroll/FastScroller;)Z
    .registers 1

    .line 32
    iget-boolean p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mIsDragging:Z

    return p0
.end method

.method static synthetic access$100(Lopenlight/co/camera/view/setting/scroll/FastScroller;)Landroid/animation/Animator;
    .registers 1

    .line 32
    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method static synthetic access$102(Lopenlight/co/camera/view/setting/scroll/FastScroller;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2

    .line 32
    iput-object p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$200(Lopenlight/co/camera/view/setting/scroll/FastScroller;)Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;
    .registers 1

    .line 32
    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mRecyclerView:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;

    return-object p0
.end method

.method static synthetic access$300(Lopenlight/co/camera/view/setting/scroll/FastScroller;)I
    .registers 1

    .line 32
    iget p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mWidth:I

    return p0
.end method

.method static synthetic access$402(Lopenlight/co/camera/view/setting/scroll/FastScroller;Z)Z
    .registers 2

    .line 32
    iput-boolean p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAnimatingShow:Z

    return p1
.end method

.method private isNearPoint(II)Z
    .registers 9

    .line 230
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget v4, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v5, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 232
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mTmpRect:Landroid/graphics/Rect;

    iget v1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mTouchInset:I

    iget v2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mTouchInset:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 233
    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected cancelAutoHide()V
    .registers 2

    .line 311
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mRecyclerView:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;

    if-eqz v0, :cond_b

    .line 312
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mRecyclerView:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_b
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 198
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ltz v0, :cond_70

    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gez v0, :cond_d

    goto :goto_70

    .line 207
    :cond_d
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v1

    .line 208
    iget-object v1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    iget v2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mWidth:I

    add-int/2addr v1, v2

    .line 209
    iget-object v2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    .line 210
    iget-object v3, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v4

    iget v4, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbHeight:I

    add-int/2addr v3, v4

    .line 211
    iget-object v4, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mRecyclerView:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;

    invoke-virtual {v5}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getBottom()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_4c

    .line 212
    iget v4, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbMarginTop:I

    sub-int/2addr v2, v4

    .line 213
    iget v4, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbMarginBottom:I

    sub-int/2addr v3, v4

    goto :goto_52

    .line 215
    :cond_4c
    iget v4, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbMarginTop:I

    add-int/2addr v2, v4

    .line 216
    iget v4, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbMarginBottom:I

    add-int/2addr v3, v4

    .line 218
    :goto_52
    iget-object v4, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_61

    .line 219
    iget-object v4, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 220
    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_6f

    :cond_61
    int-to-float v4, v0

    int-to-float v2, v2

    int-to-float v5, v1

    int-to-float v6, v3

    .line 222
    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumb:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v4

    move v3, v5

    move v4, v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_6f
    return-void

    :cond_70
    :goto_70
    return-void
.end method

.method public getOffsetX()I
    .registers 1
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 269
    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    return p0
.end method

.method public getThumbHeight()I
    .registers 1

    .line 144
    iget p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbHeight:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 148
    iget p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mWidth:I

    return p0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;IIILopenlight/co/camera/view/setting/scroll/OnFastScrollStateChangeListener;)V
    .registers 8

    .line 161
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mRecyclerView:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;

    invoke-virtual {v0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    packed-switch v1, :pswitch_data_62

    goto :goto_60

    .line 173
    :pswitch_17
    iget-boolean v1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mIsDragging:Z

    if-nez v1, :cond_60

    invoke-direct {p0, p2, p3}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->isNearPoint(II)Z

    move-result p2

    if-eqz p2, :cond_60

    sub-int/2addr p1, p3

    .line 174
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    if-le p1, p2, :cond_60

    .line 175
    iget-object p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mRecyclerView:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;

    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 176
    iput-boolean p2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mIsDragging:Z

    .line 177
    iget p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mTouchOffset:I

    sub-int/2addr p4, p3

    add-int/2addr p1, p4

    iput p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mTouchOffset:I

    if-eqz p5, :cond_60

    .line 179
    invoke-interface {p5}, Lopenlight/co/camera/view/setting/scroll/OnFastScrollStateChangeListener;->onFastScrollStart()V

    goto :goto_60

    :pswitch_44
    const/4 p1, 0x0

    .line 185
    iput p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mTouchOffset:I

    .line 186
    iget-boolean p2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mIsDragging:Z

    if-eqz p2, :cond_60

    .line 187
    iput-boolean p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mIsDragging:Z

    if-eqz p5, :cond_60

    .line 189
    invoke-interface {p5}, Lopenlight/co/camera/view/setting/scroll/OnFastScrollStateChangeListener;->onFastScrollStop()V

    goto :goto_60

    .line 167
    :pswitch_53
    invoke-direct {p0, p2, p3}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->isNearPoint(II)Z

    move-result p1

    if-eqz p1, :cond_60

    .line 168
    iget-object p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p3, p1

    iput p3, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mTouchOffset:I

    :cond_60
    :goto_60
    return-void

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_53
        :pswitch_44
        :pswitch_17
        :pswitch_44
    .end packed-switch
.end method

.method public isDragging()Z
    .registers 1

    .line 152
    iget-boolean p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mIsDragging:Z

    return p0
.end method

.method protected postAutoHideDelayed()V
    .registers 5

    .line 304
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mRecyclerView:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;

    if-eqz v0, :cond_11

    .line 305
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->cancelAutoHide()V

    .line 306
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mRecyclerView:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;

    iget-object v1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    iget p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideDelay:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    return-void
.end method

.method public setAutoHideDelay(I)V
    .registers 2

    .line 327
    iput p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideDelay:I

    .line 328
    iget-boolean p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideEnabled:Z

    if-eqz p1, :cond_9

    .line 329
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->postAutoHideDelayed()V

    :cond_9
    return-void
.end method

.method public setAutoHideEnabled(Z)V
    .registers 2

    .line 334
    iput-boolean p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideEnabled:Z

    if-eqz p1, :cond_8

    .line 336
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->postAutoHideDelayed()V

    goto :goto_b

    .line 338
    :cond_8
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->cancelAutoHide()V

    :goto_b
    return-void
.end method

.method public setMarginRight(I)V
    .registers 2

    .line 69
    iput p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mMarginRight:I

    return-void
.end method

.method public setOffset(II)V
    .registers 9

    .line 250
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne v0, p1, :cond_d

    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ne v0, p2, :cond_d

    return-void

    .line 254
    :cond_d
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v4

    iget v4, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mRecyclerView:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;

    invoke-virtual {v4}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getHeight()I

    move-result v4

    iget-object v5, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 255
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 256
    iget-object p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mInvalidateTmpRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    add-int/2addr p2, v0

    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    iget v2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mWidth:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mRecyclerView:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;

    invoke-virtual {v2}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getHeight()I

    move-result v2

    iget-object v3, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 257
    iget-object p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mInvalidateTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 258
    iget-object p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mRecyclerView:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setOffsetX(I)V
    .registers 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .line 264
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v0}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->setOffset(II)V

    return-void
.end method

.method public setThumbColor(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 317
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumb:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 318
    iget-object p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mRecyclerView:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setThumbPosition(II)V
    .registers 9

    .line 237
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne v0, p1, :cond_d

    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ne v0, p2, :cond_d

    return-void

    .line 241
    :cond_d
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v4

    iget v4, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mWidth:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mRecyclerView:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;

    invoke-virtual {v4}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getHeight()I

    move-result v4

    iget-object v5, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 242
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 243
    iget-object p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mInvalidateTmpRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    add-int/2addr p2, v0

    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mThumbPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    iget v2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mWidth:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mRecyclerView:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;

    invoke-virtual {v2}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->getHeight()I

    move-result v2

    iget-object v3, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 244
    iget-object p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mInvalidateRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mInvalidateTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 245
    iget-object p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mRecyclerView:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setTrackColor(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 322
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mTrack:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    iget-object p1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mRecyclerView:Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mInvalidateRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lopenlight/co/camera/view/setting/scroll/FastScrollRecycler;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public show()V
    .registers 5

    .line 273
    iget-boolean v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAnimatingShow:Z

    if-nez v0, :cond_3d

    .line 274
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_d

    .line 275
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_d
    const-string v0, "offsetX"

    const/4 v1, 0x1

    .line 277
    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;

    .line 278
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;

    new-instance v2, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v2}, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 279
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 280
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;

    new-instance v2, Lopenlight/co/camera/view/setting/scroll/FastScroller$3;

    invoke-direct {v2, p0}, Lopenlight/co/camera/view/setting/scroll/FastScroller$3;-><init>(Lopenlight/co/camera/view/setting/scroll/FastScroller;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 293
    iput-boolean v1, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAnimatingShow:Z

    .line 294
    iget-object v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 296
    :cond_3d
    iget-boolean v0, p0, Lopenlight/co/camera/view/setting/scroll/FastScroller;->mAutoHideEnabled:Z

    if-eqz v0, :cond_45

    .line 297
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->postAutoHideDelayed()V

    goto :goto_48

    .line 299
    :cond_45
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/scroll/FastScroller;->cancelAutoHide()V

    :goto_48
    return-void
.end method
