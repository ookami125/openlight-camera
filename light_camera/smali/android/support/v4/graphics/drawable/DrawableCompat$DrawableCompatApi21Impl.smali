.class Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi21Impl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi19Impl;
.source "DrawableCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawableCompatApi21Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 218
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi19Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
    .registers 3

    .line 254
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public canApplyTheme(Landroid/graphics/drawable/Drawable;)Z
    .registers 2

    .line 259
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result p0

    return p0
.end method

.method public clearColorFilter(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 269
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 275
    instance-of v0, p1, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_11

    .line 276
    check-cast p1, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi21Impl;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    goto :goto_40

    .line 277
    :cond_11
    instance-of v0, p1, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    if-eqz v0, :cond_1f

    .line 278
    check-cast p1, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    invoke-interface {p1}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi21Impl;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    goto :goto_40

    .line 279
    :cond_1f
    instance-of v0, p1, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v0, :cond_40

    .line 280
    check-cast p1, Landroid/graphics/drawable/DrawableContainer;

    .line 282
    invoke-virtual {p1}, Landroid/graphics/drawable/DrawableContainer;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz p1, :cond_40

    const/4 v0, 0x0

    .line 285
    invoke-virtual {p1}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildCount()I

    move-result v1

    :goto_32
    if-ge v0, v1, :cond_40

    .line 286
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 288
    invoke-virtual {p0, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi21Impl;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_40
    :goto_40
    return-void
.end method

.method public getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;
    .registers 2

    .line 264
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method public inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 299
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public setHotspot(Landroid/graphics/drawable/Drawable;FF)V
    .registers 4

    .line 221
    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    return-void
.end method

.method public setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .registers 6

    .line 226
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    return-void
.end method

.method public setTint(Landroid/graphics/drawable/Drawable;I)V
    .registers 3

    .line 231
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 236
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 241
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 246
    instance-of p0, p1, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    if-nez p0, :cond_a

    .line 247
    new-instance p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;

    invoke-direct {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object p0

    :cond_a
    return-object p1
.end method
