.class Landroid/support/design/widget/SwipeDismissBehavior$1;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mOriginalCapturedViewLeft:I

.field final synthetic this$0:Landroid/support/design/widget/SwipeDismissBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/SwipeDismissBehavior;)V
    .registers 2

    .line 215
    iput-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    const/4 p1, -0x1

    .line 219
    iput p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mActivePointerId:I

    return-void
.end method

.method private shouldDismiss(Landroid/view/View;F)Z
    .registers 9

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3d

    .line 275
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-ne p1, v3, :cond_f

    move p1, v3

    goto :goto_10

    :cond_f
    move p1, v2

    .line 278
    :goto_10
    iget-object v4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v4, v4, Landroid/support/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_18

    return v3

    .line 281
    :cond_18
    iget-object v4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v4, v4, Landroid/support/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    if-nez v4, :cond_2a

    if-eqz p1, :cond_26

    cmpg-float p0, p2, v0

    if-gez p0, :cond_29

    :goto_24
    move v2, v3

    goto :goto_29

    :cond_26
    if-lez v1, :cond_29

    goto :goto_24

    :cond_29
    :goto_29
    return v2

    .line 285
    :cond_2a
    iget-object p0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget p0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    if-ne p0, v3, :cond_3c

    if-eqz p1, :cond_36

    if-lez v1, :cond_3b

    :goto_34
    move v2, v3

    goto :goto_3b

    :cond_36
    cmpg-float p0, p2, v0

    if-gez p0, :cond_3b

    goto :goto_34

    :cond_3b
    :goto_3b
    return v2

    :cond_3c
    return v2

    .line 291
    :cond_3d
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    sub-int/2addr p2, v0

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget p0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mDragDismissThreshold:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 293
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lt p1, p0, :cond_59

    move v2, v3

    :cond_59
    return v2
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 6

    .line 306
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_9

    move p3, v0

    goto :goto_a

    :cond_9
    const/4 p3, 0x0

    .line 310
    :goto_a
    iget-object v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v1, v1, Landroid/support/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    if-nez v1, :cond_26

    if-eqz p3, :cond_1c

    .line 312
    iget p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p3, p1

    .line 313
    iget p0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    goto :goto_50

    .line 315
    :cond_1c
    iget p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    .line 316
    iget p0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p0, p1

    goto :goto_50

    .line 318
    :cond_26
    iget-object v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v1, v1, Landroid/support/design/widget/SwipeDismissBehavior;->mSwipeDirection:I

    if-ne v1, v0, :cond_42

    if-eqz p3, :cond_38

    .line 320
    iget p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    .line 321
    iget p0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p0, p1

    goto :goto_50

    .line 323
    :cond_38
    iget p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p3, p1

    .line 324
    iget p0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    goto :goto_50

    .line 327
    :cond_42
    iget p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p3, v0

    .line 328
    iget p0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p0, p1

    .line 331
    :goto_50
    invoke-static {p3, p2, p0}, Landroid/support/design/widget/SwipeDismissBehavior;->clamp(III)I

    move-result p0

    return p0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 4

    .line 336
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    return p0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 2

    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .registers 3

    .line 229
    iput p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mActivePointerId:I

    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 p1, 0x1

    .line 236
    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_12
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .registers 3

    .line 242
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->mListener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    if-eqz v0, :cond_d

    .line 243
    iget-object p0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object p0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mListener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    invoke-interface {p0, p1}, Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;->onDragStateChanged(I)V

    :cond_d
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 7

    .line 341
    iget p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    int-to-float p3, p3

    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    iget-object p5, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget p5, p5, Landroid/support/design/widget/SwipeDismissBehavior;->mAlphaStartSwipeDistance:F

    mul-float/2addr p4, p5

    add-float/2addr p3, p4

    .line 343
    iget p4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    int-to-float p4, p4

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p5

    int-to-float p5, p5

    iget-object p0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget p0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mAlphaEndSwipeDistance:F

    mul-float/2addr p5, p0

    add-float/2addr p4, p5

    int-to-float p0, p2

    cmpg-float p2, p0, p3

    const/high16 p5, 0x3f800000    # 1.0f

    if-gtz p2, :cond_27

    .line 347
    invoke-virtual {p1, p5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3d

    :cond_27
    cmpl-float p2, p0, p4

    const/4 v0, 0x0

    if-ltz p2, :cond_30

    .line 349
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3d

    .line 352
    :cond_30
    invoke-static {p3, p4, p0}, Landroid/support/design/widget/SwipeDismissBehavior;->fraction(FFF)F

    move-result p0

    sub-float p0, p5, p0

    .line 353
    invoke-static {v0, p0, p5}, Landroid/support/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :goto_3d
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 6

    const/4 p3, -0x1

    .line 250
    iput p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mActivePointerId:I

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    .line 256
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/SwipeDismissBehavior$1;->shouldDismiss(Landroid/view/View;F)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    if-ge p2, v0, :cond_19

    iget p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    sub-int/2addr p2, p3

    goto :goto_1c

    :cond_19
    iget p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    add-int/2addr p2, p3

    :goto_1c
    const/4 p3, 0x1

    goto :goto_21

    .line 263
    :cond_1e
    iget p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mOriginalCapturedViewLeft:I

    const/4 p3, 0x0

    .line 266
    :goto_21
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result p2

    if-eqz p2, :cond_3a

    .line 267
    new-instance p2, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;

    iget-object p0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {p2, p0, p1, p3}, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;Landroid/view/View;Z)V

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_49

    :cond_3a
    if-eqz p3, :cond_49

    .line 268
    iget-object p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object p2, p2, Landroid/support/design/widget/SwipeDismissBehavior;->mListener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    if-eqz p2, :cond_49

    .line 269
    iget-object p0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object p0, p0, Landroid/support/design/widget/SwipeDismissBehavior;->mListener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    invoke-interface {p0, p1}, Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    :cond_49
    :goto_49
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 4

    .line 224
    iget p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->mActivePointerId:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_f

    iget-object p0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-virtual {p0, p1}, Landroid/support/design/widget/SwipeDismissBehavior;->canSwipeDismissView(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method
