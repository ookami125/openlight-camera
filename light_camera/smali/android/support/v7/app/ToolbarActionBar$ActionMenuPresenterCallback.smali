.class final Landroid/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionMenuPresenterCallback"
.end annotation


# instance fields
.field private mClosingActionMenu:Z

.field final synthetic this$0:Landroid/support/v7/app/ToolbarActionBar;


# direct methods
.method constructor <init>(Landroid/support/v7/app/ToolbarActionBar;)V
    .registers 2

    .line 554
    iput-object p1, p0, Landroid/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 4

    .line 568
    iget-boolean p2, p0, Landroid/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    if-eqz p2, :cond_5

    return-void

    :cond_5
    const/4 p2, 0x1

    .line 572
    iput-boolean p2, p0, Landroid/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    .line 573
    iget-object p2, p0, Landroid/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    iget-object p2, p2, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;

    invoke-interface {p2}, Landroid/support/v7/widget/DecorToolbar;->dismissPopupMenus()V

    .line 574
    iget-object p2, p0, Landroid/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    iget-object p2, p2, Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz p2, :cond_1e

    .line 575
    iget-object p2, p0, Landroid/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    iget-object p2, p2, Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/16 v0, 0x6c

    invoke-interface {p2, v0, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1e
    const/4 p1, 0x0

    .line 577
    iput-boolean p1, p0, Landroid/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->mClosingActionMenu:Z

    return-void
.end method

.method public onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .registers 3

    .line 559
    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    iget-object v0, v0, Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    if-eqz v0, :cond_11

    .line 560
    iget-object p0, p0, Landroid/support/v7/app/ToolbarActionBar$ActionMenuPresenterCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    iget-object p0, p0, Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/16 v0, 0x6c

    invoke-interface {p0, v0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method
