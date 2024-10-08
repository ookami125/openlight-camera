.class Landroid/support/transition/ViewOverlayApi14;
.super Ljava/lang/Object;
.source "ViewOverlayApi14.java"

# interfaces
.implements Landroid/support/transition/ViewOverlayImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;
    }
.end annotation


# instance fields
.field protected mOverlayViewGroup:Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-direct {v0, p1, p2, p3, p0}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/ViewOverlayApi14;)V

    iput-object v0, p0, Landroid/support/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;

    return-void
.end method

.method static createFrom(Landroid/view/View;)Landroid/support/transition/ViewOverlayApi14;
    .registers 6

    .line 66
    invoke-static {p0}, Landroid/support/transition/ViewOverlayApi14;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 68
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    .line 70
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 71
    instance-of v4, v3, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;

    if-eqz v4, :cond_1a

    .line 72
    check-cast v3, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;

    iget-object p0, v3, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->mViewOverlay:Landroid/support/transition/ViewOverlayApi14;

    return-object p0

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 75
    :cond_1d
    new-instance v1, Landroid/support/transition/ViewGroupOverlayApi14;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Landroid/support/transition/ViewGroupOverlayApi14;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object v1

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method static getContentView(Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 3

    :cond_0
    :goto_0
    if-eqz p0, :cond_21

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020002

    if-ne v0, v1, :cond_12

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_12

    .line 56
    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    .line 58
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 90
    iget-object p0, p0, Landroid/support/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {p0, p1}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->add(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public clear()V
    .registers 1

    .line 95
    iget-object p0, p0, Landroid/support/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {p0}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->clear()V

    return-void
.end method

.method getOverlayView()Landroid/view/ViewGroup;
    .registers 1

    .line 85
    iget-object p0, p0, Landroid/support/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;

    return-object p0
.end method

.method isEmpty()Z
    .registers 1

    .line 104
    iget-object p0, p0, Landroid/support/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {p0}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 100
    iget-object p0, p0, Landroid/support/transition/ViewOverlayApi14;->mOverlayViewGroup:Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;

    invoke-virtual {p0, p1}, Landroid/support/transition/ViewOverlayApi14$OverlayViewGroup;->remove(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
