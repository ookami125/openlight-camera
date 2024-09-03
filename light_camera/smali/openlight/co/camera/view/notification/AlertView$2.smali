.class Lopenlight/co/camera/view/notification/AlertView$2;
.super Ljava/lang/Object;
.source "AlertView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/notification/AlertView;->removeModeSelection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/notification/AlertView;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/notification/AlertView;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lopenlight/co/camera/view/notification/AlertView$2;->this$0:Lopenlight/co/camera/view/notification/AlertView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 130
    iget-object p1, p0, Lopenlight/co/camera/view/notification/AlertView$2;->this$0:Lopenlight/co/camera/view/notification/AlertView;

    # getter for: Lopenlight/co/camera/view/notification/AlertView;->mNotificationAlertLayout:Landroid/view/View;
    invoke-static {p1}, Lopenlight/co/camera/view/notification/AlertView;->access$000(Lopenlight/co/camera/view/notification/AlertView;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 131
    iget-object p1, p0, Lopenlight/co/camera/view/notification/AlertView$2;->this$0:Lopenlight/co/camera/view/notification/AlertView;

    # getter for: Lopenlight/co/camera/view/notification/AlertView;->mImageFragmentView:Landroid/view/ViewGroup;
    invoke-static {p1}, Lopenlight/co/camera/view/notification/AlertView;->access$200(Lopenlight/co/camera/view/notification/AlertView;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p0, p0, Lopenlight/co/camera/view/notification/AlertView$2;->this$0:Lopenlight/co/camera/view/notification/AlertView;

    # getter for: Lopenlight/co/camera/view/notification/AlertView;->mAlertLayoutView:Landroid/view/View;
    invoke-static {p0}, Lopenlight/co/camera/view/notification/AlertView;->access$100(Lopenlight/co/camera/view/notification/AlertView;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
