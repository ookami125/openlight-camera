.class Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/customviews/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrivateOnTouchListener"
.end annotation


# instance fields
.field private last:Landroid/graphics/PointF;

.field final synthetic this$0:Lopenlight/co/camera/view/customviews/TouchImageView;


# direct methods
.method private constructor <init>(Lopenlight/co/camera/view/customviews/TouchImageView;)V
    .locals 0

    .line 881
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 886
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    return-void
.end method

.method synthetic constructor <init>(Lopenlight/co/camera/view/customviews/TouchImageView;Lopenlight/co/camera/view/customviews/TouchImageView$1;)V
    .locals 0

    .line 881
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;-><init>(Lopenlight/co/camera/view/customviews/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 890
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$900(Lopenlight/co/camera/view/customviews/TouchImageView;)Landroid/view/ScaleGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 891
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1000(Lopenlight/co/camera/view/customviews/TouchImageView;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 892
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 894
    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$600(Lopenlight/co/camera/view/customviews/TouchImageView;)Lopenlight/co/camera/view/customviews/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lopenlight/co/camera/view/customviews/TouchImageView$State;->NONE:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$600(Lopenlight/co/camera/view/customviews/TouchImageView;)Lopenlight/co/camera/view/customviews/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lopenlight/co/camera/view/customviews/TouchImageView$State;->DRAG:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$600(Lopenlight/co/camera/view/customviews/TouchImageView;)Lopenlight/co/camera/view/customviews/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lopenlight/co/camera/view/customviews/TouchImageView$State;->FLING:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    if-ne v1, v2, :cond_3

    .line 895
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 904
    :pswitch_0
    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$600(Lopenlight/co/camera/view/customviews/TouchImageView;)Lopenlight/co/camera/view/customviews/TouchImageView$State;

    move-result-object v1

    sget-object v2, Lopenlight/co/camera/view/customviews/TouchImageView$State;->DRAG:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    if-ne v1, v2, :cond_3

    .line 905
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    .line 906
    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    .line 907
    iget-object v3, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    iget-object v4, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v4}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1200(Lopenlight/co/camera/view/customviews/TouchImageView;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v5}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1300(Lopenlight/co/camera/view/customviews/TouchImageView;)F

    move-result v5

    invoke-static {v3, v1, v4, v5}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1400(Lopenlight/co/camera/view/customviews/TouchImageView;FFF)F

    move-result v1

    .line 908
    iget-object v3, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    iget-object v4, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v4}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1500(Lopenlight/co/camera/view/customviews/TouchImageView;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v5}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1600(Lopenlight/co/camera/view/customviews/TouchImageView;)F

    move-result v5

    invoke-static {v3, v2, v4, v5}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1400(Lopenlight/co/camera/view/customviews/TouchImageView;FFF)F

    move-result v2

    .line 909
    iget-object v3, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v3}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1700(Lopenlight/co/camera/view/customviews/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 910
    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1800(Lopenlight/co/camera/view/customviews/TouchImageView;)V

    .line 911
    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_1

    .line 917
    :pswitch_1
    sget v0, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    const v1, 0x3f19999a    # 0.6f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 919
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1900(Lopenlight/co/camera/view/customviews/TouchImageView;)Lopenlight/co/camera/view/grid/CustomViewPager$OnSwipeOutListener;

    move-result-object v0

    invoke-interface {v0}, Lopenlight/co/camera/view/grid/CustomViewPager$OnSwipeOutListener;->zoomIn()V

    goto :goto_0

    .line 897
    :pswitch_2
    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->last:Landroid/graphics/PointF;

    invoke-virtual {v1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 898
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$400(Lopenlight/co/camera/view/customviews/TouchImageView;)Lopenlight/co/camera/view/customviews/TouchImageView$Fling;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 899
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$400(Lopenlight/co/camera/view/customviews/TouchImageView;)Lopenlight/co/camera/view/customviews/TouchImageView$Fling;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/view/customviews/TouchImageView$Fling;->cancelFling()V

    .line 900
    :cond_1
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    sget-object v1, Lopenlight/co/camera/view/customviews/TouchImageView$State;->DRAG:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    invoke-static {v0, v1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1100(Lopenlight/co/camera/view/customviews/TouchImageView;Lopenlight/co/camera/view/customviews/TouchImageView$State;)V

    goto :goto_1

    .line 938
    :cond_2
    :goto_0
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    sget-object v1, Lopenlight/co/camera/view/customviews/TouchImageView$State;->NONE:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    invoke-static {v0, v1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1100(Lopenlight/co/camera/view/customviews/TouchImageView;Lopenlight/co/camera/view/customviews/TouchImageView$State;)V

    .line 943
    :cond_3
    :goto_1
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1700(Lopenlight/co/camera/view/customviews/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/customviews/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 948
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$2000(Lopenlight/co/camera/view/customviews/TouchImageView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 949
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$2000(Lopenlight/co/camera/view/customviews/TouchImageView;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 955
    :cond_4
    iget-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$2100(Lopenlight/co/camera/view/customviews/TouchImageView;)Lopenlight/co/camera/view/customviews/TouchImageView$OnTouchImageViewListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 956
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$PrivateOnTouchListener;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-static {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$2100(Lopenlight/co/camera/view/customviews/TouchImageView;)Lopenlight/co/camera/view/customviews/TouchImageView$OnTouchImageViewListener;

    move-result-object p0

    invoke-interface {p0}, Lopenlight/co/camera/view/customviews/TouchImageView$OnTouchImageViewListener;->onMove()V

    :cond_5
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
