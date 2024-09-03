.class Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;
.super Ljava/lang/Object;
.source "ViewBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ViewBoundsCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BoundFlags"
.end annotation


# instance fields
.field mBoundFlags:I

.field mChildEnd:I

.field mChildStart:I

.field mRvEnd:I

.field mRvStart:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 136
    iput v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    return-void
.end method


# virtual methods
.method addFlags(I)V
    .registers 3

    .line 151
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    return-void
.end method

.method boundsMatch()Z
    .registers 5

    .line 169
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 170
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    iget v2, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    iget v3, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v2

    shl-int/2addr v2, v1

    and-int/2addr v0, v2

    if-nez v0, :cond_16

    return v1

    .line 175
    :cond_16
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit8 v0, v0, 0x70

    if-eqz v0, :cond_2c

    .line 176
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    iget v2, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    iget v3, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    and-int/2addr v0, v2

    if-nez v0, :cond_2c

    return v1

    .line 181
    :cond_2c
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit16 v0, v0, 0x700

    if-eqz v0, :cond_42

    .line 182
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    iget v2, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    iget v3, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    and-int/2addr v0, v2

    if-nez v0, :cond_42

    return v1

    .line 187
    :cond_42
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    and-int/lit16 v0, v0, 0x7000

    if-eqz v0, :cond_58

    .line 188
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    iget v2, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    iget v3, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    move-result p0

    shl-int/lit8 p0, p0, 0xc

    and-int/2addr p0, v0

    if-nez p0, :cond_58

    return v1

    :cond_58
    const/4 p0, 0x1

    return p0
.end method

.method compare(II)I
    .registers 3

    if-le p1, p2, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-ne p1, p2, :cond_8

    const/4 p0, 0x2

    return p0

    :cond_8
    const/4 p0, 0x4

    return p0
.end method

.method resetFlags()V
    .registers 2

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    return-void
.end method

.method setBounds(IIII)V
    .registers 5

    .line 140
    iput p1, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    .line 141
    iput p2, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    .line 142
    iput p3, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    .line 143
    iput p4, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    return-void
.end method

.method setFlags(II)V
    .registers 5

    .line 147
    iget v0, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int/2addr p1, p2

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    return-void
.end method
