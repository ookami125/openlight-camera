.class final Landroid/support/v4/widget/SwipeProgressBar;
.super Ljava/lang/Object;
.source "SwipeProgressBar.java"


# static fields
.field private static final ANIMATION_DURATION_MS:I = 0x7d0

.field private static final COLOR1:I = -0x4d000000

.field private static final COLOR2:I = -0x80000000

.field private static final COLOR3:I = 0x4d000000

.field private static final COLOR4:I = 0x1a000000

.field private static final FINISH_ANIMATION_DURATION_MS:I = 0x3e8

.field private static final INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private final mClipRect:Landroid/graphics/RectF;

.field private mColor1:I

.field private mColor2:I

.field private mColor3:I

.field private mColor4:I

.field private mFinishTime:J

.field private final mPaint:Landroid/graphics/Paint;

.field private mParent:Landroid/view/View;

.field private mRunning:Z

.field private mStartTime:J

.field private mTriggerPercentage:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    .line 71
    iput-object p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    const/high16 p1, -0x4d000000

    .line 72
    iput p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    const/high16 p1, -0x80000000

    .line 73
    iput p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    const/high16 p1, 0x4d000000    # 1.3421773E8f

    .line 74
    iput p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    const/high16 p1, 0x1a000000

    .line 75
    iput p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;FFIF)V
    .registers 7

    .line 258
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 260
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 261
    sget-object p3, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {p3, p5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p3

    .line 262
    invoke-virtual {p1, p3, p3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 263
    iget-object p0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 264
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawTrigger(Landroid/graphics/Canvas;II)V
    .registers 6

    .line 244
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p2, p2

    int-to-float p3, p3

    .line 245
    iget v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    mul-float/2addr v0, p2

    iget-object p0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)V
    .registers 23

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 139
    iget-object v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 140
    iget-object v1, v6, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 141
    div-int/lit8 v8, v0, 0x2

    .line 142
    div-int/lit8 v9, v1, 0x2

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 145
    iget-object v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 147
    iget-boolean v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    const-wide/16 v2, 0x0

    const/4 v11, 0x0

    if-nez v0, :cond_3f

    iget-wide v4, v6, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    cmp-long v0, v4, v2

    if-lez v0, :cond_2b

    goto :goto_3f

    .line 236
    :cond_2b
    iget v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_17e

    iget v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_17e

    .line 237
    invoke-direct {v6, v7, v8, v9}, Landroid/support/v4/widget/SwipeProgressBar;->drawTrigger(Landroid/graphics/Canvas;II)V

    goto/16 :goto_17e

    .line 148
    :cond_3f
    :goto_3f
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    .line 149
    iget-wide v12, v6, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    sub-long v12, v4, v12

    const-wide/16 v14, 0x7d0

    rem-long/2addr v12, v14

    .line 150
    iget-wide v2, v6, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    sub-long v2, v4, v2

    div-long/2addr v2, v14

    long-to-float v0, v12

    const/high16 v12, 0x41a00000    # 20.0f

    div-float v12, v0, v12

    .line 155
    iget-boolean v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    const/4 v13, 0x0

    const/high16 v14, 0x42c80000    # 100.0f

    if-nez v0, :cond_8f

    move/from16 v18, v12

    .line 158
    iget-wide v11, v6, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    sub-long v11, v4, v11

    const-wide/16 v19, 0x3e8

    cmp-long v0, v11, v19

    if-ltz v0, :cond_6c

    const-wide/16 v11, 0x0

    .line 159
    iput-wide v11, v6, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    return-void

    .line 166
    :cond_6c
    iget-wide v11, v6, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    sub-long/2addr v4, v11

    rem-long v4, v4, v19

    long-to-float v0, v4

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v0, v4

    div-float/2addr v0, v14

    int-to-float v4, v8

    .line 170
    sget-object v5, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v4

    .line 171
    iget-object v5, v6, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    sub-float v11, v4, v0

    add-float/2addr v4, v0

    int-to-float v0, v1

    const/4 v1, 0x0

    invoke-virtual {v5, v11, v1, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 172
    iget-object v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v0, v13, v13}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    const/4 v13, 0x1

    goto :goto_91

    :cond_8f
    move/from16 v18, v12

    :goto_91
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    const/high16 v11, 0x42960000    # 75.0f

    const/high16 v12, 0x42480000    # 50.0f

    const/high16 v15, 0x41c80000    # 25.0f

    if-nez v0, :cond_a4

    .line 182
    iget v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_a2
    const/4 v0, 0x0

    goto :goto_d5

    :cond_a4
    const/4 v0, 0x0

    cmpl-float v1, v18, v0

    if-ltz v1, :cond_b3

    cmpg-float v0, v18, v15

    if-gez v0, :cond_b3

    .line 185
    iget v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_a2

    :cond_b3
    cmpl-float v0, v18, v15

    if-ltz v0, :cond_c1

    cmpg-float v0, v18, v12

    if-gez v0, :cond_c1

    .line 187
    iget v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_a2

    :cond_c1
    cmpl-float v0, v18, v12

    if-ltz v0, :cond_cf

    cmpg-float v0, v18, v11

    if-gez v0, :cond_cf

    .line 189
    iget v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_a2

    .line 191
    :cond_cf
    iget v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_a2

    :goto_d5
    cmpl-float v16, v18, v0

    const/high16 v17, 0x40000000    # 2.0f

    if-ltz v16, :cond_f0

    cmpg-float v0, v18, v15

    if-gtz v0, :cond_f0

    add-float v0, v18, v15

    mul-float v0, v0, v17

    div-float v5, v0, v14

    int-to-float v2, v8

    int-to-float v3, v9

    .line 203
    iget v4, v6, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    :cond_f0
    if-ltz v16, :cond_105

    cmpg-float v0, v18, v12

    if-gtz v0, :cond_105

    mul-float v0, v18, v17

    div-float v5, v0, v14

    int-to-float v2, v8

    int-to-float v3, v9

    .line 207
    iget v4, v6, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    :cond_105
    cmpl-float v0, v18, v15

    if-ltz v0, :cond_11e

    cmpg-float v0, v18, v11

    if-gtz v0, :cond_11e

    sub-float v0, v18, v15

    mul-float v0, v0, v17

    div-float v5, v0, v14

    int-to-float v2, v8

    int-to-float v3, v9

    .line 211
    iget v4, v6, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    :cond_11e
    cmpl-float v0, v18, v12

    if-ltz v0, :cond_137

    cmpg-float v0, v18, v14

    if-gtz v0, :cond_137

    sub-float v12, v18, v12

    mul-float v12, v12, v17

    div-float v5, v12, v14

    int-to-float v2, v8

    int-to-float v3, v9

    .line 215
    iget v4, v6, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    :cond_137
    cmpl-float v0, v18, v11

    if-ltz v0, :cond_150

    cmpg-float v0, v18, v14

    if-gtz v0, :cond_150

    sub-float v12, v18, v11

    mul-float v12, v12, v17

    div-float v5, v12, v14

    int-to-float v2, v8

    int-to-float v3, v9

    .line 219
    iget v4, v6, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    .line 221
    :cond_150
    iget v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_169

    if-eqz v13, :cond_169

    .line 226
    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 227
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 228
    iget-object v1, v6, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 229
    invoke-direct {v6, v7, v8, v9}, Landroid/support/v4/widget/SwipeProgressBar;->drawTrigger(Landroid/graphics/Canvas;II)V

    move v10, v0

    .line 232
    :cond_169
    iget-object v0, v6, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    iget-object v1, v6, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, v6, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, v6, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, v6, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    .line 240
    :cond_17e
    :goto_17e
    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method isRunning()Z
    .registers 5

    .line 135
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-nez v0, :cond_f

    iget-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method setBounds(IIII)V
    .registers 6

    .line 271
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 272
    iget-object p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 273
    iget-object p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 274
    iget-object p0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method setColorScheme(IIII)V
    .registers 5

    .line 89
    iput p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    .line 90
    iput p2, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    .line 91
    iput p3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    .line 92
    iput p4, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    return-void
.end method

.method setTriggerPercentage(F)V
    .registers 5

    .line 101
    iput p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    const-wide/16 v0, 0x0

    .line 102
    iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    .line 103
    iget-object p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, v0, v1, v2, p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    return-void
.end method

.method start()V
    .registers 3

    .line 111
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-nez v0, :cond_15

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    .line 113
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    .line 115
    iget-object p0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_15
    return-void
.end method

.method stop()V
    .registers 3

    .line 123
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    .line 124
    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    .line 125
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    .line 127
    iget-object p0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_15
    return-void
.end method
