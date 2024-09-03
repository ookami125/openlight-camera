.class Landroid/support/v4/widget/ImageViewCompat$LollipopViewCompatImpl;
.super Landroid/support/v4/widget/ImageViewCompat$BaseViewCompatImpl;
.source "ImageViewCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/ImageViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LollipopViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 71
    invoke-direct {p0}, Landroid/support/v4/widget/ImageViewCompat$BaseViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageTintList(Landroid/widget/ImageView;)Landroid/content/res/ColorStateList;
    .registers 2

    .line 74
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getImageTintMode(Landroid/widget/ImageView;)Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 117
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 79
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 81
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-ne p0, p2, :cond_30

    .line 84
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 85
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 86
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    if-eqz p2, :cond_1b

    const/4 p2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p2, 0x0

    :goto_1c
    if-eqz p0, :cond_30

    if-eqz p2, :cond_30

    .line 88
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 89
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 91
    :cond_2d
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_30
    return-void
.end method

.method public setImageTintMode(Landroid/widget/ImageView;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 98
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 100
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-ne p0, p2, :cond_30

    .line 103
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 104
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 105
    invoke-virtual {p1}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    if-eqz p2, :cond_1b

    const/4 p2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p2, 0x0

    :goto_1c
    if-eqz p0, :cond_30

    if-eqz p2, :cond_30

    .line 107
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 108
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 110
    :cond_2d
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_30
    return-void
.end method
