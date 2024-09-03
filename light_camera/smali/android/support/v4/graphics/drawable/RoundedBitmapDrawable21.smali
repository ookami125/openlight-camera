.class Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable21;
.super Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
.source "RoundedBitmapDrawable21.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .registers 3

    .line 35
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable21;->updateDstRect()V

    .line 36
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable21;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable21;->getCornerRadius()F

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method

.method gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 12

    const/4 v5, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 55
    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public hasMipMap()Z
    .registers 2

    .line 49
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable21;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_e

    iget-object p0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable21;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasMipMap()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public setMipMap(Z)V
    .registers 3

    .line 41
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable21;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 42
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable21;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->setHasMipMap(Z)V

    .line 43
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable21;->invalidateSelf()V

    :cond_c
    return-void
.end method
