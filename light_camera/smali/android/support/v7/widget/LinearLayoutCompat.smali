.class public Landroid/support/v7/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;,
        Landroid/support/v7/widget/LinearLayoutCompat$DividerMode;,
        Landroid/support/v7/widget/LinearLayoutCompat$OrientationMode;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 153
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    const/4 v1, -0x1

    .line 109
    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    const/4 v2, 0x0

    .line 116
    iput v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    const v3, 0x800033

    .line 120
    iput v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 155
    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v3, p3, v2}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object p1

    .line 158
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_22

    .line 160
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 163
    :cond_22
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_2d

    .line 165
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->setGravity(I)V

    .line 168
    :cond_2d
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p2

    if-nez p2, :cond_38

    .line 170
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 173
    :cond_38
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 p3, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    .line 175
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 176
    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 178
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {p1, p2, v2}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 180
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {p1, p2, v2}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    .line 182
    sget p2, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {p1, p2, v2}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 184
    invoke-virtual {p1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    return-void
.end method

.method private forceUniformHeight(II)V
    .registers 13

    .line 1316
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p1, :cond_3a

    .line 1319
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1320
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_37

    .line 1321
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1323
    iget v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_37

    .line 1326
    iget v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1327
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move v6, v0

    .line 1330
    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1331
    iput v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3a
    return-void
.end method

.method private forceUniformWidth(II)V
    .registers 13

    .line 894
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p1, :cond_3a

    .line 897
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 898
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_37

    .line 899
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 901
    iget v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_37

    .line 904
    iget v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 905
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    move v6, p2

    .line 908
    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 909
    iput v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3a
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .registers 6

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 1644
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 1750
    instance-of p0, p1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    return p0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .registers 8

    .line 322
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    .line 323
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_3f

    .line 325
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 327
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3c

    .line 328
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 329
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v1, :cond_2f

    .line 332
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    goto :goto_39

    .line 334
    :cond_2f
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v3, v4

    .line 336
    :goto_39
    invoke-virtual {p0, p1, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 341
    :cond_3f
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_7e

    add-int/lit8 v0, v0, -0x1

    .line 342
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_61

    if-eqz v1, :cond_54

    .line 346
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    goto :goto_7b

    .line 348
    :cond_54
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v0, v1

    goto :goto_7b

    .line 351
    :cond_61
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v1, :cond_74

    .line 353
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v0, v1

    goto :goto_7b

    .line 355
    :cond_74
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 358
    :goto_7b
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_7e
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .registers 7

    .line 295
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_31

    .line 297
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 299
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2e

    .line 300
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 301
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 302
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 303
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 308
    :cond_31
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    add-int/lit8 v0, v0, -0x1

    .line 309
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4c

    .line 312
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v0, v1

    goto :goto_59

    .line 314
    :cond_4c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 315
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 317
    :goto_59
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_5c
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .registers 7

    .line 363
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 364
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 363
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 365
    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8

    .line 369
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 370
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 369
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 3

    .line 1733
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_b

    .line 1734
    new-instance p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {p0, v1, v1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object p0

    .line 1735
    :cond_b
    iget p0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_17

    .line 1736
    new-instance p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object p0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 1

    .line 57
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 3

    .line 1720
    new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 2

    .line 1743
    new-instance p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getBaseline()I
    .registers 6

    .line 423
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_9

    .line 424
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result p0

    return p0

    .line 427
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_79

    .line 432
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2b

    .line 436
    iget p0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-nez p0, :cond_23

    return v2

    .line 442
    :cond_23
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 452
    :cond_2b
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 454
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6e

    .line 455
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_6e

    const/16 v4, 0x10

    if-eq v3, v4, :cond_55

    const/16 v4, 0x50

    if-eq v3, v4, :cond_43

    goto :goto_6e

    .line 459
    :cond_43
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget p0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v2, p0

    goto :goto_6e

    .line 463
    :cond_55
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget p0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v3, p0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 470
    :cond_6e
    :goto_6e
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 471
    iget p0, p0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, p0

    add-int/2addr v2, v1

    return v2

    .line 428
    :cond_79
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBaselineAlignedChildIndex()I
    .registers 1

    .line 480
    iget p0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    return p0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 221
    iget-object p0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDividerPadding()I
    .registers 1

    .line 268
    iget p0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    return p0
.end method

.method public getDividerWidth()I
    .registers 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 278
    iget p0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    return p0
.end method

.method public getGravity()I
    .registers 1

    .line 1699
    iget p0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    return p0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public getOrientation()I
    .registers 1

    .line 1666
    iget p0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    return p0
.end method

.method public getShowDividers()I
    .registers 1

    .line 212
    iget p0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    return p0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .registers 2

    .line 505
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method getVirtualChildCount()I
    .registers 1

    .line 518
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getWeightSum()F
    .registers 1

    .line 529
    iget p0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    return p0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_b

    .line 566
    iget p0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_a

    move v0, v1

    :cond_a
    return v0

    .line 567
    :cond_b
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_19

    .line 568
    iget p0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_18

    move v0, v1

    :cond_18
    return v0

    .line 569
    :cond_19
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_34

    sub-int/2addr p1, v1

    :goto_20
    if-ltz p1, :cond_33

    .line 572
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_30

    move v0, v1

    goto :goto_33

    :cond_30
    add-int/lit8 p1, p1, -0x1

    goto :goto_20

    :cond_33
    :goto_33
    return v0

    :cond_34
    return v0
.end method

.method public isBaselineAligned()Z
    .registers 1

    .line 381
    iget-boolean p0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    return p0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .registers 1

    .line 404
    iget-boolean p0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    return p0
.end method

.method layoutHorizontal(IIII)V
    .registers 32

    move-object/from16 v6, p0

    .line 1520
    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    .line 1521
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v7

    sub-int v3, p4, p2

    .line 1528
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int v8, v3, v4

    sub-int/2addr v3, v7

    .line 1531
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int v9, v3, v4

    .line 1533
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v10

    .line 1535
    iget v3, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const v4, 0x800007

    and-int/2addr v3, v4

    .line 1536
    iget v4, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v11, v4, 0x70

    .line 1538
    iget-boolean v12, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 1540
    iget-object v13, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 1541
    iget-object v14, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 1543
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    .line 1544
    invoke-static {v3, v4}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_4e

    const/4 v4, 0x5

    if-eq v3, v4, :cond_41

    .line 1557
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    goto :goto_59

    .line 1547
    :cond_41
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    add-int v3, v3, p3

    sub-int v3, v3, p1

    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v0, v3, v0

    goto :goto_59

    .line 1552
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    sub-int v0, p3, p1

    iget v1, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    div-int/2addr v0, v15

    add-int/2addr v0, v3

    :goto_59
    const/4 v1, 0x0

    if-eqz v2, :cond_63

    add-int/lit8 v2, v10, -0x1

    move/from16 v16, v2

    const/16 v17, -0x1

    goto :goto_67

    :cond_63
    move/from16 v16, v1

    move/from16 v17, v5

    :goto_67
    move v3, v1

    :goto_68
    if-ge v3, v10, :cond_154

    mul-int v1, v17, v3

    add-int v2, v16, v1

    .line 1571
    invoke-virtual {v6, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_85

    .line 1574
    invoke-virtual {v6, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    move/from16 v18, v5

    move/from16 v26, v7

    move/from16 v23, v10

    move/from16 v24, v11

    :goto_81
    const/16 v20, -0x1

    goto/16 :goto_147

    .line 1575
    :cond_85
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v15, 0x8

    if-eq v5, v15, :cond_13b

    .line 1576
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1577
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1581
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move-object/from16 v4, v20

    check-cast v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v12, :cond_ad

    move/from16 v22, v3

    .line 1583
    iget v3, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v23, v10

    const/4 v10, -0x1

    if-eq v3, v10, :cond_b1

    .line 1584
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v3

    goto :goto_b2

    :cond_ad
    move/from16 v22, v3

    move/from16 v23, v10

    :cond_b1
    const/4 v3, -0x1

    .line 1587
    :goto_b2
    iget v10, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v10, :cond_b7

    move v10, v11

    :cond_b7
    and-int/lit8 v10, v10, 0x70

    move/from16 v24, v11

    const/16 v11, 0x10

    if-eq v10, v11, :cond_f6

    const/16 v11, 0x30

    if-eq v10, v11, :cond_e3

    const/16 v11, 0x50

    if-eq v10, v11, :cond_cc

    move v3, v7

    const/4 v11, -0x1

    :goto_c9
    const/16 v18, 0x1

    goto :goto_104

    :cond_cc
    sub-int v10, v8, v5

    .line 1617
    iget v11, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v11

    const/4 v11, -0x1

    if-eq v3, v11, :cond_e1

    .line 1619
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    sub-int v20, v20, v3

    const/4 v3, 0x2

    .line 1620
    aget v21, v14, v3

    sub-int v21, v21, v20

    sub-int v10, v10, v21

    :cond_e1
    move v3, v10

    goto :goto_c9

    :cond_e3
    const/4 v11, -0x1

    .line 1594
    iget v10, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v10, v7

    if-eq v3, v11, :cond_f2

    const/16 v18, 0x1

    .line 1596
    aget v20, v13, v18

    sub-int v20, v20, v3

    add-int v10, v10, v20

    goto :goto_f4

    :cond_f2
    const/16 v18, 0x1

    :goto_f4
    move v3, v10

    goto :goto_104

    :cond_f6
    const/4 v11, -0x1

    const/16 v18, 0x1

    sub-int v3, v9, v5

    const/4 v10, 0x2

    .line 1612
    div-int/2addr v3, v10

    add-int/2addr v3, v7

    iget v10, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v3, v10

    iget v10, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v10

    .line 1628
    :goto_104
    invoke-virtual {v6, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v10

    if-eqz v10, :cond_10d

    .line 1629
    iget v10, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v0, v10

    .line 1632
    :cond_10d
    iget v10, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v10, v0

    .line 1633
    invoke-virtual {v6, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v19, v10, v0

    move-object/from16 v0, p0

    move-object/from16 v25, v1

    move v11, v2

    move/from16 v2, v19

    move/from16 v19, v22

    move/from16 v26, v7

    const/16 v20, -0x1

    move-object v7, v4

    move v4, v15

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1635
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v15, v0

    move-object/from16 v0, v25

    .line 1636
    invoke-virtual {v6, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v15, v1

    add-int/2addr v10, v15

    .line 1638
    invoke-virtual {v6, v0, v11}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v3, v19, v0

    move v0, v10

    goto :goto_147

    :cond_13b
    move/from16 v19, v3

    move/from16 v26, v7

    move/from16 v23, v10

    move/from16 v24, v11

    const/16 v18, 0x1

    goto/16 :goto_81

    :goto_147
    add-int/lit8 v3, v3, 0x1

    move/from16 v5, v18

    move/from16 v10, v23

    move/from16 v11, v24

    move/from16 v7, v26

    const/4 v15, 0x2

    goto/16 :goto_68

    :cond_154
    return-void
.end method

.method layoutVertical(IIII)V
    .registers 22

    move-object/from16 v6, p0

    .line 1425
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v7

    sub-int v2, p3, p1

    .line 1432
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int v8, v2, v3

    sub-int/2addr v2, v7

    .line 1435
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int v9, v2, v3

    .line 1437
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v10

    .line 1439
    iget v2, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    .line 1440
    iget v3, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const v4, 0x800007

    and-int v11, v3, v4

    const/16 v3, 0x10

    if-eq v2, v3, :cond_3e

    const/16 v3, 0x50

    if-eq v2, v3, :cond_31

    .line 1455
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    goto :goto_4a

    .line 1445
    :cond_31
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v2

    add-int v2, v2, p4

    sub-int v2, v2, p2

    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v0, v2, v0

    goto :goto_4a

    .line 1450
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v2

    sub-int v0, p4, p2

    iget v1, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    :goto_4a
    const/4 v1, 0x0

    move v12, v1

    :goto_4c
    if-ge v12, v10, :cond_cf

    .line 1460
    invoke-virtual {v6, v12}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x1

    if-nez v13, :cond_5d

    .line 1462
    invoke-virtual {v6, v12}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5a
    move v1, v14

    goto/16 :goto_cc

    .line 1463
    :cond_5d
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_5a

    .line 1464
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1465
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 1468
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1470
    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v1, :cond_79

    move v1, v11

    .line 1474
    :cond_79
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 1475
    invoke-static {v1, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v14, :cond_93

    const/4 v2, 0x5

    if-eq v1, v2, :cond_8d

    .line 1489
    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    :goto_8b
    move v2, v1

    goto :goto_9f

    :cond_8d
    sub-int v1, v8, v4

    .line 1484
    iget v2, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    goto :goto_8b

    :cond_93
    sub-int v1, v9, v4

    .line 1479
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    iget v2, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    goto :goto_8b

    .line 1493
    :goto_9f
    invoke-virtual {v6, v12}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 1494
    iget v1, v6, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v0, v1

    .line 1497
    :cond_a8
    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v16, v0, v1

    .line 1498
    invoke-virtual {v6, v13}, Landroid/support/v7/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v3, v16, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v14, v5

    move v5, v15

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1500
    iget v0, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v0

    invoke-virtual {v6, v13}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int/2addr v15, v0

    add-int v16, v16, v15

    .line 1502
    invoke-virtual {v6, v13, v12}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v12, v0

    move/from16 v0, v16

    const/4 v1, 0x1

    :goto_cc
    add-int/2addr v12, v1

    goto/16 :goto_4c

    :cond_cf
    return-void
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 13

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 1376
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method measureHorizontal(II)V
    .registers 42

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    .line 927
    iput v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 935
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 937
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 938
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 943
    iget-object v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    const/4 v14, 0x4

    if-eqz v0, :cond_1e

    iget-object v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    if-nez v0, :cond_26

    .line 944
    :cond_1e
    new-array v0, v14, [I

    iput-object v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 945
    new-array v0, v14, [I

    iput-object v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 948
    :cond_26
    iget-object v15, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 949
    iget-object v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I

    const/16 v16, 0x3

    const/4 v5, -0x1

    .line 951
    aput v5, v15, v16

    const/16 v17, 0x2

    aput v5, v15, v17

    const/16 v18, 0x1

    aput v5, v15, v18

    aput v5, v15, v10

    .line 952
    aput v5, v6, v16

    aput v5, v6, v17

    aput v5, v6, v18

    aput v5, v6, v10

    .line 954
    iget-boolean v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 955
    iget-boolean v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v12, v2, :cond_4c

    move/from16 v19, v18

    goto :goto_4e

    :cond_4c
    move/from16 v19, v10

    :goto_4e
    const/16 v20, 0x0

    move v0, v10

    move/from16 v22, v0

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v27, v25

    move/from16 v29, v27

    move/from16 v28, v18

    move/from16 v21, v20

    const/high16 v14, -0x80000000

    :goto_63
    move-object/from16 v30, v6

    const/16 v1, 0x8

    if-ge v0, v11, :cond_212

    .line 963
    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_7f

    .line 966
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v6

    add-int/2addr v1, v6

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v31, v3

    move/from16 v33, v4

    move v8, v5

    goto/16 :goto_200

    .line 970
    :cond_7f
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v1, :cond_91

    .line 971
    invoke-virtual {v7, v6, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v0, v1

    move/from16 v31, v3

    move/from16 v33, v4

    const/4 v8, -0x1

    goto/16 :goto_200

    .line 975
    :cond_91
    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 976
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v1, v5

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 980
    :cond_9e
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 982
    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v21, v21, v1

    if-ne v12, v2, :cond_f8

    .line 984
    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v1, :cond_f8

    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v1, v1, v20

    if-lez v1, :cond_f8

    if-eqz v19, :cond_c2

    .line 989
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v2, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v10, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v10

    add-int/2addr v1, v2

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_d0

    .line 991
    :cond_c2
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 992
    iget v2, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    iget v10, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_d0
    if-eqz v4, :cond_e7

    const/4 v1, 0x0

    .line 1002
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1003
    invoke-virtual {v6, v2, v2}, Landroid/view/View;->measure(II)V

    move/from16 v35, v0

    move/from16 v31, v3

    move/from16 v33, v4

    move-object v9, v5

    move-object v3, v6

    const/4 v8, -0x1

    const/16 v32, -0x2

    goto/16 :goto_173

    :cond_e7
    move/from16 v35, v0

    move/from16 v31, v3

    move/from16 v33, v4

    move-object v9, v5

    move-object v3, v6

    move/from16 v23, v18

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v8, -0x1

    const/16 v32, -0x2

    goto/16 :goto_175

    .line 1010
    :cond_f8
    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v1, :cond_107

    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v1, v1, v20

    if-lez v1, :cond_107

    const/4 v10, -0x2

    .line 1016
    iput v10, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v2, 0x0

    goto :goto_10a

    :cond_107
    const/4 v10, -0x2

    const/high16 v2, -0x80000000

    :goto_10a
    cmpl-float v1, v21, v20

    if-nez v1, :cond_113

    .line 1023
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v1

    goto :goto_115

    :cond_113
    const/16 v32, 0x0

    :goto_115
    const/16 v34, 0x0

    move v1, v0

    move-object/from16 v0, p0

    move/from16 v35, v1

    const/high16 v10, -0x80000000

    move-object v1, v6

    move v10, v2

    move/from16 v2, v35

    move/from16 v31, v3

    move/from16 v3, p1

    move/from16 v33, v4

    move/from16 v4, v32

    move-object v9, v5

    const/4 v8, -0x1

    move/from16 v5, p2

    move-object/from16 v36, v6

    const/16 v32, -0x2

    move/from16 v6, v34

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    const/high16 v0, -0x80000000

    if-eq v10, v0, :cond_13d

    .line 1028
    iput v10, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1031
    :cond_13d
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v19, :cond_156

    .line 1033
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v2, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    iget v3, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    move-object/from16 v3, v36

    .line 1034
    invoke-virtual {v7, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_16d

    :cond_156
    move-object/from16 v3, v36

    .line 1036
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v2, v1, v0

    .line 1037
    iget v4, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 1038
    invoke-virtual {v7, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1037
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_16d
    if-eqz v31, :cond_173

    .line 1042
    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_173
    :goto_173
    const/high16 v0, 0x40000000    # 2.0f

    :goto_175
    if-eq v13, v0, :cond_180

    .line 1047
    iget v1, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-ne v1, v8, :cond_180

    move/from16 v1, v18

    move/from16 v29, v1

    goto :goto_181

    :cond_180
    const/4 v1, 0x0

    .line 1055
    :goto_181
    iget v2, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v4, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    .line 1056
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 1057
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    move/from16 v10, v27

    invoke-static {v10, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    if-eqz v33, :cond_1c2

    .line 1060
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v6

    if-eq v6, v8, :cond_1c2

    .line 1064
    iget v10, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v10, :cond_1a4

    iget v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_1a6

    :cond_1a4
    iget v10, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_1a6
    and-int/lit8 v10, v10, 0x70

    const/16 v26, 0x4

    shr-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, -0x2

    shr-int/lit8 v10, v10, 0x1

    .line 1069
    aget v0, v15, v10

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v15, v10

    .line 1070
    aget v0, v30, v10

    sub-int v6, v4, v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v30, v10

    :cond_1c2
    move/from16 v0, v22

    .line 1074
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v28, :cond_1d1

    .line 1076
    iget v6, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-ne v6, v8, :cond_1d1

    move/from16 v6, v18

    goto :goto_1d2

    :cond_1d1
    const/4 v6, 0x0

    .line 1077
    :goto_1d2
    iget v9, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v9, v9, v20

    if-lez v9, :cond_1e6

    if-eqz v1, :cond_1dd

    :goto_1da
    move/from16 v9, v25

    goto :goto_1df

    :cond_1dd
    move v2, v4

    goto :goto_1da

    .line 1082
    :goto_1df
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v25

    :goto_1e3
    move/from16 v10, v35

    goto :goto_1f4

    :cond_1e6
    move/from16 v9, v25

    if-eqz v1, :cond_1eb

    move v4, v2

    :cond_1eb
    move/from16 v2, v24

    .line 1085
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v24

    move/from16 v25, v9

    goto :goto_1e3

    .line 1089
    :goto_1f4
    invoke-virtual {v7, v3, v10}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v1, v10

    move/from16 v22, v0

    move v0, v1

    move/from16 v27, v5

    move/from16 v28, v6

    :goto_200
    add-int/lit8 v0, v0, 0x1

    move v5, v8

    move-object/from16 v6, v30

    move/from16 v3, v31

    move/from16 v4, v33

    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    goto/16 :goto_63

    :cond_212
    move/from16 v31, v3

    move/from16 v33, v4

    move v8, v5

    move/from16 v0, v22

    move/from16 v2, v24

    move/from16 v9, v25

    move/from16 v10, v27

    const/16 v32, -0x2

    .line 1092
    iget v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v3, :cond_232

    invoke-virtual {v7, v11}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_232

    .line 1093
    iget v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v3, v4

    iput v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1098
    :cond_232
    aget v3, v15, v18

    if-ne v3, v8, :cond_243

    const/4 v3, 0x0

    aget v4, v15, v3

    if-ne v4, v8, :cond_243

    aget v3, v15, v17

    if-ne v3, v8, :cond_243

    aget v3, v15, v16

    if-eq v3, v8, :cond_273

    .line 1102
    :cond_243
    aget v3, v15, v16

    const/4 v4, 0x0

    aget v5, v15, v4

    aget v6, v15, v18

    aget v8, v15, v17

    .line 1104
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1103
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1102
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1105
    aget v5, v30, v16

    aget v6, v30, v4

    aget v4, v30, v18

    aget v8, v30, v17

    .line 1107
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1106
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1105
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1108
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v22

    :cond_273
    if-eqz v31, :cond_2d0

    const/high16 v3, -0x80000000

    if-eq v12, v3, :cond_27b

    if-nez v12, :cond_2d0

    :cond_27b
    const/4 v3, 0x0

    .line 1113
    iput v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    const/4 v3, 0x0

    :goto_27f
    if-ge v3, v11, :cond_2d0

    .line 1116
    invoke-virtual {v7, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_291

    .line 1119
    iget v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_2cb

    .line 1123
    :cond_291
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v1, :cond_29d

    .line 1124
    invoke-virtual {v7, v4, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_2cb

    .line 1129
    :cond_29d
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v19, :cond_2b6

    .line 1131
    iget v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v8, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v8, v14

    iget v5, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v8, v5

    .line 1132
    invoke-virtual {v7, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v8, v4

    add-int/2addr v6, v8

    iput v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_2cb

    .line 1134
    :cond_2b6
    iget v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v8, v6, v14

    .line 1135
    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v8, v1

    iget v1, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v8, v1

    .line 1136
    invoke-virtual {v7, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v8, v1

    .line 1135
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_2cb
    add-int/lit8 v3, v3, 0x1

    const/16 v1, 0x8

    goto :goto_27f

    .line 1142
    :cond_2d0
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1144
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1147
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v3, p1

    const/4 v4, 0x0

    const/4 v8, -0x1

    .line 1150
    invoke-static {v1, v3, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    const v4, 0xffffff

    and-int/2addr v4, v1

    .line 1156
    iget v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v4, v5

    if-nez v23, :cond_340

    if-eqz v4, :cond_300

    cmpl-float v6, v21, v20

    if-lez v6, :cond_300

    goto :goto_340

    .line 1268
    :cond_300
    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v31, :cond_33c

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v12, v4, :cond_33c

    const/4 v4, 0x0

    :goto_30b
    if-ge v4, v11, :cond_33c

    .line 1274
    invoke-virtual {v7, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_339

    .line 1276
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_31c

    goto :goto_339

    .line 1281
    :cond_31c
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1283
    iget v8, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v8, v8, v20

    if-lez v8, :cond_339

    const/high16 v8, 0x40000000    # 2.0f

    .line 1286
    invoke-static {v14, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1287
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-static {v12, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1285
    invoke-virtual {v6, v9, v12}, Landroid/view/View;->measure(II)V

    :cond_339
    :goto_339
    add-int/lit8 v4, v4, 0x1

    goto :goto_30b

    :cond_33c
    move/from16 v4, p2

    goto/16 :goto_4d4

    .line 1158
    :cond_340
    :goto_340
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v0, v0, v20

    if-lez v0, :cond_349

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    goto :goto_34b

    :cond_349
    move/from16 v0, v21

    .line 1160
    :goto_34b
    aput v8, v15, v16

    aput v8, v15, v17

    aput v8, v15, v18

    const/4 v6, 0x0

    aput v8, v15, v6

    .line 1161
    aput v8, v30, v16

    aput v8, v30, v17

    aput v8, v30, v18

    aput v8, v30, v6

    .line 1164
    iput v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move v9, v2

    move v6, v8

    move v2, v0

    const/4 v0, 0x0

    :goto_362
    if-ge v0, v11, :cond_480

    .line 1167
    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_470

    .line 1169
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v5, 0x8

    if-ne v8, v5, :cond_374

    goto/16 :goto_470

    .line 1174
    :cond_374
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 1176
    iget v5, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v21, v5, v20

    if-lez v21, :cond_3d5

    int-to-float v3, v4

    mul-float/2addr v3, v5

    div-float/2addr v3, v2

    float-to-int v3, v3

    sub-float/2addr v2, v5

    sub-int/2addr v4, v3

    .line 1185
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v21

    add-int v5, v5, v21

    move/from16 v37, v2

    iget v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v5, v2

    iget v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v2

    iget v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v38, v4

    move/from16 v4, p2

    .line 1183
    invoke-static {v4, v5, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v2

    .line 1190
    iget v5, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v5, :cond_3b7

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v12, v5, :cond_3ab

    goto :goto_3b9

    :cond_3ab
    if-lez v3, :cond_3ae

    goto :goto_3af

    :cond_3ae
    const/4 v3, 0x0

    .line 1203
    :goto_3af
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v14, v3, v2}, Landroid/view/View;->measure(II)V

    goto :goto_3c9

    :cond_3b7
    const/high16 v5, 0x40000000    # 2.0f

    .line 1193
    :goto_3b9
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v3, v21, v3

    if-gez v3, :cond_3c2

    const/4 v3, 0x0

    .line 1199
    :cond_3c2
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1198
    invoke-virtual {v14, v3, v2}, Landroid/view/View;->measure(II)V

    .line 1210
    :goto_3c9
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    .line 1209
    invoke-static {v10, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    goto :goto_3dc

    :cond_3d5
    move v3, v4

    move/from16 v4, p2

    move/from16 v37, v2

    move/from16 v38, v3

    :goto_3dc
    if-eqz v19, :cond_3f5

    .line 1214
    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v5, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    .line 1215
    invoke-virtual {v7, v14}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    iput v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_3f2
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_40e

    .line 1217
    :cond_3f5
    iget v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1218
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v2

    iget v5, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v3, v5

    .line 1219
    invoke-virtual {v7, v14}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    .line 1218
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_3f2

    :goto_40e
    if-eq v13, v2, :cond_418

    .line 1222
    iget v2, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_418

    move/from16 v2, v18

    goto :goto_419

    :cond_418
    const/4 v2, 0x0

    .line 1225
    :goto_419
    iget v3, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v5, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v5

    .line 1226
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    .line 1227
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-eqz v2, :cond_42a

    goto :goto_42b

    :cond_42a
    move v3, v5

    .line 1228
    :goto_42b
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v28, :cond_439

    .line 1231
    iget v3, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v9, -0x1

    if-ne v3, v9, :cond_43a

    move/from16 v3, v18

    goto :goto_43b

    :cond_439
    const/4 v9, -0x1

    :cond_43a
    const/4 v3, 0x0

    :goto_43b
    if-eqz v33, :cond_468

    .line 1234
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v14

    if-eq v14, v9, :cond_468

    .line 1237
    iget v9, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v9, :cond_44a

    iget v8, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_44c

    :cond_44a
    iget v8, v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_44c
    and-int/lit8 v8, v8, 0x70

    const/16 v21, 0x4

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, -0x2

    shr-int/lit8 v8, v8, 0x1

    .line 1242
    aget v9, v15, v8

    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v15, v8

    .line 1243
    aget v9, v30, v8

    sub-int/2addr v5, v14

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v30, v8

    goto :goto_46a

    :cond_468
    const/16 v21, 0x4

    :goto_46a
    move v9, v2

    move/from16 v28, v3

    move/from16 v2, v37

    goto :goto_477

    :cond_470
    :goto_470
    move v3, v4

    move/from16 v4, p2

    const/16 v21, 0x4

    move/from16 v38, v3

    :goto_477
    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v38

    move/from16 v3, p1

    const/4 v8, -0x1

    goto/16 :goto_362

    :cond_480
    move/from16 v4, p2

    .line 1250
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1255
    aget v0, v15, v18

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4a5

    const/4 v0, 0x0

    aget v3, v15, v0

    if-ne v3, v2, :cond_4a5

    aget v0, v15, v17

    if-ne v0, v2, :cond_4a5

    aget v0, v15, v16

    if-eq v0, v2, :cond_4a3

    goto :goto_4a5

    :cond_4a3
    move v0, v6

    goto :goto_4d3

    .line 1259
    :cond_4a5
    :goto_4a5
    aget v0, v15, v16

    const/4 v2, 0x0

    aget v3, v15, v2

    aget v5, v15, v18

    aget v8, v15, v17

    .line 1261
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1260
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1259
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1262
    aget v3, v30, v16

    aget v2, v30, v2

    aget v5, v30, v18

    aget v8, v30, v17

    .line 1264
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1263
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1262
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1265
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_4d3
    move v2, v9

    :goto_4d4
    if-nez v28, :cond_4db

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v13, v3, :cond_4db

    move v0, v2

    .line 1298
    :cond_4db
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 1301
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v2, -0x1000000

    and-int/2addr v2, v10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v10, 0x10

    .line 1304
    invoke-static {v0, v4, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 1303
    invoke-virtual {v7, v1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    if-eqz v29, :cond_501

    move/from16 v0, p1

    .line 1308
    invoke-direct {v7, v11, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->forceUniformHeight(II)V

    :cond_501
    return-void
.end method

.method measureNullChild(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method measureVertical(II)V
    .registers 43

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    .line 594
    iput v10, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 602
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 604
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 605
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 610
    iget v14, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 611
    iget-boolean v15, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    const/16 v16, 0x0

    const/16 v17, 0x1

    move v1, v10

    move v3, v1

    move v5, v3

    move/from16 v18, v5

    move/from16 v20, v18

    move/from16 v21, v20

    move/from16 v0, v16

    move/from16 v19, v17

    const/high16 v2, -0x80000000

    :goto_2c
    if-ge v5, v11, :cond_1a7

    .line 617
    invoke-virtual {v7, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_46

    .line 620
    iget v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v22

    add-int v4, v4, v22

    iput v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v32, v11

    move/from16 v31, v13

    :goto_42
    const/high16 v9, -0x80000000

    goto/16 :goto_19b

    .line 624
    :cond_46
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    move/from16 v25, v1

    const/16 v1, 0x8

    if-ne v6, v1, :cond_5c

    .line 625
    invoke-virtual {v7, v4, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v5, v1

    move/from16 v32, v11

    move/from16 v31, v13

    move/from16 v1, v25

    goto :goto_42

    .line 629
    :cond_5c
    invoke-virtual {v7, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 630
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v1, v6

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 633
    :cond_69
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 635
    iget v1, v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v23, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v13, v1, :cond_a5

    .line 637
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v0, :cond_a5

    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_a5

    .line 641
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 642
    iget v1, v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v1, v0

    move/from16 v26, v2

    iget v2, v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v34, v3

    move-object v3, v4

    move/from16 v32, v11

    move/from16 v31, v13

    move/from16 v18, v17

    move/from16 v33, v21

    move/from16 v8, v25

    const/high16 v9, -0x80000000

    move v11, v5

    move-object v13, v6

    goto/16 :goto_11f

    :cond_a5
    move/from16 v26, v2

    .line 647
    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v0, :cond_b6

    iget v0, v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_b6

    const/4 v0, -0x2

    .line 653
    iput v0, v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v2, 0x0

    goto :goto_b8

    :cond_b6
    const/high16 v2, -0x80000000

    :goto_b8
    const/16 v24, 0x0

    cmpl-float v0, v23, v16

    if-nez v0, :cond_c3

    .line 660
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v27, v0

    goto :goto_c5

    :cond_c3
    const/16 v27, 0x0

    :goto_c5
    move-object/from16 v0, p0

    move/from16 v8, v25

    const/high16 v25, 0x40000000    # 2.0f

    move-object v1, v4

    move/from16 v28, v2

    move/from16 v29, v26

    move v2, v5

    move v9, v3

    move/from16 v3, p1

    move-object/from16 v30, v4

    move/from16 v32, v11

    move/from16 v31, v13

    move/from16 v13, v21

    move/from16 v11, v25

    move/from16 v4, v24

    move v11, v5

    move/from16 v5, p2

    move/from16 v34, v9

    move/from16 v33, v13

    const/high16 v9, -0x80000000

    move-object v13, v6

    move/from16 v6, v27

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    move/from16 v0, v28

    if-eq v0, v9, :cond_f5

    .line 665
    iput v0, v13, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 668
    :cond_f5
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 669
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v2, v1, v0

    .line 670
    iget v3, v13, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v13, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    move-object/from16 v3, v30

    .line 671
    invoke-virtual {v7, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 670
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    if-eqz v15, :cond_11b

    move/from16 v6, v29

    .line 674
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v26, v2

    goto :goto_11f

    :cond_11b
    move/from16 v6, v29

    move/from16 v26, v6

    :goto_11f
    if-ltz v14, :cond_129

    add-int/lit8 v5, v11, 0x1

    if-ne v14, v5, :cond_129

    .line 683
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I

    :cond_129
    if-ge v11, v14, :cond_13a

    .line 689
    iget v0, v13, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v16

    if-gtz v0, :cond_132

    goto :goto_13a

    .line 690
    :cond_132
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13a
    :goto_13a
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_148

    .line 697
    iget v0, v13, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_149

    move/from16 v0, v17

    move/from16 v20, v0

    goto :goto_14a

    :cond_148
    const/4 v1, -0x1

    :cond_149
    const/4 v0, 0x0

    .line 706
    :goto_14a
    iget v2, v13, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v4, v13, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 707
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 708
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 710
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    .line 709
    invoke-static {v10, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    if-eqz v19, :cond_169

    .line 712
    iget v8, v13, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-ne v8, v1, :cond_169

    move/from16 v1, v17

    goto :goto_16a

    :cond_169
    const/4 v1, 0x0

    .line 713
    :goto_16a
    iget v8, v13, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v8, v8, v16

    if-lez v8, :cond_17d

    if-eqz v0, :cond_175

    :goto_172
    move/from16 v13, v34

    goto :goto_177

    :cond_175
    move v2, v4

    goto :goto_172

    .line 718
    :goto_177
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v13, v0

    goto :goto_18a

    :cond_17d
    move/from16 v13, v34

    if-eqz v0, :cond_182

    move v4, v2

    :cond_182
    move/from16 v2, v33

    .line 721
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v33, v21

    .line 725
    :goto_18a
    invoke-virtual {v7, v3, v11}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v0, v11

    move/from16 v19, v1

    move v1, v5

    move v10, v6

    move v3, v13

    move/from16 v2, v26

    move/from16 v21, v33

    move v5, v0

    move/from16 v0, v23

    :goto_19b
    add-int/lit8 v5, v5, 0x1

    move/from16 v13, v31

    move/from16 v11, v32

    move/from16 v8, p1

    move/from16 v9, p2

    goto/16 :goto_2c

    :cond_1a7
    move v8, v1

    move v6, v2

    move/from16 v32, v11

    move/from16 v31, v13

    move/from16 v2, v21

    const/4 v1, -0x1

    const/high16 v9, -0x80000000

    move v13, v3

    .line 728
    iget v3, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v3, :cond_1c7

    move/from16 v3, v32

    invoke-virtual {v7, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_1c9

    .line 729
    iget v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    iget v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v4, v5

    iput v4, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_1c9

    :cond_1c7
    move/from16 v3, v32

    :cond_1c9
    :goto_1c9
    if-eqz v15, :cond_217

    move/from16 v4, v31

    if-eq v4, v9, :cond_1d1

    if-nez v4, :cond_219

    :cond_1d1
    const/4 v5, 0x0

    .line 734
    iput v5, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    const/4 v5, 0x0

    :goto_1d5
    if-ge v5, v3, :cond_219

    .line 737
    invoke-virtual {v7, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_1e7

    .line 740
    iget v9, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v11

    add-int/2addr v9, v11

    iput v9, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_213

    .line 744
    :cond_1e7
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v14, 0x8

    if-ne v11, v14, :cond_1f5

    .line 745
    invoke-virtual {v7, v9, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v9

    add-int/2addr v5, v9

    goto :goto_213

    .line 750
    :cond_1f5
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 752
    iget v14, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v21, v14, v6

    .line 753
    iget v1, v11, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v21, v21, v1

    iget v1, v11, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v21, v21, v1

    .line 754
    invoke-virtual {v7, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v1, v21, v1

    .line 753
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_213
    add-int/lit8 v5, v5, 0x1

    const/4 v1, -0x1

    goto :goto_1d5

    :cond_217
    move/from16 v4, v31

    .line 759
    :cond_219
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v9

    add-int/2addr v5, v9

    add-int/2addr v1, v5

    iput v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 761
    iget v1, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 764
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v9, v13

    move/from16 v5, p2

    const/4 v11, 0x0

    .line 767
    invoke-static {v1, v5, v11}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    const v11, 0xffffff

    and-int/2addr v11, v1

    .line 773
    iget v13, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v11, v13

    if-nez v18, :cond_289

    if-eqz v11, :cond_249

    cmpl-float v13, v0, v16

    if-lez v13, :cond_249

    goto :goto_289

    .line 846
    :cond_249
    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v15, :cond_285

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v4, v2, :cond_285

    const/4 v2, 0x0

    :goto_254
    if-ge v2, v3, :cond_285

    .line 854
    invoke-virtual {v7, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_282

    .line 856
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v11, 0x8

    if-ne v9, v11, :cond_265

    goto :goto_282

    .line 861
    :cond_265
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 863
    iget v9, v9, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v9, v9, v16

    if-lez v9, :cond_282

    .line 866
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 868
    invoke-static {v6, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 865
    invoke-virtual {v4, v9, v13}, Landroid/view/View;->measure(II)V

    :cond_282
    :goto_282
    add-int/lit8 v2, v2, 0x1

    goto :goto_254

    :cond_285
    move/from16 v11, p1

    goto/16 :goto_382

    .line 775
    :cond_289
    :goto_289
    iget v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v6, v6, v16

    if-lez v6, :cond_291

    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    :cond_291
    const/4 v6, 0x0

    .line 777
    iput v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move v9, v0

    move v0, v6

    :goto_296
    if-ge v0, v3, :cond_371

    .line 780
    invoke-virtual {v7, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 782
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_2ac

    move/from16 v37, v4

    move/from16 v39, v11

    move/from16 v11, p1

    goto/16 :goto_368

    .line 786
    :cond_2ac
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    .line 788
    iget v6, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v18, v6, v16

    if-lez v18, :cond_310

    int-to-float v15, v11

    mul-float/2addr v15, v6

    div-float/2addr v15, v9

    float-to-int v15, v15

    sub-float/2addr v9, v6

    sub-int/2addr v11, v15

    .line 796
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v18

    add-int v6, v6, v18

    move/from16 v35, v9

    iget v9, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v6, v9

    iget v9, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v6, v9

    iget v9, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v36, v11

    move/from16 v11, p1

    .line 795
    invoke-static {v11, v6, v9}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v6

    .line 801
    iget v9, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v9, :cond_2ef

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v4, v9, :cond_2e3

    goto :goto_2f1

    :cond_2e3
    if-lez v15, :cond_2e6

    goto :goto_2e7

    :cond_2e6
    const/4 v15, 0x0

    .line 815
    :goto_2e7
    invoke-static {v15, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 814
    invoke-virtual {v13, v6, v15}, Landroid/view/View;->measure(II)V

    goto :goto_301

    :cond_2ef
    const/high16 v9, 0x40000000    # 2.0f

    .line 804
    :goto_2f1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    add-int v15, v18, v15

    if-gez v15, :cond_2fa

    const/4 v15, 0x0

    .line 810
    :cond_2fa
    invoke-static {v15, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 809
    invoke-virtual {v13, v6, v15}, Landroid/view/View;->measure(II)V

    .line 821
    :goto_301
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    and-int/lit16 v6, v6, -0x100

    .line 820
    invoke-static {v10, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v10

    move/from16 v9, v35

    move/from16 v6, v36

    goto :goto_313

    :cond_310
    move v6, v11

    move/from16 v11, p1

    .line 825
    :goto_313
    iget v15, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v37, v4

    iget v4, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v15, v4

    .line 826
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v15

    .line 827
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    move/from16 v38, v4

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v12, v4, :cond_333

    .line 829
    iget v4, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v39, v6

    const/4 v6, -0x1

    if-ne v4, v6, :cond_336

    move/from16 v4, v17

    goto :goto_337

    :cond_333
    move/from16 v39, v6

    const/4 v6, -0x1

    :cond_336
    const/4 v4, 0x0

    :goto_337
    if-eqz v4, :cond_33a

    goto :goto_33c

    :cond_33a
    move/from16 v15, v38

    .line 832
    :goto_33c
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v19, :cond_349

    .line 835
    iget v4, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-ne v4, v6, :cond_349

    move/from16 v4, v17

    goto :goto_34a

    :cond_349
    const/4 v4, 0x0

    .line 837
    :goto_34a
    iget v15, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    .line 838
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    add-int v18, v15, v18

    iget v6, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v18, v18, v6

    iget v6, v14, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v18, v18, v6

    .line 839
    invoke-virtual {v7, v13}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int v6, v18, v6

    .line 838
    invoke-static {v15, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v19, v4

    :goto_368
    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v37

    move/from16 v11, v39

    const/4 v6, 0x0

    goto/16 :goto_296

    :cond_371
    move/from16 v11, p1

    .line 843
    iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v0, v4

    iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I

    move v0, v2

    :goto_382
    if-nez v19, :cond_389

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v12, v2, :cond_389

    goto :goto_38a

    :cond_389
    move v0, v8

    .line 879
    :goto_38a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    .line 882
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 884
    invoke-static {v0, v11, v10}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v7, v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    if-eqz v20, :cond_3a8

    .line 888
    invoke-direct {v7, v3, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->forceUniformWidth(II)V

    :cond_3a8
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 283
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    return-void

    .line 287
    :cond_5
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 288
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_11

    .line 290
    :cond_e
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    :goto_11
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1755
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_12

    .line 1756
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1757
    const-class p0, Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    :cond_12
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    .line 1763
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_12

    .line 1764
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1765
    const-class p0, Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_12
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .line 1405
    iget p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 1406
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/LinearLayoutCompat;->layoutVertical(IIII)V

    goto :goto_c

    .line 1408
    :cond_9
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/LinearLayoutCompat;->layoutHorizontal(IIII)V

    :goto_c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 550
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 551
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->measureVertical(II)V

    goto :goto_c

    .line 553
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->measureHorizontal(II)V

    :goto_c
    return-void
.end method

.method public setBaselineAligned(Z)V
    .registers 2

    .line 392
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .registers 4

    if-ltz p1, :cond_b

    .line 488
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_b

    .line 492
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    return-void

    .line 489
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "base aligned child index out of range (0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 232
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_5

    return-void

    .line 235
    :cond_5
    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 237
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 238
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    goto :goto_1b

    .line 240
    :cond_17
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 241
    iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I

    :goto_1b
    if-nez p1, :cond_1e

    const/4 v0, 0x1

    .line 243
    :cond_1e
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->setWillNotDraw(Z)V

    .line 244
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    return-void
.end method

.method public setDividerPadding(I)V
    .registers 2

    .line 257
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I

    return-void
.end method

.method public setGravity(I)V
    .registers 3

    .line 1678
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    if-eq v0, p1, :cond_19

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    or-int/lit8 p1, p1, 0x30

    .line 1687
    :cond_14
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1688
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    :cond_19
    return-void
.end method

.method public setHorizontalGravity(I)V
    .registers 4

    const v0, 0x800007

    and-int/2addr p1, v0

    .line 1704
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/2addr v0, v1

    if-eq v0, p1, :cond_15

    .line 1705
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    const v1, -0x800008

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1706
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    :cond_15
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .registers 2

    .line 418
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z

    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    .line 1653
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    if-eq v0, p1, :cond_9

    .line 1654
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I

    .line 1655
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setShowDividers(I)V
    .registers 3

    .line 195
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    if-eq p1, v0, :cond_7

    .line 196
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    .line 198
    :cond_7
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .registers 3

    and-int/lit8 p1, p1, 0x70

    .line 1712
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v0, v0, 0x70

    if-eq v0, p1, :cond_12

    .line 1713
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v0, v0, -0x71

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I

    .line 1714
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V

    :cond_12
    return-void
.end method

.method public setWeightSum(F)V
    .registers 3

    const/4 v0, 0x0

    .line 545
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
