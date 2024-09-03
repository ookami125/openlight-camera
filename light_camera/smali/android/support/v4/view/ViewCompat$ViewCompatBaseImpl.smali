.class Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCompatBaseImpl"
.end annotation


# static fields
.field static sAccessibilityDelegateCheckFailed:Z = false

.field static sAccessibilityDelegateField:Ljava/lang/reflect/Field;

.field private static sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

.field private static sMinHeightField:Ljava/lang/reflect/Field;

.field private static sMinHeightFieldFetched:Z

.field private static sMinWidthField:Ljava/lang/reflect/Field;

.field private static sMinWidthFieldFetched:Z

.field private static sTransitionNameMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

.field private mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

.field private mTempDetachBound:Z

.field mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 437
    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private bindTempDetach()V
    .registers 5

    .line 620
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "dispatchStartTemporaryDetach"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    .line 622
    const-class v0, Landroid/view/View;

    const-string v1, "dispatchFinishTemporaryDetach"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_22

    :catch_1a
    move-exception v0

    const-string v1, "ViewCompat"

    const-string v2, "Couldn\'t find method"

    .line 625
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    const/4 v0, 0x1

    .line 627
    iput-boolean v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mTempDetachBound:Z

    return-void
.end method

.method private static tickleInvalidationFlag(Landroid/view/View;)V
    .registers 3

    .line 932
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    .line 933
    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 934
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public addKeyboardNavigationClusters(Landroid/view/View;Ljava/util/Collection;I)V
    .registers 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .registers 3

    .line 677
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_b

    .line 678
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    .line 680
    :cond_b
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-nez v0, :cond_1f

    .line 682
    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    .line 683
    iget-object p0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-object v0
.end method

.method public cancelDragAndDrop(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 3

    return-object p2
.end method

.method public dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .registers 3

    .line 599
    iget-boolean v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mTempDetachBound:Z

    if-nez v0, :cond_7

    .line 600
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->bindTempDetach()V

    .line 602
    :cond_7
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1d

    .line 604
    :try_start_b
    iget-object p0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    goto :goto_20

    :catch_14
    move-exception p0

    const-string p1, "ViewCompat"

    const-string v0, "Error calling dispatchFinishTemporaryDetach"

    .line 606
    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 610
    :cond_1d
    invoke-virtual {p1}, Landroid/view/View;->onFinishTemporaryDetach()V

    :goto_20
    return-void
.end method

.method public dispatchNestedFling(Landroid/view/View;FFZ)Z
    .registers 5

    .line 853
    instance-of p0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz p0, :cond_b

    .line 854
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedFling(FFZ)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchNestedPreFling(Landroid/view/View;FF)Z
    .registers 4

    .line 861
    instance-of p0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz p0, :cond_b

    .line 862
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedPreFling(FF)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .registers 6

    .line 844
    instance-of p0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz p0, :cond_b

    .line 845
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedPreScroll(II[I[I)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .registers 13

    .line 835
    instance-of p0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz p0, :cond_11

    .line 836
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/NestedScrollingChild;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedScroll(IIII[I)Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchStartTemporaryDetach(Landroid/view/View;)V
    .registers 3

    .line 583
    iget-boolean v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mTempDetachBound:Z

    if-nez v0, :cond_7

    .line 584
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->bindTempDetach()V

    .line 586
    :cond_7
    iget-object v0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1d

    .line 588
    :try_start_b
    iget-object p0, p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    goto :goto_20

    :catch_14
    move-exception p0

    const-string p1, "ViewCompat"

    const-string v0, "Error calling dispatchStartTemporaryDetach"

    .line 590
    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    .line 594
    :cond_1d
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    :goto_20
    return-void
.end method

.method public getAccessibilityLiveRegion(Landroid/view/View;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 2

    .line 790
    instance-of p0, p1, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz p0, :cond_b

    check-cast p1, Landroid/support/v4/view/TintableBackgroundView;

    .line 791
    invoke-interface {p1}, Landroid/support/v4/view/TintableBackgroundView;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 808
    instance-of p0, p1, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz p0, :cond_b

    check-cast p1, Landroid/support/v4/view/TintableBackgroundView;

    .line 809
    invoke-interface {p1}, Landroid/support/v4/view/TintableBackgroundView;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplay(Landroid/view/View;)Landroid/view/Display;
    .registers 2

    .line 942
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 943
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "window"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 945
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public getElevation(Landroid/view/View;)F
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getFitsSystemWindows(Landroid/view/View;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method getFrameTime()J
    .registers 3

    .line 513
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getLabelFor(Landroid/view/View;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getLayoutDirection(Landroid/view/View;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getMinimumHeight(Landroid/view/View;)I
    .registers 4

    .line 654
    sget-boolean p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinHeightFieldFetched:Z

    if-nez p0, :cond_16

    const/4 p0, 0x1

    .line 656
    :try_start_5
    const-class v0, Landroid/view/View;

    const-string v1, "mMinHeight"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinHeightField:Ljava/lang/reflect/Field;

    .line 657
    sget-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinHeightField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_14} :catch_14

    .line 661
    :catch_14
    sput-boolean p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinHeightFieldFetched:Z

    .line 664
    :cond_16
    sget-object p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinHeightField:Ljava/lang/reflect/Field;

    if-eqz p0, :cond_27

    .line 666
    :try_start_1a
    sget-object p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinHeightField:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_26} :catch_27

    return p0

    :catch_27
    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public getMinimumWidth(Landroid/view/View;)I
    .registers 4

    .line 631
    sget-boolean p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinWidthFieldFetched:Z

    if-nez p0, :cond_16

    const/4 p0, 0x1

    .line 633
    :try_start_5
    const-class v0, Landroid/view/View;

    const-string v1, "mMinWidth"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinWidthField:Ljava/lang/reflect/Field;

    .line 634
    sget-object v0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinWidthField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_14} :catch_14

    .line 638
    :catch_14
    sput-boolean p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinWidthFieldFetched:Z

    .line 641
    :cond_16
    sget-object p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinWidthField:Ljava/lang/reflect/Field;

    if-eqz p0, :cond_27

    .line 643
    :try_start_1a
    sget-object p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sMinWidthField:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_26} :catch_27

    return p0

    :catch_27
    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public getNextClusterForwardId(Landroid/view/View;)I
    .registers 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, -0x1

    return p0
.end method

.method public getPaddingEnd(Landroid/view/View;)I
    .registers 2

    .line 575
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    return p0
.end method

.method public getPaddingStart(Landroid/view/View;)I
    .registers 2

    .line 571
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    return p0
.end method

.method public getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 2

    .line 559
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    return-object p0
.end method

.method public getScrollIndicators(Landroid/view/View;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .registers 2

    .line 696
    sget-object p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sTransitionNameMap:Ljava/util/WeakHashMap;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 699
    :cond_6
    sget-object p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sTransitionNameMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTranslationZ(Landroid/view/View;)F
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getWindowSystemUiVisibility(Landroid/view/View;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getZ(Landroid/view/View;)F
    .registers 3

    .line 880
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getElevation(Landroid/view/View;)F

    move-result p0

    add-float/2addr v0, p0

    return v0
.end method

.method public hasAccessibilityDelegate(Landroid/view/View;)Z
    .registers 5

    .line 448
    sget-boolean p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sAccessibilityDelegateCheckFailed:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    return v0

    .line 451
    :cond_6
    sget-object p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    if-nez p0, :cond_1e

    .line 453
    :try_start_b
    const-class p0, Landroid/view/View;

    const-string v2, "mAccessibilityDelegate"

    .line 454
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sput-object p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    .line 455
    sget-object p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_1a} :catch_1b

    goto :goto_1e

    .line 457
    :catch_1b
    sput-boolean v1, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sAccessibilityDelegateCheckFailed:Z

    return v0

    .line 462
    :cond_1e
    :goto_1e
    :try_start_1e
    sget-object p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sAccessibilityDelegateField:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_24} :catch_28

    if-eqz p0, :cond_27

    move v0, v1

    :cond_27
    return v0

    .line 464
    :catch_28
    sput-boolean v1, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sAccessibilityDelegateCheckFailed:Z

    return v0
.end method

.method public hasExplicitFocusable(Landroid/view/View;)Z
    .registers 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 992
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p0

    return p0
.end method

.method public hasNestedScrollingParent(Landroid/view/View;)Z
    .registers 2

    .line 827
    instance-of p0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz p0, :cond_b

    .line 828
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->hasNestedScrollingParent()Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public hasOnClickListeners(Landroid/view/View;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public hasOverlappingRendering(Landroid/view/View;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isAttachedToWindow(Landroid/view/View;)Z
    .registers 2

    .line 888
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isFocusedByDefault(Landroid/view/View;)Z
    .registers 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public isImportantForAccessibility(Landroid/view/View;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public isInLayout(Landroid/view/View;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isKeyboardNavigationCluster(Landroid/view/View;)Z
    .registers 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public isLaidOut(Landroid/view/View;)Z
    .registers 2

    .line 872
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    if-lez p0, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    if-lez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isLayoutDirectionResolved(Landroid/view/View;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isNestedScrollingEnabled(Landroid/view/View;)Z
    .registers 2

    .line 779
    instance-of p0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz p0, :cond_b

    .line 780
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->isNestedScrollingEnabled()Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public isPaddingRelative(Landroid/view/View;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public keyboardNavigationClusterSearch(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .registers 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return-object p0
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .registers 3

    .line 908
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 909
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_19

    .line 910
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 912
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 913
    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_19

    .line 914
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->tickleInvalidationFlag(Landroid/view/View;)V

    :cond_19
    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .registers 3

    .line 920
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 921
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_19

    .line 922
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 924
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 925
    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_19

    .line 926
    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->tickleInvalidationFlag(Landroid/view/View;)V

    :cond_19
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 3

    return-object p2
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3

    .line 470
    invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .registers 2

    .line 497
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .registers 6

    .line 501
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->postInvalidate(IIII)V

    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 5

    .line 505
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getFrameTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 7

    .line 509
    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->getFrameTime()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public restoreDefaultFocus(Landroid/view/View;)Z
    .registers 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 988
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .registers 3
    .param p2    # Landroid/support/v4/view/AccessibilityDelegateCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 444
    :cond_4
    invoke-virtual {p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->getBridge()Landroid/view/View$AccessibilityDelegate;

    move-result-object p0

    :goto_8
    invoke-virtual {p1, p0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public setAccessibilityLiveRegion(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 786
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 796
    instance-of p0, p1, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz p0, :cond_9

    .line 797
    check-cast p1, Landroid/support/v4/view/TintableBackgroundView;

    invoke-interface {p1, p2}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_9
    return-void
.end method

.method public setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 802
    instance-of p0, p1, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz p0, :cond_9

    .line 803
    check-cast p1, Landroid/support/v4/view/TintableBackgroundView;

    invoke-interface {p1, p2}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_9
    return-void
.end method

.method public setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .registers 8

    .line 731
    sget-object p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_24

    .line 733
    :try_start_6
    const-class p0, Landroid/view/ViewGroup;

    const-string v2, "setChildrenDrawingOrderEnabled"

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    .line 734
    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_16} :catch_17

    goto :goto_1f

    :catch_17
    move-exception p0

    const-string v2, "ViewCompat"

    const-string v3, "Unable to find childrenDrawingOrderEnabled"

    .line 736
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 738
    :goto_1f
    sget-object p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 741
    :cond_24
    :try_start_24
    sget-object p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_31} :catch_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_31} :catch_3b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_24 .. :try_end_31} :catch_32

    goto :goto_4c

    :catch_32
    move-exception p0

    const-string p1, "ViewCompat"

    const-string p2, "Unable to invoke childrenDrawingOrderEnabled"

    .line 747
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c

    :catch_3b
    move-exception p0

    const-string p1, "ViewCompat"

    const-string p2, "Unable to invoke childrenDrawingOrderEnabled"

    .line 745
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4c

    :catch_44
    move-exception p0

    const-string p1, "ViewCompat"

    const-string p2, "Unable to invoke childrenDrawingOrderEnabled"

    .line 743
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4c
    return-void
.end method

.method public setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    return-void
.end method

.method public setElevation(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setFocusedByDefault(Landroid/view/View;Z)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public setHasTransientState(Landroid/view/View;Z)V
    .registers 3

    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public setKeyboardNavigationCluster(Landroid/view/View;Z)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 3

    .line 545
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p0

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 547
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLayoutDirection(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public setNestedScrollingEnabled(Landroid/view/View;Z)V
    .registers 3

    .line 773
    instance-of p0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz p0, :cond_9

    .line 774
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2}, Landroid/support/v4/view/NestedScrollingChild;->setNestedScrollingEnabled(Z)V

    :cond_9
    return-void
.end method

.method public setNextClusterForwardId(Landroid/view/View;I)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .registers 3

    return-void
.end method

.method public setPaddingRelative(Landroid/view/View;IIII)V
    .registers 6

    .line 579
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V
    .registers 3

    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;II)V
    .registers 4

    return-void
.end method

.method public setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 3

    return-void
.end method

.method public setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    .line 689
    sget-object p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sTransitionNameMap:Ljava/util/WeakHashMap;

    if-nez p0, :cond_b

    .line 690
    new-instance p0, Ljava/util/WeakHashMap;

    invoke-direct {p0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sTransitionNameMap:Ljava/util/WeakHashMap;

    .line 692
    :cond_b
    sget-object p0, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;->sTransitionNameMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTranslationZ(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setZ(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .registers 6

    .line 476
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public startNestedScroll(Landroid/view/View;I)Z
    .registers 3

    .line 814
    instance-of p0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz p0, :cond_b

    .line 815
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2}, Landroid/support/v4/view/NestedScrollingChild;->startNestedScroll(I)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public stopNestedScroll(Landroid/view/View;)V
    .registers 2

    .line 821
    instance-of p0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz p0, :cond_9

    .line 822
    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->stopNestedScroll()V

    :cond_9
    return-void
.end method

.method public updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V
    .registers 3

    return-void
.end method
