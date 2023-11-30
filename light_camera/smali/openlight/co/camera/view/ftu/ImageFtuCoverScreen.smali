.class public Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;
.super Lopenlight/co/camera/view/ftu/BaseFtuLayout;
.source "ImageFtuCoverScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageFtuCoverScreen"


# instance fields
.field private mBody:Landroid/widget/TextView;

.field private mBodyText:Ljava/lang/String;

.field private mButtonText:Ljava/lang/String;

.field private mConfirmButton:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleText:Ljava/lang/String;


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

    .line 26
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 32
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lopenlight/co/camera/R$styleable;->ImageFtu:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xc

    .line 90
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->mTitleText:Ljava/lang/String;

    const/4 p2, 0x2

    .line 91
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->mButtonText:Ljava/lang/String;

    .line 92
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->mBodyText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    throw p0

    .line 98
    :cond_0
    :goto_0
    invoke-virtual {p0, p0}, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getImageView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hideView(Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->mConfirmButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->onButtonClick()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 66
    invoke-super {p0}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;->onFinishInflate()V

    .line 68
    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0036

    invoke-static {v0, v1, p0}, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f090153

    .line 69
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f090083

    .line 70
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->mConfirmButton:Landroid/widget/TextView;

    const v0, 0x7f090054

    .line 71
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->mBody:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->mConfirmButton:Landroid/widget/TextView;

    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->mButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->mBodyText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->mBody:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->mBody:Landroid/widget/TextView;

    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->mBodyText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->mConfirmButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnFtuActionListener(Lopenlight/co/camera/view/ftu/OnFtuActionListener;)V
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/ftu/ImageFtuCoverScreen;->setFtuActionListener(Lopenlight/co/camera/view/ftu/OnFtuActionListener;)V

    return-void
.end method
