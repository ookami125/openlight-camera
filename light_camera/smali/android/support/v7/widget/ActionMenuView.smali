.class public Landroid/support/v7/widget/ActionMenuView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "ActionMenuView.java"

# interfaces
.implements Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;
.implements Landroid/support/v7/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionMenuView$LayoutParams;,
        Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;,
        Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;,
        Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;,
        Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 80
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/ActionMenuView;->setBaselineAligned(Z)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 82
    iput v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 83
    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    .line 84
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 85
    iput p2, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .registers 10

    .line 403
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 405
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    .line 407
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    .line 408
    invoke-static {v1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 410
    instance-of p4, p0, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz p4, :cond_1b

    move-object p4, p0

    check-cast p4, Landroid/support/v7/view/menu/ActionMenuItemView;

    goto :goto_1c

    :cond_1b
    const/4 p4, 0x0

    :goto_1c
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_28

    .line 412
    invoke-virtual {p4}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result p4

    if-eqz p4, :cond_28

    move p4, v1

    goto :goto_29

    :cond_28
    move p4, v2

    :goto_29
    const/4 v3, 0x2

    if-lez p2, :cond_4c

    if-eqz p4, :cond_30

    if-lt p2, v3, :cond_4c

    :cond_30
    mul-int/2addr p2, p1

    const/high16 v4, -0x80000000

    .line 416
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 418
    invoke-virtual {p0, p2, p3}, Landroid/view/View;->measure(II)V

    .line 420
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 421
    div-int v4, p2, p1

    .line 422
    rem-int/2addr p2, p1

    if-eqz p2, :cond_45

    add-int/lit8 v4, v4, 0x1

    :cond_45
    if-eqz p4, :cond_4a

    if-ge v4, v3, :cond_4a

    goto :goto_4d

    :cond_4a
    move v3, v4

    goto :goto_4d

    :cond_4c
    move v3, v2

    .line 426
    :goto_4d
    iget-boolean p2, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez p2, :cond_54

    if-eqz p4, :cond_54

    goto :goto_55

    :cond_54
    move v1, v2

    .line 427
    :goto_55
    iput-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 429
    iput v3, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int/2addr p1, v3

    const/high16 p2, 0x40000000    # 2.0f

    .line 431
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->measure(II)V

    return v3
.end method

.method private onMeasureExactFormat(II)V
    .registers 34

    move-object/from16 v0, p0

    .line 177
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 178
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 179
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 182
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, -0x2

    move/from16 v7, p2

    .line 184
    invoke-static {v7, v5, v6}, Landroid/support/v7/widget/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v6

    sub-int/2addr v2, v4

    .line 190
    iget v4, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    div-int v4, v2, v4

    .line 191
    iget v7, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    rem-int v7, v2, v7

    const/4 v8, 0x0

    if-nez v4, :cond_37

    .line 195
    invoke-virtual {v0, v2, v8}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    return-void

    .line 199
    :cond_37
    iget v9, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I

    div-int/2addr v7, v4

    add-int/2addr v9, v7

    .line 211
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v7

    move v14, v4

    move v4, v8

    move v10, v4

    move v12, v10

    move v13, v12

    move v15, v13

    move/from16 v16, v15

    const-wide/16 v19, 0x0

    :goto_49
    if-ge v4, v7, :cond_d6

    .line 213
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 214
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v8

    move/from16 v21, v3

    const/16 v3, 0x8

    if-ne v8, v3, :cond_5d

    move/from16 v23, v2

    goto/16 :goto_cd

    .line 216
    :cond_5d
    instance-of v3, v11, Landroid/support/v7/view/menu/ActionMenuItemView;

    add-int/lit8 v13, v13, 0x1

    if-eqz v3, :cond_70

    .line 222
    iget v8, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v22, v13

    iget v13, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v23, v2

    const/4 v2, 0x0

    invoke-virtual {v11, v8, v2, v13, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_75

    :cond_70
    move/from16 v23, v2

    move/from16 v22, v13

    const/4 v2, 0x0

    .line 225
    :goto_75
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 226
    iput-boolean v2, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    .line 227
    iput v2, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 228
    iput v2, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 229
    iput-boolean v2, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 230
    iput v2, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    .line 231
    iput v2, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    if-eqz v3, :cond_94

    .line 232
    move-object v2, v11

    check-cast v2, Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z

    move-result v2

    if-eqz v2, :cond_94

    const/4 v2, 0x1

    goto :goto_95

    :cond_94
    const/4 v2, 0x0

    :goto_95
    iput-boolean v2, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 235
    iget-boolean v2, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v2, :cond_9d

    const/4 v2, 0x1

    goto :goto_9e

    :cond_9d
    move v2, v14

    .line 237
    :goto_9e
    invoke-static {v11, v9, v2, v6, v5}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v2

    .line 240
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 241
    iget-boolean v13, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v13, :cond_ac

    add-int/lit8 v16, v16, 0x1

    .line 242
    :cond_ac
    iget-boolean v8, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v8, :cond_b1

    const/4 v12, 0x1

    :cond_b1
    sub-int/2addr v14, v2

    .line 245
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v8, 0x1

    if-ne v2, v8, :cond_c7

    shl-int v2, v8, v4

    move/from16 v24, v3

    int-to-long v2, v2

    or-long v2, v19, v2

    move-wide/from16 v19, v2

    goto :goto_c9

    :cond_c7
    move/from16 v24, v3

    :goto_c9
    move/from16 v13, v22

    move/from16 v15, v24

    :goto_cd
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v21

    move/from16 v2, v23

    const/4 v8, 0x0

    goto/16 :goto_49

    :cond_d6
    move/from16 v23, v2

    move/from16 v21, v3

    const/4 v2, 0x2

    if-eqz v12, :cond_e1

    if-ne v13, v2, :cond_e1

    const/4 v3, 0x1

    goto :goto_e2

    :cond_e1
    const/4 v3, 0x0

    :goto_e2
    const/4 v4, 0x0

    :goto_e3
    if-lez v16, :cond_18c

    if-lez v14, :cond_18c

    const v5, 0x7fffffff

    move v11, v5

    const/4 v5, 0x0

    const/4 v8, 0x0

    const-wide/16 v24, 0x0

    :goto_ef
    if-ge v5, v7, :cond_12d

    .line 262
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 263
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v2, v22

    check-cast v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move/from16 v26, v4

    .line 266
    iget-boolean v4, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z

    if-nez v4, :cond_106

    move/from16 v27, v5

    goto :goto_127

    .line 269
    :cond_106
    iget v4, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ge v4, v11, :cond_117

    .line 270
    iget v2, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v4, 0x1

    shl-int v8, v4, v5

    move/from16 v27, v5

    int-to-long v4, v8

    move v11, v2

    move-wide/from16 v24, v4

    const/4 v8, 0x1

    goto :goto_127

    :cond_117
    move/from16 v27, v5

    .line 273
    iget v2, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v2, v11, :cond_127

    const/4 v2, 0x1

    shl-int v4, v2, v27

    int-to-long v4, v4

    or-long v4, v24, v4

    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v24, v4

    :cond_127
    :goto_127
    add-int/lit8 v5, v27, 0x1

    move/from16 v4, v26

    const/4 v2, 0x2

    goto :goto_ef

    :cond_12d
    move/from16 v26, v4

    or-long v19, v19, v24

    if-le v8, v14, :cond_13a

    :goto_133
    move/from16 v29, v6

    move/from16 v30, v7

    move/from16 v28, v10

    goto :goto_18f

    :cond_13a
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x0

    :goto_13d
    if-ge v2, v7, :cond_188

    .line 288
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 289
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move/from16 v28, v10

    const/4 v8, 0x1

    shl-int v10, v8, v2

    move/from16 v29, v6

    move/from16 v30, v7

    int-to-long v6, v10

    and-long v26, v24, v6

    const-wide/16 v17, 0x0

    cmp-long v8, v26, v17

    if-nez v8, :cond_162

    .line 292
    iget v4, v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v4, v11, :cond_17f

    or-long v19, v19, v6

    goto :goto_17f

    :cond_162
    if-eqz v3, :cond_175

    .line 296
    iget-boolean v6, v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-eqz v6, :cond_175

    const/4 v6, 0x1

    if-ne v14, v6, :cond_176

    .line 298
    iget v7, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    add-int/2addr v7, v9

    iget v8, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I

    const/4 v10, 0x0

    invoke-virtual {v4, v7, v10, v8, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_176

    :cond_175
    const/4 v6, 0x1

    .line 300
    :cond_176
    :goto_176
    iget v4, v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    add-int/2addr v4, v6

    iput v4, v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 301
    iput-boolean v6, v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    add-int/lit8 v14, v14, -0x1

    :cond_17f
    :goto_17f
    add-int/lit8 v2, v2, 0x1

    move/from16 v10, v28

    move/from16 v6, v29

    move/from16 v7, v30

    goto :goto_13d

    :cond_188
    const/4 v2, 0x2

    const/4 v4, 0x1

    goto/16 :goto_e3

    :cond_18c
    move/from16 v26, v4

    goto :goto_133

    :goto_18f
    if-nez v12, :cond_196

    const/4 v2, 0x1

    if-ne v13, v2, :cond_197

    move v3, v2

    goto :goto_198

    :cond_196
    const/4 v2, 0x1

    :cond_197
    const/4 v3, 0x0

    :goto_198
    if-lez v14, :cond_254

    const-wide/16 v4, 0x0

    cmp-long v6, v19, v4

    if-eqz v6, :cond_254

    sub-int/2addr v13, v2

    if-lt v14, v13, :cond_1a7

    if-nez v3, :cond_1a7

    if-le v15, v2, :cond_254

    .line 314
    :cond_1a7
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    int-to-float v2, v2

    if-nez v3, :cond_1ea

    const-wide/16 v3, 0x1

    and-long v3, v19, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v3, :cond_1cb

    const/4 v3, 0x0

    .line 319
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 320
    iget-boolean v5, v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v5, :cond_1cc

    sub-float/2addr v2, v4

    goto :goto_1cc

    :cond_1cb
    const/4 v3, 0x0

    :cond_1cc
    :goto_1cc
    add-int/lit8 v7, v30, -0x1

    const/4 v5, 0x1

    shl-int v6, v5, v7

    int-to-long v5, v6

    and-long v5, v19, v5

    const-wide/16 v10, 0x0

    cmp-long v5, v5, v10

    if-eqz v5, :cond_1eb

    .line 323
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 324
    iget-boolean v5, v5, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v5, :cond_1eb

    sub-float/2addr v2, v4

    goto :goto_1eb

    :cond_1ea
    const/4 v3, 0x0

    :cond_1eb
    :goto_1eb
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1f5

    mul-int/2addr v14, v9

    int-to-float v4, v14

    div-float/2addr v4, v2

    float-to-int v8, v4

    goto :goto_1f6

    :cond_1f5
    move v8, v3

    :goto_1f6
    move v4, v3

    move/from16 v11, v26

    move/from16 v2, v30

    :goto_1fb
    if-ge v4, v2, :cond_251

    const/4 v5, 0x1

    shl-int v6, v5, v4

    int-to-long v5, v6

    and-long v5, v19, v5

    const-wide/16 v12, 0x0

    cmp-long v5, v5, v12

    if-nez v5, :cond_20c

    const/4 v5, 0x1

    const/4 v7, 0x2

    goto :goto_24e

    .line 334
    :cond_20c
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 335
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 336
    instance-of v5, v5, Landroid/support/v7/view/menu/ActionMenuItemView;

    if-eqz v5, :cond_22f

    .line 338
    iput v8, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v5, 0x1

    .line 339
    iput-boolean v5, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v4, :cond_22b

    .line 340
    iget-boolean v5, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v5, :cond_22b

    neg-int v5, v8

    const/4 v7, 0x2

    .line 343
    div-int/2addr v5, v7

    iput v5, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    goto :goto_22c

    :cond_22b
    const/4 v7, 0x2

    :goto_22c
    const/4 v5, 0x1

    const/4 v11, 0x1

    goto :goto_24e

    :cond_22f
    const/4 v7, 0x2

    .line 346
    iget-boolean v5, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v5, :cond_23f

    .line 347
    iput v8, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v5, 0x1

    .line 348
    iput-boolean v5, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    neg-int v10, v8

    .line 349
    div-int/2addr v10, v7

    iput v10, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    move v11, v5

    goto :goto_24e

    :cond_23f
    const/4 v5, 0x1

    if-eqz v4, :cond_246

    .line 356
    div-int/lit8 v10, v8, 0x2

    iput v10, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    :cond_246
    add-int/lit8 v10, v2, -0x1

    if-eq v4, v10, :cond_24e

    .line 359
    div-int/lit8 v10, v8, 0x2

    iput v10, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    :cond_24e
    :goto_24e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1fb

    :cond_251
    move/from16 v26, v11

    goto :goto_257

    :cond_254
    move/from16 v2, v30

    const/4 v3, 0x0

    :goto_257
    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v26, :cond_282

    :goto_25b
    if-ge v3, v2, :cond_282

    .line 370
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 371
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 373
    iget-boolean v7, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v7, :cond_26e

    move/from16 v7, v29

    goto :goto_27d

    .line 375
    :cond_26e
    iget v7, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int/2addr v7, v9

    iget v6, v6, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v7, v6

    .line 376
    invoke-static {v7, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move/from16 v7, v29

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    :goto_27d
    add-int/lit8 v3, v3, 0x1

    move/from16 v29, v7

    goto :goto_25b

    :cond_282
    if-eq v1, v4, :cond_289

    move/from16 v2, v23

    move/from16 v1, v28

    goto :goto_28d

    :cond_289
    move/from16 v1, v21

    move/from16 v2, v23

    .line 385
    :goto_28d
    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    if-eqz p1, :cond_8

    .line 609
    instance-of p0, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public dismissPopupMenus()V
    .registers 2

    .line 722
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_9

    .line 723
    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    :cond_9
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .registers 2

    .line 582
    new-instance p0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(II)V

    const/16 v0, 0x10

    .line 584
    iput v0, p0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 1

    .line 47
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 1

    .line 47
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .registers 3

    .line 590
    new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .registers 2

    if-eqz p1, :cond_1c

    .line 596
    instance-of p0, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    if-eqz p0, :cond_e

    new-instance p0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    check-cast p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/support/v7/widget/ActionMenuView$LayoutParams;)V

    goto :goto_13

    :cond_e
    new-instance p0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    invoke-direct {p0, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 599
    :goto_13
    iget p1, p0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    if-gtz p1, :cond_1b

    const/16 p1, 0x10

    .line 600
    iput p1, p0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I

    :cond_1b
    return-object p0

    .line 604
    :cond_1c
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateOverflowButtonLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 615
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object p0

    const/4 v0, 0x1

    .line 616
    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-object p0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 4

    .line 650
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-nez v0, :cond_45

    .line 651
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 652
    new-instance v1, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-direct {v1, v0}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 653
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    new-instance v2, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/support/v7/widget/ActionMenuView;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V

    .line 654
    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 655
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 656
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    goto :goto_34

    :cond_2f
    new-instance v1, Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v1}, Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>()V

    :goto_34
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V

    .line 658
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 659
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->setMenuView(Landroid/support/v7/widget/ActionMenuView;)V

    .line 662
    :cond_45
    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object p0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 564
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 565
    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getPopupTheme()I
    .registers 1

    .line 112
    iget p0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    return p0
.end method

.method public getWindowAnimations()I
    .registers 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .registers 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, p1, -0x1

    .line 735
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 736
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 738
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result p0

    if-ge p1, p0, :cond_1f

    instance-of p0, v1, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    if-eqz p0, :cond_1f

    .line 739
    check-cast v1, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v1}, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result p0

    or-int/2addr v0, p0

    :cond_1f
    if-lez p1, :cond_2c

    .line 741
    instance-of p0, v2, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    if-eqz p0, :cond_2c

    .line 742
    check-cast v2, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;

    invoke-interface {v2}, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result p0

    or-int/2addr v0, p0

    :cond_2c
    return v0
.end method

.method public hideOverflowMenu()Z
    .registers 2

    .line 699
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_e

    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public initialize(Landroid/support/v7/view/menu/MenuBuilder;)V
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 638
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-void
.end method

.method public invokeItem(Landroid/support/v7/view/menu/MenuItemImpl;)Z
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 624
    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p0

    return p0
.end method

.method public isOverflowMenuShowPending()Z
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 715
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_e

    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    .line 709
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_e

    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isOverflowReserved()Z
    .registers 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 571
    iget-boolean p0, p0, Landroid/support/v7/widget/ActionMenuView;->mReserveOverflow:Z

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 127
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz p1, :cond_1f

    .line 130
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 132
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 133
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 134
    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    :cond_1f
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .line 543
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 544
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->dismissPopupMenus()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 23

    move-object/from16 v0, p0

    .line 438
    iget-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-nez v1, :cond_a

    .line 439
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    return-void

    .line 443
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v1

    sub-int v2, p5, p3

    .line 444
    div-int/lit8 v2, v2, 0x2

    .line 445
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getDividerWidth()I

    move-result v3

    sub-int v4, p4, p2

    .line 449
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    .line 451
    invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    move v10, v5

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2b
    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ge v5, v1, :cond_8f

    .line 453
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 454
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v11, :cond_3b

    goto :goto_8c

    .line 458
    :cond_3b
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 459
    iget-boolean v14, v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v14, :cond_7b

    .line 460
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 461
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v14

    if-eqz v14, :cond_50

    add-int/2addr v8, v3

    .line 464
    :cond_50
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-eqz v6, :cond_60

    .line 468
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v15

    iget v11, v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v15, v11

    add-int v11, v15, v8

    goto :goto_70

    .line 471
    :cond_60
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    iget v11, v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int v11, v15, v11

    sub-int v15, v11, v8

    .line 474
    :goto_70
    div-int/lit8 v16, v14, 0x2

    sub-int v7, v2, v16

    add-int/2addr v14, v7

    .line 476
    invoke-virtual {v13, v15, v7, v11, v14}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v10, v8

    move v8, v12

    goto :goto_8c

    .line 481
    :cond_7b
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v12, v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v7, v12

    iget v11, v11, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v7, v11

    sub-int/2addr v10, v7

    .line 484
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v7

    add-int/lit8 v9, v9, 0x1

    :goto_8c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_8f
    if-ne v1, v12, :cond_ae

    if-nez v8, :cond_ae

    const/4 v3, 0x0

    .line 493
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 495
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 496
    div-int/lit8 v4, v4, 0x2

    .line 497
    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    .line 498
    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v2, v5

    add-int/2addr v1, v4

    add-int/2addr v3, v2

    .line 499
    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_ae
    xor-int/lit8 v3, v8, 0x1

    sub-int/2addr v9, v3

    if-lez v9, :cond_b7

    .line 504
    div-int v7, v10, v9

    const/4 v3, 0x0

    goto :goto_b9

    :cond_b7
    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_b9
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz v6, :cond_fc

    .line 507
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    :goto_c8
    if-ge v3, v1, :cond_134

    .line 509
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 510
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 511
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_f9

    iget-boolean v8, v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v8, :cond_df

    goto :goto_f9

    .line 515
    :cond_df
    iget v8, v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v8

    .line 516
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 517
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 518
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    sub-int v12, v5, v8

    add-int/2addr v9, v10

    .line 519
    invoke-virtual {v6, v12, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    .line 520
    iget v6, v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v8, v6

    add-int/2addr v8, v4

    sub-int/2addr v5, v8

    :cond_f9
    :goto_f9
    add-int/lit8 v3, v3, 0x1

    goto :goto_c8

    .line 523
    :cond_fc
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I

    move-result v5

    :goto_100
    if-ge v3, v1, :cond_134

    .line 525
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 526
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 527
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_131

    iget-boolean v8, v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v8, :cond_117

    goto :goto_131

    .line 531
    :cond_117
    iget v8, v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v5, v8

    .line 532
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 533
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 534
    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    add-int v12, v5, v8

    add-int/2addr v9, v10

    .line 535
    invoke-virtual {v6, v5, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    .line 536
    iget v6, v7, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v8, v6

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    :cond_131
    :goto_131
    add-int/lit8 v3, v3, 0x1

    goto :goto_100

    :cond_134
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    .line 146
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    .line 147
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v3

    :goto_f
    iput-boolean v1, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    .line 149
    iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eq v0, v1, :cond_17

    .line 150
    iput v3, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 155
    :cond_17
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 156
    iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    if-eqz v1, :cond_2e

    iget v1, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    if-eq v0, v1, :cond_2e

    .line 157
    iput v0, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I

    .line 158
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 161
    :cond_2e
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I

    move-result v0

    .line 162
    iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z

    if-eqz v1, :cond_3c

    if-lez v0, :cond_3c

    .line 163
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ActionMenuView;->onMeasureExactFormat(II)V

    goto :goto_53

    :cond_3c
    move v1, v3

    :goto_3d
    if-ge v1, v0, :cond_50

    .line 167
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 168
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    .line 169
    iput v3, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I

    iput v3, v2, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 171
    :cond_50
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    :goto_53
    return-void
.end method

.method public peekMenu()Landroid/support/v7/view/menu/MenuBuilder;
    .registers 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 681
    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object p0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 755
    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    return-void
.end method

.method public setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 671
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;

    .line 672
    iput-object p2, p0, Landroid/support/v7/widget/ActionMenuView;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;

    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;)V
    .registers 2

    .line 140
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 553
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 554
    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOverflowReserved(Z)V
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 577
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuView;->mReserveOverflow:Z

    return-void
.end method

.method public setPopupTheme(I)V
    .registers 4
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 96
    iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_1a

    .line 97
    iput p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I

    if-nez p1, :cond_f

    .line 99
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_1a

    .line 101
    :cond_f
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;

    :cond_1a
    :goto_1a
    return-void
.end method

.method public setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 121
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 122
    iget-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->setMenuView(Landroid/support/v7/widget/ActionMenuView;)V

    return-void
.end method

.method public showOverflowMenu()Z
    .registers 2

    .line 690
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_e

    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method
