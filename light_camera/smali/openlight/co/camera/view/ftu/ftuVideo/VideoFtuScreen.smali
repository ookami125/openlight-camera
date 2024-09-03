.class public Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;
.super Lopenlight/co/camera/view/ftu/BaseFtuLayout;
.source "VideoFtuScreen.java"


# instance fields
.field private mImage:Landroid/widget/ImageView;

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mNextText:Ljava/lang/String;

.field private mSpecLine1Text:Ljava/lang/String;

.field private mSpecLine2Text:Ljava/lang/String;

.field private mSpecLine3Text:Ljava/lang/String;

.field private mSpecLine4Text:Ljava/lang/String;

.field private mSpecLine5Text:Ljava/lang/String;

.field private mSpecTitleText:Ljava/lang/String;

.field private mSubTitleText:Ljava/lang/String;

.field private mTitleText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 45
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_5a

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lopenlight/co/camera/R$styleable;->ImageFtu:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x4

    .line 105
    :try_start_e
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    const/16 p2, 0xc

    .line 106
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mSubTitleText:Ljava/lang/String;

    const/4 p2, 0x2

    .line 107
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mNextText:Ljava/lang/String;

    const/4 p2, 0x6

    .line 108
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mSpecTitleText:Ljava/lang/String;

    const/4 p2, 0x7

    .line 109
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mSpecLine1Text:Ljava/lang/String;

    const/16 p2, 0x8

    .line 110
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mSpecLine2Text:Ljava/lang/String;

    const/16 p2, 0x9

    .line 111
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mSpecLine3Text:Ljava/lang/String;

    const/16 p2, 0xa

    .line 112
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mSpecLine4Text:Ljava/lang/String;

    const/16 p2, 0xb

    .line 113
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mSpecLine5Text:Ljava/lang/String;
    :try_end_51
    .catchall {:try_start_e .. :try_end_51} :catchall_55

    .line 115
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_5a

    :catchall_55
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    throw p0

    :cond_5a
    :goto_5a
    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;Landroid/view/View;)V
    .registers 2

    .line 76
    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->onButtonClick()V

    return-void
.end method

.method private static setVisibility(Landroid/view/View;I)V
    .registers 2

    .line 121
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getImageView()Landroid/view/View;
    .registers 1

    .line 60
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method public hideView(Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;)V
    .registers 2

    return-void
.end method

.method protected onFinishInflate()V
    .registers 14

    .line 69
    invoke-super {p0}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;->onFinishInflate()V

    .line 71
    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b003d

    invoke-static {v0, v1, p0}, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f090098

    .line 73
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mImage:Landroid/widget/ImageView;

    const v0, 0x7f0900a3

    .line 74
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09009b

    .line 75
    invoke-virtual {p0, v1}, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 76
    new-instance v2, Lopenlight/co/camera/view/ftu/ftuVideo/-$$Lambda$VideoFtuScreen$gt9XXkgOLfx2MqpQV7zpjqq6fbY;

    invoke-direct {v2, p0}, Lopenlight/co/camera/view/ftu/ftuVideo/-$$Lambda$VideoFtuScreen$gt9XXkgOLfx2MqpQV7zpjqq6fbY;-><init>(Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090094

    .line 77
    invoke-virtual {p0, v2}, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0900a2

    .line 78
    invoke-virtual {p0, v3}, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09009d

    .line 79
    invoke-virtual {p0, v4}, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09009e

    .line 80
    invoke-virtual {p0, v5}, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f09009f

    .line 81
    invoke-virtual {p0, v6}, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0900a0

    .line 82
    invoke-virtual {p0, v7}, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0900a1

    .line 83
    invoke-virtual {p0, v8}, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 85
    iget-object v9, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mImage:Landroid/widget/ImageView;

    iget-object v10, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v9, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mImage:Landroid/widget/ImageView;

    iget-object v10, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    const/16 v12, 0x8

    if-nez v10, :cond_83

    move v10, v12

    goto :goto_84

    :cond_83
    move v10, v11

    :goto_84
    invoke-static {v9, v10}, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->setVisibility(Landroid/view/View;I)V

    .line 87
    iget-object v9, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mSpecTitleText:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v3, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mSpecTitleText:Ljava/lang/String;

    if-nez v3, :cond_91

    move v11, v12

    :cond_91
    invoke-static {v2, v11}, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->setVisibility(Landroid/view/View;I)V

    .line 89
    iget-object v2, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mSpecLine1Text:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v2, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mSpecLine2Text:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mSpecLine3Text:Ljava/lang/String;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v2, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mSpecLine4Text:Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v2, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mSpecLine5Text:Ljava/lang/String;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v2, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mSubTitleText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v2, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mSpecTitleText:Ljava/lang/String;

    if-nez v2, :cond_b8

    const/4 v2, 0x1

    goto :goto_b9

    :cond_b8
    const/4 v2, 0x5

    :goto_b9
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 96
    iget-object p0, p0, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->mNextText:Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnFtuActionListener(Lopenlight/co/camera/view/ftu/OnFtuActionListener;)V
    .registers 2

    .line 64
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/ftu/ftuVideo/VideoFtuScreen;->setFtuActionListener(Lopenlight/co/camera/view/ftu/OnFtuActionListener;)V

    return-void
.end method
