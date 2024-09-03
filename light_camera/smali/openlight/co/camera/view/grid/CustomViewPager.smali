.class public Lopenlight/co/camera/view/grid/CustomViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "CustomViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/view/grid/CustomViewPager$OnSwipeOutListener;
    }
.end annotation


# instance fields
.field private isExifMiniShow:Z

.field private mStartPinchTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 23
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, p0, Lopenlight/co/camera/view/grid/CustomViewPager;->mStartPinchTime:J

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lopenlight/co/camera/view/grid/CustomViewPager;->isExifMiniShow:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x0

    .line 11
    iput-wide p1, p0, Lopenlight/co/camera/view/grid/CustomViewPager;->mStartPinchTime:J

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lopenlight/co/camera/view/grid/CustomViewPager;->isExifMiniShow:Z

    return-void
.end method


# virtual methods
.method public getStartPinchTime()J
    .registers 3

    .line 19
    iget-wide v0, p0, Lopenlight/co/camera/view/grid/CustomViewPager;->mStartPinchTime:J

    return-wide v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v0, 0x0

    .line 38
    :try_start_1
    iget-boolean v1, p0, Lopenlight/co/camera/view/grid/CustomViewPager;->isExifMiniShow:Z

    const/4 v2, 0x1

    if-nez v1, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v2, :cond_13

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_14

    if-eqz p0, :cond_13

    move v0, v2

    :cond_13
    return v0

    :catch_14
    return v0
.end method

.method public setCurrentItem(I)V
    .registers 3

    const/4 v0, 0x0

    .line 32
    invoke-super {p0, p1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setExifMiniShow(Z)V
    .registers 2

    .line 15
    iput-boolean p1, p0, Lopenlight/co/camera/view/grid/CustomViewPager;->isExifMiniShow:Z

    return-void
.end method
