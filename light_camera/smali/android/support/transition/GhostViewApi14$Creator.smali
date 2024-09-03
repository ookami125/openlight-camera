.class Landroid/support/transition/GhostViewApi14$Creator;
.super Ljava/lang/Object;
.source "GhostViewApi14.java"

# interfaces
.implements Landroid/support/transition/GhostViewImpl$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/GhostViewApi14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Creator"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findFrameLayout(Landroid/view/ViewGroup;)Landroid/widget/FrameLayout;
    .registers 2

    .line 84
    :goto_0
    instance-of v0, p0, Landroid/widget/FrameLayout;

    if-nez v0, :cond_11

    .line 85
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 86
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 89
    :cond_e
    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 91
    :cond_11
    check-cast p0, Landroid/widget/FrameLayout;

    return-object p0
.end method


# virtual methods
.method public addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/support/transition/GhostViewImpl;
    .registers 4

    .line 50
    invoke-static {p1}, Landroid/support/transition/GhostViewApi14;->getGhostView(Landroid/view/View;)Landroid/support/transition/GhostViewApi14;

    move-result-object p0

    if-nez p0, :cond_17

    .line 52
    invoke-static {p2}, Landroid/support/transition/GhostViewApi14$Creator;->findFrameLayout(Landroid/view/ViewGroup;)Landroid/widget/FrameLayout;

    move-result-object p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_e
    new-instance p2, Landroid/support/transition/GhostViewApi14;

    invoke-direct {p2, p1}, Landroid/support/transition/GhostViewApi14;-><init>(Landroid/view/View;)V

    .line 57
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    move-object p0, p2

    .line 59
    :cond_17
    iget p1, p0, Landroid/support/transition/GhostViewApi14;->mReferences:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/transition/GhostViewApi14;->mReferences:I

    return-object p0
.end method

.method public removeGhost(Landroid/view/View;)V
    .registers 3

    .line 65
    invoke-static {p1}, Landroid/support/transition/GhostViewApi14;->getGhostView(Landroid/view/View;)Landroid/support/transition/GhostViewApi14;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 67
    iget p1, p0, Landroid/support/transition/GhostViewApi14;->mReferences:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/support/transition/GhostViewApi14;->mReferences:I

    .line 68
    iget p1, p0, Landroid/support/transition/GhostViewApi14;->mReferences:I

    if-gtz p1, :cond_20

    .line 69
    invoke-virtual {p0}, Landroid/support/transition/GhostViewApi14;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 70
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_20

    .line 71
    check-cast p1, Landroid/view/ViewGroup;

    .line 72
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 73
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_20
    return-void
.end method
