.class Landroid/support/v7/widget/RtlSpacingHelper;
.super Ljava/lang/Object;
.source "RtlSpacingHelper.java"


# static fields
.field public static final UNDEFINED:I = -0x80000000


# instance fields
.field private mEnd:I

.field private mExplicitLeft:I

.field private mExplicitRight:I

.field private mIsRelative:Z

.field private mIsRtl:Z

.field private mLeft:I

.field private mRight:I

.field private mStart:I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    .line 29
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    const/high16 v1, -0x80000000

    .line 30
    iput v1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    .line 31
    iput v1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    .line 32
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    .line 33
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    .line 35
    iput-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    .line 36
    iput-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRelative:Z

    return-void
.end method


# virtual methods
.method public getEnd()I
    .registers 2

    .line 51
    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v0, :cond_7

    iget p0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    goto :goto_9

    :cond_7
    iget p0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    :goto_9
    return p0
.end method

.method public getLeft()I
    .registers 1

    .line 39
    iget p0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    return p0
.end method

.method public getRight()I
    .registers 1

    .line 43
    iget p0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    return p0
.end method

.method public getStart()I
    .registers 2

    .line 47
    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v0, :cond_7

    iget p0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    goto :goto_9

    :cond_7
    iget p0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    :goto_9
    return p0
.end method

.method public setAbsolute(II)V
    .registers 4

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRelative:Z

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_b

    .line 69
    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    :cond_b
    if-eq p2, v0, :cond_11

    .line 70
    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    :cond_11
    return-void
.end method

.method public setDirection(Z)V
    .registers 3

    .line 74
    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 77
    :cond_5
    iput-boolean p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    .line 78
    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRelative:Z

    if-eqz v0, :cond_3d

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_26

    .line 80
    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    if-eq p1, v0, :cond_16

    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    goto :goto_18

    :cond_16
    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    :goto_18
    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    .line 81
    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    if-eq p1, v0, :cond_21

    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    goto :goto_23

    :cond_21
    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    :goto_23
    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    goto :goto_45

    .line 83
    :cond_26
    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    if-eq p1, v0, :cond_2d

    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    goto :goto_2f

    :cond_2d
    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    :goto_2f
    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    .line 84
    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    if-eq p1, v0, :cond_38

    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    goto :goto_3a

    :cond_38
    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    :goto_3a
    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    goto :goto_45

    .line 87
    :cond_3d
    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    .line 88
    iget p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    :goto_45
    return-void
.end method

.method public setRelative(II)V
    .registers 5

    .line 55
    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    .line 56
    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRelative:Z

    .line 58
    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_16

    if-eq p2, v1, :cond_11

    .line 59
    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    :cond_11
    if-eq p1, v1, :cond_1e

    .line 60
    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    goto :goto_1e

    :cond_16
    if-eq p1, v1, :cond_1a

    .line 62
    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    :cond_1a
    if-eq p2, v1, :cond_1e

    .line 63
    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    :cond_1e
    :goto_1e
    return-void
.end method
