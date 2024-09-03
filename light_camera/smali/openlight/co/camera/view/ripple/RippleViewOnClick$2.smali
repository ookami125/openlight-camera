.class Lopenlight/co/camera/view/ripple/RippleViewOnClick$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "RippleViewOnClick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/ripple/RippleViewOnClick;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/ripple/RippleViewOnClick;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/ripple/RippleViewOnClick;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick$2;->this$0:Lopenlight/co/camera/view/ripple/RippleViewOnClick;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3

    .line 120
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 121
    iget-object v0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick$2;->this$0:Lopenlight/co/camera/view/ripple/RippleViewOnClick;

    invoke-virtual {v0, p1}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->animateRipple(Landroid/view/MotionEvent;)V

    .line 122
    iget-object p0, p0, Lopenlight/co/camera/view/ripple/RippleViewOnClick$2;->this$0:Lopenlight/co/camera/view/ripple/RippleViewOnClick;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    # invokes: Lopenlight/co/camera/view/ripple/RippleViewOnClick;->sendClickEvent(Ljava/lang/Boolean;)V
    invoke-static {p0, p1}, Lopenlight/co/camera/view/ripple/RippleViewOnClick;->access$000(Lopenlight/co/camera/view/ripple/RippleViewOnClick;Ljava/lang/Boolean;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method
