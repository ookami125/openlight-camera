.class public Lopenlight/co/camera/AutoFitTextureView;
.super Landroid/view/TextureView;
.source "AutoFitTextureView.java"


# instance fields
.field private mRatioHeight:I

.field private mRatioWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lopenlight/co/camera/AutoFitTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lopenlight/co/camera/AutoFitTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lopenlight/co/camera/AutoFitTextureView;->mRatioWidth:I

    .line 29
    iput p1, p0, Lopenlight/co/camera/AutoFitTextureView;->mRatioHeight:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 68
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 69
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 70
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 71
    iget v0, p0, Lopenlight/co/camera/AutoFitTextureView;->mRatioWidth:I

    if-eqz v0, :cond_2

    iget v0, p0, Lopenlight/co/camera/AutoFitTextureView;->mRatioHeight:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget v0, p0, Lopenlight/co/camera/AutoFitTextureView;->mRatioHeight:I

    mul-int/2addr v0, p1

    iget v1, p0, Lopenlight/co/camera/AutoFitTextureView;->mRatioWidth:I

    mul-int/2addr v1, p2

    if-ge v0, v1, :cond_1

    .line 75
    iget p2, p0, Lopenlight/co/camera/AutoFitTextureView;->mRatioHeight:I

    mul-int/2addr p2, p1

    iget v0, p0, Lopenlight/co/camera/AutoFitTextureView;->mRatioWidth:I

    div-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/AutoFitTextureView;->setMeasuredDimension(II)V

    goto :goto_1

    .line 77
    :cond_1
    iget p1, p0, Lopenlight/co/camera/AutoFitTextureView;->mRatioWidth:I

    mul-int/2addr p1, p2

    iget v0, p0, Lopenlight/co/camera/AutoFitTextureView;->mRatioHeight:I

    div-int/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/AutoFitTextureView;->setMeasuredDimension(II)V

    goto :goto_1

    .line 72
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/AutoFitTextureView;->setMeasuredDimension(II)V

    :goto_1
    return-void
.end method

.method public setAspectRatio(II)V
    .locals 0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 61
    iput p1, p0, Lopenlight/co/camera/AutoFitTextureView;->mRatioWidth:I

    .line 62
    iput p2, p0, Lopenlight/co/camera/AutoFitTextureView;->mRatioHeight:I

    .line 63
    invoke-virtual {p0}, Lopenlight/co/camera/AutoFitTextureView;->requestLayout()V

    return-void

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Size cannot be negative."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
