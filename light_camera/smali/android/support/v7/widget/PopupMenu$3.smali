.class Landroid/support/v7/widget/PopupMenu$3;
.super Landroid/support/v7/widget/ForwardingListener;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/PopupMenu;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/PopupMenu;Landroid/view/View;)V
    .registers 3

    .line 170
    iput-object p1, p0, Landroid/support/v7/widget/PopupMenu$3;->this$0:Landroid/support/v7/widget/PopupMenu;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Landroid/support/v7/view/menu/ShowableListMenu;
    .registers 1

    .line 186
    iget-object p0, p0, Landroid/support/v7/widget/PopupMenu$3;->this$0:Landroid/support/v7/widget/PopupMenu;

    iget-object p0, p0, Landroid/support/v7/widget/PopupMenu;->mPopup:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuPopupHelper;->getPopup()Landroid/support/v7/view/menu/MenuPopup;

    move-result-object p0

    return-object p0
.end method

.method protected onForwardingStarted()Z
    .registers 1

    .line 173
    iget-object p0, p0, Landroid/support/v7/widget/PopupMenu$3;->this$0:Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/support/v7/widget/PopupMenu;->show()V

    const/4 p0, 0x1

    return p0
.end method

.method protected onForwardingStopped()Z
    .registers 1

    .line 179
    iget-object p0, p0, Landroid/support/v7/widget/PopupMenu$3;->this$0:Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/support/v7/widget/PopupMenu;->dismiss()V

    const/4 p0, 0x1

    return p0
.end method
