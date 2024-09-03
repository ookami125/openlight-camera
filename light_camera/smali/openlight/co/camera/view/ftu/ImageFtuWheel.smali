.class public Lopenlight/co/camera/view/ftu/ImageFtuWheel;
.super Lopenlight/co/camera/view/ftu/BaseFtuLayout;
.source "ImageFtuWheel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageFtuWheel"


# instance fields
.field private mImage:Landroid/widget/ImageView;

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mNextButton:Landroid/widget/TextView;

.field private mNextText:Ljava/lang/String;

.field private mSubTitle:Landroid/widget/TextView;

.field private mSubTitleText:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleText:Ljava/lang/String;

.field private mWheelLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_32

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lopenlight/co/camera/R$styleable;->ImageFtu:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x4

    .line 94
    :try_start_e
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 95
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->mTitleText:Ljava/lang/String;

    const/16 v0, 0xc

    .line 96
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->mSubTitleText:Ljava/lang/String;

    const/4 v0, 0x2

    .line 97
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->mNextText:Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_2d

    .line 99
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_32

    :catchall_2d
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    throw p0

    .line 102
    :cond_32
    :goto_32
    new-instance p2, Lopenlight/co/camera/view/ftu/BaseFtuLayout$FtuScreenGestureListener;

    invoke-direct {p2, p0, p1}, Lopenlight/co/camera/view/ftu/BaseFtuLayout$FtuScreenGestureListener;-><init>(Lopenlight/co/camera/view/ftu/BaseFtuLayout;Landroid/content/Context;)V

    iput-object p2, p0, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->mScreenGestureListener:Lopenlight/co/camera/listener/ScreenGestureListener;

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lopenlight/co/camera/view/ftu/ImageFtuWheel;Landroid/view/View;)V
    .registers 2

    .line 85
    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->onButtonClick()V

    return-void
.end method


# virtual methods
.method public getImageView()Landroid/view/View;
    .registers 1

    .line 63
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->mImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method public hideView(Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;)V
    .registers 4

    .line 52
    sget-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;->SINGLE_RUN:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 53
    :goto_7
    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->mNextButton:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->setViewVisibility(Landroid/view/View;Z)V

    .line 54
    sget-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;->PLAY_ALL:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    if-ne p1, v0, :cond_13

    iget-object p1, p0, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->mWheelLayout:Landroid/widget/RelativeLayout;

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    if-eqz p1, :cond_1b

    .line 57
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->mScreenGestureListener:Lopenlight/co/camera/listener/ScreenGestureListener;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1b
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 72
    invoke-super {p0}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;->onFinishInflate()V

    .line 74
    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0038

    invoke-static {v0, v1, p0}, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0900a6

    .line 75
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->mWheelLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f090088

    .line 76
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->mImage:Landroid/widget/ImageView;

    const v0, 0x7f09016f

    .line 77
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f090154

    .line 78
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->mSubTitle:Landroid/widget/TextView;

    const v0, 0x7f09008a

    .line 79
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->mNextButton:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->mImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->mSubTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->mSubTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->mNextButton:Landroid/widget/TextView;

    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->mNextText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->mNextButton:Landroid/widget/TextView;

    new-instance v1, Lopenlight/co/camera/view/ftu/-$$Lambda$ImageFtuWheel$pQ5VdOGwrfYl1_IXYYWjMj0lcmU;

    invoke-direct {v1, p0}, Lopenlight/co/camera/view/ftu/-$$Lambda$ImageFtuWheel$pQ5VdOGwrfYl1_IXYYWjMj0lcmU;-><init>(Lopenlight/co/camera/view/ftu/ImageFtuWheel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnFtuActionListener(Lopenlight/co/camera/view/ftu/OnFtuActionListener;)V
    .registers 2

    .line 67
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/ftu/ImageFtuWheel;->setFtuActionListener(Lopenlight/co/camera/view/ftu/OnFtuActionListener;)V

    return-void
.end method
