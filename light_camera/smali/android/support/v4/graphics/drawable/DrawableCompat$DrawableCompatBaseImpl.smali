.class Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;
.super Ljava/lang/Object;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawableCompatBaseImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
    .registers 3

    return-void
.end method

.method public canApplyTheme(Landroid/graphics/drawable/Drawable;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public clearColorFilter(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 116
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void
.end method

.method public getAlpha(Landroid/graphics/drawable/Drawable;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 122
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 50
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    return-void
.end method

.method public setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V
    .registers 3

    return-void
.end method

.method public setHotspot(Landroid/graphics/drawable/Drawable;FF)V
    .registers 4

    return-void
.end method

.method public setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .registers 6

    return-void
.end method

.method public setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public setTint(Landroid/graphics/drawable/Drawable;I)V
    .registers 3

    .line 67
    instance-of p0, p1, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    if-eqz p0, :cond_9

    .line 68
    check-cast p1, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    invoke-interface {p1, p2}, Landroid/support/v4/graphics/drawable/TintAwareDrawable;->setTint(I)V

    :cond_9
    return-void
.end method

.method public setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 73
    instance-of p0, p1, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    if-eqz p0, :cond_9

    .line 74
    check-cast p1, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    invoke-interface {p1, p2}, Landroid/support/v4/graphics/drawable/TintAwareDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_9
    return-void
.end method

.method public setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 79
    instance-of p0, p1, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    if-eqz p0, :cond_9

    .line 80
    check-cast p1, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    invoke-interface {p1, p2}, Landroid/support/v4/graphics/drawable/TintAwareDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_9
    return-void
.end method

.method public wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 85
    instance-of p0, p1, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    if-nez p0, :cond_a

    .line 86
    new-instance p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;

    invoke-direct {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi14;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object p0

    :cond_a
    return-object p1
.end method
