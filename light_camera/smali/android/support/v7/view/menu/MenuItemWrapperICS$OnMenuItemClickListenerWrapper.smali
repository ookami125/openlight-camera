.class Landroid/support/v7/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;
.super Landroid/support/v7/view/menu/BaseWrapper;
.source "MenuItemWrapperICS.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/MenuItemWrapperICS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnMenuItemClickListenerWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/view/menu/BaseWrapper<",
        "Landroid/view/MenuItem$OnMenuItemClickListener;",
        ">;",
        "Landroid/view/MenuItem$OnMenuItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/view/menu/MenuItemWrapperICS;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .registers 3

    .line 392
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;->this$0:Landroid/support/v7/view/menu/MenuItemWrapperICS;

    .line 393
    invoke-direct {p0, p2}, Landroid/support/v7/view/menu/BaseWrapper;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3

    .line 398
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;->mWrappedObject:Ljava/lang/Object;

    check-cast v0, Landroid/view/MenuItem$OnMenuItemClickListener;

    iget-object p0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;->this$0:Landroid/support/v7/view/menu/MenuItemWrapperICS;

    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuItemWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
