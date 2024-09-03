.class Lopenlight/co/camera/view/hud/HudLayout$2;
.super Ljava/lang/Object;
.source "HudLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 405
    iput-object p1, p0, Lopenlight/co/camera/view/hud/HudLayout$2;->this$0:Lopenlight/co/camera/view/hud/HudLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 408
    iget-object p1, p0, Lopenlight/co/camera/view/hud/HudLayout$2;->this$0:Lopenlight/co/camera/view/hud/HudLayout;

    # getter for: Lopenlight/co/camera/view/hud/HudLayout;->mIsAncillaryOpen:Z
    invoke-static {p1}, Lopenlight/co/camera/view/hud/HudLayout;->access$100(Lopenlight/co/camera/view/hud/HudLayout;)Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object p2, p0, Lopenlight/co/camera/view/hud/HudLayout$2;->this$0:Lopenlight/co/camera/view/hud/HudLayout;

    # getter for: Lopenlight/co/camera/view/hud/HudLayout;->mDiffToolBar:I
    invoke-static {p2}, Lopenlight/co/camera/view/hud/HudLayout;->access$200(Lopenlight/co/camera/view/hud/HudLayout;)I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_21

    .line 409
    :cond_17
    iget-object p1, p0, Lopenlight/co/camera/view/hud/HudLayout$2;->this$0:Lopenlight/co/camera/view/hud/HudLayout;

    # invokes: Lopenlight/co/camera/view/hud/HudLayout;->setHudColor()V
    invoke-static {p1}, Lopenlight/co/camera/view/hud/HudLayout;->access$300(Lopenlight/co/camera/view/hud/HudLayout;)V

    .line 410
    iget-object p0, p0, Lopenlight/co/camera/view/hud/HudLayout$2;->this$0:Lopenlight/co/camera/view/hud/HudLayout;

    # invokes: Lopenlight/co/camera/view/hud/HudLayout;->setBackground()V
    invoke-static {p0}, Lopenlight/co/camera/view/hud/HudLayout;->access$400(Lopenlight/co/camera/view/hud/HudLayout;)V

    :cond_21
    const/4 p0, 0x0

    return p0
.end method
