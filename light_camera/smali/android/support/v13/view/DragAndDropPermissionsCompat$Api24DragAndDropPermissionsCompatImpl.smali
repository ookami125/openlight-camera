.class Landroid/support/v13/view/DragAndDropPermissionsCompat$Api24DragAndDropPermissionsCompatImpl;
.super Landroid/support/v13/view/DragAndDropPermissionsCompat$BaseDragAndDropPermissionsCompatImpl;
.source "DragAndDropPermissionsCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v13/view/DragAndDropPermissionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24DragAndDropPermissionsCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Landroid/support/v13/view/DragAndDropPermissionsCompat$BaseDragAndDropPermissionsCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public release(Ljava/lang/Object;)V
    .registers 2

    .line 61
    check-cast p1, Landroid/view/DragAndDropPermissions;

    invoke-virtual {p1}, Landroid/view/DragAndDropPermissions;->release()V

    return-void
.end method

.method public request(Landroid/app/Activity;Landroid/view/DragEvent;)Ljava/lang/Object;
    .registers 3

    .line 56
    invoke-virtual {p1, p2}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object p0

    return-object p0
.end method
