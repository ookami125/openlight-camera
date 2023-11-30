.class public Lcom/immersion/android/EffectHandle;
.super Lcom/immersion/EffectHandle;
.source "EffectHandle.java"


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/immersion/EffectHandle;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .line 54
    iget v0, p0, Lcom/immersion/android/EffectHandle;->deviceHandle:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    iget v0, p0, Lcom/immersion/android/EffectHandle;->effectHandle:I

    if-eq v1, v0, :cond_0

    iget v0, p0, Lcom/immersion/android/EffectHandle;->effectHandle:I

    const/high16 v1, 0x30000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 58
    invoke-static {}, Lcom/immersion/android/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/android/EffectHandle;->deviceHandle:I

    iget p0, p0, Lcom/immersion/android/EffectHandle;->effectHandle:I

    invoke-virtual {v0, v1, p0}, Lcom/immersion/ImmVibe;->destroyStreamingEffect(II)V

    :cond_0
    return-void
.end method
