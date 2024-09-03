.class Landroid/support/transition/ViewUtilsApi18;
.super Landroid/support/transition/ViewUtilsApi14;
.source "ViewUtilsApi18.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x12
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Landroid/support/transition/ViewUtilsApi14;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverlay(Landroid/view/View;)Landroid/support/transition/ViewOverlayImpl;
    .registers 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    new-instance p0, Landroid/support/transition/ViewOverlayApi18;

    invoke-direct {p0, p1}, Landroid/support/transition/ViewOverlayApi18;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public getWindowId(Landroid/view/View;)Landroid/support/transition/WindowIdImpl;
    .registers 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    new-instance p0, Landroid/support/transition/WindowIdApi18;

    invoke-direct {p0, p1}, Landroid/support/transition/WindowIdApi18;-><init>(Landroid/view/View;)V

    return-object p0
.end method
