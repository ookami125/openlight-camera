.class Landroid/support/transition/ChangeTransform$Transforms;
.super Ljava/lang/Object;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Transforms"
.end annotation


# instance fields
.field final mRotationX:F

.field final mRotationY:F

.field final mRotationZ:F

.field final mScaleX:F

.field final mScaleY:F

.field final mTranslationX:F

.field final mTranslationY:F

.field final mTranslationZ:F


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationX:F

    .line 464
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationY:F

    .line 465
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationZ:F

    .line 466
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleX:F

    .line 467
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleY:F

    .line 468
    invoke-virtual {p1}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationX:F

    .line 469
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationY:F

    .line 470
    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result p1

    iput p1, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationZ:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 480
    instance-of v0, p1, Landroid/support/transition/ChangeTransform$Transforms;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 483
    :cond_6
    check-cast p1, Landroid/support/transition/ChangeTransform$Transforms;

    .line 484
    iget v0, p1, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationX:F

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_49

    iget v0, p1, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationY:F

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_49

    iget v0, p1, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationZ:F

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationZ:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_49

    iget v0, p1, Landroid/support/transition/ChangeTransform$Transforms;->mScaleX:F

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_49

    iget v0, p1, Landroid/support/transition/ChangeTransform$Transforms;->mScaleY:F

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_49

    iget v0, p1, Landroid/support/transition/ChangeTransform$Transforms;->mRotationX:F

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_49

    iget v0, p1, Landroid/support/transition/ChangeTransform$Transforms;->mRotationY:F

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_49

    iget p1, p1, Landroid/support/transition/ChangeTransform$Transforms;->mRotationZ:F

    iget p0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationZ:F

    cmpl-float p0, p1, p0

    if-nez p0, :cond_49

    const/4 v1, 0x1

    :cond_49
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 496
    iget v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationX:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_10

    :cond_f
    move v0, v2

    :goto_10
    mul-int/lit8 v0, v0, 0x1f

    .line 497
    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationY:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_1f

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationY:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_20

    :cond_1f
    move v3, v2

    :goto_20
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 498
    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationZ:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_30

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationZ:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_31

    :cond_30
    move v3, v2

    :goto_31
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 499
    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleX:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_41

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleX:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_42

    :cond_41
    move v3, v2

    :goto_42
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 500
    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleY:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_52

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleY:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_53

    :cond_52
    move v3, v2

    :goto_53
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 501
    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationX:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_63

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationX:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_64

    :cond_63
    move v3, v2

    :goto_64
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 502
    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationY:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_74

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationY:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_75

    :cond_74
    move v3, v2

    :goto_75
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 503
    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationZ:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_84

    iget p0, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationZ:F

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    :cond_84
    add-int/2addr v0, v2

    return v0
.end method

.method public restore(Landroid/view/View;)V
    .registers 11

    .line 474
    iget v1, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationX:F

    iget v2, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationY:F

    iget v3, p0, Landroid/support/transition/ChangeTransform$Transforms;->mTranslationZ:F

    iget v4, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleX:F

    iget v5, p0, Landroid/support/transition/ChangeTransform$Transforms;->mScaleY:F

    iget v6, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationX:F

    iget v7, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationY:F

    iget v8, p0, Landroid/support/transition/ChangeTransform$Transforms;->mRotationZ:F

    move-object v0, p1

    # invokes: Landroid/support/transition/ChangeTransform;->setTransforms(Landroid/view/View;FFFFFFFF)V
    invoke-static/range {v0 .. v8}, Landroid/support/transition/ChangeTransform;->access$200(Landroid/view/View;FFFFFFFF)V

    return-void
.end method
