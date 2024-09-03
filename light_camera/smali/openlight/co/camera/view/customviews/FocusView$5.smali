.class Lopenlight/co/camera/view/customviews/FocusView$5;
.super Ljava/lang/Object;
.source "FocusView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/customviews/FocusView;->updateViewFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/customviews/FocusView;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/customviews/FocusView;)V
    .registers 2

    .line 281
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/FocusView$5;->this$0:Lopenlight/co/camera/view/customviews/FocusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 284
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView$5;->this$0:Lopenlight/co/camera/view/customviews/FocusView;

    iget-object v0, v0, Lopenlight/co/camera/view/customviews/FocusView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_f

    .line 285
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView$5;->this$0:Lopenlight/co/camera/view/customviews/FocusView;

    # getter for: Lopenlight/co/camera/view/customviews/FocusView;->mImageFocusing:Landroid/widget/ImageView;
    invoke-static {v0}, Lopenlight/co/camera/view/customviews/FocusView;->access$100(Lopenlight/co/camera/view/customviews/FocusView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 287
    :cond_f
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView$5;->this$0:Lopenlight/co/camera/view/customviews/FocusView;

    const v1, 0x7f08005e

    # invokes: Lopenlight/co/camera/view/customviews/FocusView;->setDrawable(I)V
    invoke-static {v0, v1}, Lopenlight/co/camera/view/customviews/FocusView;->access$200(Lopenlight/co/camera/view/customviews/FocusView;I)V

    .line 288
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView$5;->this$0:Lopenlight/co/camera/view/customviews/FocusView;

    # getter for: Lopenlight/co/camera/view/customviews/FocusView;->mListener:Lopenlight/co/camera/view/customviews/FocusView$OnFocusStateListener;
    invoke-static {v0}, Lopenlight/co/camera/view/customviews/FocusView;->access$600(Lopenlight/co/camera/view/customviews/FocusView;)Lopenlight/co/camera/view/customviews/FocusView$OnFocusStateListener;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 289
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/FocusView$5;->this$0:Lopenlight/co/camera/view/customviews/FocusView;

    # getter for: Lopenlight/co/camera/view/customviews/FocusView;->mListener:Lopenlight/co/camera/view/customviews/FocusView$OnFocusStateListener;
    invoke-static {p0}, Lopenlight/co/camera/view/customviews/FocusView;->access$600(Lopenlight/co/camera/view/customviews/FocusView;)Lopenlight/co/camera/view/customviews/FocusView$OnFocusStateListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lopenlight/co/camera/view/customviews/FocusView$OnFocusStateListener;->onArchived(Z)V

    :cond_29
    return-void
.end method
