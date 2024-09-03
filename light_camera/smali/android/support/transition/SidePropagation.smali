.class public Landroid/support/transition/SidePropagation;
.super Landroid/support/transition/VisibilityPropagation;
.source "SidePropagation.java"


# instance fields
.field private mPropagationSpeed:F

.field private mSide:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/support/transition/VisibilityPropagation;-><init>()V

    const/high16 v0, 0x40400000    # 3.0f

    .line 35
    iput v0, p0, Landroid/support/transition/SidePropagation;->mPropagationSpeed:F

    const/16 v0, 0x50

    .line 36
    iput v0, p0, Landroid/support/transition/SidePropagation;->mSide:I

    return-void
.end method

.method private distance(Landroid/view/View;IIIIIIII)I
    .registers 16

    .line 124
    iget v0, p0, Landroid/support/transition/SidePropagation;->mSide:I

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x800003

    if-ne v0, v5, :cond_19

    .line 125
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    if-ne p0, v4, :cond_12

    goto :goto_13

    :cond_12
    move v4, v3

    :goto_13
    if-eqz v4, :cond_17

    :cond_15
    move p0, v1

    goto :goto_2d

    :cond_17
    :goto_17
    move p0, v2

    goto :goto_2d

    .line 128
    :cond_19
    iget v0, p0, Landroid/support/transition/SidePropagation;->mSide:I

    const v5, 0x800005

    if-ne v0, v5, :cond_2b

    .line 129
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    if-ne p0, v4, :cond_27

    goto :goto_28

    :cond_27
    move v4, v3

    :goto_28
    if-eqz v4, :cond_15

    goto :goto_17

    .line 133
    :cond_2b
    iget p0, p0, Landroid/support/transition/SidePropagation;->mSide:I

    :goto_2d
    if-eq p0, v2, :cond_55

    if-eq p0, v1, :cond_4c

    const/16 p1, 0x30

    if-eq p0, p1, :cond_43

    const/16 p1, 0x50

    if-eq p0, p1, :cond_3a

    goto :goto_5d

    :cond_3a
    sub-int/2addr p3, p7

    sub-int/2addr p4, p2

    .line 147
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int v3, p3, p0

    goto :goto_5d

    :cond_43
    sub-int/2addr p9, p3

    sub-int/2addr p4, p2

    .line 141
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int v3, p9, p0

    goto :goto_5d

    :cond_4c
    sub-int/2addr p2, p6

    sub-int/2addr p5, p3

    .line 144
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int v3, p2, p0

    goto :goto_5d

    :cond_55
    sub-int/2addr p8, p2

    sub-int/2addr p5, p3

    .line 138
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int v3, p8, p0

    :goto_5d
    return v3
.end method

.method private getMaxDistance(Landroid/view/ViewGroup;)I
    .registers 3

    .line 154
    iget p0, p0, Landroid/support/transition/SidePropagation;->mSide:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_17

    const/4 v0, 0x5

    if-eq p0, v0, :cond_17

    const v0, 0x800003

    if-eq p0, v0, :cond_17

    const v0, 0x800005

    if-eq p0, v0, :cond_17

    .line 161
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    return p0

    .line 159
    :cond_17
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    return p0
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroid/support/transition/Transition;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)J
    .registers 22

    move-object/from16 v10, p0

    move-object/from16 v0, p3

    const-wide/16 v11, 0x0

    if-nez v0, :cond_b

    if-nez p4, :cond_b

    return-wide v11

    .line 79
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/support/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz p4, :cond_1d

    .line 81
    invoke-virtual {v10, v0}, Landroid/support/transition/SidePropagation;->getViewVisibility(Landroid/support/transition/TransitionValues;)I

    move-result v4

    if-nez v4, :cond_19

    goto :goto_1d

    :cond_19
    move-object/from16 v0, p4

    move v13, v3

    goto :goto_1f

    :cond_1d
    :goto_1d
    const/4 v1, -0x1

    move v13, v1

    .line 88
    :goto_1f
    invoke-virtual {v10, v0}, Landroid/support/transition/SidePropagation;->getViewX(Landroid/support/transition/TransitionValues;)I

    move-result v4

    .line 89
    invoke-virtual {v10, v0}, Landroid/support/transition/SidePropagation;->getViewY(Landroid/support/transition/TransitionValues;)I

    move-result v5

    const/4 v0, 0x2

    .line 91
    new-array v1, v0, [I

    move-object/from16 v14, p1

    .line 92
    invoke-virtual {v14, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v6, 0x0

    .line 93
    aget v6, v1, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v6, v7

    .line 94
    aget v1, v1, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v7, v1, v3

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    add-int v8, v6, v1

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    add-int v9, v7, v1

    if-eqz v2, :cond_61

    .line 101
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 102
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    move v15, v0

    move/from16 v16, v1

    goto :goto_6a

    :cond_61
    add-int v1, v6, v8

    .line 104
    div-int/2addr v1, v0

    add-int v2, v7, v9

    .line 105
    div-int/2addr v2, v0

    move v15, v1

    move/from16 v16, v2

    :goto_6a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    move v3, v5

    move v4, v15

    move/from16 v5, v16

    .line 108
    invoke-direct/range {v0 .. v9}, Landroid/support/transition/SidePropagation;->distance(Landroid/view/View;IIIIIIII)I

    move-result v0

    int-to-float v0, v0

    .line 110
    invoke-direct/range {p0 .. p1}, Landroid/support/transition/SidePropagation;->getMaxDistance(Landroid/view/ViewGroup;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/support/transition/Transition;->getDuration()J

    move-result-wide v1

    cmp-long v3, v1, v11

    if-gez v3, :cond_88

    const-wide/16 v1, 0x12c

    :cond_88
    int-to-long v3, v13

    mul-long/2addr v1, v3

    long-to-float v1, v1

    .line 118
    iget v2, v10, Landroid/support/transition/SidePropagation;->mPropagationSpeed:F

    div-float/2addr v1, v2

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public setPropagationSpeed(F)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_8

    .line 69
    iput p1, p0, Landroid/support/transition/SidePropagation;->mPropagationSpeed:F

    return-void

    .line 67
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "propagationSpeed may not be 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSide(I)V
    .registers 2

    .line 50
    iput p1, p0, Landroid/support/transition/SidePropagation;->mSide:I

    return-void
.end method
