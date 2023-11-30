.class Lopenlight/co/camera/view/customviews/TouchImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/customviews/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/customviews/TouchImageView;


# direct methods
.method private constructor <init>(Lopenlight/co/camera/view/customviews/TouchImageView;)V
    .locals 0

    .line 969
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$ScaleListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lopenlight/co/camera/view/customviews/TouchImageView;Lopenlight/co/camera/view/customviews/TouchImageView$1;)V
    .locals 0

    .line 969
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/customviews/TouchImageView$ScaleListener;-><init>(Lopenlight/co/camera/view/customviews/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    .line 978
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$ScaleListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$2200(Lopenlight/co/camera/view/customviews/TouchImageView;DFFZ)V

    .line 983
    iget-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$ScaleListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$2100(Lopenlight/co/camera/view/customviews/TouchImageView;)Lopenlight/co/camera/view/customviews/TouchImageView$OnTouchImageViewListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 984
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$ScaleListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$2100(Lopenlight/co/camera/view/customviews/TouchImageView;)Lopenlight/co/camera/view/customviews/TouchImageView$OnTouchImageViewListener;

    move-result-object p0

    invoke-interface {p0}, Lopenlight/co/camera/view/customviews/TouchImageView$OnTouchImageViewListener;->onMove()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    .line 972
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$ScaleListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    sget-object p1, Lopenlight/co/camera/view/customviews/TouchImageView$State;->ZOOM:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    invoke-static {p0, p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1100(Lopenlight/co/camera/view/customviews/TouchImageView;Lopenlight/co/camera/view/customviews/TouchImageView$State;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 8

    .line 991
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    const-string p1, "scale"

    const-string v0, "End"

    .line 992
    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    iget-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$ScaleListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    sget-object v0, Lopenlight/co/camera/view/customviews/TouchImageView$State;->NONE:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    invoke-static {p1, v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1100(Lopenlight/co/camera/view/customviews/TouchImageView;Lopenlight/co/camera/view/customviews/TouchImageView$State;)V

    .line 995
    sget p1, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    .line 996
    sget v0, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$ScaleListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$800(Lopenlight/co/camera/view/customviews/TouchImageView;)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 997
    iget-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$ScaleListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$800(Lopenlight/co/camera/view/customviews/TouchImageView;)F

    move-result p1

    :goto_0
    move v4, p1

    goto :goto_1

    .line 1000
    :cond_0
    sget v0, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    iget-object v2, p0, Lopenlight/co/camera/view/customviews/TouchImageView$ScaleListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v2}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$700(Lopenlight/co/camera/view/customviews/TouchImageView;)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 1001
    iget-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$ScaleListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$700(Lopenlight/co/camera/view/customviews/TouchImageView;)F

    move-result p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_2

    .line 1006
    new-instance p1, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;

    iget-object v3, p0, Lopenlight/co/camera/view/customviews/TouchImageView$ScaleListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$ScaleListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1200(Lopenlight/co/camera/view/customviews/TouchImageView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$ScaleListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1500(Lopenlight/co/camera/view/customviews/TouchImageView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    const/4 v7, 0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;-><init>(Lopenlight/co/camera/view/customviews/TouchImageView;FFFZ)V

    .line 1007
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$ScaleListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {p0, p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$500(Lopenlight/co/camera/view/customviews/TouchImageView;Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
