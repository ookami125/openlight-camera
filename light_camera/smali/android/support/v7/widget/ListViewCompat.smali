.class public Landroid/support/v7/widget/ListViewCompat;
.super Landroid/widget/ListView;
.source "ListViewCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final NO_POSITION:I = -0x1

.field private static final STATE_SET_NOTHING:[I


# instance fields
.field private mIsChildViewEnabled:Ljava/lang/reflect/Field;

.field protected mMotionPosition:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field private mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;

.field final mSelectorRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x1

    .line 50
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    sput-object v0, Landroid/support/v7/widget/ListViewCompat;->STATE_SET_NOTHING:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionLeftPadding:I

    .line 54
    iput p1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionTopPadding:I

    .line 55
    iput p1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionRightPadding:I

    .line 56
    iput p1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionBottomPadding:I

    .line 76
    :try_start_13
    const-class p1, Landroid/widget/AbsListView;

    const-string p2, "mIsChildViewEnabled"

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    .line 77
    iget-object p0, p0, Landroid/support/v7/widget/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_23
    .catch Ljava/lang/NoSuchFieldException; {:try_start_13 .. :try_end_23} :catch_24

    goto :goto_28

    :catch_24
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_28
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 111
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ListViewCompat;->drawSelectorCompat(Landroid/graphics/Canvas;)V

    .line 114
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawSelectorCompat(Landroid/graphics/Canvas;)V
    .registers 3

    .line 143
    iget-object v0, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 144
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 146
    iget-object p0, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 147
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_16
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 2

    .line 101
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ListViewCompat;->setSelectorEnabled(Z)V

    .line 104
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->updateSelectorStateCompat()V

    return-void
.end method

.method public lookForSelectablePosition(IZ)I
    .registers 6

    .line 161
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4d

    .line 162
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_4d

    .line 166
    :cond_e
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 167
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    invoke-interface {p0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result p0

    if-nez p0, :cond_46

    if-eqz p2, :cond_2e

    const/4 p0, 0x0

    .line 169
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_23
    if-ge p0, v2, :cond_3f

    .line 170
    invoke-interface {v0, p0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    if-nez p1, :cond_3f

    add-int/lit8 p0, p0, 0x1

    goto :goto_23

    :cond_2e
    add-int/lit8 p0, v2, -0x1

    .line 174
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_34
    if-ltz p0, :cond_3f

    .line 175
    invoke-interface {v0, p0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    if-nez p1, :cond_3f

    add-int/lit8 p0, p0, -0x1

    goto :goto_34

    :cond_3f
    if-ltz p0, :cond_45

    if-lt p0, v2, :cond_44

    goto :goto_45

    :cond_44
    return p0

    :cond_45
    :goto_45
    return v1

    :cond_46
    if-ltz p1, :cond_4c

    if-lt p1, v2, :cond_4b

    goto :goto_4c

    :cond_4b
    return p1

    :cond_4c
    :goto_4c
    return v1

    :cond_4d
    :goto_4d
    return v1
.end method

.method public measureHeightOfChildrenCompat(IIIII)I
    .registers 16

    .line 276
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getListPaddingTop()I

    move-result p2

    .line 277
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getListPaddingBottom()I

    move-result p3

    .line 278
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getListPaddingLeft()I

    .line 279
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getListPaddingRight()I

    .line 280
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getDividerHeight()I

    move-result v0

    .line 281
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 283
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-nez v2, :cond_1e

    add-int/2addr p2, p3

    return p2

    :cond_1e
    add-int/2addr p2, p3

    const/4 p3, 0x0

    if-lez v0, :cond_25

    if-eqz v1, :cond_25

    goto :goto_26

    :cond_25
    move v0, p3

    .line 300
    :goto_26
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v3, 0x0

    move v5, p2

    move p2, p3

    move v4, p2

    move v7, v4

    move-object v6, v3

    :goto_30
    if-ge p2, v1, :cond_7e

    .line 302
    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v4, :cond_3a

    move-object v6, v3

    move v4, v8

    .line 307
    :cond_3a
    invoke-interface {v2, p2, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 311
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_4b

    .line 314
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 315
    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    :cond_4b
    iget v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v9, :cond_58

    .line 319
    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_5c

    .line 322
    :cond_58
    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 324
    :goto_5c
    invoke-virtual {v6, p1, v8}, Landroid/view/View;->measure(II)V

    .line 328
    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    if-lez p2, :cond_65

    add-int/2addr v5, v0

    .line 335
    :cond_65
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v5, v8

    if-lt v5, p4, :cond_76

    if-ltz p5, :cond_75

    if-le p2, p5, :cond_75

    if-lez v7, :cond_75

    if-eq v5, p4, :cond_75

    move p4, v7

    :cond_75
    return p4

    :cond_76
    if-ltz p5, :cond_7b

    if-lt p2, p5, :cond_7b

    move v7, v5

    :cond_7b
    add-int/lit8 p2, p2, 0x1

    goto :goto_30

    :cond_7e
    return v5
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_17

    .line 121
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/ListViewCompat;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ListViewCompat;->mMotionPosition:I

    .line 124
    :goto_17
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected positionSelectorCompat(ILandroid/view/View;)V
    .registers 8

    .line 222
    iget-object v0, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    .line 223
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 226
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionLeftPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 227
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionTopPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 228
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionRightPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 229
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionBottomPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 234
    :try_start_31
    iget-object v0, p0, Landroid/support/v7/widget/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 235
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eq p2, v0, :cond_53

    .line 236
    iget-object p2, p0, Landroid/support/v7/widget/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, -0x1

    if-eq p1, p2, :cond_53

    .line 238
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->refreshDrawableState()V
    :try_end_4e
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_4e} :catch_4f

    goto :goto_53

    :catch_4f
    move-exception p0

    .line 242
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_53
    :goto_53
    return-void
.end method

.method protected positionSelectorLikeFocusCompat(ILandroid/view/View;)V
    .registers 7

    .line 204
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    const/4 v3, -0x1

    if-eq p1, v3, :cond_d

    move v3, v1

    goto :goto_e

    :cond_d
    move v3, v2

    :goto_e
    if-eqz v3, :cond_13

    .line 207
    invoke-virtual {v0, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 210
    :cond_13
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ListViewCompat;->positionSelectorCompat(ILandroid/view/View;)V

    if-eqz v3, :cond_30

    .line 213
    iget-object p1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result p2

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    .line 216
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getVisibility()I

    move-result p0

    if-nez p0, :cond_29

    goto :goto_2a

    :cond_29
    move v1, v2

    :goto_2a
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 217
    invoke-static {v0, p2, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    :cond_30
    return-void
.end method

.method protected positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V
    .registers 5

    .line 193
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ListViewCompat;->positionSelectorLikeFocusCompat(ILandroid/view/View;)V

    .line 195
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_f

    const/4 p2, -0x1

    if-eq p1, p2, :cond_f

    .line 197
    invoke-static {p0, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    :cond_f
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 85
    new-instance v0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroid/support/v7/widget/ListViewCompat;->mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;

    .line 86
    iget-object v0, p0, Landroid/support/v7/widget/ListViewCompat;->mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_1a

    .line 90
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 93
    :cond_1a
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iput p1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionLeftPadding:I

    .line 94
    iget p1, v0, Landroid/graphics/Rect;->top:I

    iput p1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionTopPadding:I

    .line 95
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iput p1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionRightPadding:I

    .line 96
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionBottomPadding:I

    return-void
.end method

.method protected setSelectorEnabled(Z)V
    .registers 3

    .line 359
    iget-object v0, p0, Landroid/support/v7/widget/ListViewCompat;->mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;

    if-eqz v0, :cond_9

    .line 360
    iget-object p0, p0, Landroid/support/v7/widget/ListViewCompat;->mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->setEnabled(Z)V

    :cond_9
    return-void
.end method

.method protected shouldShowSelectorCompat()Z
    .registers 2

    .line 135
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->touchModeDrawsInPressedStateCompat()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->isPressed()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method protected touchModeDrawsInPressedStateCompat()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected updateSelectorStateCompat()V
    .registers 3

    .line 128
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 129
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->shouldShowSelectorCompat()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 130
    invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_13
    return-void
.end method
