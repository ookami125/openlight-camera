.class public Lopenlight/co/camera/view/rotate/RotateLayout;
.super Landroid/view/ViewGroup;
.source "RotateLayout.java"


# instance fields
.field private mAngle:I

.field private mAngleChanged:Z

.field private final mChildTouchPoint:[F

.field private final mF1TempRect:Landroid/graphics/RectF;

.field private final mF2TempRect:Landroid/graphics/RectF;

.field private final mRotateMatrix:Landroid/graphics/Matrix;

.field private final mRotationViewRect:Landroid/graphics/Rect;

.field private final mViewTouchPoint:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/view/rotate/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lopenlight/co/camera/view/rotate/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mRotateMatrix:Landroid/graphics/Matrix;

    .line 28
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mRotationViewRect:Landroid/graphics/Rect;

    .line 30
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mF1TempRect:Landroid/graphics/RectF;

    .line 31
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mF2TempRect:Landroid/graphics/RectF;

    const/4 p3, 0x2

    .line 33
    new-array v0, p3, [F

    iput-object v0, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mViewTouchPoint:[F

    .line 34
    new-array p3, p3, [F

    iput-object p3, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mChildTouchPoint:[F

    const/4 p3, 0x1

    .line 36
    iput-boolean p3, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mAngleChanged:Z

    .line 49
    sget-object p3, Lopenlight/co/camera/R$styleable;->RotateLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 50
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 51
    invoke-static {p3}, Lopenlight/co/camera/view/rotate/RotateLayout;->fixAngle(I)I

    move-result p3

    iput p3, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mAngle:I

    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    invoke-virtual {p0, p2}, Lopenlight/co/camera/view/rotate/RotateLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private static fixAngle(I)I
    .registers 1

    .line 162
    div-int/lit8 p0, p0, 0x5a

    mul-int/lit8 p0, p0, 0x5a

    return p0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 131
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 132
    iget v0, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mAngle:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lopenlight/co/camera/view/rotate/RotateLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lopenlight/co/camera/view/rotate/RotateLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 133
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 134
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 145
    iget-object v0, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mViewTouchPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 146
    iget-object v0, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mViewTouchPoint:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 148
    iget-object v0, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mRotateMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mChildTouchPoint:[F

    iget-object v4, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mViewTouchPoint:[F

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 150
    iget-object v0, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mChildTouchPoint:[F

    aget v0, v0, v2

    iget-object v1, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mChildTouchPoint:[F

    aget v1, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 151
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 152
    iget-object v1, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mViewTouchPoint:[F

    aget v1, v1, v2

    iget-object p0, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mViewTouchPoint:[F

    aget p0, p0, v3

    invoke-virtual {p1, v1, p0}, Landroid/view/MotionEvent;->setLocation(FF)V

    return v0
.end method

.method public getAngle()I
    .registers 1

    .line 61
    iget p0, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mAngle:I

    return p0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .line 82
    invoke-virtual {p0}, Lopenlight/co/camera/view/rotate/RotateLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/rotate/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 3

    .line 139
    invoke-virtual {p0}, Lopenlight/co/camera/view/rotate/RotateLayout;->invalidate()V

    .line 140
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object p0

    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .line 112
    iget-boolean v0, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mAngleChanged:Z

    if-nez v0, :cond_6

    if-eqz p1, :cond_2f

    .line 113
    :cond_6
    iget-object p1, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mF1TempRect:Landroid/graphics/RectF;

    .line 114
    iget-object v0, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mF2TempRect:Landroid/graphics/RectF;

    sub-int/2addr p4, p2

    int-to-float p2, p4

    sub-int/2addr p5, p3

    int-to-float p3, p5

    const/4 p4, 0x0

    .line 115
    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 116
    iget-object p2, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mRotateMatrix:Landroid/graphics/Matrix;

    iget p3, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mAngle:I

    int-to-float p3, p3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p4

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p5

    invoke-virtual {p2, p3, p4, p5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 117
    iget-object p2, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 118
    iget-object p1, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mRotationViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    const/4 p1, 0x0

    .line 119
    iput-boolean p1, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mAngleChanged:Z

    .line 122
    :cond_2f
    invoke-virtual {p0}, Lopenlight/co/camera/view/rotate/RotateLayout;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_48

    .line 124
    iget-object p2, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mRotationViewRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mRotationViewRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget-object p4, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mRotationViewRect:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mRotationViewRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/view/View;->layout(IIII)V

    :cond_48
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 91
    invoke-virtual {p0}, Lopenlight/co/camera/view/rotate/RotateLayout;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 93
    iget v1, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mAngle:I

    rem-int/lit16 v1, v1, 0xb4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_29

    .line 95
    invoke-virtual {p0, v0, p2, p1}, Lopenlight/co/camera/view/rotate/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, p1}, Lopenlight/co/camera/view/rotate/RotateLayout;->resolveSize(II)I

    move-result p1

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, p2}, Lopenlight/co/camera/view/rotate/RotateLayout;->resolveSize(II)I

    move-result p2

    .line 96
    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/view/rotate/RotateLayout;->setMeasuredDimension(II)V

    goto :goto_43

    .line 100
    :cond_29
    invoke-virtual {p0, v0, p1, p2}, Lopenlight/co/camera/view/rotate/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 102
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, p1}, Lopenlight/co/camera/view/rotate/RotateLayout;->resolveSize(II)I

    move-result p1

    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, p2}, Lopenlight/co/camera/view/rotate/RotateLayout;->resolveSize(II)I

    move-result p2

    .line 101
    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/view/rotate/RotateLayout;->setMeasuredDimension(II)V

    goto :goto_43

    .line 106
    :cond_40
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    :goto_43
    return-void
.end method

.method public setAngle(I)V
    .registers 3

    .line 70
    invoke-static {p1}, Lopenlight/co/camera/view/rotate/RotateLayout;->fixAngle(I)I

    move-result p1

    .line 71
    iget v0, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mAngle:I

    if-eq v0, p1, :cond_10

    .line 72
    iput p1, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mAngle:I

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lopenlight/co/camera/view/rotate/RotateLayout;->mAngleChanged:Z

    .line 74
    invoke-virtual {p0}, Lopenlight/co/camera/view/rotate/RotateLayout;->requestLayout()V

    :cond_10
    return-void
.end method
