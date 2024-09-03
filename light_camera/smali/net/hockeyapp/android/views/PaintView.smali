.class public Lnet/hockeyapp/android/views/PaintView;
.super Landroid/widget/ImageView;
.source "PaintView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final TOUCH_TOLERANCE:F = 4.0f


# instance fields
.field private mX:F

.field private mY:F

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private paths:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;II)V
    .registers 8

    .line 129
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 131
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->path:Landroid/graphics/Path;

    .line 132
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paths:Ljava/util/Stack;

    .line 133
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    .line 134
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 136
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 138
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 139
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 140
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 142
    new-instance v0, Lnet/hockeyapp/android/views/PaintView$1;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/views/PaintView$1;-><init>(Lnet/hockeyapp/android/views/PaintView;)V

    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, p0, v2

    aput-object p2, p0, v1

    .line 171
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, p0, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, p0, p2

    invoke-virtual {v0, p0}, Lnet/hockeyapp/android/views/PaintView$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$000(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-static {p0, p1, p2, p3}, Lnet/hockeyapp/android/views/PaintView;->decodeSampledBitmapFromResource(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .registers 6

    .line 73
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 74
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-gt v0, p2, :cond_9

    if-le p0, p1, :cond_18

    .line 79
    :cond_9
    div-int/lit8 v0, v0, 0x2

    .line 80
    div-int/lit8 p0, p0, 0x2

    .line 84
    :goto_d
    div-int v2, v0, v1

    if-le v2, p2, :cond_18

    div-int v2, p0, v1

    if-le v2, p1, :cond_18

    mul-int/lit8 v1, v1, 0x2

    goto :goto_d

    :cond_18
    return v1
.end method

.method private static decodeSampledBitmapFromResource(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 107
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 109
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    .line 110
    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 113
    invoke-static {v0, p2, p3}, Lnet/hockeyapp/android/views/PaintView;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p2

    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p2, 0x0

    .line 116
    iput-boolean p2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 117
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 118
    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static determineOrientation(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .registers 4

    .line 43
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 44
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 47
    :try_start_8
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    const/4 p1, 0x0

    .line 48
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 51
    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float p0, p0

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_15} :catch_1f

    int-to-float p1, p1

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1e

    const/4 v1, 0x0

    :cond_1e
    return v1

    :catch_1f
    move-exception p0

    const-string p1, "Unable to determine necessary screen orientation."

    .line 55
    invoke-static {p1, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private touchMove(FF)V
    .registers 9

    .line 211
    iget v0, p0, Lnet/hockeyapp/android/views/PaintView;->mX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 212
    iget v1, p0, Lnet/hockeyapp/android/views/PaintView;->mY:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_1a

    cmpl-float v0, v1, v2

    if-ltz v0, :cond_31

    .line 214
    :cond_1a
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->path:Landroid/graphics/Path;

    iget v1, p0, Lnet/hockeyapp/android/views/PaintView;->mX:F

    iget v2, p0, Lnet/hockeyapp/android/views/PaintView;->mY:F

    iget v3, p0, Lnet/hockeyapp/android/views/PaintView;->mX:F

    add-float/2addr v3, p1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v5, p0, Lnet/hockeyapp/android/views/PaintView;->mY:F

    add-float/2addr v5, p2

    div-float/2addr v5, v4

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 215
    iput p1, p0, Lnet/hockeyapp/android/views/PaintView;->mX:F

    .line 216
    iput p2, p0, Lnet/hockeyapp/android/views/PaintView;->mY:F

    :cond_31
    return-void
.end method

.method private touchStart(FF)V
    .registers 4

    .line 204
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 205
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 206
    iput p1, p0, Lnet/hockeyapp/android/views/PaintView;->mX:F

    .line 207
    iput p2, p0, Lnet/hockeyapp/android/views/PaintView;->mY:F

    return-void
.end method

.method private touchUp()V
    .registers 4

    .line 221
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->path:Landroid/graphics/Path;

    iget v1, p0, Lnet/hockeyapp/android/views/PaintView;->mX:F

    iget v2, p0, Lnet/hockeyapp/android/views/PaintView;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 222
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paths:Ljava/util/Stack;

    iget-object v1, p0, Lnet/hockeyapp/android/views/PaintView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->path:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public clearImage()V
    .registers 2

    .line 175
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paths:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 176
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/PaintView;->invalidate()V

    return-void
.end method

.method public isClear()Z
    .registers 1

    .line 187
    iget-object p0, p0, Lnet/hockeyapp/android/views/PaintView;->paths:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->empty()Z

    move-result p0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 192
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 195
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paths:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    .line 196
    iget-object v2, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_9

    .line 200
    :cond_1b
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->path:Landroid/graphics/Path;

    iget-object p0, p0, Lnet/hockeyapp/android/views/PaintView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_26

    goto :goto_24

    .line 237
    :pswitch_10
    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/views/PaintView;->touchMove(FF)V

    .line 238
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/PaintView;->invalidate()V

    goto :goto_24

    .line 241
    :pswitch_17
    invoke-direct {p0}, Lnet/hockeyapp/android/views/PaintView;->touchUp()V

    .line 242
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/PaintView;->invalidate()V

    goto :goto_24

    .line 233
    :pswitch_1e
    invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/views/PaintView;->touchStart(FF)V

    .line 234
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/PaintView;->invalidate()V

    :goto_24
    const/4 p0, 0x1

    return p0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_17
        :pswitch_10
    .end packed-switch
.end method

.method public undo()V
    .registers 2

    .line 180
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paths:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 181
    iget-object v0, p0, Lnet/hockeyapp/android/views/PaintView;->paths:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 182
    invoke-virtual {p0}, Lnet/hockeyapp/android/views/PaintView;->invalidate()V

    :cond_10
    return-void
.end method
