.class Landroid/support/v7/app/AlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/AlertController$AlertParams;->createListView(Landroid/support/v7/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AlertController$AlertParams;

.field final synthetic val$dialog:Landroid/support/v7/app/AlertController;

.field final synthetic val$listView:Landroid/support/v7/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/support/v7/app/AlertController$RecycleListView;Landroid/support/v7/app/AlertController;)V
    .registers 4

    .line 1053
    iput-object p1, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->this$0:Landroid/support/v7/app/AlertController$AlertParams;

    iput-object p2, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->val$listView:Landroid/support/v7/app/AlertController$RecycleListView;

    iput-object p3, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->val$dialog:Landroid/support/v7/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1056
    iget-object p1, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->this$0:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object p1, p1, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz p1, :cond_12

    .line 1057
    iget-object p1, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->this$0:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object p1, p1, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItems:[Z

    iget-object p2, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->val$listView:Landroid/support/v7/app/AlertController$RecycleListView;

    invoke-virtual {p2, p3}, Landroid/support/v7/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result p2

    aput-boolean p2, p1, p3

    .line 1059
    :cond_12
    iget-object p1, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->this$0:Landroid/support/v7/app/AlertController$AlertParams;

    iget-object p1, p1, Landroid/support/v7/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->val$dialog:Landroid/support/v7/app/AlertController;

    iget-object p2, p2, Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    iget-object p0, p0, Landroid/support/v7/app/AlertController$AlertParams$4;->val$listView:Landroid/support/v7/app/AlertController$RecycleListView;

    .line 1060
    invoke-virtual {p0, p3}, Landroid/support/v7/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result p0

    .line 1059
    invoke-interface {p1, p2, p3, p0}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
