.class public Lopenlight/co/camera/view/ftu/BaseFtuLayout$FtuScreenGestureListener;
.super Lopenlight/co/camera/listener/ScreenGestureListener;
.source "BaseFtuLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/ftu/BaseFtuLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FtuScreenGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/ftu/BaseFtuLayout;


# direct methods
.method protected constructor <init>(Lopenlight/co/camera/view/ftu/BaseFtuLayout;Landroid/content/Context;)V
    .registers 3

    .line 57
    iput-object p1, p0, Lopenlight/co/camera/view/ftu/BaseFtuLayout$FtuScreenGestureListener;->this$0:Lopenlight/co/camera/view/ftu/BaseFtuLayout;

    .line 58
    invoke-direct {p0, p2}, Lopenlight/co/camera/listener/ScreenGestureListener;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private isEventWithinScreen(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p0

    const/high16 p1, 0x43480000    # 200.0f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public areValidEvents(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 107
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/ftu/BaseFtuLayout$FtuScreenGestureListener;->isEventWithinScreen(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onFling(Z)V
    .registers 2

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onScroll(FFZ)V
    .registers 4

    .line 91
    # getter for: Lopenlight/co/camera/view/ftu/BaseFtuLayout;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Screen scrolled"

    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/BaseFtuLayout$FtuScreenGestureListener;->this$0:Lopenlight/co/camera/view/ftu/BaseFtuLayout;

    # getter for: Lopenlight/co/camera/view/ftu/BaseFtuLayout;->mListener:Lopenlight/co/camera/view/ftu/OnFtuActionListener;
    invoke-static {p1}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;->access$100(Lopenlight/co/camera/view/ftu/BaseFtuLayout;)Lopenlight/co/camera/view/ftu/OnFtuActionListener;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 93
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/BaseFtuLayout$FtuScreenGestureListener;->this$0:Lopenlight/co/camera/view/ftu/BaseFtuLayout;

    # getter for: Lopenlight/co/camera/view/ftu/BaseFtuLayout;->mListener:Lopenlight/co/camera/view/ftu/OnFtuActionListener;
    invoke-static {p0}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;->access$100(Lopenlight/co/camera/view/ftu/BaseFtuLayout;)Lopenlight/co/camera/view/ftu/OnFtuActionListener;

    move-result-object p0

    invoke-interface {p0}, Lopenlight/co/camera/view/ftu/OnFtuActionListener;->onScreenScrolled()V

    :cond_1a
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onTouch(Landroid/view/MotionEvent;FZ)Z
    .registers 4

    const/4 p0, 0x1

    return p0
.end method
