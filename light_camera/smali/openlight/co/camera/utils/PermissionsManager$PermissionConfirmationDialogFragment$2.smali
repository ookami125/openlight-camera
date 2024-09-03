.class Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment$2;
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
    .registers 2

    .line 117
    iput-object p1, p0, Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment$2;->this$0:Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 120
    iget-object p0, p0, Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment$2;->this$0:Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment;

    # getter for: Lopenlight/co/camera/utils/PermissionsManager;->CAMERA_PERMISSIONS:[Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/utils/PermissionsManager;->access$000()[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method
