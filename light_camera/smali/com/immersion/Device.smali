.class public Lcom/immersion/Device;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field protected deviceHandle:I

.field protected deviceIndex:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/immersion/Device;->deviceHandle:I

    return-void
.end method

.method public static getCapabilityBool(II)Z
    .locals 1

    .line 273
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/immersion/ImmVibe;->getDeviceCapabilityBool(II)Z

    move-result p0

    return p0
.end method

.method public static getCapabilityInt32(II)I
    .locals 1

    .line 335
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/immersion/ImmVibe;->getDeviceCapabilityInt32(II)I

    move-result p0

    return p0
.end method

.method public static getCapabilityString(II)Ljava/lang/String;
    .locals 1

    .line 394
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/immersion/ImmVibe;->getDeviceCapabilityString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCount()I
    .locals 1

    .line 172
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/immersion/ImmVibe;->getDeviceCount()I

    move-result v0

    return v0
.end method

.method public static getState(I)I
    .locals 1

    .line 206
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/immersion/ImmVibe;->getDeviceState(I)I

    move-result p0

    return p0
.end method

.method public static newDevice()Lcom/immersion/Device;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/immersion/Device;->newDeviceInstance()Lcom/immersion/Device;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 63
    iput v1, v0, Lcom/immersion/Device;->deviceIndex:I

    .line 64
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    invoke-static {}, Lcom/immersion/Device;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/immersion/ImmVibe;->openCompositeDevice(I)I

    move-result v1

    iput v1, v0, Lcom/immersion/Device;->deviceHandle:I

    return-object v0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "VIBE_E_FAIL"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newDevice(I)Lcom/immersion/Device;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 104
    invoke-static {}, Lcom/immersion/Device;->newDeviceInstance()Lcom/immersion/Device;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iput p0, v0, Lcom/immersion/Device;->deviceIndex:I

    .line 109
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/immersion/ImmVibe;->openDevice(I)I

    move-result p0

    iput p0, v0, Lcom/immersion/Device;->deviceHandle:I

    return-object v0

    .line 113
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "VIBE_E_FAIL"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static newDeviceInstance()Lcom/immersion/Device;
    .locals 1

    const-string v0, "com.immersion.android.Device"

    .line 1101
    invoke-static {v0}, Lcom/immersion/Device;->newDeviceInstanceForName(Ljava/lang/String;)Lcom/immersion/Device;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "com.immersion.J2ME.Device"

    .line 1105
    invoke-static {v0}, Lcom/immersion/Device;->newDeviceInstanceForName(Ljava/lang/String;)Lcom/immersion/Device;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1109
    new-instance v0, Lcom/immersion/Device;

    invoke-direct {v0}, Lcom/immersion/Device;-><init>()V

    :cond_0
    return-object v0
.end method

.method private static newDeviceInstanceForName(Ljava/lang/String;)Lcom/immersion/Device;
    .locals 0

    .line 1083
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 1085
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/immersion/Device;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 138
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {v0, v1}, Lcom/immersion/ImmVibe;->closeDevice(I)V

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/immersion/Device;->deviceHandle:I

    .line 140
    iput v0, p0, Lcom/immersion/Device;->deviceIndex:I

    return-void
.end method

.method public createStreamingEffect()Lcom/immersion/EffectHandle;
    .locals 3

    .line 961
    iget v0, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    iget v2, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {v1, v2}, Lcom/immersion/ImmVibe;->createStreamingEffect(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/immersion/Device;->newEffectHandle(II)Lcom/immersion/EffectHandle;

    move-result-object p0

    return-object p0
.end method

.method public getCapabilityBool(I)Z
    .locals 1

    .line 300
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget p0, p0, Lcom/immersion/Device;->deviceIndex:I

    invoke-virtual {v0, p0, p1}, Lcom/immersion/ImmVibe;->getDeviceCapabilityBool(II)Z

    move-result p0

    return p0
.end method

.method public getCapabilityInt32(I)I
    .locals 1

    .line 360
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget p0, p0, Lcom/immersion/Device;->deviceIndex:I

    invoke-virtual {v0, p0, p1}, Lcom/immersion/ImmVibe;->getDeviceCapabilityInt32(II)I

    move-result p0

    return p0
.end method

.method public getCapabilityString(I)Ljava/lang/String;
    .locals 1

    .line 418
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget p0, p0, Lcom/immersion/Device;->deviceIndex:I

    invoke-virtual {v0, p0, p1}, Lcom/immersion/ImmVibe;->getDeviceCapabilityString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIVTBufferFromXIVT([B)Lcom/immersion/IVTBuffer;
    .locals 2

    .line 1056
    new-instance v0, Lcom/immersion/IVTBuffer;

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    iget p0, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {v1, p0, p1}, Lcom/immersion/ImmVibe;->loadIVTFromXIVT(I[B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/immersion/IVTBuffer;-><init>([B)V

    return-object v0
.end method

.method public getPropertyBool(I)Z
    .locals 1

    .line 447
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget p0, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {v0, p0, p1}, Lcom/immersion/ImmVibe;->getDevicePropertyBool(II)Z

    move-result p0

    return p0
.end method

.method public getPropertyInt32(I)I
    .locals 1

    .line 507
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget p0, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {v0, p0, p1}, Lcom/immersion/ImmVibe;->getDevicePropertyInt32(II)I

    move-result p0

    return p0
.end method

.method public getPropertyString(I)Ljava/lang/String;
    .locals 1

    .line 576
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget p0, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {v0, p0, p1}, Lcom/immersion/ImmVibe;->getDevicePropertyString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getState()I
    .locals 1

    .line 236
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget p0, p0, Lcom/immersion/Device;->deviceIndex:I

    invoke-virtual {v0, p0}, Lcom/immersion/ImmVibe;->getDeviceState(I)I

    move-result p0

    return p0
.end method

.method protected newEffectHandle(II)Lcom/immersion/EffectHandle;
    .locals 0

    .line 1071
    new-instance p0, Lcom/immersion/EffectHandle;

    invoke-direct {p0, p1, p2}, Lcom/immersion/EffectHandle;-><init>(II)V

    return-object p0
.end method

.method public playEnhancedWaveformEffect(Lcom/immersion/EnhancedWaveformEffectDefinition;)Lcom/immersion/EffectHandle;
    .locals 8

    .line 1023
    iget v0, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    iget v2, p0, Lcom/immersion/Device;->deviceHandle:I

    .line 1024
    invoke-virtual {p1}, Lcom/immersion/EnhancedWaveformEffectDefinition;->getData()[B

    move-result-object v3

    .line 1025
    invoke-virtual {p1}, Lcom/immersion/EnhancedWaveformEffectDefinition;->getSampleRate()I

    move-result v4

    .line 1026
    invoke-virtual {p1}, Lcom/immersion/EnhancedWaveformEffectDefinition;->getFormat()I

    move-result v5

    .line 1027
    invoke-virtual {p1}, Lcom/immersion/EnhancedWaveformEffectDefinition;->getMagnitude()I

    move-result v6

    .line 1028
    invoke-virtual {p1}, Lcom/immersion/EnhancedWaveformEffectDefinition;->getSecureMode()I

    move-result v7

    .line 1023
    invoke-virtual/range {v1 .. v7}, Lcom/immersion/ImmVibe;->playEnhancedWaveformEffect(I[BIIII)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/immersion/Device;->newEffectHandle(II)Lcom/immersion/EffectHandle;

    move-result-object p0

    return-object p0
.end method

.method public playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;
    .locals 3

    .line 664
    iget v0, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    iget v2, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {p1}, Lcom/immersion/IVTBuffer;->getBuffer()[B

    move-result-object p1

    invoke-virtual {v1, v2, p1, p2}, Lcom/immersion/ImmVibe;->playIVTEffect(I[BI)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/immersion/Device;->newEffectHandle(II)Lcom/immersion/EffectHandle;

    move-result-object p0

    return-object p0
.end method

.method public playIVTEffectRepeat(Lcom/immersion/IVTBuffer;IB)Lcom/immersion/EffectHandle;
    .locals 3

    .line 791
    iget v0, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    iget v2, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {p1}, Lcom/immersion/IVTBuffer;->getBuffer()[B

    move-result-object p1

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/immersion/ImmVibe;->playIVTEffectRepeat(I[BIB)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/immersion/Device;->newEffectHandle(II)Lcom/immersion/EffectHandle;

    move-result-object p0

    return-object p0
.end method

.method public playIVTInterpolatedEffect(Lcom/immersion/IVTBuffer;II)Lcom/immersion/EffectHandle;
    .locals 3

    .line 718
    iget v0, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    iget v2, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {p1}, Lcom/immersion/IVTBuffer;->getBuffer()[B

    move-result-object p1

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/immersion/ImmVibe;->playIVTInterpolatedEffect(I[BII)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/immersion/Device;->newEffectHandle(II)Lcom/immersion/EffectHandle;

    move-result-object p0

    return-object p0
.end method

.method public playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)Lcom/immersion/EffectHandle;
    .locals 10

    .line 824
    iget v0, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    iget v2, p0, Lcom/immersion/Device;->deviceHandle:I

    .line 825
    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getDuration()I

    move-result v3

    .line 826
    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getMagnitude()I

    move-result v4

    .line 827
    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getStyle()I

    move-result v5

    .line 828
    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getAttackTime()I

    move-result v6

    .line 829
    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getAttackLevel()I

    move-result v7

    .line 830
    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getFadeTime()I

    move-result v8

    .line 831
    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getFadeLevel()I

    move-result v9

    .line 824
    invoke-virtual/range {v1 .. v9}, Lcom/immersion/ImmVibe;->playMagSweepEffect(IIIIIIII)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/immersion/Device;->newEffectHandle(II)Lcom/immersion/EffectHandle;

    move-result-object p0

    return-object p0
.end method

.method public playPeriodicEffect(Lcom/immersion/PeriodicEffectDefinition;)Lcom/immersion/EffectHandle;
    .locals 11

    .line 864
    iget v0, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    iget v2, p0, Lcom/immersion/Device;->deviceHandle:I

    .line 865
    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getDuration()I

    move-result v3

    .line 866
    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getMagnitude()I

    move-result v4

    .line 867
    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getPeriod()I

    move-result v5

    .line 868
    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getStyleAndWaveType()I

    move-result v6

    .line 869
    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getAttackTime()I

    move-result v7

    .line 870
    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getAttackLevel()I

    move-result v8

    .line 871
    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getFadeTime()I

    move-result v9

    .line 872
    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getFadeLevel()I

    move-result v10

    .line 864
    invoke-virtual/range {v1 .. v10}, Lcom/immersion/ImmVibe;->playPeriodicEffect(IIIIIIIII)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/immersion/Device;->newEffectHandle(II)Lcom/immersion/EffectHandle;

    move-result-object p0

    return-object p0
.end method

.method public playWaveformEffect(Lcom/immersion/WaveformEffectDefinition;)Lcom/immersion/EffectHandle;
    .locals 8

    .line 922
    iget v0, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    iget v2, p0, Lcom/immersion/Device;->deviceHandle:I

    .line 923
    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getData()[B

    move-result-object v3

    .line 924
    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getDataSize()I

    move-result v4

    .line 925
    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getSampleRate()I

    move-result v5

    .line 926
    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getBitDepth()I

    move-result v6

    .line 927
    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getMagnitude()I

    move-result v7

    .line 922
    invoke-virtual/range {v1 .. v7}, Lcom/immersion/ImmVibe;->playWaveformEffect(I[BIIII)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/immersion/Device;->newEffectHandle(II)Lcom/immersion/EffectHandle;

    move-result-object p0

    return-object p0
.end method

.method public setPropertyBool(IZ)V
    .locals 1

    .line 476
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget p0, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/immersion/ImmVibe;->setDevicePropertyBool(IIZ)V

    return-void
.end method

.method public setPropertyInt32(II)V
    .locals 1

    .line 547
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget p0, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/immersion/ImmVibe;->setDevicePropertyInt32(III)V

    return-void
.end method

.method public setPropertyString(ILjava/lang/String;)V
    .locals 1

    .line 615
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget p0, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/immersion/ImmVibe;->setDevicePropertyString(IILjava/lang/String;)V

    return-void
.end method

.method public stopAllPlayingEffects()V
    .locals 1

    .line 984
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget p0, p0, Lcom/immersion/Device;->deviceHandle:I

    invoke-virtual {v0, p0}, Lcom/immersion/ImmVibe;->stopAllPlayingEffects(I)V

    return-void
.end method
