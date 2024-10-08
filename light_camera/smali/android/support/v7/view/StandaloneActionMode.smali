.class public Landroid/support/v7/view/StandaloneActionMode;
.super Landroid/support/v7/view/ActionMode;
.source "StandaloneActionMode.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mCallback:Landroid/support/v7/view/ActionMode$Callback;

.field private mContext:Landroid/content/Context;

.field private mContextView:Landroid/support/v7/widget/ActionBarContextView;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFinished:Z

.field private mFocusable:Z

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Landroid/support/v7/view/ActionMode$Callback;Z)V
    .registers 5

    .line 49
    invoke-direct {p0}, Landroid/support/v7/view/ActionMode;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/support/v7/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Landroid/support/v7/view/StandaloneActionMode;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    .line 52
    iput-object p3, p0, Landroid/support/v7/view/StandaloneActionMode;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    .line 54
    new-instance p1, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p2}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/view/StandaloneActionMode;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 56
    iget-object p1, p0, Landroid/support/v7/view/StandaloneActionMode;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 57
    iput-boolean p4, p0, Landroid/support/v7/view/StandaloneActionMode;->mFocusable:Z

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    .line 104
    iget-boolean v0, p0, Landroid/support/v7/view/StandaloneActionMode;->mFinished:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Landroid/support/v7/view/StandaloneActionMode;->mFinished:Z

    .line 109
    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 110
    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/support/v7/view/ActionMode$Callback;->onDestroyActionMode(Landroid/support/v7/view/ActionMode;)V

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    .line 130
    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object p0, p0, Landroid/support/v7/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 1

    .line 115
    iget-object p0, p0, Landroid/support/v7/view/StandaloneActionMode;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object p0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 2

    .line 135
    new-instance v0, Landroid/support/v7/view/SupportMenuInflater;

    iget-object p0, p0, Landroid/support/v7/view/StandaloneActionMode;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 1

    .line 125
    iget-object p0, p0, Landroid/support/v7/view/StandaloneActionMode;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 1

    .line 120
    iget-object p0, p0, Landroid/support/v7/view/StandaloneActionMode;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public invalidate()V
    .registers 3

    .line 99
    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/support/v7/view/StandaloneActionMode;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/view/ActionMode$Callback;->onPrepareActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z

    return-void
.end method

.method public isTitleOptional()Z
    .registers 1

    .line 88
    iget-object p0, p0, Landroid/support/v7/view/StandaloneActionMode;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContextView;->isTitleOptional()Z

    move-result p0

    return p0
.end method

.method public isUiFocusable()Z
    .registers 1

    .line 166
    iget-boolean p0, p0, Landroid/support/v7/view/StandaloneActionMode;->mFocusable:Z

    return p0
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 3

    return-void
.end method

.method public onCloseSubMenu(Landroid/support/v7/view/menu/SubMenuBuilder;)V
    .registers 2

    return-void
.end method

.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 3

    .line 140
    iget-object p1, p0, Landroid/support/v7/view/StandaloneActionMode;->mCallback:Landroid/support/v7/view/ActionMode$Callback;

    invoke-interface {p1, p0, p2}, Landroid/support/v7/view/ActionMode$Callback;->onActionItemClicked(Landroid/support/v7/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 2

    .line 160
    invoke-virtual {p0}, Landroid/support/v7/view/StandaloneActionMode;->invalidate()V

    .line 161
    iget-object p0, p0, Landroid/support/v7/view/StandaloneActionMode;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContextView;->showOverflowMenu()Z

    return-void
.end method

.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
    .registers 4

    .line 147
    invoke-virtual {p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 151
    :cond_8
    new-instance v0, Landroid/support/v7/view/menu/MenuPopupHelper;

    iget-object p0, p0, Landroid/support/v7/view/StandaloneActionMode;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/support/v7/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuPopupHelper;->show()V

    return v1
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3

    .line 93
    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    if-eqz p1, :cond_d

    .line 94
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setSubtitle(I)V
    .registers 3

    .line 77
    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/view/StandaloneActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 67
    iget-object p0, p0, Landroid/support/v7/view/StandaloneActionMode;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .registers 3

    .line 72
    iget-object v0, p0, Landroid/support/v7/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/view/StandaloneActionMode;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 62
    iget-object p0, p0, Landroid/support/v7/view/StandaloneActionMode;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .registers 2

    .line 82
    invoke-super {p0, p1}, Landroid/support/v7/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 83
    iget-object p0, p0, Landroid/support/v7/view/StandaloneActionMode;->mContextView:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method
