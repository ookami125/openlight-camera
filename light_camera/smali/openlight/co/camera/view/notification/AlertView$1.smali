.class Lopenlight/co/camera/view/notification/AlertView$1;
.super Ljava/lang/Object;
.source "AlertView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/notification/AlertView;
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

    .line 42
    iput-object p1, p0, Lopenlight/co/camera/view/notification/AlertView$1;->this$0:Lopenlight/co/camera/view/notification/AlertView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 45
    iget-object v0, p0, Lopenlight/co/camera/view/notification/AlertView$1;->this$0:Lopenlight/co/camera/view/notification/AlertView;

    .line 46
    # getter for: Lopenlight/co/camera/view/notification/AlertView;->mNotificationAlertLayout:Landroid/view/View;
    invoke-static {v0}, Lopenlight/co/camera/view/notification/AlertView;->access$000(Lopenlight/co/camera/view/notification/AlertView;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/16 v7, 0xc8

    invoke-static/range {v1 .. v7}, Lopenlight/co/lib/utils/AnimationUtils;->translateAnimationView(Landroid/view/View;FFFFLandroid/view/animation/Animation$AnimationListener;I)V

    .line 47
    iget-object p0, p0, Lopenlight/co/camera/view/notification/AlertView$1;->this$0:Lopenlight/co/camera/view/notification/AlertView;

    # getter for: Lopenlight/co/camera/view/notification/AlertView;->mNotificationAlertLayout:Landroid/view/View;
    invoke-static {p0}, Lopenlight/co/camera/view/notification/AlertView;->access$000(Lopenlight/co/camera/view/notification/AlertView;)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
