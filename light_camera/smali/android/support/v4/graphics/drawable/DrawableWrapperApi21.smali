.class Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;
.super Landroid/support/v4/graphics/drawable/DrawableWrapperApi19;
.source "DrawableWrapperApi21.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/drawable/DrawableWrapperApi21$DrawableWrapperStateLollipop;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawableWrapperApi21"

.field private static sIsProjectedDrawableMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi19;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 47
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;->findAndCacheIsProjectedDrawableMethod()V

    return-void
.end method

.method constructor <init>(Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;Landroid/content/res/Resources;)V
    .registers 3

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi19;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 52
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;->findAndCacheIsProjectedDrawableMethod()V

    return-void
.end method

.method private findAndCacheIsProjectedDrawableMethod()V
    .registers 3

    .line 160
    sget-object p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;->sIsProjectedDrawableMethod:Ljava/lang/reflect/Method;

    if-nez p0, :cond_1a

    .line 162
    :try_start_4
    const-class p0, Landroid/graphics/drawable/Drawable;

    const-string v0, "isProjected"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    sput-object p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;->sIsProjectedDrawableMethod:Ljava/lang/reflect/Method;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception p0

    const-string v0, "DrawableWrapperApi21"

    const-string v1, "Failed to retrieve Drawable#isProjected() method"

    .line 164
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a
    :goto_1a
    return-void
.end method


# virtual methods
.method public getDirtyBounds()Landroid/graphics/Rect;
    .registers 1

    .line 72
    iget-object p0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 2

    .line 67
    iget-object p0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method protected isCompatTintEnabled()Z
    .registers 4

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ne v0, v2, :cond_1b

    .line 116
    iget-object p0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_19

    instance-of v0, p0, Landroid/graphics/drawable/DrawableContainer;

    if-nez v0, :cond_19

    instance-of v0, p0, Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_19

    instance-of p0, p0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p0, :cond_1a

    :cond_19
    const/4 v1, 0x1

    :cond_1a
    return v1

    :cond_1b
    return v1
.end method

.method public isProjected()Z
    .registers 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;->sIsProjectedDrawableMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_22

    .line 132
    :try_start_9
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;->sIsProjectedDrawableMethod:Ljava/lang/reflect/Method;

    iget-object p0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_1a

    return p0

    :catch_1a
    move-exception p0

    const-string v0, "DrawableWrapperApi21"

    const-string v2, "Error calling Drawable#isProjected() method"

    .line 134
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    return v1
.end method

.method mutateConstantState()Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 144
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21$DrawableWrapperStateLollipop;

    iget-object p0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21$DrawableWrapperStateLollipop;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperApi14$DrawableWrapperState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public setHotspot(FF)V
    .registers 3

    .line 57
    iget-object p0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 5

    .line 62
    iget-object p0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    return-void
.end method

.method public setState([I)Z
    .registers 2

    .line 104
    invoke-super {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi19;->setState([I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 107
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;->invalidateSelf()V

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public setTint(I)V
    .registers 3

    .line 86
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;->isCompatTintEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 87
    invoke-super {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi19;->setTint(I)V

    goto :goto_f

    .line 89
    :cond_a
    iget-object p0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_f
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 77
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;->isCompatTintEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 78
    invoke-super {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi19;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_f

    .line 80
    :cond_a
    iget-object p0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_f
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 95
    invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;->isCompatTintEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 96
    invoke-super {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperApi19;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_f

    .line 98
    :cond_a
    iget-object p0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperApi21;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :goto_f
    return-void
.end method
