.class final Lopenlight/co/camera/listener/OnSwipeTouchListener$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OnSwipeTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/listener/OnSwipeTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureListener"
.end annotation


# static fields
.field private static final SWIPE_THRESHOLD:I = 0x64

.field private static final SWIPE_VELOCITY_THRESHOLD:I = 0x64


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/listener/OnSwipeTouchListener;


# direct methods
.method private constructor <init>(Lopenlight/co/camera/listener/OnSwipeTouchListener;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lopenlight/co/camera/listener/OnSwipeTouchListener$GestureListener;->this$0:Lopenlight/co/camera/listener/OnSwipeTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lopenlight/co/camera/listener/OnSwipeTouchListener;Lopenlight/co/camera/listener/OnSwipeTouchListener$1;)V
    .registers 3

    .line 59
    invoke-direct {p0, p1}, Lopenlight/co/camera/listener/OnSwipeTouchListener$GestureListener;-><init>(Lopenlight/co/camera/listener/OnSwipeTouchListener;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    .line 98
    sget v0, Lopenlight/co/camera/view/customviews/TouchImageView;->normalizedScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 102
    :cond_a
    :try_start_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    .line 104
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    .line 105
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float p1, p1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x42c80000    # 100.0f

    if-lez p1, :cond_4b

    .line 106
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v3

    if-lez p1, :cond_6a

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v3

    if-lez p1, :cond_6a

    cmpl-float p1, p2, v2

    if-lez p1, :cond_45

    .line 108
    iget-object p0, p0, Lopenlight/co/camera/listener/OnSwipeTouchListener$GestureListener;->this$0:Lopenlight/co/camera/listener/OnSwipeTouchListener;

    invoke-virtual {p0}, Lopenlight/co/camera/listener/OnSwipeTouchListener;->onSwipeRight()V

    goto :goto_6a

    .line 110
    :cond_45
    iget-object p0, p0, Lopenlight/co/camera/listener/OnSwipeTouchListener$GestureListener;->this$0:Lopenlight/co/camera/listener/OnSwipeTouchListener;

    invoke-virtual {p0}, Lopenlight/co/camera/listener/OnSwipeTouchListener;->onSwipeLeft()V

    goto :goto_6a

    .line 115
    :cond_4b
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v3

    if-lez p1, :cond_6a

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v3

    if-lez p1, :cond_6a

    cmpl-float p1, v0, v2

    if-lez p1, :cond_65

    .line 117
    iget-object p0, p0, Lopenlight/co/camera/listener/OnSwipeTouchListener$GestureListener;->this$0:Lopenlight/co/camera/listener/OnSwipeTouchListener;

    invoke-virtual {p0}, Lopenlight/co/camera/listener/OnSwipeTouchListener;->onSwipeBottom()V

    goto :goto_6a

    .line 119
    :cond_65
    iget-object p0, p0, Lopenlight/co/camera/listener/OnSwipeTouchListener$GestureListener;->this$0:Lopenlight/co/camera/listener/OnSwipeTouchListener;

    invoke-virtual {p0}, Lopenlight/co/camera/listener/OnSwipeTouchListener;->onSwipeTop()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_6a} :catch_6c

    :cond_6a
    :goto_6a
    const/4 v1, 0x1

    goto :goto_70

    :catch_6c
    move-exception p0

    .line 125
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_70
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    .line 77
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 78
    iget-object p1, p0, Lopenlight/co/camera/listener/OnSwipeTouchListener$GestureListener;->this$0:Lopenlight/co/camera/listener/OnSwipeTouchListener;

    invoke-virtual {p1}, Lopenlight/co/camera/listener/OnSwipeTouchListener;->onLongPressing()V

    .line 79
    iget-object p0, p0, Lopenlight/co/camera/listener/OnSwipeTouchListener$GestureListener;->this$0:Lopenlight/co/camera/listener/OnSwipeTouchListener;

    const/4 p1, 0x1

    # setter for: Lopenlight/co/camera/listener/OnSwipeTouchListener;->isLongPress:Z
    invoke-static {p0, p1}, Lopenlight/co/camera/listener/OnSwipeTouchListener;->access$102(Lopenlight/co/camera/listener/OnSwipeTouchListener;Z)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 85
    # getter for: Lopenlight/co/camera/listener/OnSwipeTouchListener;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/listener/OnSwipeTouchListener;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[SWIPE] Swipe diff: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    cmpg-float p1, p4, p1

    if-gez p1, :cond_26

    .line 87
    iget-object p0, p0, Lopenlight/co/camera/listener/OnSwipeTouchListener$GestureListener;->this$0:Lopenlight/co/camera/listener/OnSwipeTouchListener;

    invoke-virtual {p0}, Lopenlight/co/camera/listener/OnSwipeTouchListener;->onScrollBottom()V

    goto :goto_2b

    .line 89
    :cond_26
    iget-object p0, p0, Lopenlight/co/camera/listener/OnSwipeTouchListener$GestureListener;->this$0:Lopenlight/co/camera/listener/OnSwipeTouchListener;

    invoke-virtual {p0}, Lopenlight/co/camera/listener/OnSwipeTouchListener;->onScrollTop()V

    :goto_2b
    const/4 p0, 0x1

    return p0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 71
    iget-object v0, p0, Lopenlight/co/camera/listener/OnSwipeTouchListener$GestureListener;->this$0:Lopenlight/co/camera/listener/OnSwipeTouchListener;

    invoke-virtual {v0}, Lopenlight/co/camera/listener/OnSwipeTouchListener;->onSingleTap()V

    .line 72
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
