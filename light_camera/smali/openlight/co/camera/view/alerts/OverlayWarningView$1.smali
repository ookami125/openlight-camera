.class Lopenlight/co/camera/view/alerts/OverlayWarningView$1;
.super Ljava/lang/Object;
.source "OverlayWarningView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/alerts/OverlayWarningView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/alerts/OverlayWarningView;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/alerts/OverlayWarningView;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lopenlight/co/camera/view/alerts/OverlayWarningView$1;->this$0:Lopenlight/co/camera/view/alerts/OverlayWarningView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 60
    iget-object v0, p0, Lopenlight/co/camera/view/alerts/OverlayWarningView$1;->this$0:Lopenlight/co/camera/view/alerts/OverlayWarningView;

    # getter for: Lopenlight/co/camera/view/alerts/OverlayWarningView;->mFinishActivityOnIgnoredWarning:Z
    invoke-static {v0}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->access$000(Lopenlight/co/camera/view/alerts/OverlayWarningView;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 61
    iget-object p0, p0, Lopenlight/co/camera/view/alerts/OverlayWarningView$1;->this$0:Lopenlight/co/camera/view/alerts/OverlayWarningView;

    invoke-virtual {p0}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1a

    .line 63
    :cond_14
    iget-object p0, p0, Lopenlight/co/camera/view/alerts/OverlayWarningView$1;->this$0:Lopenlight/co/camera/view/alerts/OverlayWarningView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->setVisibility(Z)V

    :goto_1a
    return-void
.end method
