.class Landroid/support/design/internal/BottomNavigationMenuView$1;
.super Ljava/lang/Object;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/internal/BottomNavigationMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/internal/BottomNavigationMenuView;


# direct methods
.method constructor <init>(Landroid/support/design/internal/BottomNavigationMenuView;)V
    .registers 2

    .line 90
    iput-object p1, p0, Landroid/support/design/internal/BottomNavigationMenuView$1;->this$0:Landroid/support/design/internal/BottomNavigationMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 93
    check-cast p1, Landroid/support/design/internal/BottomNavigationItemView;

    .line 94
    invoke-virtual {p1}, Landroid/support/design/internal/BottomNavigationItemView;->getItemData()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object p1

    .line 95
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationMenuView$1;->this$0:Landroid/support/design/internal/BottomNavigationMenuView;

    # getter for: Landroid/support/design/internal/BottomNavigationMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
    invoke-static {v0}, Landroid/support/design/internal/BottomNavigationMenuView;->access$100(Landroid/support/design/internal/BottomNavigationMenuView;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v0

    iget-object p0, p0, Landroid/support/design/internal/BottomNavigationMenuView$1;->this$0:Landroid/support/design/internal/BottomNavigationMenuView;

    # getter for: Landroid/support/design/internal/BottomNavigationMenuView;->mPresenter:Landroid/support/design/internal/BottomNavigationPresenter;
    invoke-static {p0}, Landroid/support/design/internal/BottomNavigationMenuView;->access$000(Landroid/support/design/internal/BottomNavigationMenuView;)Landroid/support/design/internal/BottomNavigationPresenter;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z

    move-result p0

    if-nez p0, :cond_1d

    const/4 p0, 0x1

    .line 96
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_1d
    return-void
.end method
