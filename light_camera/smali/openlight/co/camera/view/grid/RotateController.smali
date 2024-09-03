.class public Lopenlight/co/camera/view/grid/RotateController;
.super Landroid/widget/RelativeLayout;
.source "RotateController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DIVIDE_TEMP:I = 0xa

.field private static final N:I = 0x1b

.field private static final W:I = 0x2a7

.field private static final startPosition:I = 0x71


# instance fields
.field bottom:I

.field centerPoint:I

.field currentX:I

.field currentY:I

.field display:Landroid/view/Display;

.field lastPoint:F

.field left:I

.field mContext:Landroid/content/Context;

.field private final mDrawBounds:Landroid/graphics/Rect;

.field mListener:Lopenlight/co/camera/listener/OnRotateImageListener;

.field mPaintSelected:Landroid/graphics/Paint;

.field paint:Landroid/graphics/Paint;

.field private relAngle:I

.field right:I

.field sizeLand:F

.field top:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lopenlight/co/camera/view/grid/RotateController;->lastPoint:F

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lopenlight/co/camera/view/grid/RotateController;->currentY:I

    .line 32
    iput v0, p0, Lopenlight/co/camera/view/grid/RotateController;->currentX:I

    .line 36
    iput p1, p0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lopenlight/co/camera/view/grid/RotateController;->relAngle:I

    .line 38
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/grid/RotateController;->mDrawBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 30
    iput p2, p0, Lopenlight/co/camera/view/grid/RotateController;->lastPoint:F

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lopenlight/co/camera/view/grid/RotateController;->currentY:I

    .line 32
    iput v0, p0, Lopenlight/co/camera/view/grid/RotateController;->currentX:I

    .line 36
    iput p2, p0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    const/4 p2, 0x0

    .line 37
    iput p2, p0, Lopenlight/co/camera/view/grid/RotateController;->relAngle:I

    .line 38
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lopenlight/co/camera/view/grid/RotateController;->mDrawBounds:Landroid/graphics/Rect;

    .line 46
    iput-object p1, p0, Lopenlight/co/camera/view/grid/RotateController;->mContext:Landroid/content/Context;

    .line 47
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/grid/RotateController;->paint:Landroid/graphics/Paint;

    .line 48
    iget-object p1, p0, Lopenlight/co/camera/view/grid/RotateController;->paint:Landroid/graphics/Paint;

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    iget-object p1, p0, Lopenlight/co/camera/view/grid/RotateController;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/grid/RotateController;->mPaintSelected:Landroid/graphics/Paint;

    .line 51
    iget-object p1, p0, Lopenlight/co/camera/view/grid/RotateController;->mPaintSelected:Landroid/graphics/Paint;

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    iget-object p1, p0, Lopenlight/co/camera/view/grid/RotateController;->mPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object p1, p0, Lopenlight/co/camera/view/grid/RotateController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/view/WindowManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 54
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/grid/RotateController;->display:Landroid/view/Display;

    .line 55
    invoke-virtual {p0, p0}, Lopenlight/co/camera/view/grid/RotateController;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lopenlight/co/camera/view/grid/RotateController;->lastPoint:F

    const/4 p2, -0x1

    .line 31
    iput p2, p0, Lopenlight/co/camera/view/grid/RotateController;->currentY:I

    .line 32
    iput p2, p0, Lopenlight/co/camera/view/grid/RotateController;->currentX:I

    .line 36
    iput p1, p0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lopenlight/co/camera/view/grid/RotateController;->relAngle:I

    .line 38
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/grid/RotateController;->mDrawBounds:Landroid/graphics/Rect;

    return-void
.end method

.method private calculateRotate(F)V
    .registers 3

    .line 284
    iget-object v0, p0, Lopenlight/co/camera/view/grid/RotateController;->mListener:Lopenlight/co/camera/listener/OnRotateImageListener;

    if-eqz v0, :cond_9

    .line 285
    iget-object p0, p0, Lopenlight/co/camera/view/grid/RotateController;->mListener:Lopenlight/co/camera/listener/OnRotateImageListener;

    invoke-interface {p0, p1}, Lopenlight/co/camera/listener/OnRotateImageListener;->setRotate(F)V

    :cond_9
    return-void
.end method

.method private isLandScape()Z
    .registers 2

    .line 82
    iget-object p0, p0, Lopenlight/co/camera/view/grid/RotateController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method


# virtual methods
.method public getRelAngle()I
    .registers 1

    .line 67
    iget p0, p0, Lopenlight/co/camera/view/grid/RotateController;->relAngle:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 98
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    const/high16 v1, 0x41d00000    # 26.0f

    .line 99
    iput v1, v0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    .line 100
    iget-object v1, v0, Lopenlight/co/camera/view/grid/RotateController;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 101
    invoke-direct/range {p0 .. p0}, Lopenlight/co/camera/view/grid/RotateController;->isLandScape()Z

    move-result v1

    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v10, -0x1

    const/16 v11, 0x1b

    const/4 v2, 0x0

    const/16 v12, 0xd

    const/high16 v13, 0x42e20000    # 113.0f

    if-eqz v1, :cond_104

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lopenlight/co/camera/view/grid/RotateController;->relAngle:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u00b0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 103
    iget-object v1, v0, Lopenlight/co/camera/view/grid/RotateController;->paint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, v0, Lopenlight/co/camera/view/grid/RotateController;->mDrawBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v14, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 104
    iget-object v1, v0, Lopenlight/co/camera/view/grid/RotateController;->mDrawBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v15

    move v6, v2

    :goto_49
    if-ge v6, v11, :cond_ee

    .line 107
    iget-object v1, v0, Lopenlight/co/camera/view/grid/RotateController;->paint:Landroid/graphics/Paint;

    const-string v2, "#baabab"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    iget-object v1, v0, Lopenlight/co/camera/view/grid/RotateController;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-ne v6, v12, :cond_a0

    const/4 v2, 0x0

    .line 110
    iget v1, v0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    int-to-float v5, v6

    mul-float/2addr v1, v5

    add-float v3, v1, v13

    add-int/lit8 v16, v6, 0x1

    add-int/lit8 v1, v16, 0x1e

    add-int/lit8 v1, v1, -0xa

    int-to-float v4, v1

    iget v1, v0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    mul-float/2addr v1, v5

    add-float v17, v1, v13

    iget-object v1, v0, Lopenlight/co/camera/view/grid/RotateController;->paint:Landroid/graphics/Paint;

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    move/from16 v19, v5

    move/from16 v5, v17

    move v9, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 111
    iget-object v1, v0, Lopenlight/co/camera/view/grid/RotateController;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v1, v0, Lopenlight/co/camera/view/grid/RotateController;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    mul-int/lit8 v16, v16, 0x2

    add-int/lit8 v16, v16, 0x1e

    add-int/lit8 v1, v16, -0xa

    int-to-float v1, v1

    .line 113
    iget v2, v0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    mul-float v2, v2, v19

    div-int/lit8 v3, v15, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, v13

    iget-object v3, v0, Lopenlight/co/camera/view/grid/RotateController;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v14, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_e8

    :cond_a0
    move v9, v6

    if-ge v9, v12, :cond_c5

    const/4 v2, 0x0

    .line 115
    iget v1, v0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    int-to-float v3, v9

    mul-float/2addr v1, v3

    add-float v4, v1, v13

    add-int/lit8 v6, v9, 0x1

    add-int/lit8 v6, v6, 0x14

    add-int/lit8 v6, v6, -0xa

    int-to-float v5, v6

    iget v1, v0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    mul-float/2addr v1, v3

    add-float v6, v1, v13

    iget-object v3, v0, Lopenlight/co/camera/view/grid/RotateController;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v16, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_e8

    :cond_c5
    if-le v9, v12, :cond_e8

    const/4 v2, 0x0

    .line 117
    iget v1, v0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    int-to-float v3, v9

    mul-float/2addr v1, v3

    add-float v4, v1, v13

    rsub-int/lit8 v1, v9, 0x1b

    add-int/lit8 v1, v1, 0x14

    add-int/lit8 v1, v1, -0xa

    int-to-float v5, v1

    iget v1, v0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    mul-float/2addr v1, v3

    add-float v6, v1, v13

    iget-object v3, v0, Lopenlight/co/camera/view/grid/RotateController;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v16, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_e8
    :goto_e8
    add-int/lit8 v6, v9, 0x1

    const/high16 v9, 0x40400000    # 3.0f

    goto/16 :goto_49

    .line 121
    :cond_ee
    iget v1, v0, Lopenlight/co/camera/view/grid/RotateController;->currentY:I

    if-eq v1, v10, :cond_20e

    const/4 v1, 0x0

    .line 122
    iget v2, v0, Lopenlight/co/camera/view/grid/RotateController;->currentY:I

    int-to-float v2, v2

    const/high16 v3, 0x42080000    # 34.0f

    iget v4, v0, Lopenlight/co/camera/view/grid/RotateController;->currentY:I

    int-to-float v4, v4

    iget-object v5, v0, Lopenlight/co/camera/view/grid/RotateController;->mPaintSelected:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_20e

    .line 125
    :cond_104
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v0, Lopenlight/co/camera/view/grid/RotateController;->relAngle:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lopenlight/co/camera/view/grid/RotateController;->relAngle:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u00b0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 127
    iget-object v3, v0, Lopenlight/co/camera/view/grid/RotateController;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, v0, Lopenlight/co/camera/view/grid/RotateController;->mDrawBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 128
    iget-object v1, v0, Lopenlight/co/camera/view/grid/RotateController;->mDrawBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 129
    iget-object v1, v0, Lopenlight/co/camera/view/grid/RotateController;->mDrawBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v15

    move v6, v2

    :goto_144
    if-ge v6, v11, :cond_1fa

    .line 132
    iget-object v1, v0, Lopenlight/co/camera/view/grid/RotateController;->paint:Landroid/graphics/Paint;

    const-string v2, "#baabab"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget-object v1, v0, Lopenlight/co/camera/view/grid/RotateController;->paint:Landroid/graphics/Paint;

    const/high16 v5, 0x40400000    # 3.0f

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-ne v6, v12, :cond_1a6

    .line 135
    iget v1, v0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    int-to-float v4, v6

    mul-float/2addr v1, v4

    add-float v2, v1, v13

    const/4 v3, 0x0

    iget v1, v0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    mul-float/2addr v1, v4

    add-float v16, v1, v13

    add-int/lit8 v17, v6, 0x1

    add-int/lit8 v1, v17, 0x1e

    add-int/lit8 v1, v1, -0xa

    int-to-float v1, v1

    iget-object v11, v0, Lopenlight/co/camera/view/grid/RotateController;->paint:Landroid/graphics/Paint;

    move/from16 v18, v1

    move-object/from16 v1, p1

    move/from16 v19, v4

    move/from16 v4, v16

    move/from16 v16, v5

    move/from16 v5, v18

    move v12, v6

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 136
    iget-object v1, v0, Lopenlight/co/camera/view/grid/RotateController;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v1, v0, Lopenlight/co/camera/view/grid/RotateController;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 138
    iget v1, v0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    mul-float v1, v1, v19

    div-int/lit8 v2, v14, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    add-float/2addr v1, v13

    mul-int/lit8 v17, v17, 0x2

    add-int v17, v17, v15

    add-int/lit8 v17, v17, 0x1e

    add-int/lit8 v2, v17, -0xa

    int-to-float v2, v2

    iget-object v3, v0, Lopenlight/co/camera/view/grid/RotateController;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1a1
    const/16 v11, 0xd

    :cond_1a3
    const/16 v17, 0x1b

    goto :goto_1f3

    :cond_1a6
    move/from16 v16, v5

    move v1, v12

    move v12, v6

    if-ge v12, v1, :cond_1cc

    .line 140
    iget v1, v0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    int-to-float v2, v12

    mul-float/2addr v1, v2

    add-float v3, v1, v13

    const/4 v4, 0x0

    iget v1, v0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    mul-float/2addr v1, v2

    add-float v5, v1, v13

    add-int/lit8 v6, v12, 0x1

    add-int/lit8 v6, v6, 0x14

    add-int/lit8 v6, v6, -0xa

    int-to-float v6, v6

    iget-object v11, v0, Lopenlight/co/camera/view/grid/RotateController;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1a1

    :cond_1cc
    move v11, v1

    if-le v12, v11, :cond_1a3

    .line 142
    iget v1, v0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    int-to-float v2, v12

    mul-float/2addr v1, v2

    add-float v3, v1, v13

    const/4 v4, 0x0

    iget v1, v0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    mul-float/2addr v1, v2

    add-float v5, v1, v13

    const/16 v17, 0x1b

    rsub-int/lit8 v1, v12, 0x1b

    add-int/lit8 v1, v1, 0x14

    add-int/lit8 v1, v1, -0xa

    int-to-float v6, v1

    iget-object v2, v0, Lopenlight/co/camera/view/grid/RotateController;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v18, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_1f3
    add-int/lit8 v6, v12, 0x1

    move v12, v11

    move/from16 v11, v17

    goto/16 :goto_144

    .line 147
    :cond_1fa
    iget v1, v0, Lopenlight/co/camera/view/grid/RotateController;->currentX:I

    if-eq v1, v10, :cond_20e

    .line 148
    iget v1, v0, Lopenlight/co/camera/view/grid/RotateController;->currentX:I

    int-to-float v1, v1

    const/4 v2, 0x0

    iget v3, v0, Lopenlight/co/camera/view/grid/RotateController;->currentX:I

    int-to-float v3, v3

    const/high16 v4, 0x42080000    # 34.0f

    iget-object v5, v0, Lopenlight/co/camera/view/grid/RotateController;->mPaintSelected:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_20e
    :goto_20e
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 87
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 88
    iput p2, p0, Lopenlight/co/camera/view/grid/RotateController;->left:I

    .line 89
    iput p3, p0, Lopenlight/co/camera/view/grid/RotateController;->top:I

    .line 90
    iput p4, p0, Lopenlight/co/camera/view/grid/RotateController;->right:I

    .line 91
    iput p5, p0, Lopenlight/co/camera/view/grid/RotateController;->bottom:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 11

    .line 179
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    and-int/2addr p1, v0

    const/4 v0, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/high16 v3, 0x42e20000    # 113.0f

    const/high16 v4, 0x41d00000    # 26.0f

    const/16 v5, 0x71

    packed-switch p1, :pswitch_data_1b4

    goto/16 :goto_1b1

    .line 181
    :pswitch_18
    iget p1, p0, Lopenlight/co/camera/view/grid/RotateController;->lastPoint:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_2f

    .line 182
    invoke-direct {p0}, Lopenlight/co/camera/view/grid/RotateController;->isLandScape()Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    goto :goto_2d

    :cond_29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    :goto_2d
    iput p1, p0, Lopenlight/co/camera/view/grid/RotateController;->lastPoint:F

    .line 184
    :cond_2f
    invoke-direct {p0}, Lopenlight/co/camera/view/grid/RotateController;->isLandScape()Z

    move-result p1

    const/high16 v6, 0x41200000    # 10.0f

    if-eqz p1, :cond_9d

    .line 185
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v7, p0, Lopenlight/co/camera/view/grid/RotateController;->lastPoint:F

    sub-float/2addr p1, v7

    .line 186
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v7, v6

    if-lez v6, :cond_99

    .line 187
    iget v6, p0, Lopenlight/co/camera/view/grid/RotateController;->currentY:I

    int-to-float v6, v6

    add-float/2addr v6, p1

    float-to-int v6, v6

    iput v6, p0, Lopenlight/co/camera/view/grid/RotateController;->currentY:I

    .line 188
    iget-object v6, p0, Lopenlight/co/camera/view/grid/RotateController;->mListener:Lopenlight/co/camera/listener/OnRotateImageListener;

    cmpl-float p1, p1, v2

    if-lez p1, :cond_56

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_58

    :cond_56
    const/high16 p1, -0x41000000    # -0.5f

    :goto_58
    invoke-interface {v6, p1}, Lopenlight/co/camera/listener/OnRotateImageListener;->setRotate(F)V

    .line 189
    iget p1, p0, Lopenlight/co/camera/view/grid/RotateController;->currentY:I

    if-ge p1, v5, :cond_61

    .line 190
    iput v5, p0, Lopenlight/co/camera/view/grid/RotateController;->currentY:I

    .line 192
    :cond_61
    iget p1, p0, Lopenlight/co/camera/view/grid/RotateController;->currentY:I

    int-to-float p1, p1

    iget v2, p0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    cmpl-float p1, p1, v2

    if-lez p1, :cond_73

    .line 193
    iget p1, p0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    mul-float/2addr p1, v4

    add-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, p0, Lopenlight/co/camera/view/grid/RotateController;->currentY:I

    .line 195
    :cond_73
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lopenlight/co/camera/view/grid/RotateController;->lastPoint:F

    .line 197
    iget p1, p0, Lopenlight/co/camera/view/grid/RotateController;->currentY:I

    sub-int/2addr p1, v5

    .line 198
    iget p2, p0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    mul-float/2addr p2, v4

    div-float/2addr p2, v1

    float-to-int p2, p2

    if-ge p1, p2, :cond_8b

    mul-int/lit8 p1, p1, 0x2d

    .line 200
    div-int/2addr p1, p2

    rsub-int/lit8 p1, p1, 0x2d

    iput p1, p0, Lopenlight/co/camera/view/grid/RotateController;->relAngle:I

    goto :goto_99

    :cond_8b
    if-ne p1, p2, :cond_90

    .line 202
    iput v0, p0, Lopenlight/co/camera/view/grid/RotateController;->relAngle:I

    goto :goto_99

    :cond_90
    mul-int/lit8 p1, p1, 0x5a

    mul-int/lit8 p2, p2, 0x2

    .line 203
    div-int/2addr p1, p2

    rsub-int/lit8 p1, p1, 0x2d

    iput p1, p0, Lopenlight/co/camera/view/grid/RotateController;->relAngle:I

    .line 205
    :cond_99
    :goto_99
    invoke-virtual {p0}, Lopenlight/co/camera/view/grid/RotateController;->transferYToX()V

    goto :goto_107

    .line 207
    :cond_9d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v7, p0, Lopenlight/co/camera/view/grid/RotateController;->lastPoint:F

    sub-float/2addr p1, v7

    .line 208
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v7, v6

    if-lez v6, :cond_104

    .line 209
    iget v6, p0, Lopenlight/co/camera/view/grid/RotateController;->currentX:I

    int-to-float v6, v6

    add-float/2addr v6, p1

    float-to-int v6, v6

    iput v6, p0, Lopenlight/co/camera/view/grid/RotateController;->currentX:I

    .line 210
    iget-object v6, p0, Lopenlight/co/camera/view/grid/RotateController;->mListener:Lopenlight/co/camera/listener/OnRotateImageListener;

    cmpl-float p1, p1, v2

    if-lez p1, :cond_bd

    const p1, 0x3dcccccd    # 0.1f

    goto :goto_c0

    :cond_bd
    const p1, -0x42333333    # -0.1f

    :goto_c0
    invoke-interface {v6, p1}, Lopenlight/co/camera/listener/OnRotateImageListener;->setRotate(F)V

    .line 211
    iget p1, p0, Lopenlight/co/camera/view/grid/RotateController;->currentX:I

    if-ge p1, v5, :cond_c9

    .line 212
    iput v5, p0, Lopenlight/co/camera/view/grid/RotateController;->currentX:I

    .line 214
    :cond_c9
    iget p1, p0, Lopenlight/co/camera/view/grid/RotateController;->currentX:I

    int-to-float p1, p1

    iget v2, p0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    cmpl-float p1, p1, v2

    if-lez p1, :cond_db

    .line 215
    iget p1, p0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    mul-float/2addr p1, v4

    add-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, p0, Lopenlight/co/camera/view/grid/RotateController;->currentX:I

    .line 217
    :cond_db
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lopenlight/co/camera/view/grid/RotateController;->lastPoint:F

    .line 219
    iget p1, p0, Lopenlight/co/camera/view/grid/RotateController;->currentX:I

    sub-int/2addr p1, v5

    .line 220
    iget p2, p0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    mul-float/2addr p2, v4

    div-float/2addr p2, v1

    float-to-int p2, p2

    if-ge p1, p2, :cond_f4

    mul-int/lit8 p1, p1, -0x2d

    .line 222
    div-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x2d

    neg-int p1, p1

    iput p1, p0, Lopenlight/co/camera/view/grid/RotateController;->relAngle:I

    goto :goto_104

    .line 223
    :cond_f4
    iget v1, p0, Lopenlight/co/camera/view/grid/RotateController;->currentX:I

    if-ne v1, p2, :cond_fb

    .line 224
    iput v0, p0, Lopenlight/co/camera/view/grid/RotateController;->relAngle:I

    goto :goto_104

    :cond_fb
    mul-int/lit8 p1, p1, 0x5a

    mul-int/lit8 p2, p2, 0x2

    .line 225
    div-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x2d

    iput p1, p0, Lopenlight/co/camera/view/grid/RotateController;->relAngle:I

    .line 227
    :cond_104
    :goto_104
    invoke-virtual {p0}, Lopenlight/co/camera/view/grid/RotateController;->transferXToY()V

    .line 229
    :goto_107
    invoke-virtual {p0}, Lopenlight/co/camera/view/grid/RotateController;->invalidate()V

    .line 230
    iget-object p1, p0, Lopenlight/co/camera/view/grid/RotateController;->mListener:Lopenlight/co/camera/listener/OnRotateImageListener;

    iget p0, p0, Lopenlight/co/camera/view/grid/RotateController;->relAngle:I

    int-to-float p0, p0

    invoke-interface {p1, p0}, Lopenlight/co/camera/listener/OnRotateImageListener;->setRotate(F)V

    goto/16 :goto_1b1

    .line 234
    :pswitch_114
    iput v2, p0, Lopenlight/co/camera/view/grid/RotateController;->lastPoint:F

    goto/16 :goto_1b1

    .line 237
    :pswitch_118
    invoke-direct {p0}, Lopenlight/co/camera/view/grid/RotateController;->isLandScape()Z

    move-result p1

    if-eqz p1, :cond_161

    .line 239
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lopenlight/co/camera/view/grid/RotateController;->currentY:I

    .line 240
    iget p1, p0, Lopenlight/co/camera/view/grid/RotateController;->currentY:I

    if-ge p1, v5, :cond_12b

    .line 241
    iput v5, p0, Lopenlight/co/camera/view/grid/RotateController;->currentY:I

    .line 243
    :cond_12b
    iget p1, p0, Lopenlight/co/camera/view/grid/RotateController;->currentY:I

    int-to-float p1, p1

    iget p2, p0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    mul-float/2addr p2, v4

    add-float/2addr p2, v3

    cmpl-float p1, p1, p2

    if-lez p1, :cond_13d

    .line 244
    iget p1, p0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    mul-float/2addr p1, v4

    add-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, p0, Lopenlight/co/camera/view/grid/RotateController;->currentY:I

    .line 246
    :cond_13d
    iget p1, p0, Lopenlight/co/camera/view/grid/RotateController;->currentY:I

    sub-int/2addr p1, v5

    .line 247
    iget p2, p0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    mul-float/2addr p2, v4

    div-float/2addr p2, v1

    float-to-int p2, p2

    if-ge p1, p2, :cond_14f

    mul-int/lit8 p1, p1, 0x2d

    .line 249
    div-int/2addr p1, p2

    rsub-int/lit8 p1, p1, 0x2d

    iput p1, p0, Lopenlight/co/camera/view/grid/RotateController;->relAngle:I

    goto :goto_15d

    :cond_14f
    if-ne p1, p2, :cond_154

    .line 251
    iput v0, p0, Lopenlight/co/camera/view/grid/RotateController;->relAngle:I

    goto :goto_15d

    :cond_154
    mul-int/lit8 p1, p1, 0x5a

    mul-int/lit8 p2, p2, 0x2

    .line 252
    div-int/2addr p1, p2

    rsub-int/lit8 p1, p1, 0x2d

    iput p1, p0, Lopenlight/co/camera/view/grid/RotateController;->relAngle:I

    .line 253
    :goto_15d
    invoke-virtual {p0}, Lopenlight/co/camera/view/grid/RotateController;->transferYToX()V

    goto :goto_1a6

    .line 256
    :cond_161
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lopenlight/co/camera/view/grid/RotateController;->currentX:I

    .line 257
    iget p1, p0, Lopenlight/co/camera/view/grid/RotateController;->currentX:I

    if-ge p1, v5, :cond_16e

    .line 258
    iput v5, p0, Lopenlight/co/camera/view/grid/RotateController;->currentX:I

    .line 260
    :cond_16e
    iget p1, p0, Lopenlight/co/camera/view/grid/RotateController;->currentX:I

    int-to-float p1, p1

    iget p2, p0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    mul-float/2addr p2, v4

    add-float/2addr p2, v3

    cmpl-float p1, p1, p2

    if-lez p1, :cond_180

    .line 261
    iget p1, p0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    mul-float/2addr p1, v4

    add-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, p0, Lopenlight/co/camera/view/grid/RotateController;->currentX:I

    .line 264
    :cond_180
    iget p1, p0, Lopenlight/co/camera/view/grid/RotateController;->currentX:I

    sub-int/2addr p1, v5

    .line 265
    iget p2, p0, Lopenlight/co/camera/view/grid/RotateController;->sizeLand:F

    mul-float/2addr p2, v4

    div-float/2addr p2, v1

    float-to-int p2, p2

    if-ge p1, p2, :cond_193

    mul-int/lit8 p1, p1, -0x2d

    .line 267
    div-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x2d

    neg-int p1, p1

    iput p1, p0, Lopenlight/co/camera/view/grid/RotateController;->relAngle:I

    goto :goto_1a3

    .line 268
    :cond_193
    iget v1, p0, Lopenlight/co/camera/view/grid/RotateController;->currentX:I

    if-ne v1, p2, :cond_19a

    .line 269
    iput v0, p0, Lopenlight/co/camera/view/grid/RotateController;->relAngle:I

    goto :goto_1a3

    :cond_19a
    mul-int/lit8 p1, p1, 0x5a

    mul-int/lit8 p2, p2, 0x2

    .line 270
    div-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x2d

    iput p1, p0, Lopenlight/co/camera/view/grid/RotateController;->relAngle:I

    .line 271
    :goto_1a3
    invoke-virtual {p0}, Lopenlight/co/camera/view/grid/RotateController;->transferXToY()V

    .line 274
    :goto_1a6
    invoke-virtual {p0}, Lopenlight/co/camera/view/grid/RotateController;->invalidate()V

    .line 275
    iget-object p1, p0, Lopenlight/co/camera/view/grid/RotateController;->mListener:Lopenlight/co/camera/listener/OnRotateImageListener;

    iget p0, p0, Lopenlight/co/camera/view/grid/RotateController;->relAngle:I

    int-to-float p0, p0

    invoke-interface {p1, p0}, Lopenlight/co/camera/listener/OnRotateImageListener;->setRotate(F)V

    :goto_1b1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_1b4
    .packed-switch 0x0
        :pswitch_118
        :pswitch_114
        :pswitch_18
    .end packed-switch
.end method

.method public resetAngel()V
    .registers 2

    const/16 v0, 0x1c5

    .line 171
    iput v0, p0, Lopenlight/co/camera/view/grid/RotateController;->currentX:I

    .line 172
    iput v0, p0, Lopenlight/co/camera/view/grid/RotateController;->currentY:I

    const/4 v0, 0x0

    .line 173
    iput v0, p0, Lopenlight/co/camera/view/grid/RotateController;->relAngle:I

    .line 174
    invoke-virtual {p0}, Lopenlight/co/camera/view/grid/RotateController;->invalidate()V

    return-void
.end method

.method public setListener(Lopenlight/co/camera/listener/OnRotateImageListener;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lopenlight/co/camera/view/grid/RotateController;->mListener:Lopenlight/co/camera/listener/OnRotateImageListener;

    return-void
.end method

.method public setRelAngle(I)V
    .registers 2

    .line 71
    iput p1, p0, Lopenlight/co/camera/view/grid/RotateController;->relAngle:I

    .line 72
    invoke-virtual {p0}, Lopenlight/co/camera/view/grid/RotateController;->invalidate()V

    return-void
.end method

.method public transferXToY()V
    .registers 2

    .line 158
    iget v0, p0, Lopenlight/co/camera/view/grid/RotateController;->currentX:I

    rsub-int v0, v0, 0x38a

    iput v0, p0, Lopenlight/co/camera/view/grid/RotateController;->currentY:I

    return-void
.end method

.method public transferYToX()V
    .registers 2

    .line 166
    iget v0, p0, Lopenlight/co/camera/view/grid/RotateController;->currentY:I

    rsub-int v0, v0, 0x38a

    iput v0, p0, Lopenlight/co/camera/view/grid/RotateController;->currentX:I

    return-void
.end method
