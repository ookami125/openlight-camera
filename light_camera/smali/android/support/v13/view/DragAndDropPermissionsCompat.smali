.class public final Landroid/support/v13/view/DragAndDropPermissionsCompat;
.super Ljava/lang/Object;
.source "DragAndDropPermissionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v13/view/DragAndDropPermissionsCompat$Api24DragAndDropPermissionsCompatImpl;,
        Landroid/support/v13/view/DragAndDropPermissionsCompat$BaseDragAndDropPermissionsCompatImpl;,
        Landroid/support/v13/view/DragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;
    }
.end annotation


# static fields
.field private static IMPL:Landroid/support/v13/view/DragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;


# instance fields
.field private mDragAndDropPermissions:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_e

    .line 68
    new-instance v0, Landroid/support/v13/view/DragAndDropPermissionsCompat$Api24DragAndDropPermissionsCompatImpl;

    invoke-direct {v0}, Landroid/support/v13/view/DragAndDropPermissionsCompat$Api24DragAndDropPermissionsCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v13/view/DragAndDropPermissionsCompat;->IMPL:Landroid/support/v13/view/DragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;

    goto :goto_15

    .line 70
    :cond_e
    new-instance v0, Landroid/support/v13/view/DragAndDropPermissionsCompat$BaseDragAndDropPermissionsCompatImpl;

    invoke-direct {v0}, Landroid/support/v13/view/DragAndDropPermissionsCompat$BaseDragAndDropPermissionsCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v13/view/DragAndDropPermissionsCompat;->IMPL:Landroid/support/v13/view/DragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;

    :goto_15
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroid/support/v13/view/DragAndDropPermissionsCompat;->mDragAndDropPermissions:Ljava/lang/Object;

    return-void
.end method

.method public static request(Landroid/app/Activity;Landroid/view/DragEvent;)Landroid/support/v13/view/DragAndDropPermissionsCompat;
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 83
    sget-object v0, Landroid/support/v13/view/DragAndDropPermissionsCompat;->IMPL:Landroid/support/v13/view/DragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v13/view/DragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;->request(Landroid/app/Activity;Landroid/view/DragEvent;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 85
    new-instance p1, Landroid/support/v13/view/DragAndDropPermissionsCompat;

    invoke-direct {p1, p0}, Landroid/support/v13/view/DragAndDropPermissionsCompat;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public release()V
    .registers 2

    .line 94
    sget-object v0, Landroid/support/v13/view/DragAndDropPermissionsCompat;->IMPL:Landroid/support/v13/view/DragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;

    iget-object p0, p0, Landroid/support/v13/view/DragAndDropPermissionsCompat;->mDragAndDropPermissions:Ljava/lang/Object;

    invoke-interface {v0, p0}, Landroid/support/v13/view/DragAndDropPermissionsCompat$DragAndDropPermissionsCompatImpl;->release(Ljava/lang/Object;)V

    return-void
.end method
