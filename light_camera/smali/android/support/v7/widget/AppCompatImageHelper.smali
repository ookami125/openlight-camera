.class public Landroid/support/v7/widget/AppCompatImageHelper;
.super Ljava/lang/Object;
.source "AppCompatImageHelper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mImageTint:Landroid/support/v7/widget/TintInfo;

.field private mInternalImageTint:Landroid/support/v7/widget/TintInfo;

.field private mTmpInfo:Landroid/support/v7/widget/TintInfo;

.field private final mView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    return-void
.end method

.method private applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z
    .registers 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 195
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mTmpInfo:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_b

    .line 196
    new-instance v0, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mTmpInfo:Landroid/support/v7/widget/TintInfo;

    .line 198
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mTmpInfo:Landroid/support/v7/widget/TintInfo;

    .line 199
    invoke-virtual {v0}, Landroid/support/v7/widget/TintInfo;->clear()V

    .line 201
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/support/v4/widget/ImageViewCompat;->getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    .line 203
    iput-boolean v2, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 204
    iput-object v1, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 206
    :cond_1d
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/support/v4/widget/ImageViewCompat;->getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 208
    iput-boolean v2, v0, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    .line 209
    iput-object v1, v0, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 212
    :cond_29
    iget-boolean v1, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    if-nez v1, :cond_34

    iget-boolean v1, v0, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    if-eqz v1, :cond_32

    goto :goto_34

    :cond_32
    const/4 p0, 0x0

    return p0

    .line 213
    :cond_34
    :goto_34
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object p0

    invoke-static {p1, v0, p0}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    return v2
.end method

.method private shouldApplyFrameworkTintUsingColorFilter()Z
    .registers 5

    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-le v0, v3, :cond_e

    .line 177
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mInternalImageTint:Landroid/support/v7/widget/TintInfo;

    if-eqz p0, :cond_d

    move v1, v2

    :cond_d
    return v1

    :cond_e
    if-ne v0, v3, :cond_11

    return v2

    :cond_11
    return v1
.end method


# virtual methods
.method applySupportImageTint()V
    .registers 3

    .line 136
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 138
    invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    if-eqz v0, :cond_39

    .line 142
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatImageHelper;->shouldApplyFrameworkTintUsingColorFilter()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 143
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatImageHelper;->applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return-void

    .line 149
    :cond_1a
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v1, :cond_2a

    .line 150
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    iget-object p0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 151
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object p0

    .line 150
    invoke-static {v0, v1, p0}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    goto :goto_39

    .line 152
    :cond_2a
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mInternalImageTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v1, :cond_39

    .line 153
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mInternalImageTint:Landroid/support/v7/widget/TintInfo;

    iget-object p0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 154
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object p0

    .line 153
    invoke-static {v0, v1, p0}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    :cond_39
    :goto_39
    return-void
.end method

.method getSupportImageTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v0, :cond_9

    iget-object p0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    iget-object p0, p0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 132
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v0, :cond_9

    iget-object p0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    iget-object p0, p0, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method hasOverlappingRendering()Z
    .registers 3

    .line 98
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_12

    instance-of p0, p0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p0, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method public loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 6

    .line 49
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object p1

    .line 52
    :try_start_d
    iget-object p2, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, -0x1

    if-nez p2, :cond_2f

    .line 56
    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_srcCompat:I

    invoke-virtual {p1, v1, v0}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    if-eq v1, v0, :cond_2f

    .line 58
    iget-object p2, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2f

    .line 60
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2f
    if-eqz p2, :cond_34

    .line 66
    invoke-static {p2}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    :cond_34
    sget p2, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_tint:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_47

    .line 70
    iget-object p2, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    sget v1, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_tint:I

    .line 71
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 70
    invoke-static {p2, v1}, Landroid/support/v4/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 73
    :cond_47
    sget p2, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_tintMode:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5f

    .line 74
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    sget p2, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_tintMode:I

    .line 76
    invoke-virtual {p1, p2, v0}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result p2

    const/4 v0, 0x0

    .line 75
    invoke-static {p2, v0}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    .line 74
    invoke-static {p0, p2}, Landroid/support/v4/widget/ImageViewCompat;->setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_5f
    .catchall {:try_start_d .. :try_end_5f} :catchall_63

    .line 79
    :cond_5f
    invoke-virtual {p1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    return-void

    :catchall_63
    move-exception p0

    invoke-virtual {p1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    throw p0
.end method

.method public setImageResource(I)V
    .registers 3

    if-eqz p1, :cond_17

    .line 85
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 87
    invoke-static {p1}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    :cond_11
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    .line 91
    :cond_17
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    :goto_1d
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatImageHelper;->applySupportImageTint()V

    return-void
.end method

.method setInternalImageTint(Landroid/content/res/ColorStateList;)V
    .registers 3

    if-eqz p1, :cond_17

    .line 161
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mInternalImageTint:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_d

    .line 162
    new-instance v0, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mInternalImageTint:Landroid/support/v7/widget/TintInfo;

    .line 164
    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mInternalImageTint:Landroid/support/v7/widget/TintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 165
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mInternalImageTint:Landroid/support/v7/widget/TintInfo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    goto :goto_1a

    :cond_17
    const/4 p1, 0x0

    .line 167
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mInternalImageTint:Landroid/support/v7/widget/TintInfo;

    .line 169
    :goto_1a
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatImageHelper;->applySupportImageTint()V

    return-void
.end method

.method setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 109
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_b

    .line 110
    new-instance v0, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    .line 112
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 113
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 114
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatImageHelper;->applySupportImageTint()V

    return-void
.end method

.method setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 122
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    if-nez v0, :cond_b

    .line 123
    new-instance v0, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    .line 125
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 126
    iget-object p1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mImageTint:Landroid/support/v7/widget/TintInfo;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    .line 128
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatImageHelper;->applySupportImageTint()V

    return-void
.end method
