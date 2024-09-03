.class Lopenlight/co/camera/view/hud/HudLayout$1;
.super Ljava/lang/Object;
.source "HudLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/hud/HudLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/hud/HudLayout;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/hud/HudLayout;)V
    .registers 2

    .line 380
    iput-object p1, p0, Lopenlight/co/camera/view/hud/HudLayout$1;->this$0:Lopenlight/co/camera/view/hud/HudLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 388
    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout$1;->this$0:Lopenlight/co/camera/view/hud/HudLayout;

    invoke-virtual {p0}, Lopenlight/co/camera/view/hud/HudLayout;->closeAll()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
