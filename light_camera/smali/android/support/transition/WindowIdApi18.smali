.class Landroid/support/transition/WindowIdApi18;
.super Ljava/lang/Object;
.source "WindowIdApi18.java"

# interfaces
.implements Landroid/support/transition/WindowIdImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x12
.end annotation


# instance fields
.field private final mWindowId:Landroid/view/WindowId;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object p1

    iput-object p1, p0, Landroid/support/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 34
    instance-of v0, p1, Landroid/support/transition/WindowIdApi18;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/transition/WindowIdApi18;

    iget-object p1, p1, Landroid/support/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    iget-object p0, p0, Landroid/support/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    invoke-virtual {p1, p0}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 39
    iget-object p0, p0, Landroid/support/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    invoke-virtual {p0}, Landroid/view/WindowId;->hashCode()I

    move-result p0

    return p0
.end method
