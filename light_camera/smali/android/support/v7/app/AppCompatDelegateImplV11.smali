.class Landroid/support/v7/app/AppCompatDelegateImplV11;
.super Landroid/support/v7/app/AppCompatDelegateImplV9;
.source "AppCompatDelegateImplV11.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .registers 4

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV9;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    return-void
.end method


# virtual methods
.method callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasWindowFeature(I)Z
    .registers 3

    .line 34
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->hasWindowFeature(I)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object p0, p0, Landroid/support/v7/app/AppCompatDelegateImplV11;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->hasFeature(I)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method
