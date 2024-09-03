.class Landroid/support/design/widget/BottomNavigationView$1;
.super Ljava/lang/Object;
.source "BottomNavigationView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BottomNavigationView;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BottomNavigationView;)V
    .registers 2

    .line 174
    iput-object p1, p0, Landroid/support/design/widget/BottomNavigationView$1;->this$0:Landroid/support/design/widget/BottomNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 5

    .line 177
    iget-object p1, p0, Landroid/support/design/widget/BottomNavigationView$1;->this$0:Landroid/support/design/widget/BottomNavigationView;

    # getter for: Landroid/support/design/widget/BottomNavigationView;->mReselectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;
    invoke-static {p1}, Landroid/support/design/widget/BottomNavigationView;->access$000(Landroid/support/design/widget/BottomNavigationView;)Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1f

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    iget-object v1, p0, Landroid/support/design/widget/BottomNavigationView$1;->this$0:Landroid/support/design/widget/BottomNavigationView;

    invoke-virtual {v1}, Landroid/support/design/widget/BottomNavigationView;->getSelectedItemId()I

    move-result v1

    if-ne p1, v1, :cond_1f

    .line 178
    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView$1;->this$0:Landroid/support/design/widget/BottomNavigationView;

    # getter for: Landroid/support/design/widget/BottomNavigationView;->mReselectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;
    invoke-static {p0}, Landroid/support/design/widget/BottomNavigationView;->access$000(Landroid/support/design/widget/BottomNavigationView;)Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/support/design/widget/BottomNavigationView$OnNavigationItemReselectedListener;->onNavigationItemReselected(Landroid/view/MenuItem;)V

    return v0

    .line 181
    :cond_1f
    iget-object p1, p0, Landroid/support/design/widget/BottomNavigationView$1;->this$0:Landroid/support/design/widget/BottomNavigationView;

    # getter for: Landroid/support/design/widget/BottomNavigationView;->mSelectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;
    invoke-static {p1}, Landroid/support/design/widget/BottomNavigationView;->access$100(Landroid/support/design/widget/BottomNavigationView;)Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_34

    iget-object p0, p0, Landroid/support/design/widget/BottomNavigationView$1;->this$0:Landroid/support/design/widget/BottomNavigationView;

    .line 182
    # getter for: Landroid/support/design/widget/BottomNavigationView;->mSelectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;
    invoke-static {p0}, Landroid/support/design/widget/BottomNavigationView;->access$100(Landroid/support/design/widget/BottomNavigationView;)Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;->onNavigationItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    if-nez p0, :cond_34

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    return v0
.end method

.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 2

    return-void
.end method
