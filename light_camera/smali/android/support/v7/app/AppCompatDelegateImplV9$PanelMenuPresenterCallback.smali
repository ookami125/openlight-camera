.class final Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanelMenuPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
    .registers 2

    .line 1839
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 7

    .line 1844
    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_9

    move v2, v1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    .line 1846
    :goto_a
    iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    if-eqz v2, :cond_f

    move-object p1, v0

    :cond_f
    invoke-virtual {v3, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;

    move-result-object p1

    if-eqz p1, :cond_29

    if-eqz v2, :cond_24

    .line 1849
    iget-object p2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    invoke-virtual {p2, v2, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V

    .line 1850
    iget-object p0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    goto :goto_29

    .line 1854
    :cond_24
    iget-object p0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V

    :cond_29
    :goto_29
    return-void
.end method

.method public onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .registers 3

    if-nez p1, :cond_1d

    .line 1861
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    iget-boolean v0, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z

    if-eqz v0, :cond_1d

    .line 1862
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1863
    iget-object p0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_1d

    const/16 p0, 0x6c

    .line 1864
    invoke-interface {v0, p0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method
