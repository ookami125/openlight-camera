.class public Lopenlight/co/camera/view/ftu/ImageFtuZoom;
.super Lopenlight/co/camera/view/ftu/BaseFtuLayout;
.source "ImageFtuZoom.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageFtuZoom"


# instance fields
.field private mImage:Landroid/widget/ImageView;

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mNextButton:Landroid/widget/TextView;

.field private mNextText:Ljava/lang/String;

.field private mPrimeLayout:Landroid/widget/LinearLayout;

.field private mShowPrime:Ljava/lang/Boolean;

.field private mSubTitle:Landroid/widget/TextView;

.field private mSubTitleText:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleText:Ljava/lang/String;

.field private mZoomLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lopenlight/co/camera/R$styleable;->ImageFtu:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x4

    .line 101
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 102
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mTitleText:Ljava/lang/String;

    const/16 v0, 0xc

    .line 103
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mSubTitleText:Ljava/lang/String;

    const/4 v0, 0x2

    .line 104
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mNextText:Ljava/lang/String;

    const/4 v0, 0x5

    .line 105
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mShowPrime:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    throw p0

    .line 110
    :cond_0
    :goto_0
    new-instance p2, Lopenlight/co/camera/view/ftu/BaseFtuLayout$FtuScreenGestureListener;

    invoke-direct {p2, p0, p1}, Lopenlight/co/camera/view/ftu/BaseFtuLayout$FtuScreenGestureListener;-><init>(Lopenlight/co/camera/view/ftu/BaseFtuLayout;Landroid/content/Context;)V

    iput-object p2, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mScreenGestureListener:Lopenlight/co/camera/listener/ScreenGestureListener;

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lopenlight/co/camera/view/ftu/ImageFtuZoom;Landroid/view/View;)V
    .locals 0

    .line 83
    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->onButtonClick()V

    return-void
.end method


# virtual methods
.method public getImageView()Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method public hideView(Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;)V
    .locals 2

    .line 55
    sget-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;->SINGLE_RUN:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mNextButton:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->setViewVisibility(Landroid/view/View;Z)V

    .line 57
    sget-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;->PLAY_ALL:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mZoomLayout:Landroid/widget/RelativeLayout;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 60
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mScreenGestureListener:Lopenlight/co/camera/listener/ScreenGestureListener;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 75
    invoke-super {p0}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;->onFinishInflate()V

    .line 77
    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b003e

    invoke-static {v0, v1, p0}, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0900a9

    .line 78
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mZoomLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0900a8

    .line 79
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mImage:Landroid/widget/ImageView;

    const v0, 0x7f0900ac

    .line 80
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0900ab

    .line 81
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mSubTitle:Landroid/widget/TextView;

    const v0, 0x7f0900aa

    .line 82
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mNextButton:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mNextButton:Landroid/widget/TextView;

    new-instance v1, Lopenlight/co/camera/view/ftu/-$$Lambda$ImageFtuZoom$TrJv-V4PV8A1qLpKUOmb38fSdbE;

    invoke-direct {v1, p0}, Lopenlight/co/camera/view/ftu/-$$Lambda$ImageFtuZoom$TrJv-V4PV8A1qLpKUOmb38fSdbE;-><init>(Lopenlight/co/camera/view/ftu/ImageFtuZoom;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09010c

    .line 84
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mPrimeLayout:Landroid/widget/LinearLayout;

    .line 86
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mSubTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mSubTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mNextButton:Landroid/widget/TextView;

    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mNextText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mShowPrime:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mPrimeLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->mShowPrime:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->setViewVisibility(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setOnFtuActionListener(Lopenlight/co/camera/view/ftu/OnFtuActionListener;)V
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/ftu/ImageFtuZoom;->setFtuActionListener(Lopenlight/co/camera/view/ftu/OnFtuActionListener;)V

    return-void
.end method
