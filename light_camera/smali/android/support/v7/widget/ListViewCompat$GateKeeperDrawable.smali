.class Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;
.super Landroid/support/v7/graphics/drawable/DrawableWrapper;
.source "ListViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ListViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GateKeeperDrawable"
.end annotation


# instance fields
.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 368
    invoke-direct {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 369
    iput-boolean p1, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 386
    iget-boolean v0, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_7

    .line 387
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    return-void
.end method

.method setEnabled(Z)V
    .registers 2

    .line 373
    iput-boolean p1, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    return-void
.end method

.method public setHotspot(FF)V
    .registers 4

    .line 393
    iget-boolean v0, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_7

    .line 394
    invoke-super {p0, p1, p2}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->setHotspot(FF)V

    :cond_7
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 6

    .line 400
    iget-boolean v0, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_7

    .line 401
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->setHotspotBounds(IIII)V

    :cond_7
    return-void
.end method

.method public setState([I)Z
    .registers 3

    .line 378
    iget-boolean v0, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_9

    .line 379
    invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->setState([I)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public setVisible(ZZ)Z
    .registers 4

    .line 407
    iget-boolean v0, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z

    if-eqz v0, :cond_9

    .line 408
    invoke-super {p0, p1, p2}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->setVisible(ZZ)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method
