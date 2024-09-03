.class Landroid/support/transition/ImageViewUtilsApi21;
.super Ljava/lang/Object;
.source "ImageViewUtilsApi21.java"

# interfaces
.implements Landroid/support/transition/ImageViewUtilsImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageViewUtilsApi21"

.field private static sAnimateTransformMethod:Ljava/lang/reflect/Method;

.field private static sAnimateTransformMethodFetched:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fetchAnimateTransformMethod()V
    .registers 6

    .line 61
    sget-boolean p0, Landroid/support/transition/ImageViewUtilsApi21;->sAnimateTransformMethodFetched:Z

    if-nez p0, :cond_26

    const/4 p0, 0x1

    .line 63
    :try_start_5
    const-class v0, Landroid/widget/ImageView;

    const-string v1, "animateTransform"

    new-array v2, p0, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/Matrix;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/transition/ImageViewUtilsApi21;->sAnimateTransformMethod:Ljava/lang/reflect/Method;

    .line 65
    sget-object v0, Landroid/support/transition/ImageViewUtilsApi21;->sAnimateTransformMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception v0

    const-string v1, "ImageViewUtilsApi21"

    const-string v2, "Failed to retrieve animateTransform method"

    .line 67
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    :goto_24
    sput-boolean p0, Landroid/support/transition/ImageViewUtilsApi21;->sAnimateTransformMethodFetched:Z

    :cond_26
    return-void
.end method


# virtual methods
.method public animateTransform(Landroid/widget/ImageView;Landroid/graphics/Matrix;)V
    .registers 5

    .line 43
    invoke-direct {p0}, Landroid/support/transition/ImageViewUtilsApi21;->fetchAnimateTransformMethod()V

    .line 44
    sget-object p0, Landroid/support/transition/ImageViewUtilsApi21;->sAnimateTransformMethod:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_1e

    .line 46
    :try_start_7
    sget-object p0, Landroid/support/transition/ImageViewUtilsApi21;->sAnimateTransformMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_12} :catch_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_12} :catch_13

    goto :goto_1e

    :catch_13
    move-exception p0

    .line 50
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1e
    :cond_1e
    :goto_1e
    return-void
.end method

.method public reserveEndAnimateTransform(Landroid/widget/ImageView;Landroid/animation/Animator;)V
    .registers 3

    return-void
.end method

.method public startAnimateTransform(Landroid/widget/ImageView;)V
    .registers 2

    return-void
.end method
