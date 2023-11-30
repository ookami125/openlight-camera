.class Lopenlight/co/camera/view/customviews/FocusView$4$1;
.super Ljava/lang/Object;
.source "FocusView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/customviews/FocusView$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lopenlight/co/camera/view/customviews/FocusView$4;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/customviews/FocusView$4;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/FocusView$4$1;->this$1:Lopenlight/co/camera/view/customviews/FocusView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 241
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView$4$1;->this$1:Lopenlight/co/camera/view/customviews/FocusView$4;

    iget-object v0, v0, Lopenlight/co/camera/view/customviews/FocusView$4;->this$0:Lopenlight/co/camera/view/customviews/FocusView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/FocusView;->access$600(Lopenlight/co/camera/view/customviews/FocusView;)Lopenlight/co/camera/view/customviews/FocusView$OnFocusStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView$4$1;->this$1:Lopenlight/co/camera/view/customviews/FocusView$4;

    iget-object v0, v0, Lopenlight/co/camera/view/customviews/FocusView$4;->this$0:Lopenlight/co/camera/view/customviews/FocusView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/FocusView;->access$600(Lopenlight/co/camera/view/customviews/FocusView;)Lopenlight/co/camera/view/customviews/FocusView$OnFocusStateListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lopenlight/co/camera/view/customviews/FocusView$OnFocusStateListener;->onArchived(Z)V

    .line 245
    :cond_0
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/FocusView$4$1;->this$1:Lopenlight/co/camera/view/customviews/FocusView$4;

    iget-object p0, p0, Lopenlight/co/camera/view/customviews/FocusView$4;->this$0:Lopenlight/co/camera/view/customviews/FocusView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/customviews/FocusView;->setVisibility(I)V

    .line 246
    invoke-static {}, Lopenlight/co/camera/view/customviews/FocusView;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Hide view "

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
