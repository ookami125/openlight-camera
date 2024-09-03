.class Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/customviews/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapZoom"
.end annotation


# static fields
.field private static final ZOOM_TIME:F = 500.0f


# instance fields
.field private bitmapX:F

.field private bitmapY:F

.field private endTouch:Landroid/graphics/PointF;

.field private interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private startTime:J

.field private startTouch:Landroid/graphics/PointF;

.field private startZoom:F

.field private stretchImageToSuper:Z

.field private targetZoom:F

.field final synthetic this$0:Lopenlight/co/camera/view/customviews/TouchImageView;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/customviews/TouchImageView;FFFZ)V
    .registers 8

    .line 1057
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 1058
    sget-object v0, Lopenlight/co/camera/view/customviews/TouchImageView$State;->ANIMATE_ZOOM:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    # invokes: Lopenlight/co/camera/view/customviews/TouchImageView;->setState(Lopenlight/co/camera/view/customviews/TouchImageView$State;)V
    invoke-static {p1, v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1100(Lopenlight/co/camera/view/customviews/TouchImageView;Lopenlight/co/camera/view/customviews/TouchImageView$State;)V

    .line 1059
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->startTime:J

    .line 1060
    sget v0, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    iput v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->startZoom:F

    .line 1061
    iput p2, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->targetZoom:F

    .line 1062
    iput-boolean p5, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->stretchImageToSuper:Z

    const/4 p2, 0x0

    .line 1063
    # invokes: Lopenlight/co/camera/view/customviews/TouchImageView;->transformCoordTouchToBitmap(FFZ)Landroid/graphics/PointF;
    invoke-static {p1, p3, p4, p2}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$2300(Lopenlight/co/camera/view/customviews/TouchImageView;FFZ)Landroid/graphics/PointF;

    move-result-object p2

    .line 1064
    iget p3, p2, Landroid/graphics/PointF;->x:F

    iput p3, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->bitmapX:F

    .line 1065
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iput p2, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->bitmapY:F

    .line 1070
    iget p2, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->bitmapX:F

    iget p3, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->bitmapY:F

    # invokes: Lopenlight/co/camera/view/customviews/TouchImageView;->transformCoordBitmapToTouch(FF)Landroid/graphics/PointF;
    invoke-static {p1, p2, p3}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$2400(Lopenlight/co/camera/view/customviews/TouchImageView;FF)Landroid/graphics/PointF;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    .line 1071
    new-instance p2, Landroid/graphics/PointF;

    # getter for: Lopenlight/co/camera/view/customviews/TouchImageView;->viewWidth:I
    invoke-static {p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1200(Lopenlight/co/camera/view/customviews/TouchImageView;)I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    # getter for: Lopenlight/co/camera/view/customviews/TouchImageView;->viewHeight:I
    invoke-static {p1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1500(Lopenlight/co/camera/view/customviews/TouchImageView;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-direct {p2, p3, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->endTouch:Landroid/graphics/PointF;

    return-void
.end method

.method private calculateDeltaScale(F)D
    .registers 4

    .line 1139
    iget v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->startZoom:F

    iget v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->targetZoom:F

    iget p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->startZoom:F

    sub-float/2addr v1, p0

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-double p0, v0

    .line 1140
    sget v0, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    float-to-double v0, v0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private interpolate()F
    .registers 5

    .line 1125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1126
    iget-wide v2, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->startTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43fa0000    # 500.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1127
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1128
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->interpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {p0, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method

.method private translateImageToCenterTouchPosition(F)V
    .registers 6

    .line 1113
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->endTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 1114
    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->endTouch:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->startTouch:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr p1, v2

    add-float/2addr v1, p1

    .line 1115
    iget-object p1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    iget v2, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->bitmapX:F

    iget v3, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->bitmapY:F

    # invokes: Lopenlight/co/camera/view/customviews/TouchImageView;->transformCoordBitmapToTouch(FF)Landroid/graphics/PointF;
    invoke-static {p1, v2, v3}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$2400(Lopenlight/co/camera/view/customviews/TouchImageView;FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 1116
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    # getter for: Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;
    invoke-static {p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1700(Lopenlight/co/camera/view/customviews/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object p0

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1076
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->interpolate()F

    move-result v0

    .line 1077
    invoke-direct {p0, v0}, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->calculateDeltaScale(F)D

    move-result-wide v2

    .line 1078
    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    iget v4, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->bitmapX:F

    iget v5, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->bitmapY:F

    iget-boolean v6, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->stretchImageToSuper:Z

    # invokes: Lopenlight/co/camera/view/customviews/TouchImageView;->scaleImage(DFFZ)V
    invoke-static/range {v1 .. v6}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$2200(Lopenlight/co/camera/view/customviews/TouchImageView;DFFZ)V

    .line 1079
    invoke-direct {p0, v0}, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->translateImageToCenterTouchPosition(F)V

    .line 1080
    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    # invokes: Lopenlight/co/camera/view/customviews/TouchImageView;->fixScaleTrans()V
    invoke-static {v1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$2500(Lopenlight/co/camera/view/customviews/TouchImageView;)V

    .line 1081
    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    iget-object v2, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    # getter for: Lopenlight/co/camera/view/customviews/TouchImageView;->matrix:Landroid/graphics/Matrix;
    invoke-static {v2}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1700(Lopenlight/co/camera/view/customviews/TouchImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Lopenlight/co/camera/view/customviews/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 1087
    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    # getter for: Lopenlight/co/camera/view/customviews/TouchImageView;->touchImageViewListener:Lopenlight/co/camera/view/customviews/TouchImageView$OnTouchImageViewListener;
    invoke-static {v1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$2100(Lopenlight/co/camera/view/customviews/TouchImageView;)Lopenlight/co/camera/view/customviews/TouchImageView$OnTouchImageViewListener;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 1088
    iget-object v1, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    # getter for: Lopenlight/co/camera/view/customviews/TouchImageView;->touchImageViewListener:Lopenlight/co/camera/view/customviews/TouchImageView$OnTouchImageViewListener;
    invoke-static {v1}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$2100(Lopenlight/co/camera/view/customviews/TouchImageView;)Lopenlight/co/camera/view/customviews/TouchImageView$OnTouchImageViewListener;

    move-result-object v1

    invoke-interface {v1}, Lopenlight/co/camera/view/customviews/TouchImageView$OnTouchImageViewListener;->onMove()V

    :cond_37
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_43

    .line 1095
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    # invokes: Lopenlight/co/camera/view/customviews/TouchImageView;->compatPostOnAnimation(Ljava/lang/Runnable;)V
    invoke-static {v0, p0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$500(Lopenlight/co/camera/view/customviews/TouchImageView;Ljava/lang/Runnable;)V

    goto :goto_4a

    .line 1101
    :cond_43
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/TouchImageView$DoubleTapZoom;->this$0:Lopenlight/co/camera/view/customviews/TouchImageView;

    sget-object v0, Lopenlight/co/camera/view/customviews/TouchImageView$State;->NONE:Lopenlight/co/camera/view/customviews/TouchImageView$State;

    # invokes: Lopenlight/co/camera/view/customviews/TouchImageView;->setState(Lopenlight/co/camera/view/customviews/TouchImageView$State;)V
    invoke-static {p0, v0}, Lopenlight/co/camera/view/customviews/TouchImageView;->access$1100(Lopenlight/co/camera/view/customviews/TouchImageView;Lopenlight/co/camera/view/customviews/TouchImageView$State;)V

    :goto_4a
    return-void
.end method
