.class public abstract Landroid/support/v7/widget/ForwardingListener;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;,
        Landroid/support/v7/widget/ForwardingListener$DisallowIntercept;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mLongPressTimeout:I

.field private final mScaledTouchSlop:F

.field final mSrc:Landroid/view/View;

.field private final mTapTimeout:I

.field private final mTmpLocation:[I

.field private mTriggerLongPress:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 65
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mTmpLocation:[I

    .line 68
    iput-object p1, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    const/4 v1, 0x1

    .line 69
    invoke-virtual {p1, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 70
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v7/widget/ForwardingListener;->mScaledTouchSlop:F

    .line 73
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/ForwardingListener;->mTapTimeout:I

    .line 76
    iget p1, p0, Landroid/support/v7/widget/ForwardingListener;->mTapTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr p1, v1

    div-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/ForwardingListener;->mLongPressTimeout:I

    return-void
.end method

.method private clearCallbacks()V
    .registers 3

    .line 215
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    .line 216
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 219
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    .line 220
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    iget-object p0, p0, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method

.method private onTouchForwarded(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 258
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 259
    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->getPopup()Landroid/support/v7/view/menu/ShowableListMenu;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_47

    .line 260
    invoke-interface {v1}, Landroid/support/v7/view/menu/ShowableListMenu;->isShowing()Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_47

    .line 264
    :cond_10
    invoke-interface {v1}, Landroid/support/v7/view/menu/ShowableListMenu;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/DropDownListView;

    if-eqz v1, :cond_46

    .line 265
    invoke-virtual {v1}, Landroid/support/v7/widget/DropDownListView;->isShown()Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_46

    .line 270
    :cond_1f
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 271
    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/ForwardingListener;->toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 272
    invoke-direct {p0, v1, v3}, Landroid/support/v7/widget/ForwardingListener;->toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 275
    iget p0, p0, Landroid/support/v7/widget/ForwardingListener;->mActivePointerId:I

    invoke-virtual {v1, v3, p0}, Landroid/support/v7/widget/DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result p0

    .line 276
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3e

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3e

    move p1, v0

    goto :goto_3f

    :cond_3e
    move p1, v2

    :goto_3f
    if-eqz p0, :cond_44

    if-eqz p1, :cond_44

    goto :goto_45

    :cond_44
    move v0, v2

    :goto_45
    return v0

    :cond_46
    :goto_46
    return v2

    :cond_47
    :goto_47
    return v2
.end method

.method private onTouchObserved(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 169
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 170
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 174
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_68

    goto :goto_66

    .line 190
    :pswitch_12
    iget v1, p0, Landroid/support/v7/widget/ForwardingListener;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ltz v1, :cond_66

    .line 192
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 193
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 196
    iget v1, p0, Landroid/support/v7/widget/ForwardingListener;->mScaledTouchSlop:F

    invoke-static {v0, v3, p1, v1}, Landroid/support/v7/widget/ForwardingListener;->pointInView(Landroid/view/View;FFF)Z

    move-result p1

    if-nez p1, :cond_66

    .line 197
    invoke-direct {p0}, Landroid/support/v7/widget/ForwardingListener;->clearCallbacks()V

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return p1

    .line 207
    :pswitch_36
    invoke-direct {p0}, Landroid/support/v7/widget/ForwardingListener;->clearCallbacks()V

    goto :goto_66

    .line 177
    :pswitch_3a
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/ForwardingListener;->mActivePointerId:I

    .line 179
    iget-object p1, p0, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-nez p1, :cond_4b

    .line 180
    new-instance p1, Landroid/support/v7/widget/ForwardingListener$DisallowIntercept;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/ForwardingListener$DisallowIntercept;-><init>(Landroid/support/v7/widget/ForwardingListener;)V

    iput-object p1, p0, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    .line 182
    :cond_4b
    iget-object p1, p0, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    iget v1, p0, Landroid/support/v7/widget/ForwardingListener;->mTapTimeout:I

    int-to-long v3, v1

    invoke-virtual {v0, p1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    iget-object p1, p0, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-nez p1, :cond_5e

    .line 185
    new-instance p1, Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/ForwardingListener$TriggerLongPress;-><init>(Landroid/support/v7/widget/ForwardingListener;)V

    iput-object p1, p0, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    .line 187
    :cond_5e
    iget-object p1, p0, Landroid/support/v7/widget/ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    iget p0, p0, Landroid/support/v7/widget/ForwardingListener;->mLongPressTimeout:I

    int-to-long v3, p0

    invoke-virtual {v0, p1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_66
    :goto_66
    return v2

    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_36
        :pswitch_12
        :pswitch_36
    .end packed-switch
.end method

.method private static pointInView(Landroid/view/View;FFF)Z
    .registers 6

    neg-float v0, p3

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_29

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_29

    .line 288
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float p1, p1, v0

    if-gez p1, :cond_29

    .line 289
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    add-float/2addr p0, p3

    cmpg-float p0, p2, p0

    if-gez p0, :cond_29

    const/4 p0, 0x1

    goto :goto_2a

    :cond_29
    const/4 p0, 0x0

    :goto_2a
    return p0
.end method

.method private toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 308
    iget-object p0, p0, Landroid/support/v7/widget/ForwardingListener;->mTmpLocation:[I

    .line 309
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x0

    .line 310
    aget p1, p0, p1

    int-to-float p1, p1

    const/4 v0, 0x1

    aget p0, p0, v0

    int-to-float p0, p0

    invoke-virtual {p2, p1, p0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return v0
.end method

.method private toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 297
    iget-object p0, p0, Landroid/support/v7/widget/ForwardingListener;->mTmpLocation:[I

    .line 298
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x0

    .line 299
    aget p1, p0, p1

    neg-int p1, p1

    int-to-float p1, p1

    const/4 v0, 0x1

    aget p0, p0, v0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p2, p1, p0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return v0
.end method


# virtual methods
.method public abstract getPopup()Landroid/support/v7/view/menu/ShowableListMenu;
.end method

.method protected onForwardingStarted()Z
    .registers 2

    .line 138
    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->getPopup()Landroid/support/v7/view/menu/ShowableListMenu;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 139
    invoke-interface {p0}, Landroid/support/v7/view/menu/ShowableListMenu;->isShowing()Z

    move-result v0

    if-nez v0, :cond_f

    .line 140
    invoke-interface {p0}, Landroid/support/v7/view/menu/ShowableListMenu;->show()V

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method protected onForwardingStopped()Z
    .registers 2

    .line 155
    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->getPopup()Landroid/support/v7/view/menu/ShowableListMenu;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 156
    invoke-interface {p0}, Landroid/support/v7/view/menu/ShowableListMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 157
    invoke-interface {p0}, Landroid/support/v7/view/menu/ShowableListMenu;->dismiss()V

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method onLongPress()V
    .registers 12

    .line 225
    invoke-direct {p0}, Landroid/support/v7/widget/ForwardingListener;->clearCallbacks()V

    .line 227
    iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    .line 228
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_37

    .line 234
    :cond_12
    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->onForwardingStarted()Z

    move-result v1

    if-nez v1, :cond_19

    return-void

    .line 239
    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 242
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v3, v5

    .line 243
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 245
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 247
    iput-boolean v2, p0, Landroid/support/v7/widget/ForwardingListener;->mForwarding:Z

    return-void

    :cond_37
    :goto_37
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13

    .line 93
    iget-boolean p1, p0, Landroid/support/v7/widget/ForwardingListener;->mForwarding:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_17

    .line 96
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result p2

    if-nez p2, :cond_15

    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->onForwardingStopped()Z

    move-result p2

    if-nez p2, :cond_13

    goto :goto_15

    :cond_13
    move p2, v0

    goto :goto_3d

    :cond_15
    :goto_15
    move p2, v1

    goto :goto_3d

    .line 98
    :cond_17
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_25

    invoke-virtual {p0}, Landroid/support/v7/widget/ForwardingListener;->onForwardingStarted()Z

    move-result p2

    if-eqz p2, :cond_25

    move p2, v1

    goto :goto_26

    :cond_25
    move p2, v0

    :goto_26
    if-eqz p2, :cond_3d

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v4

    .line 103
    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 105
    iget-object v3, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 106
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 110
    :cond_3d
    :goto_3d
    iput-boolean p2, p0, Landroid/support/v7/widget/ForwardingListener;->mForwarding:Z

    if-nez p2, :cond_43

    if-eqz p1, :cond_44

    :cond_43
    move v0, v1

    :cond_44
    return v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Landroid/support/v7/widget/ForwardingListener;->mForwarding:Z

    const/4 p1, -0x1

    .line 121
    iput p1, p0, Landroid/support/v7/widget/ForwardingListener;->mActivePointerId:I

    .line 123
    iget-object p1, p0, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz p1, :cond_11

    .line 124
    iget-object p1, p0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;

    iget-object p0, p0, Landroid/support/v7/widget/ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method
