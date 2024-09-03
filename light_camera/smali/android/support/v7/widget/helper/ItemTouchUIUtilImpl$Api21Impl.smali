.class Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Api21Impl;
.super Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$BaseImpl;
.source "ItemTouchUIUtilImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$BaseImpl;-><init>()V

    return-void
.end method

.method private findMaxElevation(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)F
    .registers 7

    .line 47
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, p0, :cond_1b

    .line 50
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p2, :cond_f

    goto :goto_18

    .line 54
    :cond_f
    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v2

    cmpl-float v3, v2, v0

    if-lez v3, :cond_18

    move v0, v2

    :cond_18
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1b
    return v0
.end method


# virtual methods
.method public clearView(Landroid/view/View;)V
    .registers 4

    .line 64
    sget v0, Landroid/support/v7/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 65
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_15

    .line 66
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 68
    :cond_15
    sget v0, Landroid/support/v7/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 69
    invoke-super {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$BaseImpl;->clearView(Landroid/view/View;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .registers 11

    if-eqz p7, :cond_21

    .line 35
    sget v0, Landroid/support/v7/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    invoke-virtual {p3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_21

    .line 37
    invoke-static {p3}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Api21Impl;->findMaxElevation(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)F

    move-result v2

    add-float/2addr v2, v1

    .line 39
    invoke-static {p3, v2}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 40
    sget v1, Landroid/support/v7/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    invoke-virtual {p3, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 43
    :cond_21
    invoke-super/range {p0 .. p7}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$BaseImpl;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V

    return-void
.end method
