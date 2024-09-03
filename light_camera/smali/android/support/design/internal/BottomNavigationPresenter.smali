.class public Landroid/support/design/internal/BottomNavigationPresenter;
.super Ljava/lang/Object;
.source "BottomNavigationPresenter.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuPresenter;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/internal/BottomNavigationPresenter$SavedState;
    }
.end annotation


# instance fields
.field private mId:I

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

.field private mUpdateSuspended:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mUpdateSuspended:Z

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public flagActionItems()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getId()I
    .registers 1

    .line 100
    iget p0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mId:I

    return p0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
    .registers 2

    .line 55
    iget-object p0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    return-object p0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 4

    .line 49
    iget-object p1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Landroid/support/design/internal/BottomNavigationMenuView;->initialize(Landroid/support/v7/view/menu/MenuBuilder;)V

    .line 50
    iput-object p2, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 3

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 112
    instance-of v0, p1, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    if-eqz v0, :cond_d

    .line 113
    iget-object p0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    check-cast p1, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    iget p1, p1, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;->selectedItemId:I

    invoke-virtual {p0, p1}, Landroid/support/design/internal/BottomNavigationMenuView;->tryRestoreSelectedItemId(I)V

    :cond_d
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .line 105
    new-instance v0, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;

    invoke-direct {v0}, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;-><init>()V

    .line 106
    iget-object p0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->getSelectedItemId()I

    move-result p0

    iput p0, v0, Landroid/support/design/internal/BottomNavigationPresenter$SavedState;->selectedItemId:I

    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public setBottomNavigationMenuView(Landroid/support/design/internal/BottomNavigationMenuView;)V
    .registers 2

    .line 44
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    return-void
.end method

.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .registers 2

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 95
    iput p1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mId:I

    return-void
.end method

.method public setUpdateSuspended(Z)V
    .registers 2

    .line 118
    iput-boolean p1, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mUpdateSuspended:Z

    return-void
.end method

.method public updateMenuView(Z)V
    .registers 3

    .line 60
    iget-boolean v0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mUpdateSuspended:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_d

    .line 62
    iget-object p0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->buildMenuView()V

    goto :goto_12

    .line 64
    :cond_d
    iget-object p0, p0, Landroid/support/design/internal/BottomNavigationPresenter;->mMenuView:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->updateMenuView()V

    :goto_12
    return-void
.end method
