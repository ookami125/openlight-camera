.class Landroid/support/v7/widget/TintResources;
.super Landroid/support/v7/widget/ResourcesWrapper;
.source "TintResources.java"


# instance fields
.field private final mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ResourcesWrapper;-><init>(Landroid/content/res/Resources;)V

    .line 35
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/support/v7/widget/TintResources;->mContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 45
    invoke-super {p0, p1}, Landroid/support/v7/widget/ResourcesWrapper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 46
    iget-object p0, p0, Landroid/support/v7/widget/TintResources;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    if-eqz v0, :cond_16

    if-eqz p0, :cond_16

    .line 48
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    invoke-static {p0, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    :cond_16
    return-object v0
.end method
