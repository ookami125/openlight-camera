.class Lopenlight/co/camera/view/customviews/ScrollingLinearLayoutManager$SmoothScroller;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "ScrollingLinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/customviews/ScrollingLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmoothScroller"
.end annotation


# static fields
.field private static final TARGET_SEEK_SCROLL_DISTANCE_PX:I = 0x2710


# instance fields
.field private final distanceInPixels:F

.field private final duration:F

.field final synthetic this$0:Lopenlight/co/camera/view/customviews/ScrollingLinearLayoutManager;


# direct methods
.method public constructor <init>(Lopenlight/co/camera/view/customviews/ScrollingLinearLayoutManager;Landroid/content/Context;II)V
    .locals 0

    .line 38
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/ScrollingLinearLayoutManager$SmoothScroller;->this$0:Lopenlight/co/camera/view/customviews/ScrollingLinearLayoutManager;

    .line 39
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    int-to-float p1, p3

    .line 40
    iput p1, p0, Lopenlight/co/camera/view/customviews/ScrollingLinearLayoutManager$SmoothScroller;->distanceInPixels:F

    .line 41
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/customviews/ScrollingLinearLayoutManager$SmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result p1

    const/16 p2, 0x2710

    if-ge p3, p2, :cond_0

    .line 42
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    int-to-float p1, p4

    :goto_0
    iput p1, p0, Lopenlight/co/camera/view/customviews/ScrollingLinearLayoutManager$SmoothScroller;->duration:F

    return-void
.end method


# virtual methods
.method protected calculateTimeForScrolling(I)I
    .locals 1

    int-to-float p1, p1

    .line 52
    iget v0, p0, Lopenlight/co/camera/view/customviews/ScrollingLinearLayoutManager$SmoothScroller;->distanceInPixels:F

    div-float/2addr p1, v0

    .line 53
    iget p0, p0, Lopenlight/co/camera/view/customviews/ScrollingLinearLayoutManager$SmoothScroller;->duration:F

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 0

    .line 47
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/ScrollingLinearLayoutManager$SmoothScroller;->this$0:Lopenlight/co/camera/view/customviews/ScrollingLinearLayoutManager;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/customviews/ScrollingLinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method
