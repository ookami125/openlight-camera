.class Landroid/support/v7/view/menu/MenuPopupHelper$1;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/view/menu/MenuPopupHelper;


# direct methods
.method constructor <init>(Landroid/support/v7/view/menu/MenuPopupHelper;)V
    .registers 2

    .line 332
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuPopupHelper$1;->this$0:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 1

    .line 335
    iget-object p0, p0, Landroid/support/v7/view/menu/MenuPopupHelper$1;->this$0:Landroid/support/v7/view/menu/MenuPopupHelper;

    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuPopupHelper;->onDismiss()V

    return-void
.end method
