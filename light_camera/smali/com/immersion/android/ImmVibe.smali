.class public Lcom/immersion/android/ImmVibe;
.super Lcom/immersion/ImmVibe;
.source "ImmVibe.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "ImmVibeJ"

    .line 440
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/immersion/ImmVibe;-><init>()V

    return-void
.end method

.method private native AppendEnhancedWaveformEffect(II[BIIII)I
.end method

.method private native AppendWaveformEffect(II[BIIII)I
.end method

.method private native CloseDevice2(I)V
.end method

.method private native CreateStreamingEffect(I)I
.end method

.method private native DeleteIVTFile(Ljava/lang/String;)V
.end method

.method private native DestroyStreamingEffect(II)V
.end method

.method private native GetBuiltInEffects()[B
.end method

.method private native GetDeviceCapabilityBool(II)Z
.end method

.method private native GetDeviceCapabilityInt32(II)I
.end method

.method private native GetDeviceCapabilityString(II)Ljava/lang/String;
.end method

.method private native GetDeviceCount()I
.end method

.method private native GetDeviceKernelParameter(II)I
.end method

.method private native GetDevicePropertyBool(II)Z
.end method

.method private native GetDevicePropertyInt32(II)I
.end method

.method private native GetDevicePropertyString(II)Ljava/lang/String;
.end method

.method private native GetDeviceState(I)I
.end method

.method private native GetEffectRemainingDuration(II)I
.end method

.method private native GetEffectState(II)I
.end method

.method private native GetIVTEffectCount([B)I
.end method

.method private native GetIVTEffectDuration([BI)I
.end method

.method private native GetIVTEffectIndexFromName([BLjava/lang/String;)I
.end method

.method private native GetIVTEffectName([BI)Ljava/lang/String;
.end method

.method private native GetIVTEffectType([BI)I
.end method

.method private native GetIVTMagSweepEffectDefinition([BI[I[I[I[I[I[I[I)V
.end method

.method private native GetIVTPeriodicEffectDefinition([BI[I[I[I[I[I[I[I[I)V
.end method

.method private native GetIVTSize2([B)I
.end method

.method private native Initialize2()V
.end method

.method private native InitializeIVTBuffer(I)[B
.end method

.method private native InsertIVTElement2([BI[I[B)[B
.end method

.method private native LoadIVTFromXIVT(II[B)[B
.end method

.method private native ModifyPlayingInterpolatedEffectInterpolant(III)V
.end method

.method private native ModifyPlayingMagSweepEffect(IIIIIIIII)V
.end method

.method private native ModifyPlayingPeriodicEffect(IIIIIIIIII)V
.end method

.method private native OpenCompositeDevice2([II)I
.end method

.method private native OpenDevice2(I)I
.end method

.method private native PausePlayingEffect(II)V
.end method

.method private native PlayEnhancedWaveformEffect(I[BIIII)I
.end method

.method private native PlayIVTEffect(I[BI)I
.end method

.method private native PlayIVTEffectRepeat(I[BIB)I
.end method

.method private native PlayIVTInterpolatedEffect(I[BII)I
.end method

.method private native PlayMagSweepEffect(IIIIIIII)I
.end method

.method private native PlayPeriodicEffect(IIIIIIIII)I
.end method

.method private native PlayStreamingSample(II[BI)V
.end method

.method private native PlayStreamingSampleWithOffset(II[BII)V
.end method

.method private native PlayWaveformEffect(I[BIIII)I
.end method

.method private native ReadIVTElement2([BII)[I
.end method

.method private native ReadIVTElementData([BII)[B
.end method

.method private native RemoveIVTElement2([BII)[B
.end method

.method private native ReplaceEnhancedWaveformEffect(II[BIIII)I
.end method

.method private native ResumePausedEffect(II)V
.end method

.method private native SaveIVTFile([BLjava/lang/String;)V
.end method

.method private native SetDevicePropertyBool(IIZ)V
.end method

.method private native SetDevicePropertyInt32(III)V
.end method

.method private native SetDevicePropertyString(IILjava/lang/String;)V
.end method

.method private native StopAllPlayingEffects(I)V
.end method

.method private native StopPlayingEffect(II)V
.end method

.method private native Terminate2()V
.end method


# virtual methods
.method public appendEnhancedWaveformEffect(II[BIIII)I
    .registers 8

    .line 424
    invoke-direct/range {p0 .. p7}, Lcom/immersion/android/ImmVibe;->AppendEnhancedWaveformEffect(II[BIIII)I

    move-result p0

    return p0
.end method

.method public appendWaveformEffect(II[BIIII)I
    .registers 8

    .line 196
    invoke-direct/range {p0 .. p7}, Lcom/immersion/android/ImmVibe;->AppendWaveformEffect(II[BIIII)I

    move-result p0

    return p0
.end method

.method public closeDevice(I)V
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    .line 143
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->CloseDevice2(I)V

    :cond_6
    return-void
.end method

.method public createStreamingEffect(I)I
    .registers 2

    .line 236
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->CreateStreamingEffect(I)I

    move-result p0

    return p0
.end method

.method public deleteIVTFile(Ljava/lang/String;)V
    .registers 2

    .line 314
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->DeleteIVTFile(Ljava/lang/String;)V

    return-void
.end method

.method public destroyStreamingEffect(II)V
    .registers 3

    .line 240
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->DestroyStreamingEffect(II)V

    return-void
.end method

.method public getBuiltInEffects()[B
    .registers 1

    .line 252
    invoke-direct {p0}, Lcom/immersion/android/ImmVibe;->GetBuiltInEffects()[B

    move-result-object p0

    return-object p0
.end method

.method public getDeviceCapabilityBool(II)Z
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDeviceCapabilityBool(II)Z

    move-result p0

    return p0
.end method

.method public getDeviceCapabilityInt32(II)I
    .registers 3

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDeviceCapabilityInt32(II)I

    move-result p0

    return p0
.end method

.method public getDeviceCapabilityString(II)Ljava/lang/String;
    .registers 3

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDeviceCapabilityString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceCount()I
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/immersion/android/ImmVibe;->GetDeviceCount()I

    move-result p0

    return p0
.end method

.method public getDeviceKernelParameter(II)I
    .registers 3

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDeviceKernelParameter(II)I

    move-result p0

    return p0
.end method

.method public getDevicePropertyBool(II)Z
    .registers 3

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDevicePropertyBool(II)Z

    move-result p0

    return p0
.end method

.method public getDevicePropertyInt32(II)I
    .registers 3

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDevicePropertyInt32(II)I

    move-result p0

    return p0
.end method

.method public getDevicePropertyString(II)Ljava/lang/String;
    .registers 3

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetDevicePropertyString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceState(I)I
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->GetDeviceState(I)I

    move-result p0

    return p0
.end method

.method public getEffectRemainingDuration(II)I
    .registers 3

    .line 432
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetEffectRemainingDuration(II)I

    move-result p0

    return p0
.end method

.method public getEffectState(II)I
    .registers 3

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetEffectState(II)I

    move-result p0

    return p0
.end method

.method public getIVTEffectCount([B)I
    .registers 2

    .line 282
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->GetIVTEffectCount([B)I

    move-result p0

    return p0
.end method

.method public getIVTEffectDuration([BI)I
    .registers 3

    .line 298
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetIVTEffectDuration([BI)I

    move-result p0

    return p0
.end method

.method public getIVTEffectIndexFromName([BLjava/lang/String;)I
    .registers 3

    .line 290
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetIVTEffectIndexFromName([BLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getIVTEffectName([BI)Ljava/lang/String;
    .registers 3

    .line 286
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetIVTEffectName([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIVTEffectType([BI)I
    .registers 3

    .line 294
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->GetIVTEffectType([BI)I

    move-result p0

    return p0
.end method

.method public getIVTMagSweepEffectDefinition([BI[I[I[I[I[I[I[I)V
    .registers 10

    .line 302
    invoke-direct/range {p0 .. p9}, Lcom/immersion/android/ImmVibe;->GetIVTMagSweepEffectDefinition([BI[I[I[I[I[I[I[I)V

    return-void
.end method

.method public getIVTPeriodicEffectDefinition([BI[I[I[I[I[I[I[I[I)V
    .registers 11

    .line 306
    invoke-direct/range {p0 .. p10}, Lcom/immersion/android/ImmVibe;->GetIVTPeriodicEffectDefinition([BI[I[I[I[I[I[I[I[I)V

    return-void
.end method

.method public getIVTSize([B)I
    .registers 2

    .line 322
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->GetIVTSize2([B)I

    move-result p0

    return p0
.end method

.method public getIVTSize([BI)I
    .registers 3

    .line 337
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->GetIVTSize2([B)I

    move-result p0

    return p0
.end method

.method public initialize()V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/immersion/android/ImmVibe;->Initialize2()V

    return-void
.end method

.method public initializeIVTBuffer(I)[B
    .registers 2

    .line 318
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->InitializeIVTBuffer(I)[B

    move-result-object p0

    return-object p0
.end method

.method public insertIVTElement([BII[I)[B
    .registers 5

    const/4 p2, 0x0

    .line 370
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/immersion/android/ImmVibe;->InsertIVTElement2([BI[I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public insertIVTElement([BI[I[B)[B
    .registers 5

    .line 341
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/immersion/android/ImmVibe;->InsertIVTElement2([BI[I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public loadIVTFromXIVT(I[B)[B
    .registers 4

    .line 436
    array-length v0, p2

    invoke-direct {p0, p1, v0, p2}, Lcom/immersion/android/ImmVibe;->LoadIVTFromXIVT(II[B)[B

    move-result-object p0

    return-object p0
.end method

.method public modifyPlayingInterpolatedEffectInterpolant(III)V
    .registers 4

    .line 232
    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->ModifyPlayingInterpolatedEffectInterpolant(III)V

    return-void
.end method

.method public modifyPlayingMagSweepEffect(IIIIIIIII)V
    .registers 10

    .line 200
    invoke-direct/range {p0 .. p9}, Lcom/immersion/android/ImmVibe;->ModifyPlayingMagSweepEffect(IIIIIIIII)V

    return-void
.end method

.method public modifyPlayingPeriodicEffect(IIIIIIIIII)V
    .registers 11

    .line 204
    invoke-direct/range {p0 .. p10}, Lcom/immersion/android/ImmVibe;->ModifyPlayingPeriodicEffect(IIIIIIIIII)V

    return-void
.end method

.method public openCompositeDevice(I)I
    .registers 3

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, v0, p1}, Lcom/immersion/android/ImmVibe;->OpenCompositeDevice2([II)I

    move-result p0

    return p0
.end method

.method public openCompositeDevice([IILjava/lang/String;)I
    .registers 4

    const/4 p1, 0x0

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->OpenCompositeDevice2([II)I

    move-result p1

    if-eqz p3, :cond_22

    const-string p2, ""

    .line 125
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_22

    const/4 p2, 0x0

    .line 129
    :try_start_10
    invoke-virtual {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->setDevicePropertyString(IILjava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_22

    :catch_14
    move-exception p2

    .line 133
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->CloseDevice2(I)V

    .line 134
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    :goto_22
    return p1
.end method

.method public openDevice(I)I
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->OpenDevice2(I)I

    move-result p0

    return p0
.end method

.method public openDevice(ILjava/lang/String;)I
    .registers 4

    .line 80
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->OpenDevice2(I)I

    move-result p1

    if-eqz p2, :cond_21

    const-string v0, ""

    .line 81
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x0

    .line 85
    :try_start_f
    invoke-virtual {p0, p1, v0, p2}, Lcom/immersion/android/ImmVibe;->setDevicePropertyString(IILjava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_21

    :catch_13
    move-exception p2

    .line 89
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->CloseDevice2(I)V

    .line 90
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    :goto_21
    return p1
.end method

.method public pausePlayingEffect(II)V
    .registers 3

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->PausePlayingEffect(II)V

    return-void
.end method

.method public playBuiltInEffect(II)I
    .registers 4

    .line 265
    invoke-direct {p0}, Lcom/immersion/android/ImmVibe;->GetBuiltInEffects()[B

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/immersion/android/ImmVibe;->PlayIVTEffect(I[BI)I

    move-result p0

    return p0
.end method

.method public playBuiltInEffectRepeat(IIB)I
    .registers 5

    .line 278
    invoke-direct {p0}, Lcom/immersion/android/ImmVibe;->GetBuiltInEffects()[B

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/immersion/android/ImmVibe;->PlayIVTEffectRepeat(I[BIB)I

    move-result p0

    return p0
.end method

.method public playEnhancedWaveformEffect(I[BIIII)I
    .registers 7

    .line 420
    invoke-direct/range {p0 .. p6}, Lcom/immersion/android/ImmVibe;->PlayEnhancedWaveformEffect(I[BIIII)I

    move-result p0

    return p0
.end method

.method public playIVTEffect(I[BI)I
    .registers 4

    .line 176
    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->PlayIVTEffect(I[BI)I

    move-result p0

    return p0
.end method

.method public playIVTEffectRepeat(I[BIB)I
    .registers 5

    .line 180
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/immersion/android/ImmVibe;->PlayIVTEffectRepeat(I[BIB)I

    move-result p0

    return p0
.end method

.method public playIVTInterpolatedEffect(I[BII)I
    .registers 5

    .line 228
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/immersion/android/ImmVibe;->PlayIVTInterpolatedEffect(I[BII)I

    move-result p0

    return p0
.end method

.method public playMagSweepEffect(IIIIIIII)I
    .registers 9

    .line 184
    invoke-direct/range {p0 .. p8}, Lcom/immersion/android/ImmVibe;->PlayMagSweepEffect(IIIIIIII)I

    move-result p0

    return p0
.end method

.method public playPeriodicEffect(IIIIIIIII)I
    .registers 10

    .line 188
    invoke-direct/range {p0 .. p9}, Lcom/immersion/android/ImmVibe;->PlayPeriodicEffect(IIIIIIIII)I

    move-result p0

    return p0
.end method

.method public playStreamingSample(II[BI)V
    .registers 5

    .line 244
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/immersion/android/ImmVibe;->PlayStreamingSample(II[BI)V

    return-void
.end method

.method public playStreamingSampleWithOffset(II[BII)V
    .registers 6

    .line 248
    invoke-direct/range {p0 .. p5}, Lcom/immersion/android/ImmVibe;->PlayStreamingSampleWithOffset(II[BII)V

    return-void
.end method

.method public playWaveformEffect(I[BIIII)I
    .registers 7

    .line 192
    invoke-direct/range {p0 .. p6}, Lcom/immersion/android/ImmVibe;->PlayWaveformEffect(I[BIIII)I

    move-result p0

    return p0
.end method

.method public readIVTElement([BII)[I
    .registers 4

    .line 395
    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->ReadIVTElement2([BII)[I

    move-result-object p0

    return-object p0
.end method

.method public readIVTElement([BIII)[I
    .registers 5

    .line 412
    invoke-direct {p0, p1, p3, p4}, Lcom/immersion/android/ImmVibe;->ReadIVTElement2([BII)[I

    move-result-object p0

    return-object p0
.end method

.method public readIVTElementData([BII)[B
    .registers 4

    .line 416
    invoke-direct {p0, p1, p2, p2}, Lcom/immersion/android/ImmVibe;->ReadIVTElementData([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public removeIVTElement([BII)[B
    .registers 4

    .line 374
    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->RemoveIVTElement2([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public removeIVTElement([BIII)[B
    .registers 5

    .line 391
    invoke-direct {p0, p1, p3, p4}, Lcom/immersion/android/ImmVibe;->RemoveIVTElement2([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public replaceEnhancedWaveformEffect(II[BIIII)I
    .registers 8

    .line 428
    invoke-direct/range {p0 .. p7}, Lcom/immersion/android/ImmVibe;->ReplaceEnhancedWaveformEffect(II[BIIII)I

    move-result p0

    return p0
.end method

.method public resumePausedEffect(II)V
    .registers 3

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->ResumePausedEffect(II)V

    return-void
.end method

.method public saveIVTFile([BLjava/lang/String;)V
    .registers 3

    .line 310
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->SaveIVTFile([BLjava/lang/String;)V

    return-void
.end method

.method public setDevicePropertyBool(IIZ)V
    .registers 4

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->SetDevicePropertyBool(IIZ)V

    return-void
.end method

.method public setDevicePropertyInt32(III)V
    .registers 4

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->SetDevicePropertyInt32(III)V

    return-void
.end method

.method public setDevicePropertyString(IILjava/lang/String;)V
    .registers 4

    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/immersion/android/ImmVibe;->SetDevicePropertyString(IILjava/lang/String;)V

    return-void
.end method

.method public stopAllPlayingEffects(I)V
    .registers 2

    .line 224
    invoke-direct {p0, p1}, Lcom/immersion/android/ImmVibe;->StopAllPlayingEffects(I)V

    return-void
.end method

.method public stopPlayingEffect(II)V
    .registers 3

    .line 220
    invoke-direct {p0, p1, p2}, Lcom/immersion/android/ImmVibe;->StopPlayingEffect(II)V

    return-void
.end method

.method public terminate()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/immersion/android/ImmVibe;->Terminate2()V

    .line 30
    invoke-super {p0}, Lcom/immersion/ImmVibe;->terminate()V

    return-void
.end method
