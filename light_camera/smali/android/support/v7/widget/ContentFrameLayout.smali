.class public Landroid/support/v7/widget/ContentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ContentFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;
    }
.end annotation


# instance fields
.field private mAttachListener:Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;

.field private final mDecorPadding:Landroid/graphics/Rect;

.field private mFixedHeightMajor:Landroid/util/TypedValue;

.field private mFixedHeightMinor:Landroid/util/TypedValue;

.field private mFixedWidthMajor:Landroid/util/TypedValue;

.field private mFixedWidthMinor:Landroid/util/TypedValue;

.field private mMinWidthMajor:Landroid/util/TypedValue;

.field private mMinWidthMinor:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public dispatchFitSystemWindows(Landroid/graphics/Rect;)V
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ContentFrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public getFixedHeightMajor()Landroid/util/TypedValue;
    .registers 2

    .line 191
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 192
    :cond_b
    iget-object p0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    return-object p0
.end method

.method public getFixedHeightMinor()Landroid/util/TypedValue;
    .registers 2

    .line 196
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 197
    :cond_b
    iget-object p0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    return-object p0
.end method

.method public getFixedWidthMajor()Landroid/util/TypedValue;
    .registers 2

    .line 181
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 182
    :cond_b
    iget-object p0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    return-object p0
.end method

.method public getFixedWidthMinor()Landroid/util/TypedValue;
    .registers 2

    .line 186
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 187
    :cond_b
    iget-object p0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    return-object p0
.end method

.method public getMinWidthMajor()Landroid/util/TypedValue;
    .registers 2

    .line 171
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 172
    :cond_b
    iget-object p0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    return-object p0
.end method

.method public getMinWidthMinor()Landroid/util/TypedValue;
    .registers 2

    .line 176
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 177
    :cond_b
    iget-object p0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 202
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 203
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mAttachListener:Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;

    if-eqz v0, :cond_c

    .line 204
    iget-object p0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mAttachListener:Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;

    invoke-interface {p0}, Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;->onAttachedFromWindow()V

    :cond_c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 210
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 211
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mAttachListener:Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;

    if-eqz v0, :cond_c

    .line 212
    iget-object p0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mAttachListener:Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;

    invoke-interface {p0}, Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;->onDetachedFromWindow()V

    :cond_c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16

    .line 95
    invoke-virtual {p0}, Landroid/support/v7/widget/ContentFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 96
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_16

    move v1, v3

    goto :goto_17

    :cond_16
    move v1, v4

    .line 98
    :goto_17
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 99
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/high16 v8, -0x80000000

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v2, v8, :cond_6a

    if-eqz v1, :cond_2c

    .line 103
    iget-object v10, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    goto :goto_2e

    :cond_2c
    iget-object v10, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    :goto_2e
    if-eqz v10, :cond_6a

    .line 104
    iget v11, v10, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_6a

    .line 106
    iget v11, v10, Landroid/util/TypedValue;->type:I

    if-ne v11, v7, :cond_3e

    .line 107
    invoke-virtual {v10, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v10

    float-to-int v10, v10

    goto :goto_4f

    .line 108
    :cond_3e
    iget v11, v10, Landroid/util/TypedValue;->type:I

    if-ne v11, v6, :cond_4e

    .line 109
    iget v11, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v11, v11

    iget v12, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v10

    float-to-int v10, v10

    goto :goto_4f

    :cond_4e
    move v10, v4

    :goto_4f
    if-lez v10, :cond_6a

    .line 112
    iget-object v11, p0, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    iget-object v12, p0, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    sub-int/2addr v10, v11

    .line 113
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 115
    invoke-static {v10, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 114
    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    move v10, p1

    move p1, v3

    goto :goto_6c

    :cond_6a
    move v10, p1

    move p1, v4

    :goto_6c
    if-ne v5, v8, :cond_ae

    if-eqz v1, :cond_73

    .line 122
    iget-object v5, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    goto :goto_75

    :cond_73
    iget-object v5, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    :goto_75
    if-eqz v5, :cond_ae

    .line 123
    iget v11, v5, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_ae

    .line 125
    iget v11, v5, Landroid/util/TypedValue;->type:I

    if-ne v11, v7, :cond_85

    .line 126
    invoke-virtual {v5, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    goto :goto_96

    .line 127
    :cond_85
    iget v11, v5, Landroid/util/TypedValue;->type:I

    if-ne v11, v6, :cond_95

    .line 128
    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v11, v11

    iget v12, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v12, v12

    invoke-virtual {v5, v11, v12}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v5

    float-to-int v5, v5

    goto :goto_96

    :cond_95
    move v5, v4

    :goto_96
    if-lez v5, :cond_ae

    .line 131
    iget-object v11, p0, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    sub-int/2addr v5, v11

    .line 132
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 134
    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 133
    invoke-static {p2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 139
    :cond_ae
    invoke-super {p0, v10, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 141
    invoke-virtual {p0}, Landroid/support/v7/widget/ContentFrameLayout;->getMeasuredWidth()I

    move-result v5

    .line 144
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    if-nez p1, :cond_f8

    if-ne v2, v8, :cond_f8

    if-eqz v1, :cond_c2

    .line 147
    iget-object p1, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    goto :goto_c4

    :cond_c2
    iget-object p1, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    :goto_c4
    if-eqz p1, :cond_f8

    .line 148
    iget v1, p1, Landroid/util/TypedValue;->type:I

    if-eqz v1, :cond_f8

    .line 150
    iget v1, p1, Landroid/util/TypedValue;->type:I

    if-ne v1, v7, :cond_d4

    .line 151
    invoke-virtual {p1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    goto :goto_e5

    .line 152
    :cond_d4
    iget v1, p1, Landroid/util/TypedValue;->type:I

    if-ne v1, v6, :cond_e4

    .line 153
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    float-to-int p1, p1

    goto :goto_e5

    :cond_e4
    move p1, v4

    :goto_e5
    if-lez p1, :cond_f1

    .line 156
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    :cond_f1
    if-ge v5, p1, :cond_f8

    .line 159
    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_f9

    :cond_f8
    move v3, v4

    :goto_f9
    if-eqz v3, :cond_fe

    .line 166
    invoke-super {p0, v10, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_fe
    return-void
.end method

.method public setAttachListener(Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;)V
    .registers 2

    .line 76
    iput-object p1, p0, Landroid/support/v7/widget/ContentFrameLayout;->mAttachListener:Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;

    return-void
.end method

.method public setDecorPadding(IIII)V
    .registers 6
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 88
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 89
    invoke-virtual {p0}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V

    :cond_e
    return-void
.end method
