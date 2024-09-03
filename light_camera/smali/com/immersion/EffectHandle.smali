.class public Lcom/immersion/EffectHandle;
.super Ljava/lang/Object;
.source "EffectHandle.java"


# instance fields
.field protected deviceHandle:I

.field protected effectHandle:I


# direct methods
.method protected constructor <init>(II)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    .line 31
    iput p2, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    return-void
.end method


# virtual methods
.method public appendEnhancedWaveformEffect(Lcom/immersion/EnhancedWaveformEffectDefinition;)V
    .registers 10

    .line 578
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    .line 580
    invoke-virtual {p1}, Lcom/immersion/EnhancedWaveformEffectDefinition;->getData()[B

    move-result-object v3

    .line 581
    invoke-virtual {p1}, Lcom/immersion/EnhancedWaveformEffectDefinition;->getSampleRate()I

    move-result v4

    .line 582
    invoke-virtual {p1}, Lcom/immersion/EnhancedWaveformEffectDefinition;->getFormat()I

    move-result v5

    .line 583
    invoke-virtual {p1}, Lcom/immersion/EnhancedWaveformEffectDefinition;->getMagnitude()I

    move-result v6

    .line 584
    invoke-virtual {p1}, Lcom/immersion/EnhancedWaveformEffectDefinition;->getSecureMode()I

    move-result v7

    .line 578
    invoke-virtual/range {v0 .. v7}, Lcom/immersion/ImmVibe;->appendEnhancedWaveformEffect(II[BIIII)I

    move-result p1

    iput p1, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    return-void
.end method

.method public appendWaveformEffect(Lcom/immersion/WaveformEffectDefinition;)V
    .registers 10

    .line 188
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    .line 190
    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getData()[B

    move-result-object v3

    .line 191
    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getDataSize()I

    move-result v4

    .line 192
    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getSampleRate()I

    move-result v5

    .line 193
    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getBitDepth()I

    move-result v6

    .line 194
    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getMagnitude()I

    move-result v7

    .line 188
    invoke-virtual/range {v0 .. v7}, Lcom/immersion/ImmVibe;->appendWaveformEffect(II[BIIII)I

    move-result p1

    iput p1, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    return-void
.end method

.method public destroyStreamingEffect()V
    .registers 3

    .line 508
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget p0, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    invoke-virtual {v0, v1, p0}, Lcom/immersion/ImmVibe;->destroyStreamingEffect(II)V

    return-void
.end method

.method public getRemainingDuration()I
    .registers 3

    .line 685
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget p0, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    invoke-virtual {v0, v1, p0}, Lcom/immersion/ImmVibe;->getEffectRemainingDuration(II)I

    move-result p0

    return p0
.end method

.method public getState()I
    .registers 3

    .line 261
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget p0, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    invoke-virtual {v0, v1, p0}, Lcom/immersion/ImmVibe;->getEffectState(II)I

    move-result p0

    return p0
.end method

.method public isPaused()Z
    .registers 2

    .line 311
    invoke-virtual {p0}, Lcom/immersion/EffectHandle;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public isPlaying()Z
    .registers 2

    .line 286
    invoke-virtual {p0}, Lcom/immersion/EffectHandle;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public modifyPlayingInterpolatedEffectInterpolant(I)V
    .registers 4

    .line 232
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget p0, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    invoke-virtual {v0, v1, p0, p1}, Lcom/immersion/ImmVibe;->modifyPlayingInterpolatedEffectInterpolant(III)V

    return-void
.end method

.method public modifyPlayingMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)V
    .registers 12

    .line 66
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    .line 68
    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getDuration()I

    move-result v3

    .line 69
    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getMagnitude()I

    move-result v4

    .line 70
    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getStyle()I

    move-result v5

    .line 71
    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getAttackTime()I

    move-result v6

    .line 72
    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getAttackLevel()I

    move-result v7

    .line 73
    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getFadeTime()I

    move-result v8

    .line 74
    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getFadeLevel()I

    move-result v9

    .line 66
    invoke-virtual/range {v0 .. v9}, Lcom/immersion/ImmVibe;->modifyPlayingMagSweepEffect(IIIIIIIII)V

    return-void
.end method

.method public modifyPlayingPeriodicEffect(Lcom/immersion/PeriodicEffectDefinition;)V
    .registers 13

    .line 109
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    .line 111
    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getDuration()I

    move-result v3

    .line 112
    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getMagnitude()I

    move-result v4

    .line 113
    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getPeriod()I

    move-result v5

    .line 114
    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getStyleAndWaveType()I

    move-result v6

    .line 115
    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getAttackTime()I

    move-result v7

    .line 116
    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getAttackLevel()I

    move-result v8

    .line 117
    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getFadeTime()I

    move-result v9

    .line 118
    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getFadeLevel()I

    move-result v10

    .line 109
    invoke-virtual/range {v0 .. v10}, Lcom/immersion/ImmVibe;->modifyPlayingPeriodicEffect(IIIIIIIIII)V

    return-void
.end method

.method public pause()V
    .registers 3

    .line 340
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget p0, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    invoke-virtual {v0, v1, p0}, Lcom/immersion/ImmVibe;->pausePlayingEffect(II)V

    return-void
.end method

.method public playStreamingSample([BI)V
    .registers 5

    .line 432
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget p0, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/immersion/ImmVibe;->playStreamingSample(II[BI)V

    return-void
.end method

.method public playStreamingSampleWithOffset([BII)V
    .registers 10

    .line 481
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/immersion/ImmVibe;->playStreamingSampleWithOffset(II[BII)V

    return-void
.end method

.method public replaceEnhancedWaveformEffect(Lcom/immersion/EnhancedWaveformEffectDefinition;)V
    .registers 10

    .line 654
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    .line 656
    invoke-virtual {p1}, Lcom/immersion/EnhancedWaveformEffectDefinition;->getData()[B

    move-result-object v3

    .line 657
    invoke-virtual {p1}, Lcom/immersion/EnhancedWaveformEffectDefinition;->getSampleRate()I

    move-result v4

    .line 658
    invoke-virtual {p1}, Lcom/immersion/EnhancedWaveformEffectDefinition;->getFormat()I

    move-result v5

    .line 659
    invoke-virtual {p1}, Lcom/immersion/EnhancedWaveformEffectDefinition;->getMagnitude()I

    move-result v6

    .line 660
    invoke-virtual {p1}, Lcom/immersion/EnhancedWaveformEffectDefinition;->getSecureMode()I

    move-result v7

    .line 654
    invoke-virtual/range {v0 .. v7}, Lcom/immersion/ImmVibe;->replaceEnhancedWaveformEffect(II[BIIII)I

    move-result p1

    iput p1, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    return-void
.end method

.method public resume()V
    .registers 3

    .line 367
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget p0, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    invoke-virtual {v0, v1, p0}, Lcom/immersion/ImmVibe;->resumePausedEffect(II)V

    return-void
.end method

.method public stop()V
    .registers 3

    .line 389
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->deviceHandle:I

    iget p0, p0, Lcom/immersion/EffectHandle;->effectHandle:I

    invoke-virtual {v0, v1, p0}, Lcom/immersion/ImmVibe;->stopPlayingEffect(II)V

    return-void
.end method
