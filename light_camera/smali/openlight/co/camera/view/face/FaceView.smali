.class public Lopenlight/co/camera/view/face/FaceView;
.super Landroid/view/View;
.source "FaceView.java"


# static fields
.field private static final DISPLAY_FACE_ID:Z

.field public static final DISPLAY_FACE_RECTANGLES:Z

.field private static final DISPLAY_FACE_SCORE:Z

.field private static final TAG:Ljava/lang/String; = "FaceView"


# instance fields
.field private final mCurrentFaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultPaint:Landroid/graphics/Paint;

.field private final mDefaultTypeface:Landroid/graphics/Typeface;

.field private final mIdRenderInset:I

.field private final mRectangleCornerRadius:I

.field private final mReusedRectF:Landroid/graphics/RectF;

.field private final mTrackedFacePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v0

    const-string v1, "show.face.score"

    invoke-virtual {v0, v1}, Lopenlight/co/lib/utils/FeatureManager;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lopenlight/co/camera/view/face/FaceView;->DISPLAY_FACE_SCORE:Z

    .line 35
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v0

    const-string v1, "show.face.id"

    invoke-virtual {v0, v1}, Lopenlight/co/lib/utils/FeatureManager;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lopenlight/co/camera/view/face/FaceView;->DISPLAY_FACE_ID:Z

    .line 39
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v0

    const-string v1, "show.face.rect"

    invoke-virtual {v0, v1}, Lopenlight/co/lib/utils/FeatureManager;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lopenlight/co/camera/view/face/FaceView;->DISPLAY_FACE_RECTANGLES:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/view/face/FaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lopenlight/co/camera/view/face/FaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-static {}, Lopenlight/co/camera/view/cache/FontCache;->get()Lopenlight/co/camera/view/cache/FontCache;

    move-result-object p2

    invoke-virtual {p2}, Lopenlight/co/camera/view/cache/FontCache;->getHarmoniaRegular()Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/face/FaceView;->mDefaultTypeface:Landroid/graphics/Typeface;

    .line 43
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lopenlight/co/camera/view/face/FaceView;->mCurrentFaces:Ljava/util/List;

    .line 45
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lopenlight/co/camera/view/face/FaceView;->mReusedRectF:Landroid/graphics/RectF;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060054

    .line 71
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    const v0, 0x7f060055

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    const v0, 0x7f0700c4

    .line 75
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lopenlight/co/camera/view/face/FaceView;->mRectangleCornerRadius:I

    const v0, 0x7f0700c3

    .line 78
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lopenlight/co/camera/view/face/FaceView;->mIdRenderInset:I

    const v0, 0x7f0700c5

    .line 80
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const v1, 0x7f0700c6

    .line 82
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    .line 85
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lopenlight/co/camera/view/face/FaceView;->mDefaultPaint:Landroid/graphics/Paint;

    .line 86
    iget-object v1, p0, Lopenlight/co/camera/view/face/FaceView;->mDefaultPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v1, p3, v0, p2}, Lopenlight/co/camera/view/face/FaceView;->setupPaintAttributes(Landroid/graphics/Paint;IFF)V

    .line 88
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lopenlight/co/camera/view/face/FaceView;->mTrackedFacePaint:Landroid/graphics/Paint;

    .line 89
    iget-object p3, p0, Lopenlight/co/camera/view/face/FaceView;->mTrackedFacePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p3, p1, v0, p2}, Lopenlight/co/camera/view/face/FaceView;->setupPaintAttributes(Landroid/graphics/Paint;IFF)V

    return-void
.end method

.method private setupPaintAttributes(Landroid/graphics/Paint;IFF)V
    .registers 5

    .line 103
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p2, 0x1

    .line 104
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    iget-object p0, p0, Lopenlight/co/camera/view/face/FaceView;->mDefaultTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 108
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 134
    iget-object v0, p0, Lopenlight/co/camera/view/face/FaceView;->mCurrentFaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 135
    iget-object v0, p0, Lopenlight/co/camera/view/face/FaceView;->mCurrentFaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 136
    invoke-virtual {p0}, Lopenlight/co/camera/view/face/FaceView;->invalidate()V

    :cond_10
    return-void
.end method

.method public clearAndDrawAllRectangles(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;)V"
        }
    .end annotation

    .line 119
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lopenlight/co/camera/view/face/FaceView;->mCurrentFaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_17

    .line 120
    iget-object p1, p0, Lopenlight/co/camera/view/face/FaceView;->mCurrentFaces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 121
    invoke-virtual {p0}, Lopenlight/co/camera/view/face/FaceView;->invalidate()V

    goto :goto_2a

    .line 122
    :cond_17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2a

    .line 123
    iget-object v0, p0, Lopenlight/co/camera/view/face/FaceView;->mCurrentFaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 124
    iget-object v0, p0, Lopenlight/co/camera/view/face/FaceView;->mCurrentFaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    invoke-virtual {p0}, Lopenlight/co/camera/view/face/FaceView;->invalidate()V

    :cond_2a
    :goto_2a
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 145
    iget-object v0, p0, Lopenlight/co/camera/view/face/FaceView;->mCurrentFaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/Face;

    if-eqz v1, :cond_19

    .line 150
    iget-object v1, p0, Lopenlight/co/camera/view/face/FaceView;->mTrackedFacePaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    goto :goto_1e

    .line 153
    :cond_19
    iget-object v3, p0, Lopenlight/co/camera/view/face/FaceView;->mDefaultPaint:Landroid/graphics/Paint;

    move-object v8, v3

    move v3, v1

    move-object v1, v8

    .line 159
    :goto_1e
    iget-object v4, p0, Lopenlight/co/camera/view/face/FaceView;->mReusedRectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 160
    iget-object v4, p0, Lopenlight/co/camera/view/face/FaceView;->mReusedRectF:Landroid/graphics/RectF;

    iget v5, p0, Lopenlight/co/camera/view/face/FaceView;->mRectangleCornerRadius:I

    int-to-float v5, v5

    iget v6, p0, Lopenlight/co/camera/view/face/FaceView;->mRectangleCornerRadius:I

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 165
    sget-boolean v4, Lopenlight/co/camera/view/face/FaceView;->DISPLAY_FACE_SCORE:Z

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v4, :cond_55

    .line 166
    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 167
    iget-object v6, p0, Lopenlight/co/camera/view/face/FaceView;->mReusedRectF:Landroid/graphics/RectF;

    .line 168
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    div-float/2addr v7, v5

    sub-float/2addr v6, v7

    iget-object v7, p0, Lopenlight/co/camera/view/face/FaceView;->mReusedRectF:Landroid/graphics/RectF;

    .line 169
    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    .line 167
    invoke-virtual {p1, v4, v6, v7, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 174
    :cond_55
    sget-boolean v4, Lopenlight/co/camera/view/face/FaceView;->DISPLAY_FACE_ID:Z

    if-eqz v4, :cond_7a

    .line 175
    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 176
    iget-object v4, p0, Lopenlight/co/camera/view/face/FaceView;->mReusedRectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lopenlight/co/camera/view/face/FaceView;->mIdRenderInset:I

    int-to-float v6, v6

    sub-float/2addr v4, v6

    .line 177
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    div-float/2addr v6, v5

    sub-float/2addr v4, v6

    iget-object v5, p0, Lopenlight/co/camera/view/face/FaceView;->mReusedRectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lopenlight/co/camera/view/face/FaceView;->mIdRenderInset:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 176
    invoke-virtual {p1, v2, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7a
    move v1, v3

    goto :goto_7

    :cond_7c
    return-void
.end method
