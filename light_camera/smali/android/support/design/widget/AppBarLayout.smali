.class public Landroid/support/design/widget/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "AppBarLayout.java"


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    value = Landroid/support/design/widget/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;,
        Landroid/support/design/widget/AppBarLayout$Behavior;,
        Landroid/support/design/widget/AppBarLayout$LayoutParams;,
        Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;
    }
.end annotation


# static fields
.field private static final INVALID_SCROLL_RANGE:I = -0x1

.field static final PENDING_ACTION_ANIMATE_ENABLED:I = 0x4

.field static final PENDING_ACTION_COLLAPSED:I = 0x2

.field static final PENDING_ACTION_EXPANDED:I = 0x1

.field static final PENDING_ACTION_FORCE:I = 0x8

.field static final PENDING_ACTION_NONE:I


# instance fields
.field private mCollapsed:Z

.field private mCollapsible:Z

.field private mDownPreScrollRange:I

.field private mDownScrollRange:I

.field private mHaveChildWithInterpolator:Z

.field private mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAction:I

.field private mTmpStatesArray:[I

.field private mTotalScrollRange:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 155
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 133
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    .line 134
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    .line 135
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mPendingAction:I

    const/4 v1, 0x1

    .line 156
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->setOrientation(I)V

    .line 158
    invoke-static {p1}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 160
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_22

    .line 163
    invoke-static {p0}, Landroid/support/design/widget/ViewUtilsLollipop;->setBoundsViewOutlineProvider(Landroid/view/View;)V

    .line 167
    sget v1, Landroid/support/design/R$style;->Widget_Design_AppBarLayout:I

    invoke-static {p0, p2, v0, v1}, Landroid/support/design/widget/ViewUtilsLollipop;->setStateListAnimatorFromAttrs(Landroid/view/View;Landroid/util/AttributeSet;II)V

    .line 171
    :cond_22
    sget-object v1, Landroid/support/design/R$styleable;->AppBarLayout:[I

    sget v3, Landroid/support/design/R$style;->Widget_Design_AppBarLayout:I

    invoke-virtual {p1, p2, v1, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 173
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_android_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 174
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_expanded:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_44

    .line 175
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_expanded:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-direct {p0, p2, v0, v0}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZZ)V

    .line 177
    :cond_44
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v2, :cond_5a

    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_elevation:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5a

    .line 178
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_elevation:I

    .line 179
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    .line 178
    invoke-static {p0, p2}, Landroid/support/design/widget/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    .line 181
    :cond_5a
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p2, v1, :cond_82

    .line 184
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_android_keyboardNavigationCluster:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_71

    .line 185
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_android_keyboardNavigationCluster:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/widget/AppBarLayout;->setKeyboardNavigationCluster(Z)V

    .line 188
    :cond_71
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_android_touchscreenBlocksFocus:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_82

    .line 189
    sget p2, Landroid/support/design/R$styleable;->AppBarLayout_android_touchscreenBlocksFocus:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/design/widget/AppBarLayout;->setTouchscreenBlocksFocus(Z)V

    .line 193
    :cond_82
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 195
    new-instance p1, Landroid/support/design/widget/AppBarLayout$1;

    invoke-direct {p1, p0}, Landroid/support/design/widget/AppBarLayout$1;-><init>(Landroid/support/design/widget/AppBarLayout;)V

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private invalidateScrollRanges()V
    .registers 2

    const/4 v0, -0x1

    .line 271
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    .line 272
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    .line 273
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    return-void
.end method

.method private setCollapsibleState(Z)Z
    .registers 3

    .line 536
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->mCollapsible:Z

    if-eq v0, p1, :cond_b

    .line 537
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->mCollapsible:Z

    .line 538
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->refreshDrawableState()V

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private setExpanded(ZZZ)V
    .registers 5

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x2

    :goto_5
    const/4 v0, 0x0

    if-eqz p2, :cond_a

    const/4 p2, 0x4

    goto :goto_b

    :cond_a
    move p2, v0

    :goto_b
    or-int/2addr p1, p2

    if-eqz p3, :cond_10

    const/16 v0, 0x8

    :cond_10
    or-int/2addr p1, v0

    .line 318
    iput p1, p0, Landroid/support/design/widget/AppBarLayout;->mPendingAction:I

    .line 321
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->requestLayout()V

    return-void
.end method

.method private updateCollapsible()V
    .registers 5

    .line 260
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_1d

    .line 261
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->isCollapsible()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 266
    :cond_1d
    :goto_1d
    invoke-direct {p0, v1}, Landroid/support/design/widget/AppBarLayout;->setCollapsibleState(Z)Z

    return-void
.end method


# virtual methods
.method public addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .registers 3

    .line 213
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    :cond_b
    if-eqz p1, :cond_1a

    .line 216
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 217
    iget-object p0, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 326
    instance-of p0, p1, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    return p0
.end method

.method dispatchOffsetUpdates(I)V
    .registers 5

    .line 481
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    .line 482
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_b
    if-ge v0, v1, :cond_1d

    .line 483
    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-eqz v2, :cond_1a

    .line 485
    invoke-interface {v2, p0, p1}, Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;->onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1d
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .registers 3

    .line 331
    new-instance p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 1

    .line 106
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 1

    .line 106
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .registers 3

    .line 336
    new-instance v0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;
    .registers 3

    .line 341
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p0, v0, :cond_12

    instance-of p0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p0, :cond_12

    .line 342
    new-instance p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object p0

    .line 343
    :cond_12
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1e

    .line 344
    new-instance p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 346
    :cond_1e
    new-instance p0, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method getDownNestedPreScrollRange()I
    .registers 10

    .line 405
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 407
    iget p0, p0, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    return p0

    .line 411
    :cond_8
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ltz v0, :cond_4f

    .line 412
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 413
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 414
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 415
    iget v6, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    and-int/lit8 v7, v6, 0x5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_49

    .line 419
    iget v7, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    iget v4, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v4

    add-int/2addr v2, v7

    and-int/lit8 v4, v6, 0x8

    if-eqz v4, :cond_37

    .line 423
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_4c

    :cond_37
    and-int/lit8 v4, v6, 0x2

    if-eqz v4, :cond_42

    .line 426
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v5, v3

    add-int/2addr v2, v5

    goto :goto_4c

    .line 429
    :cond_42
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v3

    sub-int/2addr v5, v3

    add-int/2addr v2, v5

    goto :goto_4c

    :cond_49
    if-lez v2, :cond_4c

    goto :goto_4f

    :cond_4c
    :goto_4c
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 437
    :cond_4f
    :goto_4f
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mDownPreScrollRange:I

    return v0
.end method

.method getDownNestedScrollRange()I
    .registers 10

    .line 444
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 446
    iget p0, p0, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    return p0

    .line 450
    :cond_8
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_f
    if-ge v2, v0, :cond_3e

    .line 451
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 452
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 453
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 454
    iget v7, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    iget v8, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 456
    iget v5, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    and-int/lit8 v7, v5, 0x1

    if-eqz v7, :cond_3e

    add-int/2addr v3, v6

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3b

    .line 466
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v3, v0

    goto :goto_3e

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 475
    :cond_3e
    :goto_3e
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mDownScrollRange:I

    return v0
.end method

.method final getMinimumHeightForVisibleOverlappingContent()I
    .registers 4

    .line 492
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    .line 493
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    if-eqz v1, :cond_e

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1

    .line 500
    :cond_e
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1f

    sub-int/2addr v1, v2

    .line 502
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    if-eqz v1, :cond_26

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    return v1

    .line 509
    :cond_26
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x3

    return p0
.end method

.method getPendingAction()I
    .registers 1

    .line 584
    iget p0, p0, Landroid/support/design/widget/AppBarLayout;->mPendingAction:I

    return p0
.end method

.method public getTargetElevation()F
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method final getTopInset()I
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 593
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v0, :cond_b

    iget-object p0, p0, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {p0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public final getTotalScrollRange()I
    .registers 10

    .line 359
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 360
    iget p0, p0, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    return p0

    .line 364
    :cond_8
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_f
    if-ge v2, v0, :cond_39

    .line 365
    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 366
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 367
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 368
    iget v7, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->mScrollFlags:I

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_39

    .line 372
    iget v8, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v8

    iget v5, v5, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v5

    add-int/2addr v3, v6

    and-int/lit8 v5, v7, 0x2

    if-eqz v5, :cond_36

    .line 378
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_39

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 387
    :cond_39
    :goto_39
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mTotalScrollRange:I

    return v0
.end method

.method getUpNestedPreScrollRange()I
    .registers 1

    .line 398
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p0

    return p0
.end method

.method hasChildWithInterpolator()Z
    .registers 1

    .line 350
    iget-boolean p0, p0, Landroid/support/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    return p0
.end method

.method hasScrollableChildren()Z
    .registers 1

    .line 391
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method protected onCreateDrawableState(I)[I
    .registers 5

    .line 514
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mTmpStatesArray:[I

    if-nez v0, :cond_9

    const/4 v0, 0x2

    .line 518
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mTmpStatesArray:[I

    .line 520
    :cond_9
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mTmpStatesArray:[I

    .line 521
    array-length v1, v0

    add-int/2addr p1, v1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    const/4 v1, 0x0

    .line 523
    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout;->mCollapsible:Z

    if-eqz v2, :cond_19

    sget v2, Landroid/support/design/R$attr;->state_collapsible:I

    goto :goto_1c

    :cond_19
    sget v2, Landroid/support/design/R$attr;->state_collapsible:I

    neg-int v2, v2

    :goto_1c
    aput v2, v0, v1

    const/4 v1, 0x1

    .line 524
    iget-boolean v2, p0, Landroid/support/design/widget/AppBarLayout;->mCollapsible:Z

    if-eqz v2, :cond_2a

    iget-boolean p0, p0, Landroid/support/design/widget/AppBarLayout;->mCollapsed:Z

    if-eqz p0, :cond_2a

    sget p0, Landroid/support/design/R$attr;->state_collapsed:I

    goto :goto_2d

    :cond_2a
    sget p0, Landroid/support/design/R$attr;->state_collapsed:I

    neg-int p0, p0

    :goto_2d
    aput p0, v0, v1

    .line 527
    invoke-static {p1, v0}, Landroid/support/design/widget/AppBarLayout;->mergeDrawableStates([I[I)[I

    move-result-object p0

    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 240
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 241
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    const/4 p1, 0x0

    .line 243
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    .line 244
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result p2

    :goto_d
    if-ge p1, p2, :cond_26

    .line 245
    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 246
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 247
    invoke-virtual {p3}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object p3

    if-eqz p3, :cond_23

    const/4 p1, 0x1

    .line 250
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->mHaveChildWithInterpolator:Z

    goto :goto_26

    :cond_23
    add-int/lit8 p1, p1, 0x1

    goto :goto_d

    .line 255
    :cond_26
    :goto_26
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->updateCollapsible()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 234
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 235
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    return-void
.end method

.method onWindowInsetChanged(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 4

    .line 599
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 605
    :goto_9
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {v1, v0}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 606
    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 607
    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->invalidateScrollRanges()V

    :cond_16
    return-object p1
.end method

.method public removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V
    .registers 3

    .line 227
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    .line 228
    iget-object p0, p0, Landroid/support/design/widget/AppBarLayout;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method resetPendingAction()V
    .registers 2

    const/4 v0, 0x0

    .line 588
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->mPendingAction:I

    return-void
.end method

.method setCollapsedState(Z)Z
    .registers 3

    .line 550
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->mCollapsed:Z

    if-eq v0, p1, :cond_b

    .line 551
    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->mCollapsed:Z

    .line 552
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->refreshDrawableState()V

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public setExpanded(Z)V
    .registers 3

    .line 298
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZ)V

    return-void
.end method

.method public setExpanded(ZZ)V
    .registers 4

    const/4 v0, 0x1

    .line 314
    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/AppBarLayout;->setExpanded(ZZZ)V

    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 282
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void

    .line 279
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTargetElevation(F)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 568
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    .line 569
    invoke-static {p0, p1}, Landroid/support/design/widget/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(Landroid/view/View;F)V

    :cond_9
    return-void
.end method
