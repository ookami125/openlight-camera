.class Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatBaseImpl;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewGroupCompatBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutMode(Landroid/view/ViewGroup;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getNestedScrollAxes(Landroid/view/ViewGroup;)I
    .registers 2

    .line 65
    instance-of p0, p1, Landroid/support/v4/view/NestedScrollingParent;

    if-eqz p0, :cond_b

    .line 66
    check-cast p1, Landroid/support/v4/view/NestedScrollingParent;

    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingParent;->getNestedScrollAxes()I

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public isTransitionGroup(Landroid/view/ViewGroup;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public setLayoutMode(Landroid/view/ViewGroup;I)V
    .registers 3

    return-void
.end method

.method public setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .registers 3

    return-void
.end method
