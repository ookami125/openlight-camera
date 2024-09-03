.class Landroid/support/transition/ImageViewUtils;
.super Ljava/lang/Object;
.source "ImageViewUtils.java"


# static fields
.field private static final IMPL:Landroid/support/transition/ImageViewUtilsImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_e

    .line 30
    new-instance v0, Landroid/support/transition/ImageViewUtilsApi21;

    invoke-direct {v0}, Landroid/support/transition/ImageViewUtilsApi21;-><init>()V

    sput-object v0, Landroid/support/transition/ImageViewUtils;->IMPL:Landroid/support/transition/ImageViewUtilsImpl;

    goto :goto_15

    .line 32
    :cond_e
    new-instance v0, Landroid/support/transition/ImageViewUtilsApi14;

    invoke-direct {v0}, Landroid/support/transition/ImageViewUtilsApi14;-><init>()V

    sput-object v0, Landroid/support/transition/ImageViewUtils;->IMPL:Landroid/support/transition/ImageViewUtilsImpl;

    :goto_15
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static animateTransform(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V
    .registers 3

    .line 48
    sget-object v0, Landroid/support/transition/ImageViewUtils;->IMPL:Landroid/support/transition/ImageViewUtilsImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/transition/ImageViewUtilsImpl;->animateTransform(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V

    return-void
.end method

.method static reserveEndAnimateTransform(Landroid/widget/ImageView;Landroid/animation/Animator;)V
    .registers 3

    .line 56
    sget-object v0, Landroid/support/transition/ImageViewUtils;->IMPL:Landroid/support/transition/ImageViewUtilsImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/transition/ImageViewUtilsImpl;->reserveEndAnimateTransform(Landroid/widget/ImageView;Landroid/animation/Animator;)V

    return-void
.end method

.method static startAnimateTransform(Landroid/widget/ImageView;)V
    .registers 2

    .line 41
    sget-object v0, Landroid/support/transition/ImageViewUtils;->IMPL:Landroid/support/transition/ImageViewUtilsImpl;

    invoke-interface {v0, p0}, Landroid/support/transition/ImageViewUtilsImpl;->startAnimateTransform(Landroid/widget/ImageView;)V

    return-void
.end method
