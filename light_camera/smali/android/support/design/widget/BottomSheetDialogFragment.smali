.class public Landroid/support/design/widget/BottomSheetDialogFragment;
.super Landroid/support/v7/app/AppCompatDialogFragment;
.source "BottomSheetDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3

    .line 32
    new-instance p1, Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {p0}, Landroid/support/design/widget/BottomSheetDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/design/widget/BottomSheetDialogFragment;->getTheme()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/support/design/widget/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method
