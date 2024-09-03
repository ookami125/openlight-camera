.class Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi19Impl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;
.source "DrawableCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawableCompatApi19Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 189
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlpha(Landroid/graphics/drawable/Drawable;)I
    .registers 2

    .line 210
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p0

    return p0
.end method

.method public isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
    .registers 2

    .line 197
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result p0

    return p0
.end method

.method public setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V
    .registers 3

    .line 192
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void
.end method

.method public wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 202
    instance-of p0, p1, Landroid/support/v4/graphics/drawable/TintAwareDrawable;

    if-nez p0, :cond_a

    .line 203
    new-instance p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi19;

    invoke-direct {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi19;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object p0

    :cond_a
    return-object p1
.end method
