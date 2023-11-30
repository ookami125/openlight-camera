.class public abstract Lopenlight/co/camera/listener/ScreenGestureListener;
.super Ljava/lang/Object;
.source "ScreenGestureListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;
    }
.end annotation


# static fields
.field private static final CAMERA_DIFF_SCROLL:F = 10.0f

.field private static final FAST_SCROLL_THRESHOLD_VELOCITY:F = 2000.0f

.field private static final GESTURE_VELOCITY_UNIT:I = 0x3e8

.field private static final LENS_TO_FOCAL_LENGTH_FACTOR:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ScreenGestureListener"

.field private static final VELOCITY_FACTOR:F = 100.0f


# instance fields
.field private final mCameraInfo:Lopenlight/co/camera/CameraInfo;

.field private final mGestureListener:Landroid/view/GestureDetector;

.field private mHighestScrollValue:F

.field private mLastDistanceBetweenFingers:F

.field private mLowestScrollValue:F

.field private mPinchZoomPointerCount:I

.field private mVelTracker:Landroid/view/VelocityTracker;

.field private final mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mPinchZoomPointerCount:I

    .line 58
    invoke-static {}, Lopenlight/co/camera/CameraInfo;->get()Lopenlight/co/camera/CameraInfo;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    .line 60
    invoke-static {}, Lopenlight/co/camera/managers/zoom/ZoomManager;->get()Lopenlight/co/camera/managers/zoom/ZoomManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    .line 115
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lopenlight/co/camera/listener/ScreenGestureListener$GestureListener;-><init>(Lopenlight/co/camera/listener/ScreenGestureListener;Lopenlight/co/camera/listener/ScreenGestureListener$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mGestureListener:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$100(Lopenlight/co/camera/listener/ScreenGestureListener;)F
    .locals 0

    .line 27
    iget p0, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mLowestScrollValue:F

    return p0
.end method

.method static synthetic access$102(Lopenlight/co/camera/listener/ScreenGestureListener;F)F
    .locals 0

    .line 27
    iput p1, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mLowestScrollValue:F

    return p1
.end method

.method static synthetic access$200(Lopenlight/co/camera/listener/ScreenGestureListener;)F
    .locals 0

    .line 27
    iget p0, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mHighestScrollValue:F

    return p0
.end method

.method static synthetic access$202(Lopenlight/co/camera/listener/ScreenGestureListener;F)F
    .locals 0

    .line 27
    iput p1, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mHighestScrollValue:F

    return p1
.end method

.method static synthetic access$300(Lopenlight/co/camera/listener/ScreenGestureListener;)Landroid/view/VelocityTracker;
    .locals 0

    .line 27
    iget-object p0, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mVelTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method static synthetic access$400(Lopenlight/co/camera/listener/ScreenGestureListener;)F
    .locals 0

    .line 27
    iget p0, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mLastDistanceBetweenFingers:F

    return p0
.end method

.method static synthetic access$402(Lopenlight/co/camera/listener/ScreenGestureListener;F)F
    .locals 0

    .line 27
    iput p1, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mLastDistanceBetweenFingers:F

    return p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lopenlight/co/camera/listener/ScreenGestureListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getFingerSpacing(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 282
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    sub-float/2addr v0, p0

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 283
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method


# virtual methods
.method public abstract areValidEvents(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
.end method

.method public calculatePixelPerStepsFromVelocity(F)F
    .locals 5

    .line 295
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 296
    sget-object v0, Lopenlight/co/camera/listener/ScreenGestureListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Velocity Factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-virtual {v1}, Lopenlight/co/camera/managers/zoom/ZoomManager;->getZoomLevel()F

    move-result v1

    iget-object v2, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    .line 299
    invoke-virtual {v2}, Lopenlight/co/camera/CameraInfo;->getMinFocalLengthLens()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    .line 298
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 301
    invoke-virtual {v0}, Lopenlight/co/camera/CameraApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07018d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    .line 303
    invoke-virtual {v0}, Lopenlight/co/camera/CameraApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07018e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    .line 305
    invoke-virtual {v0}, Lopenlight/co/camera/CameraApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f07018f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    sub-float p1, v2, v0

    cmpg-float v0, p1, v3

    if-gez v0, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    move p1, v2

    .line 317
    :cond_1
    :goto_0
    iget-object p0, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    int-to-float v0, v1

    invoke-virtual {p0, v0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->enumContains(F)Z

    move-result p0

    if-eqz p0, :cond_2

    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p1, p0

    :cond_2
    return p1
.end method

.method public calculateScrollThreshold(F)F
    .locals 0

    .line 331
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x44fa0000    # 2000.0f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/high16 p0, 0x40a00000    # 5.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x41200000    # 10.0f

    :goto_0
    return p0
.end method

.method public getZoomPointerCount()I
    .locals 0

    .line 111
    iget p0, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mPinchZoomPointerCount:I

    return p0
.end method

.method public abstract onFling(Z)V
.end method

.method public abstract onLongPress(Landroid/view/MotionEvent;)V
.end method

.method public abstract onScroll(FFZ)V
.end method

.method public abstract onSingleTapUp(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onTouch(Landroid/view/MotionEvent;FZ)Z
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 124
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 138
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    .line 139
    invoke-static {p2}, Lopenlight/co/camera/listener/ScreenGestureListener;->getFingerSpacing(Landroid/view/MotionEvent;)F

    move-result p1

    .line 140
    iget v4, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mLastDistanceBetweenFingers:F

    cmpl-float v1, v4, v1

    if-nez v1, :cond_0

    .line 141
    iput p1, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mLastDistanceBetweenFingers:F

    .line 143
    :cond_0
    iget v1, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mLastDistanceBetweenFingers:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x41f00000    # 30.0f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_3

    const/high16 v2, 0x44160000    # 600.0f

    div-float/2addr v1, v2

    .line 147
    iget v2, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mLastDistanceBetweenFingers:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    mul-float/2addr v1, v3

    .line 151
    :cond_1
    iput p1, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mLastDistanceBetweenFingers:F

    move v2, v0

    move v3, v1

    goto :goto_1

    .line 157
    :pswitch_1
    iput v1, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mLastDistanceBetweenFingers:F

    .line 158
    iput v2, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mPinchZoomPointerCount:I

    .line 159
    iget-object p1, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mVelTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_3

    .line 160
    iget-object p1, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mVelTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 126
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mLowestScrollValue:F

    iput p1, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mHighestScrollValue:F

    .line 127
    iget-object p1, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mVelTracker:Landroid/view/VelocityTracker;

    if-nez p1, :cond_2

    .line 129
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mVelTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 131
    :cond_2
    iget-object p1, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mVelTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 133
    :goto_0
    iget-object p1, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mVelTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 134
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    iput p1, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mPinchZoomPointerCount:I

    .line 168
    :cond_3
    :goto_1
    invoke-virtual {p0, p2, v3, v2}, Lopenlight/co/camera/listener/ScreenGestureListener;->onTouch(Landroid/view/MotionEvent;FZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 169
    iget-object p0, p0, Lopenlight/co/camera/listener/ScreenGestureListener;->mGestureListener:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
