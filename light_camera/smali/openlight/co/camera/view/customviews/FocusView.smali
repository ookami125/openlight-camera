.class public Lopenlight/co/camera/view/customviews/FocusView;
.super Landroid/widget/RelativeLayout;
.source "FocusView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/view/customviews/FocusView$OnFocusStateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "FocusView"

.field private static final TIME_HIDE:I = 0x3e8

.field private static final TIME_OUT:I = 0x2710


# instance fields
.field private iCount:I

.field private isFocusLock:Z

.field mAnimationSet:Landroid/view/animation/AnimationSet;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHideHandler:Landroid/os/Handler;

.field private mHideRunnable:Ljava/lang/Runnable;

.field private mImageFocusing:Landroid/widget/ImageView;

.field private mListener:Lopenlight/co/camera/view/customviews/FocusView$OnFocusStateListener;

.field private timeOutRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->iCount:I

    .line 230
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mHideHandler:Landroid/os/Handler;

    .line 49
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/FocusView;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/FocusView;->addImageView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lopenlight/co/camera/view/customviews/FocusView;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 32
    iput p2, p0, Lopenlight/co/camera/view/customviews/FocusView;->iCount:I

    .line 230
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lopenlight/co/camera/view/customviews/FocusView;->mHideHandler:Landroid/os/Handler;

    .line 61
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/FocusView;->mContext:Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/FocusView;->addImageView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/customviews/FocusView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lopenlight/co/camera/view/customviews/FocusView;->iCount:I

    .line 230
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lopenlight/co/camera/view/customviews/FocusView;->mHideHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lopenlight/co/camera/view/customviews/FocusView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lopenlight/co/camera/view/customviews/FocusView;)Landroid/widget/ImageView;
    .locals 0

    .line 21
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mImageFocusing:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lopenlight/co/camera/view/customviews/FocusView;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/customviews/FocusView;->setDrawable(I)V

    return-void
.end method

.method static synthetic access$300(Lopenlight/co/camera/view/customviews/FocusView;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/customviews/FocusView;->finishFocus(Z)V

    return-void
.end method

.method static synthetic access$400(Lopenlight/co/camera/view/customviews/FocusView;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/FocusView;->updateViewFailed()V

    return-void
.end method

.method static synthetic access$500(Lopenlight/co/camera/view/customviews/FocusView;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lopenlight/co/camera/view/customviews/FocusView;)Lopenlight/co/camera/view/customviews/FocusView$OnFocusStateListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mListener:Lopenlight/co/camera/view/customviews/FocusView$OnFocusStateListener;

    return-object p0
.end method

.method static synthetic access$702(Lopenlight/co/camera/view/customviews/FocusView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 21
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/FocusView;->mHideRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private addImageView()V
    .locals 3

    .line 207
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lopenlight/co/camera/view/customviews/FocusView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mImageFocusing:Landroid/widget/ImageView;

    .line 208
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mImageFocusing:Landroid/widget/ImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    const v0, 0x7f08005e

    .line 209
    invoke-direct {p0, v0}, Lopenlight/co/camera/view/customviews/FocusView;->setDrawable(I)V

    .line 210
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mImageFocusing:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/customviews/FocusView;->addView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mContext:Landroid/content/Context;

    const v1, 0x7f070070

    invoke-static {v0, v1}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 215
    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    const/4 v2, -0x1

    .line 216
    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 217
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mImageFocusing:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addView()V
    .locals 2

    .line 195
    iget v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->iCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->iCount:I

    .line 196
    sget-object v0, Lopenlight/co/camera/view/customviews/FocusView;->TAG:Ljava/lang/String;

    const-string v1, "add view"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mImageFocusing:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    :cond_0
    const v0, 0x7f08005e

    .line 200
    invoke-direct {p0, v0}, Lopenlight/co/camera/view/customviews/FocusView;->setDrawable(I)V

    .line 201
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/FocusView;->initAnimation()V

    .line 202
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mImageFocusing:Landroid/widget/ImageView;

    iget-object v1, p0, Lopenlight/co/camera/view/customviews/FocusView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 203
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mImageFocusing:Landroid/widget/ImageView;

    iget-object p0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private finishFocus(Z)V
    .locals 3

    .line 180
    sget-object v0, Lopenlight/co/camera/view/customviews/FocusView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish fLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lopenlight/co/camera/view/customviews/FocusView;->isFocusLock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/FocusView;->releaseRunnable()V

    .line 182
    iget-boolean v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->isFocusLock:Z

    if-nez v0, :cond_0

    .line 183
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/FocusView;->hideFocusView()V

    .line 186
    :cond_0
    sget-object v0, Lopenlight/co/camera/view/customviews/FocusView;->TAG:Ljava/lang/String;

    const-string v1, "Finish"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mListener:Lopenlight/co/camera/view/customviews/FocusView$OnFocusStateListener;

    if-eqz v0, :cond_1

    .line 188
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mListener:Lopenlight/co/camera/view/customviews/FocusView$OnFocusStateListener;

    invoke-interface {p0, p1}, Lopenlight/co/camera/view/customviews/FocusView$OnFocusStateListener;->onFinish(Z)V

    :cond_1
    return-void
.end method

.method private getHideRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 234
    new-instance v0, Lopenlight/co/camera/view/customviews/FocusView$4;

    invoke-direct {v0, p0}, Lopenlight/co/camera/view/customviews/FocusView$4;-><init>(Lopenlight/co/camera/view/customviews/FocusView;)V

    return-object v0
.end method

.method private getTimeOutRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 156
    new-instance v0, Lopenlight/co/camera/view/customviews/FocusView$3;

    invoke-direct {v0, p0}, Lopenlight/co/camera/view/customviews/FocusView$3;-><init>(Lopenlight/co/camera/view/customviews/FocusView;)V

    return-object v0
.end method

.method private hideFocusView()V
    .locals 0

    .line 271
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/FocusView;->resetHideRunnable()V

    return-void
.end method

.method private initAnimation()V
    .locals 5

    .line 221
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    .line 222
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mContext:Landroid/content/Context;

    const v1, 0x7f010010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, -0x1

    .line 223
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 224
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 225
    iget-object v2, p0, Lopenlight/co/camera/view/customviews/FocusView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    const-wide/16 v3, 0x2bc

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 226
    iget-object v2, p0, Lopenlight/co/camera/view/customviews/FocusView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 227
    iget-object p0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private releaseHideRunnable()V
    .locals 2

    .line 263
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mHideRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lopenlight/co/camera/view/customviews/FocusView;->TAG:Ljava/lang/String;

    const-string v1, "resetHideRunnable"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mHideHandler:Landroid/os/Handler;

    iget-object v1, p0, Lopenlight/co/camera/view/customviews/FocusView;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 266
    iput-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mHideRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private releaseRunnable()V
    .locals 2

    .line 166
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->timeOutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 167
    sget-object v0, Lopenlight/co/camera/view/customviews/FocusView;->TAG:Ljava/lang/String;

    const-string v1, "releaseRunnable "

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lopenlight/co/camera/view/customviews/FocusView;->timeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->timeOutRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private resetHideRunnable()V
    .locals 3

    .line 256
    sget-object v0, Lopenlight/co/camera/view/customviews/FocusView;->TAG:Ljava/lang/String;

    const-string v1, "resetHideRunnable"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/FocusView;->releaseHideRunnable()V

    .line 258
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/FocusView;->getHideRunnable()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mHideRunnable:Ljava/lang/Runnable;

    .line 259
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mHideHandler:Landroid/os/Handler;

    iget-object p0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setDrawable(I)V
    .locals 2

    .line 174
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mImageFocusing:Landroid/widget/ImageView;

    iget-object v1, p0, Lopenlight/co/camera/view/customviews/FocusView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mContext:Landroid/content/Context;

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 175
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showFocusView(Landroid/graphics/Point;)V
    .locals 7

    .line 130
    sget-object v0, Lopenlight/co/camera/view/customviews/FocusView;->TAG:Ljava/lang/String;

    const-string v1, "showFocusRing "

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lopenlight/co/camera/utils/Util;->getScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    .line 132
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lopenlight/co/camera/view/customviews/FocusView;->mContext:Landroid/content/Context;

    const v3, 0x7f070072

    .line 134
    invoke-static {v2, v3}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result v2

    iget-object v4, p0, Lopenlight/co/camera/view/customviews/FocusView;->mContext:Landroid/content/Context;

    .line 135
    invoke-static {v4, v3}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 136
    iget-object v2, p0, Lopenlight/co/camera/view/customviews/FocusView;->mContext:Landroid/content/Context;

    const v3, 0x7f070070

    .line 137
    invoke-static {v2, v3}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result v2

    if-eqz p1, :cond_0

    .line 139
    iget v3, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v2

    iget v4, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v2

    .line 140
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget v6, p1, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v2

    sub-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    add-int/2addr p1, v2

    sub-int/2addr v0, p1

    .line 139
    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 143
    :cond_0
    invoke-virtual {p0, v1}, Lopenlight/co/camera/view/customviews/FocusView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 144
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/customviews/FocusView;->setVisibility(I)V

    return-void
.end method

.method private updateViewFailed()V
    .locals 2

    .line 279
    sget-object v0, Lopenlight/co/camera/view/customviews/FocusView;->TAG:Ljava/lang/String;

    const-string v1, "Focus failed"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lopenlight/co/camera/CameraActivity;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mContext:Landroid/content/Context;

    check-cast v0, Lopenlight/co/camera/CameraActivity;

    new-instance v1, Lopenlight/co/camera/view/customviews/FocusView$5;

    invoke-direct {v1, p0}, Lopenlight/co/camera/view/customviews/FocusView$5;-><init>(Lopenlight/co/camera/view/customviews/FocusView;)V

    invoke-virtual {v0, v1}, Lopenlight/co/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public focusArchived()V
    .locals 2

    .line 93
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lopenlight/co/camera/CameraActivity;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mContext:Landroid/content/Context;

    check-cast v0, Lopenlight/co/camera/CameraActivity;

    new-instance v1, Lopenlight/co/camera/view/customviews/FocusView$1;

    invoke-direct {v1, p0}, Lopenlight/co/camera/view/customviews/FocusView$1;-><init>(Lopenlight/co/camera/view/customviews/FocusView;)V

    invoke-virtual {v0, v1}, Lopenlight/co/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public focusFailed()V
    .locals 2

    .line 113
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lopenlight/co/camera/CameraActivity;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mContext:Landroid/content/Context;

    check-cast v0, Lopenlight/co/camera/CameraActivity;

    new-instance v1, Lopenlight/co/camera/view/customviews/FocusView$2;

    invoke-direct {v1, p0}, Lopenlight/co/camera/view/customviews/FocusView$2;-><init>(Lopenlight/co/camera/view/customviews/FocusView;)V

    invoke-virtual {v0, v1}, Lopenlight/co/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public reInitTimeOut()V
    .locals 3

    .line 148
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/FocusView;->releaseHideRunnable()V

    .line 149
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/FocusView;->releaseRunnable()V

    .line 150
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/FocusView;->getTimeOutRunnable()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->timeOutRunnable:Ljava/lang/Runnable;

    .line 151
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lopenlight/co/camera/view/customviews/FocusView;->timeOutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setFocusLock(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lopenlight/co/camera/view/customviews/FocusView;->isFocusLock:Z

    return-void
.end method

.method public setListener(Lopenlight/co/camera/view/customviews/FocusView$OnFocusStateListener;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mListener:Lopenlight/co/camera/view/customviews/FocusView$OnFocusStateListener;

    if-nez v0, :cond_0

    .line 55
    iput-object p1, p0, Lopenlight/co/camera/view/customviews/FocusView;->mListener:Lopenlight/co/camera/view/customviews/FocusView$OnFocusStateListener;

    :cond_0
    return-void
.end method

.method public startFocus(Landroid/graphics/Point;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mListener:Lopenlight/co/camera/view/customviews/FocusView$OnFocusStateListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lopenlight/co/camera/view/customviews/FocusView;->mListener:Lopenlight/co/camera/view/customviews/FocusView$OnFocusStateListener;

    invoke-interface {v0}, Lopenlight/co/camera/view/customviews/FocusView$OnFocusStateListener;->onStart()V

    .line 80
    :cond_0
    invoke-virtual {p0}, Lopenlight/co/camera/view/customviews/FocusView;->reInitTimeOut()V

    .line 81
    invoke-direct {p0}, Lopenlight/co/camera/view/customviews/FocusView;->addView()V

    .line 82
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/customviews/FocusView;->showFocusView(Landroid/graphics/Point;)V

    return-void
.end method
