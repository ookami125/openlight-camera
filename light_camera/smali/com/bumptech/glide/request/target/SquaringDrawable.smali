.class public Lcom/bumptech/glide/request/target/SquaringDrawable;
.super Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
.source "SquaringDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/target/SquaringDrawable$State;
    }
.end annotation


# instance fields
.field private mutated:Z

.field private state:Lcom/bumptech/glide/request/target/SquaringDrawable$State;

.field private wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;I)V
    .registers 5

    .line 26
    new-instance v0, Lcom/bumptech/glide/request/target/SquaringDrawable$State;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/request/target/SquaringDrawable$State;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;I)V

    const/4 p2, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/bumptech/glide/request/target/SquaringDrawable;-><init>(Lcom/bumptech/glide/request/target/SquaringDrawable$State;Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/request/target/SquaringDrawable$State;Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Landroid/content/res/Resources;)V
    .registers 4

    .line 29
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->state:Lcom/bumptech/glide/request/target/SquaringDrawable$State;

    if-nez p2, :cond_23

    if-eqz p3, :cond_16

    .line 33
    # getter for: Lcom/bumptech/glide/request/target/SquaringDrawable$State;->wrapped:Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-static {p1}, Lcom/bumptech/glide/request/target/SquaringDrawable$State;->access$000(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    iput-object p1, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    goto :goto_25

    .line 35
    :cond_16
    # getter for: Lcom/bumptech/glide/request/target/SquaringDrawable$State;->wrapped:Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-static {p1}, Lcom/bumptech/glide/request/target/SquaringDrawable$State;->access$000(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    iput-object p1, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    goto :goto_25

    .line 38
    :cond_23
    iput-object p2, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    :goto_25
    return-void
.end method


# virtual methods
.method public clearColorFilter()V
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 151
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAlpha()I
    .registers 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 83
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getAlpha()I

    move-result p0

    return p0
.end method

.method public getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .registers 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 77
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    return-object p0
.end method

.method public getChangingConfigurations()I
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getChangingConfigurations()I

    move-result p0

    return p0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 1

    .line 206
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->state:Lcom/bumptech/glide/request/target/SquaringDrawable$State;

    return-object p0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->state:Lcom/bumptech/glide/request/target/SquaringDrawable$State;

    # getter for: Lcom/bumptech/glide/request/target/SquaringDrawable$State;->side:I
    invoke-static {p0}, Lcom/bumptech/glide/request/target/SquaringDrawable$State;->access$100(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->state:Lcom/bumptech/glide/request/target/SquaringDrawable$State;

    # getter for: Lcom/bumptech/glide/request/target/SquaringDrawable$State;->side:I
    invoke-static {p0}, Lcom/bumptech/glide/request/target/SquaringDrawable$State;->access$100(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)I

    move-result p0

    return p0
.end method

.method public getMinimumHeight()I
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getMinimumHeight()I

    move-result p0

    return p0
.end method

.method public getMinimumWidth()I
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getMinimumWidth()I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getOpacity()I

    move-result p0

    return p0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 2

    .line 128
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public invalidateSelf()V
    .registers 1

    .line 133
    invoke-super {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->invalidateSelf()V

    .line 134
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->invalidateSelf()V

    return-void
.end method

.method public isAnimated()Z
    .registers 1

    .line 171
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->isAnimated()Z

    move-result p0

    return p0
.end method

.method public isRunning()Z
    .registers 1

    .line 191
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->isRunning()Z

    move-result p0

    return p0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 196
    iget-boolean v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->mutated:Z

    if-nez v0, :cond_20

    invoke-super {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_20

    .line 197
    iget-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    .line 198
    new-instance v0, Lcom/bumptech/glide/request/target/SquaringDrawable$State;

    iget-object v1, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->state:Lcom/bumptech/glide/request/target/SquaringDrawable$State;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/target/SquaringDrawable$State;-><init>(Lcom/bumptech/glide/request/target/SquaringDrawable$State;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->state:Lcom/bumptech/glide/request/target/SquaringDrawable$State;

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->mutated:Z

    :cond_20
    return-object p0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 4

    .line 145
    invoke-super {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 146
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    .line 156
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setAlpha(I)V

    return-void
.end method

.method public setBounds(IIII)V
    .registers 5

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setBounds(IIII)V

    .line 45
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .registers 2

    .line 50
    invoke-super {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 51
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setChangingConfigurations(I)V
    .registers 2

    .line 56
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setChangingConfigurations(I)V

    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 88
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .line 161
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setDither(Z)V
    .registers 2

    .line 66
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setDither(Z)V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 2

    .line 71
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setFilterBitmap(Z)V

    return-void
.end method

.method public setLoopCount(I)V
    .registers 2

    .line 176
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setLoopCount(I)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 3

    .line 103
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->setVisible(ZZ)Z

    move-result p0

    return p0
.end method

.method public start()V
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->start()V

    return-void
.end method

.method public stop()V
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->stop()V

    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .registers 2

    .line 139
    invoke-super {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 140
    iget-object p0, p0, Lcom/bumptech/glide/request/target/SquaringDrawable;->wrapped:Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
