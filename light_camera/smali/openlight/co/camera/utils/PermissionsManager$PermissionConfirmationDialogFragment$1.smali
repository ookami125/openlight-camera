.class Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment$1;
.super Ljava/lang/Object;
.source "PermissionsManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment;


# direct methods
.method constructor <init>(Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment$1;->this$0:Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 128
    iget-object p0, p0, Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment$1;->this$0:Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment;

    invoke-virtual {p0}, Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
