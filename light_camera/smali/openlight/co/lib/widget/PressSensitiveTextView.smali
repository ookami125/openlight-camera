.class public Lopenlight/co/lib/widget/PressSensitiveTextView;
.super Landroid/widget/TextView;
.source "PressSensitiveTextView.java"


# instance fields
.field private mOriginalTextSize:F

.field private mTextSizeRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    iput p1, p0, Lopenlight/co/lib/widget/PressSensitiveTextView;->mTextSizeRatio:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    iput p1, p0, Lopenlight/co/lib/widget/PressSensitiveTextView;->mTextSizeRatio:F

    .line 27
    invoke-direct {p0, p2}, Lopenlight/co/lib/widget/PressSensitiveTextView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    iput p1, p0, Lopenlight/co/lib/widget/PressSensitiveTextView;->mTextSizeRatio:F

    .line 32
    invoke-direct {p0, p2}, Lopenlight/co/lib/widget/PressSensitiveTextView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    iput p1, p0, Lopenlight/co/lib/widget/PressSensitiveTextView;->mTextSizeRatio:F

    .line 37
    invoke-direct {p0, p2}, Lopenlight/co/lib/widget/PressSensitiveTextView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    .line 63
    invoke-virtual {p0}, Lopenlight/co/lib/widget/PressSensitiveTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lopenlight/co/lib/R$styleable;->PressSensitiveTextView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 65
    sget v0, Lopenlight/co/lib/R$styleable;->PressSensitiveTextView_scaleFactor:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lopenlight/co/lib/widget/PressSensitiveTextView;->setTextSizeRatio(F)V

    .line 66
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getTextSizeRatio()F
    .locals 0

    .line 41
    iget p0, p0, Lopenlight/co/lib/widget/PressSensitiveTextView;->mTextSizeRatio:F

    return p0
.end method

.method public setPressed(Z)V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lopenlight/co/lib/widget/PressSensitiveTextView;->isPressed()Z

    move-result v0

    .line 51
    invoke-super {p0, p1}, Landroid/widget/TextView;->setPressed(Z)V

    if-eq p1, v0, :cond_1

    .line 52
    iget v0, p0, Lopenlight/co/lib/widget/PressSensitiveTextView;->mTextSizeRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0}, Lopenlight/co/lib/widget/PressSensitiveTextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lopenlight/co/lib/widget/PressSensitiveTextView;->mOriginalTextSize:F

    .line 55
    iget p1, p0, Lopenlight/co/lib/widget/PressSensitiveTextView;->mOriginalTextSize:F

    iget v1, p0, Lopenlight/co/lib/widget/PressSensitiveTextView;->mTextSizeRatio:F

    mul-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lopenlight/co/lib/widget/PressSensitiveTextView;->setTextSize(IF)V

    goto :goto_0

    .line 57
    :cond_0
    iget p1, p0, Lopenlight/co/lib/widget/PressSensitiveTextView;->mOriginalTextSize:F

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Lopenlight/co/lib/widget/PressSensitiveTextView;->setTextSize(IF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTextSizeRatio(F)V
    .locals 0

    .line 45
    iput p1, p0, Lopenlight/co/lib/widget/PressSensitiveTextView;->mTextSizeRatio:F

    return-void
.end method
