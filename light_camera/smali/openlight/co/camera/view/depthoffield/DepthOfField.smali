.class public Lopenlight/co/camera/view/depthoffield/DepthOfField;
.super Landroid/view/View;
.source "DepthOfField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/view/depthoffield/DepthOfField$CompleteDepthListener;
    }
.end annotation


# static fields
.field private static final BITMAP_MIN_SIZE:I = 0xdc

.field private static final CENTER_ALPHA:I = 0xff

.field private static final DOF_LABEL_TEXT:Ljava/lang/String; = "dof "

.field private static final DOF_MOVING_LABEL_TEXT:Ljava/lang/String; = "depth of field"

.field private static final INVALIDATE_DELAY:I = 0x1f4

.field private static final MAX_RADIUS:I = 0x118

.field private static final RADIUS:I = 0x6e

.field private static final REST_RADIUS:I = 0x8c

.field private static final TAG:Ljava/lang/String; = "DepthOfField"


# instance fields
.field private mAlpha:I

.field private mBitmapLeft:F

.field private mBitmapTop:F

.field private mCalRadius:F

.field private final mCamPref:Lopenlight/co/lib/content/Prefs;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCenterCircle:Landroid/graphics/Bitmap;

.field private mCircleHeight:I

.field private mCircleWidth:I

.field private mCompleteDepthListener:Lopenlight/co/camera/view/depthoffield/DepthOfField$CompleteDepthListener;

.field private mDistance:F

.field private mDofAlpha:I

.field private final mHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

.field private mHoffset:F

.field private final mInvalidateIfScrollRunnable:Ljava/lang/Runnable;

.field private mIsResting:Z

.field private mIsScrolling:Z

.field private mIsTapped:Z

.field private mLabel:Ljava/lang/String;

.field private mLabelTypeFace:Landroid/graphics/Typeface;

.field private final mOval:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private mTappedX:F

.field private mTappedY:F

.field private final mTextBound:Landroid/graphics/Rect;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTitleOffset:F

.field private mTouchUpHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCircleWidth:I

    .line 38
    iput p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCircleHeight:I

    const/4 p2, 0x0

    .line 40
    iput p2, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mBitmapLeft:F

    .line 42
    iput p2, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mBitmapTop:F

    .line 44
    iput p2, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTappedX:F

    .line 46
    iput p2, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTappedY:F

    .line 52
    iput-boolean p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mIsTapped:Z

    .line 54
    iput-boolean p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mIsScrolling:Z

    const/16 p1, 0x7f

    .line 62
    iput p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mDofAlpha:I

    const/high16 p1, 0x430c0000    # 140.0f

    .line 64
    iput p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCalRadius:F

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mLabel:Ljava/lang/String;

    .line 68
    iput p2, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mHoffset:F

    .line 70
    iput p2, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTitleOffset:F

    .line 74
    iput p2, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mDistance:F

    const/16 p1, 0xff

    .line 84
    iput p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mAlpha:I

    .line 86
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mPaint:Landroid/graphics/Paint;

    .line 88
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextPaint:Landroid/text/TextPaint;

    .line 90
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextBound:Landroid/graphics/Rect;

    .line 92
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mOval:Landroid/graphics/RectF;

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mIsResting:Z

    .line 96
    invoke-static {}, Lopenlight/co/camera/haptic/PlayHaptic;->get()Lopenlight/co/camera/haptic/PlayHaptic;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

    .line 98
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCamPref:Lopenlight/co/lib/content/Prefs;

    .line 104
    new-instance p1, Lopenlight/co/camera/view/depthoffield/DepthOfField$1;

    invoke-direct {p1, p0}, Lopenlight/co/camera/view/depthoffield/DepthOfField$1;-><init>(Lopenlight/co/camera/view/depthoffield/DepthOfField;)V

    iput-object p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mInvalidateIfScrollRunnable:Ljava/lang/Runnable;

    .line 138
    invoke-direct {p0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->init()V

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/camera/view/depthoffield/DepthOfField;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mIsScrolling:Z

    return p0
.end method

.method static synthetic access$002(Lopenlight/co/camera/view/depthoffield/DepthOfField;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$102(Lopenlight/co/camera/view/depthoffield/DepthOfField;F)F
    .locals 0

    .line 30
    iput p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mHoffset:F

    return p1
.end method

.method static synthetic access$200(Lopenlight/co/camera/view/depthoffield/DepthOfField;)F
    .locals 0

    .line 30
    iget p0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCalRadius:F

    return p0
.end method

.method static synthetic access$302(Lopenlight/co/camera/view/depthoffield/DepthOfField;F)F
    .locals 0

    .line 30
    iput p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTitleOffset:F

    return p1
.end method

.method private calBitmapPos()V
    .locals 3

    .line 201
    iget v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTappedX:F

    iget v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCircleWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mBitmapLeft:F

    .line 202
    iget v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTappedY:F

    iget v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCircleHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mBitmapTop:F

    const/16 v0, 0x7f

    .line 203
    iput v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mDofAlpha:I

    .line 204
    invoke-virtual {p0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->invalidate()V

    .line 205
    iget-boolean v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mIsTapped:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mIsTapped:Z

    return-void
.end method

.method private calDofCircle()V
    .locals 2

    const/16 v0, 0x7f

    .line 210
    iput v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mDofAlpha:I

    .line 211
    iget v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCalRadius:F

    iget v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mDistance:F

    add-float/2addr v0, v1

    iput v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCalRadius:F

    .line 212
    iget v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCalRadius:F

    const/high16 v1, 0x430c0000    # 140.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 213
    iput v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCalRadius:F

    .line 215
    :cond_0
    iget v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCalRadius:F

    const/high16 v1, 0x438c0000    # 280.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 216
    iput v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCalRadius:F

    .line 218
    :cond_1
    invoke-direct {p0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->getLabel()V

    .line 219
    invoke-virtual {p0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->invalidate()V

    return-void
.end method

.method private drawAnimatedArc()V
    .locals 12

    .line 328
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mDofAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 329
    sget-object v0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCalRadius: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCalRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mOval:Landroid/graphics/RectF;

    iget v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mBitmapLeft:F

    const/high16 v2, 0x42dc0000    # 110.0f

    add-float/2addr v1, v2

    iget v3, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCalRadius:F

    sub-float/2addr v1, v3

    iget v3, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mBitmapTop:F

    add-float/2addr v3, v2

    iget v4, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCalRadius:F

    sub-float/2addr v3, v4

    iget v4, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mBitmapLeft:F

    add-float/2addr v4, v2

    iget v5, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCalRadius:F

    add-float/2addr v4, v5

    iget v5, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mBitmapTop:F

    add-float/2addr v5, v2

    iget v2, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCalRadius:F

    add-float/2addr v5, v2

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 332
    iget-object v6, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCanvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mOval:Landroid/graphics/RectF;

    iget-object v11, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mPaint:Landroid/graphics/Paint;

    const/high16 v8, 0x43910000    # 290.0f

    const/high16 v9, 0x43a00000    # 320.0f

    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawAnimatedCircle()V
    .locals 4

    .line 264
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mDofAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 265
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCanvas:Landroid/graphics/Canvas;

    iget v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mBitmapLeft:F

    const/high16 v2, 0x42dc0000    # 110.0f

    add-float/2addr v1, v2

    iget v3, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mBitmapTop:F

    add-float/2addr v3, v2

    iget v2, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCalRadius:F

    iget-object p0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCenter()V
    .locals 4

    .line 251
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 252
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCenterCircle:Landroid/graphics/Bitmap;

    iget v2, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mBitmapLeft:F

    iget v3, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mBitmapTop:F

    iget-object p0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawLabel()V
    .locals 5

    .line 257
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mLabel:Ljava/lang/String;

    iget-object v2, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mLabel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextBound:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 258
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mLabel:Ljava/lang/String;

    iget v2, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mBitmapLeft:F

    iget v3, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCircleWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextBound:Landroid/graphics/Rect;

    .line 259
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mBitmapTop:F

    const/high16 v4, 0x41a00000    # 20.0f

    sub-float/2addr v3, v4

    iget-object p0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextPaint:Landroid/text/TextPaint;

    .line 258
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRestingText()V
    .locals 6

    .line 292
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 293
    invoke-direct {p0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->getLabel()V

    .line 294
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "dof_val"

    iget-object v3, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mLabel:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dof "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mLabel:Ljava/lang/String;

    .line 296
    sget-object v0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "What is the resting Text: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 298
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mLabel:Ljava/lang/String;

    iget-object v3, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mLabel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextBound:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 299
    sget-object v0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get the Width of Text: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mBitmapLeft:F

    const/high16 v1, 0x42dc0000    # 110.0f

    add-float/2addr v0, v1

    iget v3, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mBitmapTop:F

    add-float/2addr v3, v1

    iget v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCalRadius:F

    iget-object v4, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextBound:Landroid/graphics/Rect;

    .line 301
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 300
    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 302
    invoke-direct {p0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->getHOffset()V

    .line 303
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mLabel:Ljava/lang/String;

    iget v3, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mHoffset:F

    iget-object v5, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 304
    iget-object p0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCompleteDepthListener:Lopenlight/co/camera/view/depthoffield/DepthOfField$CompleteDepthListener;

    invoke-interface {p0}, Lopenlight/co/camera/view/depthoffield/DepthOfField$CompleteDepthListener;->updateDepth()V

    return-void
.end method

.method private drawText()V
    .locals 6

    .line 269
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 270
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 271
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mLabel:Ljava/lang/String;

    iget-object v3, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mLabel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextBound:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 272
    sget-object v0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get the Width of Text: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mBitmapLeft:F

    const/high16 v1, 0x42dc0000    # 110.0f

    add-float/2addr v0, v1

    iget v3, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mBitmapTop:F

    add-float/2addr v3, v1

    iget v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCalRadius:F

    iget-object v4, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextBound:Landroid/graphics/Rect;

    .line 274
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 273
    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 275
    invoke-direct {p0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->getHOffset()V

    .line 276
    iget v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mHoffset:F

    const/high16 v1, 0x41f00000    # 30.0f

    add-float/2addr v0, v1

    iput v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mHoffset:F

    .line 277
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mLabel:Ljava/lang/String;

    iget v3, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mHoffset:F

    iget-object v5, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTitle()V
    .locals 6

    .line 281
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 282
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 283
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextPaint:Landroid/text/TextPaint;

    const-string v1, "depth of field"

    const-string v3, "depth of field"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextBound:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v3, v4}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 285
    iget v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mBitmapLeft:F

    const/high16 v1, 0x42dc0000    # 110.0f

    add-float/2addr v0, v1

    iget v3, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mBitmapTop:F

    add-float/2addr v3, v1

    iget v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCalRadius:F

    iget-object v4, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextBound:Landroid/graphics/Rect;

    .line 286
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3fe00000    # 1.75f

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 285
    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 287
    invoke-direct {p0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->getTitleOffset()V

    .line 288
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCanvas:Landroid/graphics/Canvas;

    const-string v1, "depth of field"

    iget v3, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTitleOffset:F

    iget-object v5, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getHOffset()V
    .locals 1

    .line 308
    new-instance v0, Lopenlight/co/camera/view/depthoffield/DepthOfField$2;

    invoke-direct {v0, p0}, Lopenlight/co/camera/view/depthoffield/DepthOfField$2;-><init>(Lopenlight/co/camera/view/depthoffield/DepthOfField;)V

    .line 314
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private getLabel()V
    .locals 2

    .line 223
    iget v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCalRadius:F

    const/high16 v1, 0x438c0000    # 280.0f

    sub-float/2addr v0, v1

    const/high16 v1, 0x430c0000    # 140.0f

    div-float/2addr v0, v1

    .line 224
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    move v0, v1

    .line 231
    :cond_1
    sget-object v1, Lopenlight/co/camera/utils/CamPrefsUtils;->DOF_F_VALUE:[F

    aget v0, v1, v0

    float-to-int v0, v0

    .line 232
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mLabel:Ljava/lang/String;

    return-void
.end method

.method private getTitleOffset()V
    .locals 1

    .line 318
    new-instance v0, Lopenlight/co/camera/view/depthoffield/DepthOfField$3;

    invoke-direct {v0, p0}, Lopenlight/co/camera/view/depthoffield/DepthOfField$3;-><init>(Lopenlight/co/camera/view/depthoffield/DepthOfField;)V

    .line 324
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 142
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 143
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 145
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 146
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mLabelTypeFace:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 148
    invoke-virtual {p0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080089

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCenterCircle:Landroid/graphics/Bitmap;

    .line 149
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCenterCircle:Landroid/graphics/Bitmap;

    const/16 v3, 0xdc

    .line 150
    invoke-static {v0, v3, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCenterCircle:Landroid/graphics/Bitmap;

    .line 151
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCenterCircle:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCircleWidth:I

    .line 152
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCenterCircle:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCircleHeight:I

    .line 154
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 155
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 156
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 157
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 158
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x42100000    # 36.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 159
    invoke-static {}, Lopenlight/co/camera/view/cache/FontCache;->get()Lopenlight/co/camera/view/cache/FontCache;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/view/cache/FontCache;->getHarmoniaRegular()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mLabelTypeFace:Landroid/graphics/Typeface;

    .line 160
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mLabelTypeFace:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dof "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lopenlight/co/camera/utils/CamPrefsUtils;->DOF_F_VALUE:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 237
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 238
    iput-object p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCanvas:Landroid/graphics/Canvas;

    .line 239
    invoke-direct {p0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->drawCenter()V

    .line 240
    invoke-direct {p0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->drawAnimatedArc()V

    .line 241
    iget-boolean p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mIsResting:Z

    if-eqz p1, :cond_0

    .line 242
    invoke-direct {p0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->drawRestingText()V

    goto :goto_0

    .line 244
    :cond_0
    invoke-direct {p0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->drawTitle()V

    .line 245
    invoke-direct {p0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->drawText()V

    :goto_0
    const/4 p1, 0x0

    .line 247
    iput-object p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 167
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTappedX:F

    .line 168
    div-int/lit8 p2, p2, 0x2

    int-to-float p1, p2

    iput p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTappedY:F

    return-void
.end method

.method public setCompleteDepthListener(Lopenlight/co/camera/view/depthoffield/DepthOfField$CompleteDepthListener;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mCompleteDepthListener:Lopenlight/co/camera/view/depthoffield/DepthOfField$CompleteDepthListener;

    return-void
.end method

.method public setScrollDistance(F)V
    .locals 1

    .line 178
    iput p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mDistance:F

    const/16 p1, 0x7f

    .line 179
    iput p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mDofAlpha:I

    const/16 p1, 0xff

    .line 180
    iput p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mAlpha:I

    const/4 p1, 0x0

    .line 181
    iput-boolean p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mIsResting:Z

    .line 182
    iget-object p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

    sget-object v0, Lopenlight/co/camera/haptic/Immersion;->DOF_ADJUSTING:Lopenlight/co/camera/haptic/Immersion;

    invoke-virtual {p1, v0}, Lopenlight/co/camera/haptic/PlayHaptic;->playHaptic(Lopenlight/co/camera/haptic/Immersion;)V

    .line 183
    invoke-direct {p0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->calDofCircle()V

    const/4 p1, 0x1

    .line 184
    iput-boolean p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mIsScrolling:Z

    return-void
.end method

.method public setTappedPoint(FF)V
    .locals 0

    .line 172
    iput p1, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTappedX:F

    .line 173
    iput p2, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTappedY:F

    .line 174
    invoke-direct {p0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->calBitmapPos()V

    return-void
.end method

.method public touchUp()V
    .locals 3

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mIsResting:Z

    const/16 v0, 0x4c

    .line 190
    iput v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mDofAlpha:I

    .line 191
    iput v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mAlpha:I

    .line 192
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

    sget-object v1, Lopenlight/co/camera/haptic/Immersion;->DOF_END:Lopenlight/co/camera/haptic/Immersion;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/haptic/PlayHaptic;->playHaptic(Lopenlight/co/camera/haptic/Immersion;)V

    .line 193
    invoke-virtual {p0}, Lopenlight/co/camera/view/depthoffield/DepthOfField;->invalidate()V

    .line 194
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTouchUpHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTouchUpHandler:Landroid/os/Handler;

    .line 197
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mTouchUpHandler:Landroid/os/Handler;

    iget-object p0, p0, Lopenlight/co/camera/view/depthoffield/DepthOfField;->mInvalidateIfScrollRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
