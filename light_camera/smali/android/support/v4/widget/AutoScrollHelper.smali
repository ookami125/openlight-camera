.class public abstract Landroid/support/v4/widget/AutoScrollHelper;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;,
        Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTIVATION_DELAY:I

.field private static final DEFAULT_EDGE_TYPE:I = 0x1

.field private static final DEFAULT_MAXIMUM_EDGE:F = 3.4028235E38f

.field private static final DEFAULT_MAXIMUM_VELOCITY_DIPS:I = 0x627

.field private static final DEFAULT_MINIMUM_VELOCITY_DIPS:I = 0x13b

.field private static final DEFAULT_RAMP_DOWN_DURATION:I = 0x1f4

.field private static final DEFAULT_RAMP_UP_DURATION:I = 0x1f4

.field private static final DEFAULT_RELATIVE_EDGE:F = 0.2f

.field private static final DEFAULT_RELATIVE_VELOCITY:F = 1.0f

.field public static final EDGE_TYPE_INSIDE:I = 0x0

.field public static final EDGE_TYPE_INSIDE_EXTEND:I = 0x1

.field public static final EDGE_TYPE_OUTSIDE:I = 0x2

.field private static final HORIZONTAL:I = 0x0

.field public static final NO_MAX:F = 3.4028235E38f

.field public static final NO_MIN:F = 0.0f

.field public static final RELATIVE_UNSPECIFIED:F = 0.0f

.field private static final VERTICAL:I = 0x1


# instance fields
.field private mActivationDelay:I

.field private mAlreadyDelayed:Z

.field mAnimating:Z

.field private final mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field private mEdgeType:I

.field private mEnabled:Z

.field private mExclusive:Z

.field private mMaximumEdges:[F

.field private mMaximumVelocity:[F

.field private mMinimumVelocity:[F

.field mNeedsCancel:Z

.field mNeedsReset:Z

.field private mRelativeEdges:[F

.field private mRelativeVelocity:[F

.field private mRunnable:Ljava/lang/Runnable;

.field final mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

.field final mTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 193
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/support/v4/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 5

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-direct {v0}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    .line 139
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x2

    .line 148
    new-array v1, v0, [F

    fill-array-data v1, :array_7c

    iput-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    .line 151
    new-array v1, v0, [F

    fill-array-data v1, :array_84

    iput-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    .line 160
    new-array v1, v0, [F

    fill-array-data v1, :array_8c

    iput-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    .line 163
    new-array v1, v0, [F

    fill-array-data v1, :array_94

    iput-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    .line 166
    new-array v0, v0, [F

    fill-array-data v0, :array_9c

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    .line 209
    iput-object p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    .line 211
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 212
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    const v1, 0x44c4e000    # 1575.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 213
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const v2, 0x439d8000    # 315.0f

    mul-float/2addr p1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float v0, v0

    .line 214
    invoke-virtual {p0, v0, v0}, Landroid/support/v4/widget/AutoScrollHelper;->setMaximumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    int-to-float p1, p1

    .line 215
    invoke-virtual {p0, p1, p1}, Landroid/support/v4/widget/AutoScrollHelper;->setMinimumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    const/4 p1, 0x1

    .line 217
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/AutoScrollHelper;->setEdgeType(I)Landroid/support/v4/widget/AutoScrollHelper;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 218
    invoke-virtual {p0, p1, p1}, Landroid/support/v4/widget/AutoScrollHelper;->setMaximumEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;

    const p1, 0x3e4ccccd    # 0.2f

    .line 219
    invoke-virtual {p0, p1, p1}, Landroid/support/v4/widget/AutoScrollHelper;->setRelativeEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 220
    invoke-virtual {p0, p1, p1}, Landroid/support/v4/widget/AutoScrollHelper;->setRelativeVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;

    .line 221
    sget p1, Landroid/support/v4/widget/AutoScrollHelper;->DEFAULT_ACTIVATION_DELAY:I

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/AutoScrollHelper;->setActivationDelay(I)Landroid/support/v4/widget/AutoScrollHelper;

    const/16 p1, 0x1f4

    .line 222
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/AutoScrollHelper;->setRampUpDuration(I)Landroid/support/v4/widget/AutoScrollHelper;

    .line 223
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/AutoScrollHelper;->setRampDownDuration(I)Landroid/support/v4/widget/AutoScrollHelper;

    return-void

    :array_7c
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_84
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    :array_8c
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_94
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_9c
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method private computeTargetVelocity(IFFF)F
    .registers 7

    .line 538
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    aget v0, v0, p1

    .line 539
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    aget v1, v1, p1

    .line 540
    invoke-direct {p0, v0, p3, v1, p2}, Landroid/support/v4/widget/AutoScrollHelper;->getEdgeValue(FFFF)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float v0, p2, p3

    if-nez v0, :cond_12

    return p3

    .line 546
    :cond_12
    iget-object p3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    aget p3, p3, p1

    .line 547
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    aget v1, v1, p1

    .line 548
    iget-object p0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    aget p0, p0, p1

    mul-float/2addr p3, p4

    if-lez v0, :cond_27

    mul-float/2addr p2, p3

    .line 555
    invoke-static {p2, v1, p0}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p0

    return p0

    :cond_27
    neg-float p1, p2

    mul-float/2addr p1, p3

    .line 557
    invoke-static {p1, v1, p0}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method static constrain(FFF)F
    .registers 4

    cmpl-float v0, p0, p2

    if-lez v0, :cond_5

    return p2

    :cond_5
    cmpg-float p2, p0, p1

    if-gez p2, :cond_a

    return p1

    :cond_a
    return p0
.end method

.method static constrain(III)I
    .registers 3

    if-le p0, p2, :cond_3

    return p2

    :cond_3
    if-ge p0, p1, :cond_6

    return p1

    :cond_6
    return p0
.end method

.method private constrainEdgeValue(FF)F
    .registers 6

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_6

    return v0

    .line 627
    :cond_6
    iget v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    packed-switch v1, :pswitch_data_2c

    goto :goto_2a

    :pswitch_c
    cmpg-float p0, p1, v0

    if-gez p0, :cond_2a

    neg-float p0, p2

    div-float/2addr p1, p0

    return p1

    :pswitch_13
    cmpg-float v1, p1, p2

    if-gez v1, :cond_2a

    cmpl-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_20

    div-float/2addr p1, p2

    sub-float/2addr v2, p1

    return v2

    .line 634
    :cond_20
    iget-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz p1, :cond_2a

    iget p0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_2a

    return v2

    :cond_2a
    :goto_2a
    return v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_13
        :pswitch_c
    .end packed-switch
.end method

.method private getEdgeValue(FFFF)F
    .registers 6

    mul-float/2addr p1, p2

    const/4 v0, 0x0

    .line 606
    invoke-static {p1, v0, p3}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p1

    .line 607
    invoke-direct {p0, p4, p1}, Landroid/support/v4/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result p3

    sub-float/2addr p2, p4

    .line 608
    invoke-direct {p0, p2, p1}, Landroid/support/v4/widget/AutoScrollHelper;->constrainEdgeValue(FF)F

    move-result p1

    sub-float/2addr p1, p3

    cmpg-float p2, p1, v0

    if-gez p2, :cond_1d

    .line 612
    iget-object p0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    neg-float p1, p1

    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    neg-float p0, p0

    goto :goto_27

    :cond_1d
    cmpl-float p2, p1, v0

    if-lez p2, :cond_30

    .line 614
    iget-object p0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    :goto_27
    const/high16 p1, -0x40800000    # -1.0f

    const/high16 p2, 0x3f800000    # 1.0f

    .line 619
    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/AutoScrollHelper;->constrain(FFF)F

    move-result p0

    return p0

    :cond_30
    return v0
.end method

.method private requestStop()V
    .registers 2

    .line 527
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 530
    iput-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    goto :goto_d

    .line 532
    :cond_8
    iget-object p0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {p0}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->requestStop()V

    :goto_d
    return-void
.end method

.method private startAnimating()V
    .registers 6

    .line 503
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    .line 504
    new-instance v0, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Landroid/support/v4/widget/AutoScrollHelper;)V

    iput-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    :cond_b
    const/4 v0, 0x1

    .line 507
    iput-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    .line 508
    iput-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsReset:Z

    .line 510
    iget-boolean v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    if-nez v1, :cond_23

    iget v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    if-lez v1, :cond_23

    .line 511
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    iget v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Landroid/support/v4/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_28

    .line 513
    :cond_23
    iget-object v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 518
    :goto_28
    iput-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    return-void
.end method


# virtual methods
.method public abstract canTargetScrollHorizontally(I)Z
.end method

.method public abstract canTargetScrollVertically(I)Z
.end method

.method cancelTargetTouch()V
    .registers 9

    .line 676
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v0, v2

    .line 677
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 679
    iget-object p0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 680
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public isEnabled()Z
    .registers 1

    .line 246
    iget-boolean p0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    return p0
.end method

.method public isExclusive()Z
    .registers 1

    .line 275
    iget-boolean p0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 455
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 459
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_5c

    goto :goto_51

    .line 480
    :pswitch_f
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->requestStop()V

    goto :goto_51

    .line 462
    :pswitch_13
    iput-boolean v2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mNeedsCancel:Z

    .line 463
    iput-boolean v1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAlreadyDelayed:Z

    .line 467
    :pswitch_17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 466
    invoke-direct {p0, v1, v0, v3, v4}, Landroid/support/v4/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result v0

    .line 469
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v3, p0, Landroid/support/v4/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 468
    invoke-direct {p0, v2, p2, p1, v3}, Landroid/support/v4/widget/AutoScrollHelper;->computeTargetVelocity(IFFF)F

    move-result p1

    .line 470
    iget-object p2, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {p2, v0, p1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setTargetVelocity(FF)V

    .line 474
    iget-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-nez p1, :cond_51

    invoke-virtual {p0}, Landroid/support/v4/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result p1

    if-eqz p1, :cond_51

    .line 475
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->startAnimating()V

    .line 484
    :cond_51
    :goto_51
    iget-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    if-eqz p1, :cond_5a

    iget-boolean p0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mAnimating:Z

    if-eqz p0, :cond_5a

    move v1, v2

    :cond_5a
    return v1

    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_f
        :pswitch_17
        :pswitch_f
    .end packed-switch
.end method

.method public abstract scrollTargetBy(II)V
.end method

.method public setActivationDelay(I)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 2

    .line 411
    iput p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mActivationDelay:I

    return-object p0
.end method

.method public setEdgeType(I)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 2

    .line 353
    iput p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEdgeType:I

    return-object p0
.end method

.method public setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 3

    .line 234
    iget-boolean v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 235
    invoke-direct {p0}, Landroid/support/v4/widget/AutoScrollHelper;->requestStop()V

    .line 238
    :cond_9
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mEnabled:Z

    return-object p0
.end method

.method public setExclusive(Z)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 2

    .line 262
    iput-boolean p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mExclusive:Z

    return-object p0
.end method

.method public setMaximumEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 5

    .line 394
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 395
    iget-object p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumEdges:[F

    const/4 v0, 0x1

    aput p2, p1, v0

    return-object p0
.end method

.method public setMaximumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 6

    .line 293
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 294
    iget-object p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMaximumVelocity:[F

    div-float/2addr p2, v1

    const/4 v0, 0x1

    aput p2, p1, v0

    return-object p0
.end method

.method public setMinimumVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 6

    .line 311
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 312
    iget-object p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mMinimumVelocity:[F

    div-float/2addr p2, v1

    const/4 v0, 0x1

    aput p2, p1, v0

    return-object p0
.end method

.method public setRampDownDuration(I)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 3

    .line 441
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setRampDownDuration(I)V

    return-object p0
.end method

.method public setRampUpDuration(I)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 3

    .line 426
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->setRampUpDuration(I)V

    return-object p0
.end method

.method public setRelativeEdges(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 5

    .line 372
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 373
    iget-object p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeEdges:[F

    const/4 v0, 0x1

    aput p2, p1, v0

    return-object p0
.end method

.method public setRelativeVelocity(FF)Landroid/support/v4/widget/AutoScrollHelper;
    .registers 6

    .line 332
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    .line 333
    iget-object p1, p0, Landroid/support/v4/widget/AutoScrollHelper;->mRelativeVelocity:[F

    div-float/2addr p2, v1

    const/4 v0, 0x1

    aput p2, p1, v0

    return-object p0
.end method

.method shouldAnimate()Z
    .registers 3

    .line 491
    iget-object v0, p0, Landroid/support/v4/widget/AutoScrollHelper;->mScroller:Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;

    .line 492
    invoke-virtual {v0}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getVerticalDirection()I

    move-result v1

    .line 493
    invoke-virtual {v0}, Landroid/support/v4/widget/AutoScrollHelper$ClampedScroller;->getHorizontalDirection()I

    move-result v0

    if-eqz v1, :cond_12

    .line 495
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/AutoScrollHelper;->canTargetScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_12
    if-eqz v0, :cond_1c

    .line 496
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/AutoScrollHelper;->canTargetScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method
