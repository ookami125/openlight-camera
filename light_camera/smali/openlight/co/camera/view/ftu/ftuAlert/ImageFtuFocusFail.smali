.class public Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;
.super Lopenlight/co/camera/view/ftu/BaseFtuLayout;
.source "ImageFtuFocusFail.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageFtuFocusFail"


# instance fields
.field private mButtonText:Ljava/lang/String;

.field private mConfirmButton:Landroid/widget/TextView;

.field private mFtuText:Ljava/lang/String;

.field private mFtuTextView:Landroid/widget/TextView;


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

    .line 31
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 37
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lopenlight/co/camera/R$styleable;->ImageFtu:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 95
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;->mFtuText:Ljava/lang/String;

    const/4 p2, 0x2

    .line 96
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;->mButtonText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    throw p0

    .line 102
    :cond_0
    :goto_0
    invoke-virtual {p0, p0}, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    .locals 3

    .line 112
    sget-object v0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FTU Click: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;->mConfirmButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;->onButtonClick()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 49
    invoke-super {p0}, Lopenlight/co/camera/view/ftu/BaseFtuLayout;->onFinishInflate()V

    .line 51
    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b003a

    invoke-static {v0, v1, p0}, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f09008d

    .line 52
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;->mFtuTextView:Landroid/widget/TextView;

    const v0, 0x7f090084

    .line 53
    invoke-virtual {p0, v0}, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;->mConfirmButton:Landroid/widget/TextView;

    .line 55
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;->mFtuTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;->mFtuText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;->mConfirmButton:Landroid/widget/TextView;

    iget-object v1, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;->mButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;->mConfirmButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setOnFtuActionListener(Lopenlight/co/camera/view/ftu/OnFtuActionListener;)V
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/ftu/ftuAlert/ImageFtuFocusFail;->setFtuActionListener(Lopenlight/co/camera/view/ftu/OnFtuActionListener;)V

    return-void
.end method
