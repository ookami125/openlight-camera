.class Lopenlight/co/camera/view/customviews/FocusView$1$1;
.super Ljava/lang/Object;
.source "FocusView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/customviews/FocusView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lopenlight/co/camera/view/customviews/FocusView$1;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/customviews/FocusView$1;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/FocusView$1$1;->this$1:Lopenlight/co/camera/view/customviews/FocusView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 100
    invoke-static {}, Lopenlight/co/camera/view/customviews/FocusView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "focus archived "

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView$1$1;->this$1:Lopenlight/co/camera/view/customviews/FocusView$1;

    iget-object v0, v0, Lopenlight/co/camera/view/customviews/FocusView$1;->this$0:Lopenlight/co/camera/view/customviews/FocusView;

    iget-object v0, v0, Lopenlight/co/camera/view/customviews/FocusView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView$1$1;->this$1:Lopenlight/co/camera/view/customviews/FocusView$1;

    iget-object v0, v0, Lopenlight/co/camera/view/customviews/FocusView$1;->this$0:Lopenlight/co/camera/view/customviews/FocusView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/FocusView;->access$100(Lopenlight/co/camera/view/customviews/FocusView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 104
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView$1$1;->this$1:Lopenlight/co/camera/view/customviews/FocusView$1;

    iget-object v0, v0, Lopenlight/co/camera/view/customviews/FocusView$1;->this$0:Lopenlight/co/camera/view/customviews/FocusView;

    const v1, 0x7f08005d

    invoke-static {v0, v1}, Lopenlight/co/camera/view/customviews/FocusView;->access$200(Lopenlight/co/camera/view/customviews/FocusView;I)V

    .line 105
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/FocusView$1$1;->this$1:Lopenlight/co/camera/view/customviews/FocusView$1;

    iget-object p0, p0, Lopenlight/co/camera/view/customviews/FocusView$1;->this$0:Lopenlight/co/camera/view/customviews/FocusView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lopenlight/co/camera/view/customviews/FocusView;->access$300(Lopenlight/co/camera/view/customviews/FocusView;Z)V

    return-void
.end method
