.class final Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScreenGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/listener/ScreenGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/listener/ScreenGestureListener;


# direct methods
.method private constructor <init>(Lopenlight/co/camera/listener/ScreenGestureListener;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lopenlight/co/camera/listener/ScreenGestureListener;Lopenlight/co/camera/listener/ScreenGestureListener$1;)V
    .registers 3

    .line 174
    invoke-direct {p0, p1}, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;-><init>(Lopenlight/co/camera/listener/ScreenGestureListener;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_92

    if-eqz p2, :cond_92

    .line 237
    iget-object v1, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    .line 238
    invoke-virtual {v1, p1, p2}, Lopenlight/co/camera/listener/ScreenGestureListener;->areValidEvents(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_92

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v2, :cond_1c

    goto/16 :goto_92

    .line 244
    :cond_1c
    :try_start_1c
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v3, 0x44bb8000    # 1500.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_91

    .line 246
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v1, v3

    const/4 v3, 0x0

    cmpg-float v4, v1, v3

    if-gtz v4, :cond_57

    .line 248
    iget-object v4, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    # getter for: Lopenlight/co/camera/listener/ScreenGestureListener;->mLowestScrollValue:F
    invoke-static {v4}, Lopenlight/co/camera/listener/ScreenGestureListener;->access$100(Lopenlight/co/camera/listener/ScreenGestureListener;)F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_51

    iget-object v4, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    .line 249
    # getter for: Lopenlight/co/camera/listener/ScreenGestureListener;->mLowestScrollValue:F
    invoke-static {v4}, Lopenlight/co/camera/listener/ScreenGestureListener;->access$100(Lopenlight/co/camera/listener/ScreenGestureListener;)F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_57

    .line 250
    :cond_51
    iget-object v1, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    invoke-virtual {v1, v2}, Lopenlight/co/camera/listener/ScreenGestureListener;->onFling(Z)V

    goto :goto_82

    :cond_57
    cmpl-float v1, v1, v3

    if-lez v1, :cond_7d

    .line 251
    iget-object v1, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    # getter for: Lopenlight/co/camera/listener/ScreenGestureListener;->mHighestScrollValue:F
    invoke-static {v1}, Lopenlight/co/camera/listener/ScreenGestureListener;->access$200(Lopenlight/co/camera/listener/ScreenGestureListener;)F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_7d

    iget-object v1, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    .line 252
    # getter for: Lopenlight/co/camera/listener/ScreenGestureListener;->mLowestScrollValue:F
    invoke-static {v1}, Lopenlight/co/camera/listener/ScreenGestureListener;->access$100(Lopenlight/co/camera/listener/ScreenGestureListener;)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_7d

    .line 253
    iget-object v1, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    invoke-virtual {v1, v2}, Lopenlight/co/camera/listener/ScreenGestureListener;->onFling(Z)V

    goto :goto_82

    .line 255
    :cond_7d
    iget-object v1, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    invoke-virtual {v1, v0}, Lopenlight/co/camera/listener/ScreenGestureListener;->onFling(Z)V

    .line 257
    :goto_82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_86} :catch_87

    return p0

    :catch_87
    move-exception p0

    .line 260
    # getter for: Lopenlight/co/camera/listener/ScreenGestureListener;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/listener/ScreenGestureListener;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Error on fling"

    invoke-static {p1, p2, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_91
    return v0

    :cond_92
    :goto_92
    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    .line 268
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 270
    iget-object p0, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/listener/ScreenGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12

    .line 183
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    # getter for: Lopenlight/co/camera/listener/ScreenGestureListener;->mLowestScrollValue:F
    invoke-static {v1}, Lopenlight/co/camera/listener/ScreenGestureListener;->access$100(Lopenlight/co/camera/listener/ScreenGestureListener;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_18

    .line 184
    iget-object v0, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    # setter for: Lopenlight/co/camera/listener/ScreenGestureListener;->mLowestScrollValue:F
    invoke-static {v0, v1}, Lopenlight/co/camera/listener/ScreenGestureListener;->access$102(Lopenlight/co/camera/listener/ScreenGestureListener;F)F

    goto :goto_2f

    .line 185
    :cond_18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    # getter for: Lopenlight/co/camera/listener/ScreenGestureListener;->mHighestScrollValue:F
    invoke-static {v1}, Lopenlight/co/camera/listener/ScreenGestureListener;->access$200(Lopenlight/co/camera/listener/ScreenGestureListener;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2f

    .line 186
    iget-object v0, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    # setter for: Lopenlight/co/camera/listener/ScreenGestureListener;->mHighestScrollValue:F
    invoke-static {v0, v1}, Lopenlight/co/camera/listener/ScreenGestureListener;->access$202(Lopenlight/co/camera/listener/ScreenGestureListener;F)F

    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    if-eqz p1, :cond_e7

    if-eqz p2, :cond_e7

    .line 189
    iget-object v1, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    .line 190
    invoke-virtual {v1, p1, p2}, Lopenlight/co/camera/listener/ScreenGestureListener;->areValidEvents(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_e7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-gt p1, v1, :cond_e7

    .line 192
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_57

    goto/16 :goto_e7

    .line 197
    :cond_57
    iget-object p1, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    # getter for: Lopenlight/co/camera/listener/ScreenGestureListener;->mVelTracker:Landroid/view/VelocityTracker;
    invoke-static {p1}, Lopenlight/co/camera/listener/ScreenGestureListener;->access$300(Lopenlight/co/camera/listener/ScreenGestureListener;)Landroid/view/VelocityTracker;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 198
    iget-object p1, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    # getter for: Lopenlight/co/camera/listener/ScreenGestureListener;->mVelTracker:Landroid/view/VelocityTracker;
    invoke-static {p1}, Lopenlight/co/camera/listener/ScreenGestureListener;->access$300(Lopenlight/co/camera/listener/ScreenGestureListener;)Landroid/view/VelocityTracker;

    move-result-object p1

    const/16 p3, 0x3e8

    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 200
    iget-object p1, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    # getter for: Lopenlight/co/camera/listener/ScreenGestureListener;->mVelTracker:Landroid/view/VelocityTracker;
    invoke-static {p1}, Lopenlight/co/camera/listener/ScreenGestureListener;->access$300(Lopenlight/co/camera/listener/ScreenGestureListener;)Landroid/view/VelocityTracker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    .line 202
    iget-object p3, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    # getter for: Lopenlight/co/camera/listener/ScreenGestureListener;->mLastDistanceBetweenFingers:F
    invoke-static {p3}, Lopenlight/co/camera/listener/ScreenGestureListener;->access$400(Lopenlight/co/camera/listener/ScreenGestureListener;)F

    move-result p3

    const/4 v2, 0x0

    cmpl-float p3, p3, v2

    if-nez p3, :cond_89

    .line 203
    iget-object p3, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    # setter for: Lopenlight/co/camera/listener/ScreenGestureListener;->mLastDistanceBetweenFingers:F
    invoke-static {p3, v3}, Lopenlight/co/camera/listener/ScreenGestureListener;->access$402(Lopenlight/co/camera/listener/ScreenGestureListener;F)F

    .line 209
    :cond_89
    iget-object p3, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    invoke-virtual {p3, p1}, Lopenlight/co/camera/listener/ScreenGestureListener;->calculatePixelPerStepsFromVelocity(F)F

    move-result p3

    .line 214
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    # getter for: Lopenlight/co/camera/listener/ScreenGestureListener;->mLastDistanceBetweenFingers:F
    invoke-static {v4}, Lopenlight/co/camera/listener/ScreenGestureListener;->access$400(Lopenlight/co/camera/listener/ScreenGestureListener;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 217
    iget-object v4, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    invoke-virtual {v4, p1}, Lopenlight/co/camera/listener/ScreenGestureListener;->calculateScrollThreshold(F)F

    move-result p1

    .line 218
    # getter for: Lopenlight/co/camera/listener/ScreenGestureListener;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/listener/ScreenGestureListener;->access$500()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scrollThreshold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float p1, v4, p1

    if-lez p1, :cond_e1

    div-float/2addr v3, p3

    .line 221
    iget-object p1, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    # getter for: Lopenlight/co/camera/listener/ScreenGestureListener;->mLastDistanceBetweenFingers:F
    invoke-static {p1}, Lopenlight/co/camera/listener/ScreenGestureListener;->access$400(Lopenlight/co/camera/listener/ScreenGestureListener;)F

    move-result p1

    cmpg-float p1, p4, p1

    if-gez p1, :cond_d2

    const/high16 p1, -0x40800000    # -1.0f

    mul-float/2addr v3, p1

    .line 224
    :cond_d2
    iget-object p1, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    invoke-virtual {p1, p4, v3, v1}, Lopenlight/co/camera/listener/ScreenGestureListener;->onScroll(FFZ)V

    .line 226
    iget-object p0, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    # setter for: Lopenlight/co/camera/listener/ScreenGestureListener;->mLastDistanceBetweenFingers:F
    invoke-static {p0, p1}, Lopenlight/co/camera/listener/ScreenGestureListener;->access$402(Lopenlight/co/camera/listener/ScreenGestureListener;F)F

    goto :goto_e6

    .line 228
    :cond_e1
    iget-object p0, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    invoke-virtual {p0, p4, v2, v0}, Lopenlight/co/camera/listener/ScreenGestureListener;->onScroll(FFZ)V

    :goto_e6
    return v1

    :cond_e7
    :goto_e7
    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 177
    iget-object p0, p0, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;->this$0:Lopenlight/co/camera/listener/ScreenGestureListener;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/listener/ScreenGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
