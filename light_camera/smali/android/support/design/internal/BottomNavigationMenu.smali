.class public final Landroid/support/design/internal/BottomNavigationMenu;
.super Landroid/support/v7/view/menu/MenuBuilder;
.source "BottomNavigationMenu.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final MAX_ITEM_COUNT:I = 0x5


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 8

    .line 46
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenu;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x5

    if-gt v0, v2, :cond_1e

    .line 51
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenu;->stopDispatchingItemsChanged()V

    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 53
    instance-of p2, p1, Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz p2, :cond_1a

    .line 54
    move-object p2, p1

    check-cast p2, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {p2, v1}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 56
    :cond_1a
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenu;->startDispatchingItemsChanged()V

    return-object p1

    .line 47
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Maximum number of items supported by BottomNavigationView is 5. Limit can be checked with BottomNavigationView#getMaxItemCount()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 5

    .line 41
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "BottomNavigationView does not support submenus"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
