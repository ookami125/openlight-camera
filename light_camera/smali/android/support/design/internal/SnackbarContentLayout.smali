.class public Landroid/support/design/internal/SnackbarContentLayout;
.super Landroid/widget/LinearLayout;
.source "SnackbarContentLayout.java"

# interfaces
.implements Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mActionView:Landroid/widget/Button;

.field private mMaxInlineActionWidth:I

.field private mMaxWidth:I

.field private mMessageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/SnackbarContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    sget-object v0, Landroid/support/design/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 51
    sget p2, Landroid/support/design/R$styleable;->SnackbarLayout_android_maxWidth:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/internal/SnackbarContentLayout;->mMaxWidth:I

    .line 52
    sget p2, Landroid/support/design/R$styleable;->SnackbarLayout_maxActionInlineWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/design/internal/SnackbarContentLayout;->mMaxInlineActionWidth:I

    .line 54
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static updateTopBottomPadding(Landroid/view/View;II)V
    .registers 5

    .line 122
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isPaddingRelative(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 124
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    .line 125
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v1

    .line 123
    invoke-static {p0, v0, p1, v1, p2}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    goto :goto_1d

    .line 127
    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 127
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    :goto_1d
    return-void
.end method

.method private updateViewsWithinLayout(III)Z
    .registers 6

    .line 109
    invoke-virtual {p0}, Landroid/support/design/internal/SnackbarContentLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_c

    .line 110
    invoke-virtual {p0, p1}, Landroid/support/design/internal/SnackbarContentLayout;->setOrientation(I)V

    move p1, v1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    .line 113
    :goto_d
    iget-object v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    if-ne v0, p2, :cond_1d

    iget-object v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->mMessageView:Landroid/widget/TextView;

    .line 114
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    if-eq v0, p3, :cond_23

    .line 115
    :cond_1d
    iget-object p0, p0, Landroid/support/design/internal/SnackbarContentLayout;->mMessageView:Landroid/widget/TextView;

    invoke-static {p0, p2, p3}, Landroid/support/design/internal/SnackbarContentLayout;->updateTopBottomPadding(Landroid/view/View;II)V

    move p1, v1

    :cond_23
    return p1
.end method


# virtual methods
.method public animateContentIn(II)V
    .registers 10

    .line 134
    iget-object v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->mMessageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 135
    iget-object v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v3, p2

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    int-to-long v5, p1

    .line 136
    invoke-virtual {p2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 138
    iget-object p1, p0, Landroid/support/design/internal/SnackbarContentLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-nez p1, :cond_41

    .line 139
    iget-object p1, p0, Landroid/support/design/internal/SnackbarContentLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 140
    iget-object p0, p0, Landroid/support/design/internal/SnackbarContentLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 141
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_41
    return-void
.end method

.method public animateContentOut(II)V
    .registers 10

    .line 147
    iget-object v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->mMessageView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 148
    iget-object v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v3, p2

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    int-to-long v5, p1

    .line 149
    invoke-virtual {p2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 151
    iget-object p1, p0, Landroid/support/design/internal/SnackbarContentLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-nez p1, :cond_41

    .line 152
    iget-object p1, p0, Landroid/support/design/internal/SnackbarContentLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 153
    iget-object p0, p0, Landroid/support/design/internal/SnackbarContentLayout;->mActionView:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 154
    invoke-virtual {p0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_41
    return-void
.end method

.method public getActionView()Landroid/widget/Button;
    .registers 1

    .line 69
    iget-object p0, p0, Landroid/support/design/internal/SnackbarContentLayout;->mActionView:Landroid/widget/Button;

    return-object p0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .registers 1

    .line 65
    iget-object p0, p0, Landroid/support/design/internal/SnackbarContentLayout;->mMessageView:Landroid/widget/TextView;

    return-object p0
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 59
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 60
    sget v0, Landroid/support/design/R$id;->snackbar_text:I

    invoke-virtual {p0, v0}, Landroid/support/design/internal/SnackbarContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->mMessageView:Landroid/widget/TextView;

    .line 61
    sget v0, Landroid/support/design/R$id;->snackbar_action:I

    invoke-virtual {p0, v0}, Landroid/support/design/internal/SnackbarContentLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->mActionView:Landroid/widget/Button;

    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    .line 74
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 76
    iget v0, p0, Landroid/support/design/internal/SnackbarContentLayout;->mMaxWidth:I

    if-lez v0, :cond_1a

    invoke-virtual {p0}, Landroid/support/design/internal/SnackbarContentLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/support/design/internal/SnackbarContentLayout;->mMaxWidth:I

    if-le v0, v1, :cond_1a

    .line 77
    iget p1, p0, Landroid/support/design/internal/SnackbarContentLayout;->mMaxWidth:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 78
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 81
    :cond_1a
    invoke-virtual {p0}, Landroid/support/design/internal/SnackbarContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/design/R$dimen;->design_snackbar_padding_vertical_2lines:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 83
    invoke-virtual {p0}, Landroid/support/design/internal/SnackbarContentLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/design/R$dimen;->design_snackbar_padding_vertical:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 85
    iget-object v2, p0, Landroid/support/design/internal/SnackbarContentLayout;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_3e

    move v2, v4

    goto :goto_3f

    :cond_3e
    move v2, v3

    :goto_3f
    if-eqz v2, :cond_58

    .line 88
    iget v5, p0, Landroid/support/design/internal/SnackbarContentLayout;->mMaxInlineActionWidth:I

    if-lez v5, :cond_58

    iget-object v5, p0, Landroid/support/design/internal/SnackbarContentLayout;->mActionView:Landroid/widget/Button;

    .line 89
    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Landroid/support/design/internal/SnackbarContentLayout;->mMaxInlineActionWidth:I

    if-le v5, v6, :cond_58

    sub-int v1, v0, v1

    .line 90
    invoke-direct {p0, v4, v0, v1}, Landroid/support/design/internal/SnackbarContentLayout;->updateViewsWithinLayout(III)Z

    move-result v0

    if-eqz v0, :cond_63

    goto :goto_64

    :cond_58
    if-eqz v2, :cond_5b

    goto :goto_5c

    :cond_5b
    move v0, v1

    .line 96
    :goto_5c
    invoke-direct {p0, v3, v0, v0}, Landroid/support/design/internal/SnackbarContentLayout;->updateViewsWithinLayout(III)Z

    move-result v0

    if-eqz v0, :cond_63

    goto :goto_64

    :cond_63
    move v4, v3

    :goto_64
    if-eqz v4, :cond_69

    .line 102
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_69
    return-void
.end method
