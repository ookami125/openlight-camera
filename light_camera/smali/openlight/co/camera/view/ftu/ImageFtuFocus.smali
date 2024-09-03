.class public Lopenlight/co/camera/view/ftu/ImageFtuFocus;
.super Lopenlight/co/camera/view/ftu/BaseFtuLayout;
.source "ImageFtuFocus.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageFtuFocus"


# instance fields
.field private mConfirmButton:Landroid/widget/TextView;

.field private mConfirmButtonText:Ljava/lang/String;

.field private mHalfShutter:Landroid/widget/TextView;

.field private mHalfShutterText:Ljava/lang/String;

.field private mNextButton:Landroid/widget/TextView;

.field private mNextText:Ljava/lang/String;

.field private mTapFocus:Landroid/widget/TextView;

.field private mTapFocusText:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleText:Ljava/lang/String;


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

    .line 30
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 36
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_39

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lopenlight/co/camera/R$styleable;->ImageFtu:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xc

    .line 98
    :try_start_f
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mTitleText:Ljava/lang/String;

    .line 99
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mHalfShutterText:Ljava/lang/String;

    const/4 p2, 0x1

    .line 100
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mTapFocusText:Ljava/lang/String;

    const/4 p2, 0x2

    .line 101
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mConfirmButtonText:Ljava/lang/String;

    const/4 p2, 0x3

    .line 102
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mNextText:Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_34

    .line 104
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_39

    :catchall_34
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    throw p0

    .line 108
    :cond_39
    :goto_39
    invoke-virtual {p0, p0}, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lopenlight/co/camera/view/ftu/ImageFtuFocus;Landroid/view/View;)V
    .registers 2

    .line 81
    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->onButtonClick()V

    return-void
.end method


# virtual methods
.method public getImageView()Landroid/view/View;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public hideView(Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;)V
    .registers 4

    .line 60
    sget-object v0, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;->SINGLE_RUN:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    .line 61
    :goto_7
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mConfirmButton:Landroid/widget/TextView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v0, v1}, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->setViewVisibility(Landroid/view/View;Z)V

    .line 62
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mNextButton:Landroid/widget/TextView;

    invoke-virtual {p0, v0, p1}, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->setViewVisibility(Landroid/view/View;Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 49
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mConfirmButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_7

    .line 50
    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->onButtonClick()V

    :cond_7
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 73
    invoke-super {p0}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;->onFinishInflate()V

    .line 75
    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0039

    invoke-static {v0, v1, p0}, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f09007e

    .line 76
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0900b2

    .line 77
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mHalfShutter:Landroid/widget/TextView;

    const v0, 0x7f09015a

    .line 78
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mTapFocus:Landroid/widget/TextView;

    const v0, 0x7f09008c

    .line 79
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mConfirmButton:Landroid/widget/TextView;

    const v0, 0x7f09008f

    .line 80
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mNextButton:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mNextButton:Landroid/widget/TextView;

    new-instance v1, Lopenlight/co/camera/view/ftu/-$$Lambda$ImageFtuFocus$aMALsohAJgRRgqzwTECGKJmBWCE;

    invoke-direct {v1, p0}, Lopenlight/co/camera/view/ftu/-$$Lambda$ImageFtuFocus$aMALsohAJgRRgqzwTECGKJmBWCE;-><init>(Lopenlight/co/camera/view/ftu/ImageFtuFocus;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mHalfShutter:Landroid/widget/TextView;

    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mHalfShutterText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mTapFocus:Landroid/widget/TextView;

    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mTapFocusText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mConfirmButton:Landroid/widget/TextView;

    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mConfirmButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mNextButton:Landroid/widget/TextView;

    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mNextText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->mConfirmButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnFtuActionListener(Lopenlight/co/camera/view/ftu/OnFtuActionListener;)V
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/ftu/ImageFtuFocus;->setFtuActionListener(Lopenlight/co/camera/view/ftu/OnFtuActionListener;)V

    return-void
.end method
