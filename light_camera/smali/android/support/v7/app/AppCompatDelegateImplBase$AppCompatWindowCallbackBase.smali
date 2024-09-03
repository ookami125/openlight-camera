.class Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;
.super Landroid/support/v7/view/WindowCallbackWrapper;
.source "AppCompatDelegateImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppCompatWindowCallbackBase"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplBase;Landroid/view/Window$Callback;)V
    .registers 3

    .line 309
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;->this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;

    .line 310
    invoke-direct {p0, p2}, Landroid/support/v7/view/WindowCallbackWrapper;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 315
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;->this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegateImplBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 316
    invoke-super {p0, p1}, Landroid/support/v7/view/WindowCallbackWrapper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

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

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    .line 321
    invoke-super {p0, p1}, Landroid/support/v7/view/WindowCallbackWrapper;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object p0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;->this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;

    .line 322
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/support/v7/app/AppCompatDelegateImplBase;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public onContentChanged()V
    .registers 1

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    if-nez p1, :cond_8

    .line 327
    instance-of v0, p2, Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 332
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/WindowCallbackWrapper;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 3

    .line 370
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/WindowCallbackWrapper;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 371
    iget-object p0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;->this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplBase;->onMenuOpened(ILandroid/view/Menu;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .registers 3

    .line 377
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/WindowCallbackWrapper;->onPanelClosed(ILandroid/view/Menu;)V

    .line 378
    iget-object p0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;->this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplBase;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 7

    .line 343
    instance-of v0, p3, Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v0, :cond_8

    move-object v0, p3

    check-cast v0, Landroid/support/v7/view/menu/MenuBuilder;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const/4 v1, 0x0

    if-nez p1, :cond_f

    if-nez v0, :cond_f

    return v1

    :cond_f
    if-eqz v0, :cond_15

    const/4 v2, 0x1

    .line 356
    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/MenuBuilder;->setOverrideVisibleItems(Z)V

    .line 359
    :cond_15
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/view/WindowCallbackWrapper;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    if-eqz v0, :cond_1e

    .line 362
    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->setOverrideVisibleItems(Z)V

    :cond_1e
    return p0
.end method
