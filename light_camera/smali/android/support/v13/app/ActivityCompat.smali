.class public Landroid/support/v13/app/ActivityCompat;
.super Landroid/support/v4/app/ActivityCompat;
.source "ActivityCompat.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/ActivityCompat;-><init>()V

    return-void
.end method

.method public static requestDragAndDropPermissions(Landroid/app/Activity;Landroid/view/DragEvent;)Landroid/support/v13/view/DragAndDropPermissionsCompat;
    .registers 2

    .line 38
    invoke-static {p0, p1}, Landroid/support/v13/view/DragAndDropPermissionsCompat;->request(Landroid/app/Activity;Landroid/view/DragEvent;)Landroid/support/v13/view/DragAndDropPermissionsCompat;

    move-result-object p0

    return-object p0
.end method
