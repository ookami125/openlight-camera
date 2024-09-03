.class public Lcom/immersion/android/Device;
.super Lcom/immersion/Device;
.source "Device.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/immersion/Device;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 3

    .line 46
    iget v0, p0, Lcom/immersion/android/Device;->deviceHandle:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_8

    invoke-virtual {p0}, Lcom/immersion/android/Device;->close()V

    :cond_8
    return-void
.end method

.method protected newEffectHandle(II)Lcom/immersion/EffectHandle;
    .registers 3

    .line 27
    new-instance p0, Lcom/immersion/android/EffectHandle;

    invoke-direct {p0, p1, p2}, Lcom/immersion/android/EffectHandle;-><init>(II)V

    return-object p0
.end method
