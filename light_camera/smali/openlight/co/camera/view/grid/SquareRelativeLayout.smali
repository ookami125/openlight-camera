.class public Lopenlight/co/camera/view/grid/SquareRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SquareRelativeLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 10
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 6

    .line 29
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 23
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 24
    invoke-virtual {p0}, Lopenlight/co/camera/view/grid/SquareRelativeLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lopenlight/co/camera/view/grid/SquareRelativeLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/view/grid/SquareRelativeLayout;->setMeasuredDimension(II)V

    return-void
.end method
