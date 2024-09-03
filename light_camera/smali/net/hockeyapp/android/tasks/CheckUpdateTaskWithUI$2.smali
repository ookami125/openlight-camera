.class Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$2;
.super Ljava/lang/Object;
.source "CheckUpdateTaskWithUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->showDialog(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$2;->this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    .line 102
    iget-object p1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$2;->this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;

    invoke-virtual {p1}, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->cleanUp()V

    .line 103
    iget-object p1, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$2;->this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;

    iget-object p1, p1, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    if-eqz p1, :cond_12

    .line 104
    iget-object p0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI$2;->this$0:Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;

    iget-object p0, p0, Lnet/hockeyapp/android/tasks/CheckUpdateTaskWithUI;->listener:Lnet/hockeyapp/android/UpdateManagerListener;

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateManagerListener;->onCancel()V

    :cond_12
    return-void
.end method
