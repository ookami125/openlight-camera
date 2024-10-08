.class public abstract Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "DrawableWrapperApi14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "DrawableWrapperState"
.end annotation


# instance fields
.field mChangingConfigurations:I

.field mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>(Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;Landroid/content/res/Resources;)V
    .registers 3
    .param p1    # Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 358
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 p2, 0x0

    .line 355
    iput-object p2, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    .line 356
    sget-object p2, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_1c

    .line 360
    iget p2, p1, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mChangingConfigurations:I

    iput p2, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mChangingConfigurations:I

    .line 361
    iget-object p2, p1, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object p2, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 362
    iget-object p2, p1, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    iput-object p2, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;

    .line 363
    iget-object p1, p1, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object p1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_1c
    return-void
.end method


# virtual methods
.method canConstantState()Z
    .registers 1

    .line 382
    iget-object p0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public getChangingConfigurations()I
    .registers 3

    .line 377
    iget v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mChangingConfigurations:I

    iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v1, :cond_d

    iget-object p0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 378
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    or-int/2addr p0, v0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    const/4 v0, 0x0

    .line 369
    invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public abstract newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
