.class public Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
.super Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
.source "GlideBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;
    }
.end annotation


# instance fields
.field private applyGravity:Z

.field private final destRect:Landroid/graphics/Rect;

.field private height:I

.field private mutated:Z

.field private state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 28
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V
    .registers 4

    .line 31
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->destRect:Landroid/graphics/Rect;

    if-eqz p2, :cond_30

    .line 36
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    if-eqz p1, :cond_1d

    .line 39
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-nez p1, :cond_1a

    const/16 p1, 0xa0

    .line 41
    :cond_1a
    iput p1, p2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->targetDensity:I

    goto :goto_1f

    .line 43
    :cond_1d
    iget p1, p2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->targetDensity:I

    .line 45
    :goto_1f
    iget-object v0, p2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->width:I

    .line 46
    iget-object p2, p2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->height:I

    return-void

    .line 33
    :cond_30
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "BitmapState must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 97
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->applyGravity:Z

    if-eqz v0, :cond_16

    const/16 v0, 0x77

    .line 98
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->width:I

    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->height:I

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->destRect:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->applyGravity:Z

    .line 101
    :cond_16
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->destRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .registers 1

    .line 56
    iget p0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->height:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .registers 1

    .line 51
    iget p0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->width:I

    return p0
.end method

.method public getOpacity()I
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1b

    .line 122
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object p0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    const/16 v0, 0xff

    if-ge p0, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, -0x1

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, -0x3

    :goto_1c
    return p0
.end method

.method public isAnimated()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isRunning()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 128
    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->mutated:Z

    if-nez v0, :cond_16

    invoke-super {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_16

    .line 129
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;-><init>(Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->mutated:Z

    :cond_16
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 2

    .line 86
    invoke-super {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->applyGravity:Z

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    iget-object v0, v0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_12

    .line 108
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->setAlpha(I)V

    .line 109
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->invalidateSelf()V

    :cond_12
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->state:Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable$BitmapState;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 116
    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->invalidateSelf()V

    return-void
.end method

.method public setLoopCount(I)V
    .registers 2

    return-void
.end method

.method public start()V
    .registers 1

    return-void
.end method

.method public stop()V
    .registers 1

    return-void
.end method
