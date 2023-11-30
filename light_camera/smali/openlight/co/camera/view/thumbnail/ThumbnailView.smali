.class public Lopenlight/co/camera/view/thumbnail/ThumbnailView;
.super Ljava/lang/Object;
.source "ThumbnailView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThumbnailView"

.field private static THUMBNAIL_HEIGHT:I = 0x0

.field private static THUMBNAIL_WIDTH:I = 0x0

.field private static final TIMING_LOGGER_GALLERY_THUMBNAIL:Ljava/lang/String; = "Gallery Thumbnail Processing"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGalleryLock:Landroid/view/View;

.field private mGalleryThumb:Landroid/widget/ImageView;

.field private mGalleryThumbTouch:Lopenlight/co/camera/listener/OnSwipeTouchListener;

.field private mGalleryThumbnailTiming:Landroid/util/TimingLogger;

.field private mIsAncillaryToolbarShown:Z

.field private mNeedAnimationAfterCapture:Z

.field private final mParentView:Landroid/view/View;

.field private mProgressSpinner:Landroid/widget/ImageView;

.field private mThumbnailPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lopenlight/co/camera/listener/OnSwipeTouchListener;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mNeedAnimationAfterCapture:Z

    .line 61
    iput-boolean v0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mIsAncillaryToolbarShown:Z

    .line 67
    iput-object p1, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mParentView:Landroid/view/View;

    .line 69
    iput-object p3, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mGalleryThumbTouch:Lopenlight/co/camera/listener/OnSwipeTouchListener;

    .line 70
    iget-object p1, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700db

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    sput p1, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->THUMBNAIL_WIDTH:I

    .line 72
    iget-object p1, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700da

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    sput p1, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->THUMBNAIL_HEIGHT:I

    .line 74
    invoke-direct {p0}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->init()V

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/camera/view/thumbnail/ThumbnailView;)Landroid/util/TimingLogger;
    .locals 0

    .line 40
    iget-object p0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mGalleryThumbnailTiming:Landroid/util/TimingLogger;

    return-object p0
.end method

.method static synthetic access$002(Lopenlight/co/camera/view/thumbnail/ThumbnailView;Landroid/util/TimingLogger;)Landroid/util/TimingLogger;
    .locals 0

    .line 40
    iput-object p1, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mGalleryThumbnailTiming:Landroid/util/TimingLogger;

    return-object p1
.end method

.method static synthetic access$100(Lopenlight/co/camera/view/thumbnail/ThumbnailView;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mThumbnailPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lopenlight/co/camera/view/thumbnail/ThumbnailView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    iput-object p1, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mThumbnailPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lopenlight/co/camera/view/thumbnail/ThumbnailView;)Landroid/widget/ImageView;
    .locals 0

    .line 40
    iget-object p0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mGalleryThumb:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lopenlight/co/camera/view/thumbnail/ThumbnailView;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->setThumbImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lopenlight/co/camera/view/thumbnail/ThumbnailView;Landroid/util/TimingLogger;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->addAnimationAfterCapture(Landroid/util/TimingLogger;)V

    return-void
.end method

.method static synthetic access$600(Lopenlight/co/camera/view/thumbnail/ThumbnailView;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mIsAncillaryToolbarShown:Z

    return p0
.end method

.method static synthetic access$700(Lopenlight/co/camera/view/thumbnail/ThumbnailView;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mParentView:Landroid/view/View;

    return-object p0
.end method

.method private addAnimationAfterCapture(Landroid/util/TimingLogger;)V
    .locals 3

    .line 246
    iget-boolean v0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mNeedAnimationAfterCapture:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mParentView:Landroid/view/View;

    const/16 v1, 0xfa

    new-instance v2, Lopenlight/co/camera/view/thumbnail/ThumbnailView$3;

    invoke-direct {v2, p0, p1}, Lopenlight/co/camera/view/thumbnail/ThumbnailView$3;-><init>(Lopenlight/co/camera/view/thumbnail/ThumbnailView;Landroid/util/TimingLogger;)V

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2, p1, p1}, Lopenlight/co/lib/utils/AnimationUtils;->scaleOut(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;FF)V

    const/4 p1, 0x0

    .line 265
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->setNeedAnimationAfterCapture(Z)V

    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    .line 110
    iget-object v0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mParentView:Landroid/view/View;

    const v1, 0x7f0900af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mGalleryThumb:Landroid/widget/ImageView;

    .line 111
    iget-object v0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mParentView:Landroid/view/View;

    const v1, 0x7f0900ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mGalleryLock:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mParentView:Landroid/view/View;

    const v1, 0x7f0900b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mProgressSpinner:Landroid/widget/ImageView;

    .line 114
    iget-object v0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const v1, 0x7f080063

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->asGif()Lcom/bumptech/glide/GifTypeRequest;

    move-result-object v0

    iget-object p0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mProgressSpinner:Landroid/widget/ImageView;

    .line 115
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/GifTypeRequest;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method private setThumbImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 6

    .line 192
    iget-object v0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mParentView:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->updateThumb(Landroid/widget/ImageView;Landroid/view/View;)V

    .line 193
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->get()Lopenlight/co/lib/utils/Utils;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/lib/utils/Utils;->isLocked()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 194
    iget-object p1, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mGalleryThumb:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    iget-object p0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mGalleryLock:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mGalleryThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mGalleryLock:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_1

    .line 200
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    iget-object p2, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p2

    new-instance v1, Lcom/bumptech/glide/signature/MediaStoreSignature;

    const-string v3, ""

    .line 202
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/bumptech/glide/signature/MediaStoreSignature;-><init>(Ljava/lang/String;JI)V

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p2

    sget v0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->THUMBNAIL_WIDTH:I

    sget v1, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->THUMBNAIL_HEIGHT:I

    .line 203
    invoke-virtual {p2, v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->override(II)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p2

    .line 204
    invoke-virtual {p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p2

    new-instance v0, Lopenlight/co/camera/view/thumbnail/ThumbnailView$2;

    invoke-direct {v0, p0, p1}, Lopenlight/co/camera/view/thumbnail/ThumbnailView$2;-><init>(Lopenlight/co/camera/view/thumbnail/ThumbnailView;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 214
    :cond_1
    iget-object p0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mGalleryThumb:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private updateThumb(Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0xff

    .line 225
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 226
    iget-object v0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mGalleryThumbTouch:Lopenlight/co/camera/listener/OnSwipeTouchListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 227
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 231
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    iget-object p1, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mGalleryThumbTouch:Lopenlight/co/camera/listener/OnSwipeTouchListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 234
    iget-boolean p0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mIsAncillaryToolbarShown:Z

    if-eqz p0, :cond_1

    .line 235
    invoke-static {p2}, Lopenlight/co/lib/utils/AnimationUtils;->hideAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public enableIcon(Z)V
    .locals 1

    .line 79
    iget-object v0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mParentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 80
    iget-object p0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mGalleryThumb:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mThumbnailPath:Ljava/lang/String;

    return-object p0
.end method

.method public loadAndAnimateGalleryThumbnail()V
    .locals 2

    .line 123
    new-instance v0, Lopenlight/co/camera/view/thumbnail/ThumbnailView$1;

    invoke-direct {v0, p0}, Lopenlight/co/camera/view/thumbnail/ThumbnailView$1;-><init>(Lopenlight/co/camera/view/thumbnail/ThumbnailView;)V

    .line 175
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public resetPath()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mThumbnailPath:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->loadAndAnimateGalleryThumbnail()V

    return-void
.end method

.method public setAncillaryToolbarShown(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mIsAncillaryToolbarShown:Z

    return-void
.end method

.method public setIconAlpha(F)V
    .locals 0

    .line 84
    iget-object p0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mGalleryThumb:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public setNeedAnimationAfterCapture(Z)V
    .locals 0

    .line 241
    iput-boolean p1, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mNeedAnimationAfterCapture:Z

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mThumbnailPath:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iput-object p1, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mThumbnailPath:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->loadAndAnimateGalleryThumbnail()V

    :cond_0
    return-void
.end method

.method public showThumbnailLoading(Z)V
    .locals 0

    .line 183
    iget-object p0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mProgressSpinner:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
