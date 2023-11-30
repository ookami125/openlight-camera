.class public Lopenlight/co/camera/view/level/AngleLowPassFilter;
.super Ljava/lang/Object;
.source "AngleLowPassFilter.java"


# static fields
.field private static final LENGTH:I = 0xa


# instance fields
.field private final mQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mSumCosine:F

.field private mSumSin:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/level/AngleLowPassFilter;->mQueue:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public add(F)V
    .locals 6

    .line 23
    iget v0, p0, Lopenlight/co/camera/view/level/AngleLowPassFilter;->mSumSin:F

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v0, v3

    iput v0, p0, Lopenlight/co/camera/view/level/AngleLowPassFilter;->mSumSin:F

    .line 24
    iget v0, p0, Lopenlight/co/camera/view/level/AngleLowPassFilter;->mSumCosine:F

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lopenlight/co/camera/view/level/AngleLowPassFilter;->mSumCosine:F

    .line 25
    iget-object v0, p0, Lopenlight/co/camera/view/level/AngleLowPassFilter;->mQueue:Ljava/util/ArrayDeque;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object p1, p0, Lopenlight/co/camera/view/level/AngleLowPassFilter;->mQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    .line 28
    iget-object p1, p0, Lopenlight/co/camera/view/level/AngleLowPassFilter;->mQueue:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 29
    iget v0, p0, Lopenlight/co/camera/view/level/AngleLowPassFilter;->mSumSin:F

    float-to-double v0, v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    sub-double/2addr v0, v4

    double-to-float p1, v0

    iput p1, p0, Lopenlight/co/camera/view/level/AngleLowPassFilter;->mSumSin:F

    .line 30
    iget p1, p0, Lopenlight/co/camera/view/level/AngleLowPassFilter;->mSumCosine:F

    float-to-double v0, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float p1, v0

    iput p1, p0, Lopenlight/co/camera/view/level/AngleLowPassFilter;->mSumCosine:F

    :cond_0
    return-void
.end method

.method public degrees()I
    .locals 5

    .line 35
    iget-object v0, p0, Lopenlight/co/camera/view/level/AngleLowPassFilter;->mQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    .line 36
    iget v1, p0, Lopenlight/co/camera/view/level/AngleLowPassFilter;->mSumSin:F

    int-to-float v0, v0

    div-float/2addr v1, v0

    float-to-double v1, v1

    iget p0, p0, Lopenlight/co/camera/view/level/AngleLowPassFilter;->mSumCosine:F

    div-float/2addr p0, v0

    float-to-double v3, p0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method
