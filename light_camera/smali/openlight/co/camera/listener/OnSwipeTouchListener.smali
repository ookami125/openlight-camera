.class public Lopenlight/co/camera/listener/OnSwipeTouchListener;
.super Ljava/lang/Object;
.source "OnSwipeTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/listener/OnSwipeTouchListener$GestureListener;
    }
.end annotation


# static fields
.field private static final MIN_SLIDE_DISTANCE:I = 0xc8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final gestureDetector:Landroid/view/GestureDetector;

.field private isCallBackOnRelease:Z

.field private isLongPress:Z

.field private yPoint:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lopenlight/co/camera/listener/OnSwipeTouchListener;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/listener/OnSwipeTouchListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lopenlight/co/camera/listener/OnSwipeTouchListener;->isCallBackOnRelease:Z

    .line 21
    iput-boolean v0, p0, Lopenlight/co/camera/listener/OnSwipeTouchListener;->isLongPress:Z

    .line 24
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lopenlight/co/camera/listener/OnSwipeTouchListener$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lopenlight/co/camera/listener/OnSwipeTouchListener$GestureListener;-><init>(Lopenlight/co/camera/listener/OnSwipeTouchListener;Lopenlight/co/camera/listener/OnSwipeTouchListener$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lopenlight/co/camera/listener/OnSwipeTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$102(Lopenlight/co/camera/listener/OnSwipeTouchListener;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lopenlight/co/camera/listener/OnSwipeTouchListener;->isLongPress:Z

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lopenlight/co/camera/listener/OnSwipeTouchListener;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onLongPressAndSlide()V
    .locals 0

    return-void
.end method

.method public onLongPressRelease()V
    .locals 0

    return-void
.end method

.method public onLongPressing()V
    .locals 0

    return-void
.end method

.method public onScrollBottom()V
    .locals 0

    return-void
.end method

.method public onScrollTop()V
    .locals 0

    return-void
.end method

.method public onSingleTap()V
    .locals 0

    return-void
.end method

.method public onSwipeBottom()V
    .locals 0

    return-void
.end method

.method public onSwipeLeft()V
    .locals 0

    return-void
.end method

.method public onSwipeRight()V
    .locals 0

    return-void
.end method

.method public onSwipeTop()V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 30
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    and-int/2addr p1, v0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 37
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 38
    iget v1, p0, Lopenlight/co/camera/listener/OnSwipeTouchListener;->yPoint:F

    sub-float/2addr p1, v1

    float-to-long v1, p1

    const-wide/16 v3, 0xc8

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    .line 39
    iget-boolean p1, p0, Lopenlight/co/camera/listener/OnSwipeTouchListener;->isLongPress:Z

    if-eqz p1, :cond_1

    .line 40
    iput-boolean v0, p0, Lopenlight/co/camera/listener/OnSwipeTouchListener;->isCallBackOnRelease:Z

    .line 41
    invoke-virtual {p0}, Lopenlight/co/camera/listener/OnSwipeTouchListener;->onLongPressAndSlide()V

    goto :goto_0

    .line 45
    :pswitch_1
    iget-boolean p1, p0, Lopenlight/co/camera/listener/OnSwipeTouchListener;->isCallBackOnRelease:Z

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0}, Lopenlight/co/camera/listener/OnSwipeTouchListener;->onLongPressRelease()V

    .line 47
    iput-boolean v0, p0, Lopenlight/co/camera/listener/OnSwipeTouchListener;->isLongPress:Z

    .line 48
    iput-boolean v0, p0, Lopenlight/co/camera/listener/OnSwipeTouchListener;->isCallBackOnRelease:Z

    :cond_0
    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lopenlight/co/camera/listener/OnSwipeTouchListener;->yPoint:F

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lopenlight/co/camera/listener/OnSwipeTouchListener;->isCallBackOnRelease:Z

    .line 33
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lopenlight/co/camera/listener/OnSwipeTouchListener;->yPoint:F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 56
    :cond_1
    :goto_0
    iget-object p0, p0, Lopenlight/co/camera/listener/OnSwipeTouchListener;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onZoomEnd()V
    .locals 0

    return-void
.end method
