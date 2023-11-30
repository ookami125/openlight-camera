.class Lopenlight/co/camera/view/customviews/FocusView$4;
.super Ljava/lang/Object;
.source "FocusView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/customviews/FocusView;->getHideRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/customviews/FocusView;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/customviews/FocusView;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/FocusView$4;->this$0:Lopenlight/co/camera/view/customviews/FocusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 237
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView$4;->this$0:Lopenlight/co/camera/view/customviews/FocusView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/FocusView;->access$500(Lopenlight/co/camera/view/customviews/FocusView;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView$4;->this$0:Lopenlight/co/camera/view/customviews/FocusView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/FocusView;->access$500(Lopenlight/co/camera/view/customviews/FocusView;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lopenlight/co/camera/CameraActivity;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView$4;->this$0:Lopenlight/co/camera/view/customviews/FocusView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/FocusView;->access$500(Lopenlight/co/camera/view/customviews/FocusView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/CameraActivity;

    new-instance v1, Lopenlight/co/camera/view/customviews/FocusView$4$1;

    invoke-direct {v1, p0}, Lopenlight/co/camera/view/customviews/FocusView$4$1;-><init>(Lopenlight/co/camera/view/customviews/FocusView$4;)V

    invoke-virtual {v0, v1}, Lopenlight/co/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 250
    :cond_0
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/FocusView$4;->this$0:Lopenlight/co/camera/view/customviews/FocusView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lopenlight/co/camera/view/customviews/FocusView;->access$702(Lopenlight/co/camera/view/customviews/FocusView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
