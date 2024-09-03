.class public Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment;
.super Landroid/app/DialogFragment;
.source "PermissionsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/utils/PermissionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionConfirmationDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment;
    .registers 1

    .line 109
    new-instance v0, Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment;

    invoke-direct {v0}, Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4

    .line 114
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0e0100

    .line 115
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment$2;

    invoke-direct {v0, p0}, Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment$2;-><init>(Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment;)V

    const v1, 0x104000a

    .line 116
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment$1;

    invoke-direct {v0, p0}, Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment$1;-><init>(Lopenlight/co/camera/utils/PermissionsManager$PermissionConfirmationDialogFragment;)V

    const/high16 p0, 0x1040000

    .line 124
    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
