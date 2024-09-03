.class public Landroid/support/design/widget/AppBarLayout$Behavior;
.super Landroid/support/design/widget/HeaderBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;,
        Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/HeaderBehavior<",
        "Landroid/support/design/widget/AppBarLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field private static final MAX_OFFSET_ANIMATION_DURATION:I = 0x258


# instance fields
.field private mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOffsetAnimator:Landroid/animation/ValueAnimator;

.field private mOffsetDelta:I

.field private mOffsetToChildIndexOnLayout:I

.field private mOffsetToChildIndexOnLayoutIsMinHeight:Z

.field private mOffsetToChildIndexOnLayoutPerc:F

.field private mOnDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 817
    invoke-direct {p0}, Landroid/support/design/widget/HeaderBehavior;-><init>()V

    const/4 v0, -0x1

    .line 810
    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 820
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 810
    iput p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/AppBarLayout$Behavior;)I
    .registers 1

    .line 787
    iget p0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    return p0
.end method

.method private animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V
    .registers 7

    .line 898
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 901
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_1e

    const/high16 v1, 0x447a0000    # 1000.0f

    int-to-float v0, v0

    div-float/2addr v0, p4

    mul-float/2addr v0, v1

    .line 903
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p4

    mul-int/lit8 p4, p4, 0x3

    goto :goto_2c

    :cond_1e
    int-to-float p4, v0

    .line 905
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p4, v0

    const/high16 v0, 0x43160000    # 150.0f

    mul-float/2addr p4, v0

    float-to-int p4, p4

    .line 909
    :goto_2c
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetWithDuration(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;II)V

    return-void
.end method

.method private animateOffsetWithDuration(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;II)V
    .registers 8

    .line 914
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-ne v0, p3, :cond_18

    .line 916
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_17

    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 917
    iget-object p0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_17
    return-void

    .line 922
    :cond_18
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_35

    .line 923
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    .line 924
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Landroid/support/design/widget/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 925
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/support/design/widget/AppBarLayout$Behavior$1;

    invoke-direct {v2, p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior$1;-><init>(Landroid/support/design/widget/AppBarLayout$Behavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_3a

    .line 933
    :cond_35
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 936
    :goto_3a
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    const/16 p2, 0x258

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 937
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [I

    const/4 p4, 0x0

    aput v0, p2, p4

    const/4 p4, 0x1

    aput p3, p2, p4

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 938
    iget-object p0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static checkFlag(II)Z
    .registers 2

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method private static getAppBarChildOnOffset(Landroid/support/design/widget/AppBarLayout;I)Landroid/view/View;
    .registers 6

    .line 1260
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 1261
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1f

    .line 1262
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1263
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_1c

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_1c

    return-object v2

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method private getChildIndexOnOffset(Landroid/support/design/widget/AppBarLayout;I)I
    .registers 7

    .line 942
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_1c

    .line 943
    invoke-virtual {p1, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 944
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    neg-int v3, p2

    if-gt v2, v3, :cond_19

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-lt v1, v3, :cond_19

    return v0

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1c
    const/4 p0, -0x1

    return p0
.end method

.method private interpolateOffset(Landroid/support/design/widget/AppBarLayout;I)I
    .registers 10

    .line 1161
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 1163
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_70

    .line 1164
    invoke-virtual {p1, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1165
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 1166
    invoke-virtual {v4}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 1168
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    if-lt p0, v6, :cond_6d

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    if-gt p0, v6, :cond_6d

    if-eqz v5, :cond_70

    .line 1171
    invoke-virtual {v4}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v0

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_44

    .line 1174
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v6, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v6

    iget v4, v4, Landroid/support/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_44

    .line 1180
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    .line 1184
    :cond_44
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1185
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result p1

    sub-int/2addr v1, p1

    :cond_4f
    if-lez v1, :cond_70

    .line 1189
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p0, p1

    int-to-float p1, v1

    int-to-float p0, p0

    div-float/2addr p0, p1

    .line 1191
    invoke-interface {v5, p0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    mul-float/2addr p1, p0

    .line 1190
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 1194
    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result p1

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result p2

    add-int/2addr p2, p0

    mul-int/2addr p1, p2

    return p1

    :cond_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_70
    return p2
.end method

.method private shouldJumpElevationState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Z
    .registers 6

    .line 1245
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    .line 1246
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_a
    if-ge v0, p1, :cond_2d

    .line 1247
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1249
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1250
    invoke-virtual {v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 1252
    instance-of v2, v1, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;

    if-eqz v2, :cond_2a

    .line 1253
    check-cast v1, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;

    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;->getOverlayTop()I

    move-result p0

    if-eqz p0, :cond_29

    const/4 p2, 0x1

    :cond_29
    return p2

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_2d
    return p2
.end method

.method private snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .registers 10

    .line 952
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    .line 953
    invoke-direct {p0, p2, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getChildIndexOnOffset(Landroid/support/design/widget/AppBarLayout;I)I

    move-result v1

    if-ltz v1, :cond_67

    .line 955
    invoke-virtual {p2, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 956
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 957
    invoke-virtual {v3}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v3

    and-int/lit8 v4, v3, 0x11

    const/16 v5, 0x11

    if-ne v4, v5, :cond_67

    .line 961
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    neg-int v4, v4

    .line 962
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    neg-int v5, v5

    .line 964
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_35

    .line 966
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v1

    add-int/2addr v5, v1

    :cond_35
    const/4 v1, 0x2

    .line 969
    invoke-static {v3, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->checkFlag(II)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 971
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v5, v2

    goto :goto_53

    :cond_42
    const/4 v6, 0x5

    .line 972
    invoke-static {v3, v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->checkFlag(II)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 976
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v5

    if-ge v0, v2, :cond_52

    move v4, v2

    goto :goto_53

    :cond_52
    move v5, v2

    :cond_53
    :goto_53
    add-int v2, v5, v4

    .line 984
    div-int/2addr v2, v1

    if-ge v0, v2, :cond_59

    move v4, v5

    .line 988
    :cond_59
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {v4, v0, v1}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result v0

    const/4 v1, 0x0

    .line 987
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    :cond_67
    return-void
.end method

.method private updateAppBarLayoutDrawableState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V
    .registers 11

    .line 1210
    invoke-static {p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->getAppBarChildOnOffset(Landroid/support/design/widget/AppBarLayout;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 1212
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    .line 1213
    invoke-virtual {v1}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_41

    .line 1217
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    const/4 v4, 0x1

    if-lez p4, :cond_2f

    and-int/lit8 p4, v1, 0xc

    if-eqz p4, :cond_2f

    neg-int p3, p3

    .line 1223
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p4

    sub-int/2addr p4, v2

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr p4, v0

    if-lt p3, p4, :cond_41

    :goto_2d
    move v3, v4

    goto :goto_41

    :cond_2f
    and-int/lit8 p4, v1, 0x2

    if-eqz p4, :cond_41

    neg-int p3, p3

    .line 1227
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p4

    sub-int/2addr p4, v2

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v0

    sub-int/2addr p4, v0

    if-lt p3, p4, :cond_41

    goto :goto_2d

    .line 1231
    :cond_41
    :goto_41
    invoke-virtual {p2, v3}, Landroid/support/design/widget/AppBarLayout;->setCollapsedState(Z)Z

    move-result p3

    .line 1233
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    if-lt p4, v0, :cond_58

    if-nez p5, :cond_55

    if-eqz p3, :cond_58

    .line 1234
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->shouldJumpElevationState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Z

    move-result p0

    if-eqz p0, :cond_58

    .line 1237
    :cond_55
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->jumpDrawablesToCurrentState()V

    :cond_58
    return-void
.end method


# virtual methods
.method canDragView(Landroid/support/design/widget/AppBarLayout;)Z
    .registers 3

    .line 1077
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOnDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

    if-eqz v0, :cond_b

    .line 1079
    iget-object p0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOnDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;->canDrag(Landroid/support/design/widget/AppBarLayout;)Z

    move-result p0

    return p0

    .line 1083
    :cond_b
    iget-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    if-eqz p1, :cond_2a

    .line 1085
    iget-object p0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_28

    .line 1086
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, -0x1

    .line 1087
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-nez p0, :cond_28

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    return v0

    :cond_2a
    return v0
.end method

.method bridge synthetic canDragView(Landroid/view/View;)Z
    .registers 2

    .line 787
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior;->canDragView(Landroid/support/design/widget/AppBarLayout;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .registers 1

    .line 787
    invoke-super {p0}, Landroid/support/design/widget/HeaderBehavior;->getLeftAndRightOffset()I

    move-result p0

    return p0
.end method

.method getMaxDragOffset(Landroid/support/design/widget/AppBarLayout;)I
    .registers 2

    .line 1102
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method bridge synthetic getMaxDragOffset(Landroid/view/View;)I
    .registers 2

    .line 787
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior;->getMaxDragOffset(Landroid/support/design/widget/AppBarLayout;)I

    move-result p0

    return p0
.end method

.method getScrollRangeForDragFling(Landroid/support/design/widget/AppBarLayout;)I
    .registers 2

    .line 1107
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p0

    return p0
.end method

.method bridge synthetic getScrollRangeForDragFling(Landroid/view/View;)I
    .registers 2

    .line 787
    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior;->getScrollRangeForDragFling(Landroid/support/design/widget/AppBarLayout;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .registers 1

    .line 787
    invoke-super {p0}, Landroid/support/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result p0

    return p0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .registers 2

    .line 1272
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v0

    iget p0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    add-int/2addr v0, p0

    return v0
.end method

.method isOffsetAnimatorRunning()Z
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 1157
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_e

    iget-object p0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .registers 3

    .line 1097
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    return-void
.end method

.method bridge synthetic onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .registers 3

    .line 787
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->onFlingFinished(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    return-void
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z
    .registers 11

    .line 1021
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/HeaderBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p3

    .line 1027
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getPendingAction()I

    move-result v0

    .line 1028
    iget v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    const/4 v2, 0x0

    if-ltz v1, :cond_3c

    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_3c

    .line 1029
    iget v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1030
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v1, v1

    .line 1031
    iget-boolean v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    if-eqz v3, :cond_2b

    .line 1032
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v1, v0

    goto :goto_38

    .line 1034
    :cond_2b
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutPerc:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v1, v0

    .line 1036
    :goto_38
    invoke-virtual {p0, p1, p2, v1}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_66

    :cond_3c
    if-eqz v0, :cond_66

    and-int/lit8 v1, v0, 0x4

    const/4 v3, 0x1

    if-eqz v1, :cond_45

    move v1, v3

    goto :goto_46

    :cond_45
    move v1, v2

    :goto_46
    and-int/lit8 v4, v0, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_5a

    .line 1040
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v0, v0

    if-eqz v1, :cond_56

    .line 1042
    invoke-direct {p0, p1, p2, v0, v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    goto :goto_66

    .line 1044
    :cond_56
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_66

    :cond_5a
    and-int/2addr v0, v3

    if-eqz v0, :cond_66

    if-eqz v1, :cond_63

    .line 1048
    invoke-direct {p0, p1, p2, v2, v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IF)V

    goto :goto_66

    .line 1050
    :cond_63
    invoke-virtual {p0, p1, p2, v2}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 1056
    :cond_66
    :goto_66
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->resetPendingAction()V

    const/4 v0, -0x1

    .line 1057
    iput v0, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 1062
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1, v2}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result v0

    .line 1061
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    .line 1067
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroid/support/design/widget/AppBarLayout$Behavior;->updateAppBarLayoutDrawableState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V

    .line 1070
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/support/design/widget/AppBarLayout;->dispatchOffsetUpdates(I)V

    return p3
.end method

.method public bridge synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 4

    .line 787
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z

    move-result p0

    return p0
.end method

.method public onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIII)Z
    .registers 13

    .line 1002
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1003
    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1a

    const/4 p0, 0x0

    .line 1009
    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p6

    .line 1008
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    const/4 p0, 0x1

    return p0

    .line 1014
    :cond_1a
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/HeaderBehavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .registers 7

    .line 787
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Landroid/support/design/widget/AppBarLayout$Behavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIII)Z

    move-result p0

    return p0
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[II)V
    .registers 14

    if-eqz p5, :cond_25

    if-gez p5, :cond_11

    .line 850
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p3

    neg-int p3, p3

    .line 851
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result p4

    add-int/2addr p4, p3

    :goto_e
    move v4, p3

    move v5, p4

    goto :goto_18

    .line 854
    :cond_11
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result p3

    neg-int p3, p3

    const/4 p4, 0x0

    goto :goto_e

    :goto_18
    if-eq v4, v5, :cond_25

    const/4 p3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    .line 858
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p0

    aput p0, p6, p3

    :cond_25
    return-void
.end method

.method public bridge synthetic onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .registers 8

    .line 787
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p7}, Landroid/support/design/widget/AppBarLayout$Behavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIIII)V
    .registers 15

    if-gez p7, :cond_f

    .line 871
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result p3

    neg-int v4, p3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    .line 870
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->scroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    :cond_f
    return-void
.end method

.method public bridge synthetic onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .registers 9

    .line 787
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p8}, Landroid/support/design/widget/AppBarLayout$Behavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIIII)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V
    .registers 5

    .line 1302
    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    if-eqz v0, :cond_1a

    .line 1303
    check-cast p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    .line 1304
    invoke-virtual {p3}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Landroid/support/design/widget/HeaderBehavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 1305
    iget p1, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    .line 1306
    iget p1, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutPerc:F

    .line 1307
    iget-boolean p1, p3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayoutIsMinHeight:Z

    goto :goto_20

    .line 1309
    :cond_1a
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/HeaderBehavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    const/4 p1, -0x1

    .line 1310
    iput p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetToChildIndexOnLayout:I

    :goto_20
    return-void
.end method

.method public bridge synthetic onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .registers 4

    .line 787
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;
    .registers 9

    .line 1277
    invoke-super {p0, p1, p2}, Landroid/support/design/widget/HeaderBehavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object p1

    .line 1278
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result p0

    .line 1281
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v0, :cond_44

    .line 1282
    invoke-virtual {p2, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1283
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, p0

    .line 1285
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v5, p0

    if-gtz v5, :cond_41

    if-ltz v4, :cond_41

    .line 1286
    new-instance p0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;

    invoke-direct {p0, p1}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1287
    iput v2, p0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    .line 1289
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result p2

    add-int/2addr p1, p2

    if-ne v4, p1, :cond_35

    const/4 v1, 0x1

    :cond_35
    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    int-to-float p1, v4

    .line 1290
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    return-object p0

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_44
    return-object p1
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .registers 3

    .line 787
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .registers 7

    and-int/lit8 p4, p5, 0x2

    if-eqz p4, :cond_1b

    .line 829
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->hasScrollableChildren()Z

    move-result p4

    if-eqz p4, :cond_1b

    .line 830
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result p2

    if-gt p1, p2, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    if-eqz p1, :cond_27

    .line 832
    iget-object p2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_27

    .line 834
    iget-object p2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_27
    const/4 p2, 0x0

    .line 838
    iput-object p2, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return p1
.end method

.method public bridge synthetic onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .registers 7

    .line 787
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Landroid/support/design/widget/AppBarLayout$Behavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V
    .registers 5

    if-nez p4, :cond_5

    .line 880
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$Behavior;->snapToChildIfNeeded(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    .line 884
    :cond_5
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public bridge synthetic onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .registers 5

    .line 787
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/design/widget/AppBarLayout$Behavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public setDragCallback(Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;)V
    .registers 2
    .param p1    # Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 893
    iput-object p1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOnDragCallback:Landroid/support/design/widget/AppBarLayout$Behavior$DragCallback;

    return-void
.end method

.method setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I
    .registers 14

    .line 1113
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p4, :cond_48

    if-lt v0, p4, :cond_48

    if-gt v0, p5, :cond_48

    .line 1119
    invoke-static {p3, p4, p5}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result v5

    if-eq v0, v5, :cond_4a

    .line 1121
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->hasChildWithInterpolator()Z

    move-result p3

    if-eqz p3, :cond_1c

    .line 1122
    invoke-direct {p0, p2, v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->interpolateOffset(Landroid/support/design/widget/AppBarLayout;I)I

    move-result p3

    goto :goto_1d

    :cond_1c
    move p3, v5

    .line 1125
    :goto_1d
    invoke-virtual {p0, p3}, Landroid/support/design/widget/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z

    move-result p4

    sub-int v1, v0, v5

    sub-int p3, v5, p3

    .line 1130
    iput p3, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    if-nez p4, :cond_32

    .line 1132
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->hasChildWithInterpolator()Z

    move-result p3

    if-eqz p3, :cond_32

    .line 1137
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    .line 1141
    :cond_32
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/support/design/widget/AppBarLayout;->dispatchOffsetUpdates(I)V

    if-ge v5, v0, :cond_3e

    const/4 p3, -0x1

    :goto_3c
    move v6, p3

    goto :goto_40

    :cond_3e
    const/4 p3, 0x1

    goto :goto_3c

    :goto_40
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 1144
    invoke-direct/range {v2 .. v7}, Landroid/support/design/widget/AppBarLayout$Behavior;->updateAppBarLayoutDrawableState(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V

    goto :goto_4a

    .line 1149
    :cond_48
    iput v1, p0, Landroid/support/design/widget/AppBarLayout$Behavior;->mOffsetDelta:I

    :cond_4a
    :goto_4a
    return v1
.end method

.method bridge synthetic setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .registers 6

    .line 787
    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual/range {p0 .. p5}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;III)I

    move-result p0

    return p0
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .registers 2

    .line 787
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderBehavior;->setLeftAndRightOffset(I)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .registers 2

    .line 787
    invoke-super {p0, p1}, Landroid/support/design/widget/HeaderBehavior;->setTopAndBottomOffset(I)Z

    move-result p0

    return p0
.end method
