.class Landroid/support/v7/view/menu/MenuDialogHelper;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;


# instance fields
.field private mDialog:Landroid/support/v7/app/AlertDialog;

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field mPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

.field private mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 138
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mDialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 139
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    :cond_9
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 168
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object p0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v7/view/menu/MenuItemImpl;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
    .registers 4

    if-nez p2, :cond_6

    .line 150
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_9

    .line 151
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuDialogHelper;->dismiss()V

    .line 153
    :cond_9
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_12

    .line 154
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-interface {p0, p1, p2}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    :cond_12
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 145
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    iget-object p0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/support/v7/view/menu/ListMenuPresenter;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/16 v0, 0x52

    if-eq p2, v0, :cond_7

    const/4 v0, 0x4

    if-ne p2, v0, :cond_5b

    .line 94
    :cond_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2c

    .line 95
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2c

    .line 96
    iget-object p1, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_5b

    .line 98
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5b

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_5b

    .line 102
    invoke-virtual {p1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    return v1

    .line 107
    :cond_2c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_5b

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 108
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 110
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 113
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 114
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 115
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return v1

    .line 124
    :cond_5b
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Landroid/support/v7/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0
.end method

.method public onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
    .registers 3

    .line 160
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_b

    .line 161
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    invoke-interface {p0, p1}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public setPresenterCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
    .registers 2

    .line 129
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .registers 7

    .line 52
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 55
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v2, Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Landroid/support/v7/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v2, v3, v4}, Landroid/support/v7/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    .line 60
    iget-object v2, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v2, p0}, Landroid/support/v7/view/menu/ListMenuPresenter;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 61
    iget-object v2, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v3, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V

    .line 62
    iget-object v2, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mPresenter:Landroid/support/v7/view/menu/ListMenuPresenter;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 65
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getHeaderView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 68
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    goto :goto_46

    .line 71
    :cond_37
    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 75
    :goto_46
    invoke-virtual {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 78
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mDialog:Landroid/support/v7/app/AlertDialog;

    .line 79
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 81
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x3eb

    .line 82
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eqz p1, :cond_66

    .line 84
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 86
    :cond_66
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 88
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuDialogHelper;->mDialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method
