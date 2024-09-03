.class public Lopenlight/co/lib/customviews/FtuScreen;
.super Landroid/widget/FrameLayout;
.source "FtuScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/lib/customviews/FtuScreen$OnButtonClickListener;
    }
.end annotation


# instance fields
.field private mBody:Landroid/widget/TextView;

.field private mBodyText:Ljava/lang/String;

.field private mButton1:Landroid/widget/TextView;

.field private mButton1Text:Ljava/lang/String;

.field private mButton2:Landroid/widget/TextView;

.field private mButton2Text:Ljava/lang/String;

.field private mImage:Landroid/widget/ImageView;

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mListener:Lopenlight/co/lib/customviews/FtuScreen$OnButtonClickListener;

.field private mSubTitle:Landroid/widget/TextView;

.field private mSubTitleText:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lopenlight/co/lib/customviews/FtuScreen;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-direct {p0, p1, p2}, Lopenlight/co/lib/customviews/FtuScreen;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-direct {p0, p1, p2}, Lopenlight/co/lib/customviews/FtuScreen;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_46

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lopenlight/co/lib/R$styleable;->FtuScreen:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 190
    :try_start_d
    sget p2, Lopenlight/co/lib/R$styleable;->FtuScreen_ftuImage:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/lib/customviews/FtuScreen;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 191
    sget p2, Lopenlight/co/lib/R$styleable;->FtuScreen_ftuTitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/lib/customviews/FtuScreen;->mTitleText:Ljava/lang/String;

    .line 192
    sget p2, Lopenlight/co/lib/R$styleable;->FtuScreen_ftuSubTitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/lib/customviews/FtuScreen;->mSubTitleText:Ljava/lang/String;

    .line 193
    sget p2, Lopenlight/co/lib/R$styleable;->FtuScreen_ftuBody:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/lib/customviews/FtuScreen;->mBodyText:Ljava/lang/String;

    .line 194
    sget p2, Lopenlight/co/lib/R$styleable;->FtuScreen_ftuButton1:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/lib/customviews/FtuScreen;->mButton1Text:Ljava/lang/String;

    .line 195
    sget p2, Lopenlight/co/lib/R$styleable;->FtuScreen_ftuButton2:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/lib/customviews/FtuScreen;->mButton2Text:Ljava/lang/String;
    :try_end_3d
    .catchall {:try_start_d .. :try_end_3d} :catchall_41

    .line 197
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_46

    :catchall_41
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 198
    throw p0

    .line 201
    :cond_46
    :goto_46
    invoke-virtual {p0, p0}, Lopenlight/co/lib/customviews/FtuScreen;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3

    .line 176
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/16 p0, 0x8

    .line 177
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_13

    :cond_c
    const/4 p0, 0x0

    .line 179
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_13
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 134
    iget-object v0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mListener:Lopenlight/co/lib/customviews/FtuScreen$OnButtonClickListener;

    if-eqz v0, :cond_19

    .line 135
    iget-object v0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mButton1:Landroid/widget/TextView;

    if-ne p1, v0, :cond_f

    .line 136
    iget-object p0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mListener:Lopenlight/co/lib/customviews/FtuScreen$OnButtonClickListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lopenlight/co/lib/customviews/FtuScreen$OnButtonClickListener;->onButtonClicked(I)V

    goto :goto_19

    .line 137
    :cond_f
    iget-object v0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mButton2:Landroid/widget/TextView;

    if-ne p1, v0, :cond_19

    .line 138
    iget-object p0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mListener:Lopenlight/co/lib/customviews/FtuScreen$OnButtonClickListener;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lopenlight/co/lib/customviews/FtuScreen$OnButtonClickListener;->onButtonClicked(I)V

    :cond_19
    :goto_19
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 145
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 150
    invoke-virtual {p0}, Lopenlight/co/lib/customviews/FtuScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lopenlight/co/lib/R$layout;->ftu_screen:I

    invoke-static {v0, v1, p0}, Lopenlight/co/lib/customviews/FtuScreen;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 152
    sget v0, Lopenlight/co/lib/R$id;->image:I

    invoke-virtual {p0, v0}, Lopenlight/co/lib/customviews/FtuScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mImage:Landroid/widget/ImageView;

    .line 153
    sget v0, Lopenlight/co/lib/R$id;->title:I

    invoke-virtual {p0, v0}, Lopenlight/co/lib/customviews/FtuScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mTitle:Landroid/widget/TextView;

    .line 154
    sget v0, Lopenlight/co/lib/R$id;->subTitle:I

    invoke-virtual {p0, v0}, Lopenlight/co/lib/customviews/FtuScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mSubTitle:Landroid/widget/TextView;

    .line 155
    sget v0, Lopenlight/co/lib/R$id;->body:I

    invoke-virtual {p0, v0}, Lopenlight/co/lib/customviews/FtuScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mBody:Landroid/widget/TextView;

    .line 156
    sget v0, Lopenlight/co/lib/R$id;->button1:I

    invoke-virtual {p0, v0}, Lopenlight/co/lib/customviews/FtuScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mButton1:Landroid/widget/TextView;

    .line 157
    sget v0, Lopenlight/co/lib/R$id;->button2:I

    invoke-virtual {p0, v0}, Lopenlight/co/lib/customviews/FtuScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mButton2:Landroid/widget/TextView;

    .line 159
    iget-object v0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mButton1:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mButton2:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lopenlight/co/lib/customviews/FtuScreen;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mTitleText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lopenlight/co/lib/customviews/FtuScreen;->setTitle(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mSubTitleText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lopenlight/co/lib/customviews/FtuScreen;->setSubTitle(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mBodyText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lopenlight/co/lib/customviews/FtuScreen;->setBody(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mButton1Text:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lopenlight/co/lib/customviews/FtuScreen;->setButton1(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mButton2Text:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lopenlight/co/lib/customviews/FtuScreen;->setButton2(Ljava/lang/String;)V

    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .registers 3

    .line 93
    iget-object v0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mBody:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lopenlight/co/lib/customviews/FtuScreen;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setButton1(Ljava/lang/String;)V
    .registers 3

    .line 101
    iget-object v0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mButton1:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lopenlight/co/lib/customviews/FtuScreen;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setButton2(Ljava/lang/String;)V
    .registers 3

    .line 109
    iget-object v0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mButton2:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lopenlight/co/lib/customviews/FtuScreen;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setButtonVisibility(IZ)V
    .registers 4

    if-nez p1, :cond_5

    .line 126
    iget-object p0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mButton1:Landroid/widget/TextView;

    goto :goto_c

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    iget-object p0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mButton2:Landroid/widget/TextView;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    if-eqz p0, :cond_17

    if-eqz p2, :cond_12

    const/4 p1, 0x0

    goto :goto_14

    :cond_12
    const/16 p1, 0x8

    .line 128
    :goto_14
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .line 69
    iget-object p0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOnButtonClickListener(Lopenlight/co/lib/customviews/FtuScreen$OnButtonClickListener;)V
    .registers 2
    .param p1    # Lopenlight/co/lib/customviews/FtuScreen$OnButtonClickListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 117
    iput-object p1, p0, Lopenlight/co/lib/customviews/FtuScreen;->mListener:Lopenlight/co/lib/customviews/FtuScreen$OnButtonClickListener;

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .registers 3

    .line 85
    iget-object v0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mSubTitle:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lopenlight/co/lib/customviews/FtuScreen;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    .line 77
    iget-object v0, p0, Lopenlight/co/lib/customviews/FtuScreen;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lopenlight/co/lib/customviews/FtuScreen;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method
