.class public Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabLayoutOnPageChangeListener"
.end annotation


# instance fields
.field private mPreviousScrollState:I

.field private mScrollState:I

.field private final mTabLayoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/design/widget/TabLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .registers 3

    .line 2110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2111
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 3

    .line 2116
    iget v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    iput v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mPreviousScrollState:I

    .line 2117
    iput p1, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 9

    .line 2123
    iget-object p3, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/design/widget/TabLayout;

    if-eqz p3, :cond_25

    .line 2127
    iget v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_18

    iget v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mPreviousScrollState:I

    if-ne v0, v3, :cond_16

    goto :goto_18

    :cond_16
    move v0, v1

    goto :goto_19

    :cond_18
    :goto_18
    move v0, v3

    .line 2132
    :goto_19
    iget v4, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    if-ne v4, v2, :cond_21

    iget p0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mPreviousScrollState:I

    if-eqz p0, :cond_22

    :cond_21
    move v1, v3

    .line 2134
    :cond_22
    invoke-virtual {p3, p1, p2, v0, v1}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZZ)V

    :cond_25
    return-void
.end method

.method public onPageSelected(I)V
    .registers 5

    .line 2140
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mTabLayoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    if-eqz v0, :cond_2e

    .line 2141
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v1, p1, :cond_2e

    .line 2142
    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v1

    if-ge p1, v1, :cond_2e

    .line 2145
    iget v1, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    if-eqz v1, :cond_26

    iget v1, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_24

    iget p0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mPreviousScrollState:I

    if-nez p0, :cond_24

    goto :goto_26

    :cond_24
    const/4 p0, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 p0, 0x1

    .line 2148
    :goto_27
    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    :cond_2e
    return-void
.end method

.method reset()V
    .registers 2

    const/4 v0, 0x0

    .line 2153
    iput v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mScrollState:I

    iput v0, p0, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->mPreviousScrollState:I

    return-void
.end method
