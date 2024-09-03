.class public Lopenlight/co/camera/view/ftu/ImageFtuController;
.super Lopenlight/co/camera/view/ftu/ImageFtuBaseController;
.source "ImageFtuController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageFtuController"


# instance fields
.field private final mBackDrop:Landroid/view/View;

.field private final mContainer:Landroid/view/ViewGroup;

.field private final mDimmer:Landroid/view/View;

.field private mEnd:Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;

.field private mFocus:Lopenlight/co/camera/view/ftu/ImageFtuFocus;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPrime:Lopenlight/co/camera/view/ftu/ImageFtuZoom;

.field private final mResId:I

.field private mSkip:Landroid/widget/TextView;

.field private mVideoEnd:Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;

.field private mVideoLimitation:Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;

.field private mVideoSpec:Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;

.field private mVideoStart:Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;

.field private mWelcome:Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;

.field private mWheel:Lopenlight/co/camera/view/ftu/ImageFtuWheel;

.field private mZoom:Lopenlight/co/camera/view/ftu/ImageFtuZoom;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;ILopenlight/co/camera/enums/FtuView;Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;)V
    .registers 7
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    invoke-direct {p0}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;-><init>()V

    .line 63
    iput-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mContainer:Landroid/view/ViewGroup;

    .line 64
    iput-object p2, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mBackDrop:Landroid/view/View;

    .line 65
    iput-object p3, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mDimmer:Landroid/view/View;

    .line 66
    iput p4, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mResId:I

    .line 67
    iput-object p5, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    .line 68
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    iput-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mPreviousView:Lopenlight/co/camera/enums/FtuView;

    .line 69
    iput-object p6, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentType:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    .line 70
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 71
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget p2, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mResId:I

    iget-object p3, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mContainer:Landroid/view/ViewGroup;

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mRootContainer:Landroid/view/ViewGroup;

    .line 72
    invoke-direct {p0}, Lopenlight/co/camera/view/ftu/ImageFtuController;->init()V

    return-void
.end method

.method private animateOnDisplay(Lopenlight/co/camera/enums/FtuView;)V
    .registers 4

    .line 298
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/ftu/ImageFtuController;->getViewForFtu(Lopenlight/co/camera/enums/FtuView;)Lopenlight/co/camera/view/ftu/BaseFtuLayout;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;->getImageView()Landroid/view/View;

    move-result-object v0

    .line 299
    sget-object v1, Lopenlight/co/camera/view/ftu/ImageFtuController$1;->$SwitchMap$light$co$camera$enums$FtuView:[I

    invoke-virtual {p1}, Lopenlight/co/camera/enums/FtuView;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_34

    goto :goto_32

    :pswitch_15
    const/4 p1, 0x0

    .line 308
    invoke-virtual {p0, v0, p1}, Lopenlight/co/camera/view/ftu/ImageFtuController;->setViewVisibility(Landroid/view/View;Z)V

    .line 309
    invoke-static {v0, v1}, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->flickToPrimeAnimation(Landroid/view/View;Z)V

    .line 310
    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuController;->isPlayAll()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 311
    invoke-virtual {p0, v1}, Lopenlight/co/camera/view/ftu/ImageFtuController;->updateVisibilityOfView(Z)V

    goto :goto_32

    .line 302
    :pswitch_26
    invoke-static {v0, v1}, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->translateUpAndDownAnimation(Landroid/view/View;Z)V

    .line 303
    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuController;->isPlayAll()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 304
    invoke-virtual {p0, v1}, Lopenlight/co/camera/view/ftu/ImageFtuController;->updateVisibilityOfView(Z)V

    :cond_32
    :goto_32
    return-void

    nop

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_26
        :pswitch_15
        :pswitch_26
    .end packed-switch
.end method

.method private fadeInScreen(Lopenlight/co/camera/view/ftu/BaseFtuLayout;)V
    .registers 5

    .line 284
    new-instance v0, Lopenlight/co/camera/view/ftu/-$$Lambda$ImageFtuController$YTyNbsmVGSX1-GF3NipjTJMd3-Y;

    invoke-direct {v0, p0, p1}, Lopenlight/co/camera/view/ftu/-$$Lambda$ImageFtuController$YTyNbsmVGSX1-GF3NipjTJMd3-Y;-><init>(Lopenlight/co/camera/view/ftu/ImageFtuController;Lopenlight/co/camera/view/ftu/BaseFtuLayout;)V

    const-wide/16 v1, 0x64

    invoke-static {p1, v0, v1, v2}, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->fadeIn(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method private init()V
    .registers 3

    .line 243
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mRootContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0900a4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mWelcome:Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;

    .line 244
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mRootContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0900a7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mZoom:Lopenlight/co/camera/view/ftu/ImageFtuZoom;

    .line 245
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mRootContainer:Landroid/view/ViewGroup;

    const v1, 0x7f090092

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mPrime:Lopenlight/co/camera/view/ftu/ImageFtuZoom;

    .line 246
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mRootContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0900a5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/ftu/ImageFtuWheel;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mWheel:Lopenlight/co/camera/view/ftu/ImageFtuWheel;

    .line 247
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mRootContainer:Landroid/view/ViewGroup;

    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mFocus:Lopenlight/co/camera/view/ftu/ImageFtuFocus;

    .line 248
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mRootContainer:Landroid/view/ViewGroup;

    const v1, 0x7f090086

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mEnd:Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;

    .line 249
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mRootContainer:Landroid/view/ViewGroup;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mVideoStart:Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;

    .line 250
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mRootContainer:Landroid/view/ViewGroup;

    const v1, 0x7f09009c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mVideoSpec:Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;

    .line 251
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mRootContainer:Landroid/view/ViewGroup;

    const v1, 0x7f09009a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mVideoLimitation:Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;

    .line 252
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mRootContainer:Landroid/view/ViewGroup;

    const v1, 0x7f090097

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mVideoEnd:Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;

    .line 253
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mRootContainer:Landroid/view/ViewGroup;

    const v1, 0x7f090093

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mSkip:Landroid/widget/TextView;

    .line 255
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mWelcome:Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->setOnFtuActionListener(Lopenlight/co/camera/view/ftu/OnFtuActionListener;)V

    .line 256
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mZoom:Lopenlight/co/camera/view/ftu/ImageFtuZoom;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->setOnFtuActionListener(Lopenlight/co/camera/view/ftu/OnFtuActionListener;)V

    .line 257
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mPrime:Lopenlight/co/camera/view/ftu/ImageFtuZoom;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->setOnFtuActionListener(Lopenlight/co/camera/view/ftu/OnFtuActionListener;)V

    .line 258
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mWheel:Lopenlight/co/camera/view/ftu/ImageFtuWheel;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->setOnFtuActionListener(Lopenlight/co/camera/view/ftu/OnFtuActionListener;)V

    .line 259
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mFocus:Lopenlight/co/camera/view/ftu/ImageFtuFocus;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->setOnFtuActionListener(Lopenlight/co/camera/view/ftu/OnFtuActionListener;)V

    .line 260
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mEnd:Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->setOnFtuActionListener(Lopenlight/co/camera/view/ftu/OnFtuActionListener;)V

    .line 261
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mVideoStart:Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->setOnFtuActionListener(Lopenlight/co/camera/view/ftu/OnFtuActionListener;)V

    .line 262
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mVideoSpec:Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->setOnFtuActionListener(Lopenlight/co/camera/view/ftu/OnFtuActionListener;)V

    .line 263
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mVideoLimitation:Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->setOnFtuActionListener(Lopenlight/co/camera/view/ftu/OnFtuActionListener;)V

    .line 264
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mVideoEnd:Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->setOnFtuActionListener(Lopenlight/co/camera/view/ftu/OnFtuActionListener;)V

    .line 265
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mSkip:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic lambda$fadeInScreen$1(Lopenlight/co/camera/view/ftu/ImageFtuController;Lopenlight/co/camera/view/ftu/BaseFtuLayout;)V
    .registers 3

    const/4 v0, 0x1

    .line 285
    invoke-virtual {p0, p1, v0}, Lopenlight/co/camera/view/ftu/ImageFtuController;->setViewVisibility(Landroid/view/View;Z)V

    .line 286
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentType:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    invoke-virtual {p1, v0}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;->hideView(Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;)V

    .line 287
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    invoke-direct {p0, p1}, Lopenlight/co/camera/view/ftu/ImageFtuController;->animateOnDisplay(Lopenlight/co/camera/enums/FtuView;)V

    return-void
.end method

.method public static synthetic lambda$showScreen$0(Lopenlight/co/camera/view/ftu/ImageFtuController;Lopenlight/co/camera/view/ftu/BaseFtuLayout;Lopenlight/co/camera/view/ftu/BaseFtuLayout;)V
    .registers 4

    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0, p1, v0}, Lopenlight/co/camera/view/ftu/ImageFtuController;->setViewVisibility(Landroid/view/View;Z)V

    .line 278
    invoke-direct {p0, p2}, Lopenlight/co/camera/view/ftu/ImageFtuController;->fadeInScreen(Lopenlight/co/camera/view/ftu/BaseFtuLayout;)V

    return-void
.end method

.method private showScreen()V
    .registers 6

    .line 273
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mPreviousView:Lopenlight/co/camera/enums/FtuView;

    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ImageFtuController;->getViewForFtu(Lopenlight/co/camera/enums/FtuView;)Lopenlight/co/camera/view/ftu/BaseFtuLayout;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    invoke-virtual {p0, v1}, Lopenlight/co/camera/view/ftu/ImageFtuController;->getViewForFtu(Lopenlight/co/camera/enums/FtuView;)Lopenlight/co/camera/view/ftu/BaseFtuLayout;

    move-result-object v1

    if-eqz v0, :cond_1a

    if-eqz v1, :cond_1a

    .line 276
    new-instance v2, Lopenlight/co/camera/view/ftu/-$$Lambda$ImageFtuController$wC_ggiayw37wvBW6h_oPei_k1pQ;

    invoke-direct {v2, p0, v0, v1}, Lopenlight/co/camera/view/ftu/-$$Lambda$ImageFtuController$wC_ggiayw37wvBW6h_oPei_k1pQ;-><init>(Lopenlight/co/camera/view/ftu/ImageFtuController;Lopenlight/co/camera/view/ftu/BaseFtuLayout;Lopenlight/co/camera/view/ftu/BaseFtuLayout;)V

    const-wide/16 v3, 0x64

    invoke-static {v0, v2, v3, v4}, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;J)V

    :cond_1a
    return-void
.end method


# virtual methods
.method protected displayFtuScreen()V
    .registers 3

    .line 193
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentState:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    sget-object v1, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;->PAUSED:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentState:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    sget-object v1, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;->RUNNING:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    if-ne v0, v1, :cond_d

    goto :goto_10

    .line 194
    :cond_d
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    goto :goto_16

    .line 193
    :cond_10
    :goto_10
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    .line 194
    invoke-virtual {v0}, Lopenlight/co/camera/enums/FtuView;->getNext()Lopenlight/co/camera/enums/FtuView;

    move-result-object v0

    :goto_16
    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    .line 195
    invoke-direct {p0}, Lopenlight/co/camera/view/ftu/ImageFtuController;->showScreen()V

    .line 196
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mPreviousView:Lopenlight/co/camera/enums/FtuView;

    .line 197
    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuController;->updateCurrentView()V

    .line 198
    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuController;->isPlayAll()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 199
    sget-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;->RUNNING:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentState:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    :cond_2c
    return-void
.end method

.method protected getViewForFtu(Lopenlight/co/camera/enums/FtuView;)Lopenlight/co/camera/view/ftu/BaseFtuLayout;
    .registers 3

    .line 212
    sget-object v0, Lopenlight/co/camera/view/ftu/ImageFtuController$1;->$SwitchMap$light$co$camera$enums$FtuView:[I

    invoke-virtual {p1}, Lopenlight/co/camera/enums/FtuView;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_2c

    const/4 p0, 0x0

    return-object p0

    .line 232
    :pswitch_d
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mVideoEnd:Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;

    return-object p0

    .line 230
    :pswitch_10
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mVideoLimitation:Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;

    return-object p0

    .line 228
    :pswitch_13
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mVideoSpec:Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;

    return-object p0

    .line 226
    :pswitch_16
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mVideoStart:Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;

    return-object p0

    .line 224
    :pswitch_19
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mEnd:Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;

    return-object p0

    .line 222
    :pswitch_1c
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mFocus:Lopenlight/co/camera/view/ftu/ImageFtuFocus;

    return-object p0

    .line 220
    :pswitch_1f
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mWheel:Lopenlight/co/camera/view/ftu/ImageFtuWheel;

    return-object p0

    .line 218
    :pswitch_22
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mPrime:Lopenlight/co/camera/view/ftu/ImageFtuZoom;

    return-object p0

    .line 216
    :pswitch_25
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mZoom:Lopenlight/co/camera/view/ftu/ImageFtuZoom;

    return-object p0

    .line 214
    :pswitch_28
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mWelcome:Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;

    return-object p0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 138
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mSkip:Landroid/widget/TextView;

    if-ne p1, v0, :cond_14

    const/4 p1, 0x0

    .line 139
    invoke-static {p1}, Lopenlight/co/camera/view/ftu/FtuAnimationUtils;->setOnAnimationPlaying(Z)V

    .line 140
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mRootContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_14

    .line 141
    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuController;->displayFtuScreen()V

    .line 142
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mSkip:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lopenlight/co/camera/view/ftu/ImageFtuController;->setViewVisibility(Landroid/view/View;Z)V

    :cond_14
    return-void
.end method

.method public onFlickToPrimeComplete()V
    .registers 5

    .line 91
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    sget-object v1, Lopenlight/co/camera/enums/FtuView;->PRIME_SCREEN:Lopenlight/co/camera/enums/FtuView;

    if-ne v0, v1, :cond_14

    .line 92
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mMainLooperHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_14
    return-void
.end method

.method protected onIncorrectResponseInPrime()V
    .registers 1

    .line 239
    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuController;->onFlickToPrimeComplete()V

    return-void
.end method

.method public onScrollToZoomComplete()V
    .registers 5

    .line 80
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    sget-object v1, Lopenlight/co/camera/enums/FtuView;->ZOOM_SCREEN:Lopenlight/co/camera/enums/FtuView;

    if-ne v0, v1, :cond_14

    .line 81
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 82
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mMainLooperHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_14
    return-void
.end method

.method public onWheelScrollComplete()V
    .registers 3

    .line 102
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    sget-object v1, Lopenlight/co/camera/enums/FtuView;->WHEEL_SCREEN:Lopenlight/co/camera/enums/FtuView;

    if-ne v0, v1, :cond_12

    .line 103
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mMainLooperHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_12
    return-void
.end method

.method public setDelayIncorrectUserResponse()V
    .registers 5

    .line 115
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    sget-object v1, Lopenlight/co/camera/enums/FtuView;->PRIME_SCREEN:Lopenlight/co/camera/enums/FtuView;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    sget-object v1, Lopenlight/co/camera/enums/FtuView;->WHEEL_SCREEN:Lopenlight/co/camera/enums/FtuView;

    if-ne v0, v1, :cond_1a

    .line 116
    :cond_c
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 117
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mMainLooperHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1a
    return-void
.end method

.method public setFtuActionListener(Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;)V
    .registers 2

    .line 128
    invoke-super {p0, p1}, Lopenlight/co/camera/view/ftu/ImageFtuBaseController;->setFtuActionListener(Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuActionListener;)V

    return-void
.end method

.method protected show(Z)V
    .registers 5

    .line 155
    iget-boolean v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mIsShown:Z

    if-eq p1, v0, :cond_76

    .line 156
    iput-boolean p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mIsShown:Z

    if-eqz p1, :cond_66

    .line 161
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentType:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    sget-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;->PLAY_ALL:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_27

    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    sget-object v0, Lopenlight/co/camera/enums/FtuView;->ZOOM_SCREEN:Lopenlight/co/camera/enums/FtuView;

    if-eq p1, v0, :cond_21

    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    sget-object v0, Lopenlight/co/camera/enums/FtuView;->PRIME_SCREEN:Lopenlight/co/camera/enums/FtuView;

    if-eq p1, v0, :cond_21

    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentView:Lopenlight/co/camera/enums/FtuView;

    sget-object v0, Lopenlight/co/camera/enums/FtuView;->WHEEL_SCREEN:Lopenlight/co/camera/enums/FtuView;

    if-ne p1, v0, :cond_27

    .line 164
    :cond_21
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mSkip:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v1}, Lopenlight/co/camera/view/ftu/ImageFtuController;->setViewVisibility(Landroid/view/View;Z)V

    goto :goto_32

    .line 165
    :cond_27
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentType:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    sget-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;->SINGLE_RUN:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    if-ne p1, v0, :cond_32

    .line 167
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mBackDrop:Landroid/view/View;

    invoke-virtual {p0, p1, v1}, Lopenlight/co/camera/view/ftu/ImageFtuController;->setViewVisibility(Landroid/view/View;Z)V

    .line 169
    :cond_32
    :goto_32
    sget-object p1, Lopenlight/co/camera/view/ftu/ImageFtuController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FTU_ current state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentState:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentState:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    sget-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;->IDLE:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    if-eq p1, v0, :cond_56

    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mCurrentState:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    sget-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;->PAUSED:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuState;

    if-ne p1, v0, :cond_59

    .line 173
    :cond_56
    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuController;->displayFtuScreen()V

    .line 177
    :cond_59
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mDimmer:Landroid/view/View;

    invoke-virtual {p0, p1, v1}, Lopenlight/co/camera/view/ftu/ImageFtuController;->setViewVisibility(Landroid/view/View;Z)V

    .line 178
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_76

    .line 180
    :cond_66
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mBackDrop:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lopenlight/co/camera/view/ftu/ImageFtuController;->setViewVisibility(Landroid/view/View;Z)V

    .line 181
    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mDimmer:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lopenlight/co/camera/view/ftu/ImageFtuController;->setViewVisibility(Landroid/view/View;Z)V

    .line 182
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_76
    :goto_76
    return-void
.end method

.method protected updateVisibilityOfView(Z)V
    .registers 3

    .line 133
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuController;->mSkip:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lopenlight/co/camera/view/ftu/ImageFtuController;->setViewVisibility(Landroid/view/View;Z)V

    return-void
.end method
