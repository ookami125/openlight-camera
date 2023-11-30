.class Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/customviews/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/customviews/TouchImageView;


# direct methods
.method private constructor <init>(Lopenlight/co/camera/view/customviews/TouchImageView;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lopenlight/co/camera/view/customviews/TouchImageView;Lopenlight/co/camera/view/customviews/TouchImageView$1;)V
    .locals 0

    .line 820
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;-><init>(Lopenlight/co/camera/view/customviews/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 852
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$300(Lopenlight/co/camera/view/customviews/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$300(Lopenlight/co/camera/view/customviews/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 855
    :goto_0
    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$600(Lopenlight/co/camera/view/customviews/TouchImageView;)Lopenlight/co/camera/view/customviews/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lopenlight/co/camera/view/customviews/TouchImageView$State;->NONE:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    if-ne v1, v2, :cond_2

    .line 856
    sget v0, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$700(Lopenlight/co/camera/view/customviews/TouchImageView;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$800(Lopenlight/co/camera/view/customviews/TouchImageView;)F

    move-result v0

    :goto_1
    move v3, v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$700(Lopenlight/co/camera/view/customviews/TouchImageView;)F

    move-result v0

    goto :goto_1

    .line 857
    :goto_2
    new-instance v0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;

    iget-object v2, p0, Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;-><init>(Lopenlight/co/camera/view/customviews/TouchImageView;FFFZ)V

    .line 858
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {p0, v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$500(Lopenlight/co/camera/view/customviews/TouchImageView;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 866
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$300(Lopenlight/co/camera/view/customviews/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 867
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$300(Lopenlight/co/camera/view/customviews/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .line 837
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$400(Lopenlight/co/camera/view/customviews/TouchImageView;)Lopenlight/co/camera/view/customviews/TouchImageView$Fling;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$400(Lopenlight/co/camera/view/customviews/TouchImageView;)Lopenlight/co/camera/view/customviews/TouchImageView$Fling;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->cancelFling()V

    .line 844
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    new-instance v1, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;

    iget-object v2, p0, Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    float-to-int v3, p3

    float-to-int v4, p4

    invoke-direct {v1, v2, v3, v4}, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;-><init>(Lopenlight/co/camera/view/customviews/TouchImageView;II)V

    invoke-static {v0, v1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$402(Lopenlight/co/camera/view/customviews/TouchImageView;Lopenlight/co/camera/view/customviews/TouchImageView$Fling;)Lopenlight/co/camera/view/customviews/TouchImageView$Fling;

    .line 845
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$400(Lopenlight/co/camera/view/customviews/TouchImageView;)Lopenlight/co/camera/view/customviews/TouchImageView$Fling;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$500(Lopenlight/co/camera/view/customviews/TouchImageView;Ljava/lang/Runnable;)V

    .line 846
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 832
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-virtual {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->performLongClick()Z

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 824
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$300(Lopenlight/co/camera/view/customviews/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 825
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$300(Lopenlight/co/camera/view/customviews/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 827
    :cond_0
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$GestureListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-virtual {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->performClick()Z

    move-result p0

    return p0
.end method
