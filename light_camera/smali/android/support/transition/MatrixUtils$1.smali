.class final Landroid/support/transition/MatrixUtils$1;
.super Landroid/graphics/Matrix;
.source "MatrixUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/MatrixUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method


# virtual methods
.method oops()V
    .registers 2

    .line 27
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Matrix can not be modified"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public postConcat(Landroid/graphics/Matrix;)Z
    .registers 2

    .line 183
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public postRotate(F)Z
    .registers 2

    .line 165
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public postRotate(FFF)Z
    .registers 4

    .line 159
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public postScale(FF)Z
    .registers 3

    .line 153
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public postScale(FFFF)Z
    .registers 5

    .line 147
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public postSkew(FF)Z
    .registers 3

    .line 177
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public postSkew(FFFF)Z
    .registers 5

    .line 171
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public postTranslate(FF)Z
    .registers 3

    .line 141
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public preConcat(Landroid/graphics/Matrix;)Z
    .registers 2

    .line 135
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public preRotate(F)Z
    .registers 2

    .line 117
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public preRotate(FFF)Z
    .registers 4

    .line 111
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public preScale(FF)Z
    .registers 3

    .line 105
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public preScale(FFFF)Z
    .registers 5

    .line 99
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public preSkew(FF)Z
    .registers 3

    .line 129
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public preSkew(FFFF)Z
    .registers 5

    .line 123
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public preTranslate(FF)Z
    .registers 3

    .line 93
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .registers 1

    .line 37
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public set(Landroid/graphics/Matrix;)V
    .registers 2

    .line 32
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z
    .registers 3

    .line 87
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public setPolyToPoly([FI[FII)Z
    .registers 6

    .line 196
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z
    .registers 4

    .line 189
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    const/4 p0, 0x0

    return p0
.end method

.method public setRotate(F)V
    .registers 2

    .line 62
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setRotate(FFF)V
    .registers 4

    .line 57
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setScale(FF)V
    .registers 3

    .line 52
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setScale(FFFF)V
    .registers 5

    .line 47
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setSinCos(FF)V
    .registers 3

    .line 72
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setSinCos(FFFF)V
    .registers 5

    .line 67
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setSkew(FF)V
    .registers 3

    .line 82
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setSkew(FFFF)V
    .registers 5

    .line 77
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setTranslate(FF)V
    .registers 3

    .line 42
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    return-void
.end method

.method public setValues([F)V
    .registers 2

    .line 202
    invoke-virtual {p0}, Landroid/support/transition/MatrixUtils$1;->oops()V

    return-void
.end method
