.class Landroid/support/transition/FloatArrayEvaluator;
.super Ljava/lang/Object;
.source "FloatArrayEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "[F>;"
    }
.end annotation


# instance fields
.field private mArray:[F


# direct methods
.method constructor <init>([F)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/support/transition/FloatArrayEvaluator;->mArray:[F

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 27
    check-cast p2, [F

    check-cast p3, [F

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/transition/FloatArrayEvaluator;->evaluate(F[F[F)[F

    move-result-object p0

    return-object p0
.end method

.method public evaluate(F[F[F)[F
    .registers 7

    .line 57
    iget-object p0, p0, Landroid/support/transition/FloatArrayEvaluator;->mArray:[F

    if-nez p0, :cond_7

    .line 59
    array-length p0, p2

    new-array p0, p0, [F

    :cond_7
    const/4 v0, 0x0

    .line 62
    :goto_8
    array-length v1, p0

    if-ge v0, v1, :cond_17

    .line 63
    aget v1, p2, v0

    .line 64
    aget v2, p3, v0

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 65
    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_17
    return-object p0
.end method
