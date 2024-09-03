.class public Lcom/immersion/IVTBuffer;
.super Ljava/lang/Object;
.source "IVTBuffer.java"


# instance fields
.field private ivt:[B


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/immersion/ImmVibe;->initializeIVTBuffer(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    return-void
.end method

.method public static deleteHapticTrack(Ljava/lang/String;)V
    .registers 2

    .line 662
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/immersion/ImmVibe;->deleteIVTFile(Ljava/lang/String;)V

    return-void
.end method

.method public static getBuiltInEffects()Lcom/immersion/IVTBuffer;
    .registers 2

    .line 38
    new-instance v0, Lcom/immersion/IVTBuffer;

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/immersion/ImmVibe;->getBuiltInEffects()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/immersion/IVTBuffer;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public getBuffer()[B
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    return-object p0
.end method

.method public getEffectCount()I
    .registers 2

    .line 108
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object p0, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    invoke-virtual {v0, p0}, Lcom/immersion/ImmVibe;->getIVTEffectCount([B)I

    move-result p0

    return p0
.end method

.method public getEffectDuration(I)I
    .registers 3

    .line 142
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object p0, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    invoke-virtual {v0, p0, p1}, Lcom/immersion/ImmVibe;->getIVTEffectDuration([BI)I

    move-result p0

    return p0
.end method

.method public getEffectIndexFromName(Ljava/lang/String;)I
    .registers 3

    .line 172
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object p0, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    invoke-virtual {v0, p0, p1}, Lcom/immersion/ImmVibe;->getIVTEffectIndexFromName([BLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getEffectName(I)Ljava/lang/String;
    .registers 3

    .line 207
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object p0, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    invoke-virtual {v0, p0, p1}, Lcom/immersion/ImmVibe;->getIVTEffectName([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEffectType(I)I
    .registers 3

    .line 247
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object p0, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    invoke-virtual {v0, p0, p1}, Lcom/immersion/ImmVibe;->getIVTEffectType([BI)I

    move-result p0

    return p0
.end method

.method public getMagSweepEffectDefinitionAtIndex(I)Lcom/immersion/MagSweepEffectDefinition;
    .registers 28

    const/4 v0, 0x1

    .line 285
    new-array v11, v0, [I

    .line 286
    new-array v12, v0, [I

    .line 287
    new-array v13, v0, [I

    .line 288
    new-array v14, v0, [I

    .line 289
    new-array v15, v0, [I

    .line 290
    new-array v10, v0, [I

    .line 291
    new-array v0, v0, [I

    .line 293
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/immersion/IVTBuffer;->ivt:[B

    move/from16 v3, p1

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move-object v9, v10

    move-object/from16 v16, v10

    move-object v10, v0

    invoke-virtual/range {v1 .. v10}, Lcom/immersion/ImmVibe;->getIVTMagSweepEffectDefinition([BI[I[I[I[I[I[I[I)V

    .line 303
    new-instance v1, Lcom/immersion/MagSweepEffectDefinition;

    const/4 v2, 0x0

    aget v18, v11, v2

    aget v19, v12, v2

    aget v20, v13, v2

    aget v21, v14, v2

    aget v22, v15, v2

    aget v23, v16, v2

    aget v24, v0, v2

    const/16 v25, 0x0

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v25}, Lcom/immersion/MagSweepEffectDefinition;-><init>(IIIIIIII)V

    return-object v1
.end method

.method public getPeriodicEffectDefinitionAtIndex(I)Lcom/immersion/PeriodicEffectDefinition;
    .registers 31

    const/4 v0, 0x1

    .line 348
    new-array v12, v0, [I

    .line 349
    new-array v13, v0, [I

    .line 350
    new-array v14, v0, [I

    .line 351
    new-array v15, v0, [I

    .line 352
    new-array v11, v0, [I

    .line 353
    new-array v10, v0, [I

    .line 354
    new-array v9, v0, [I

    .line 355
    new-array v0, v0, [I

    .line 357
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/immersion/IVTBuffer;->ivt:[B

    move/from16 v3, p1

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    move-object v8, v11

    move-object/from16 v16, v9

    move-object v9, v10

    move-object/from16 v17, v10

    move-object/from16 v10, v16

    move-object/from16 v18, v11

    move-object v11, v0

    invoke-virtual/range {v1 .. v11}, Lcom/immersion/ImmVibe;->getIVTPeriodicEffectDefinition([BI[I[I[I[I[I[I[I[I)V

    .line 368
    new-instance v1, Lcom/immersion/PeriodicEffectDefinition;

    const/4 v2, 0x0

    aget v20, v12, v2

    aget v21, v13, v2

    aget v22, v14, v2

    aget v23, v15, v2

    aget v24, v18, v2

    aget v25, v17, v2

    aget v26, v16, v2

    aget v27, v0, v2

    const/16 v28, 0x0

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v28}, Lcom/immersion/PeriodicEffectDefinition;-><init>(IIIIIIIII)V

    return-object v1
.end method

.method public getSize()I
    .registers 2

    .line 416
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object p0, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    invoke-virtual {v0, p0}, Lcom/immersion/ImmVibe;->getIVTSize([B)I

    move-result p0

    return p0
.end method

.method public insertElement(ILcom/immersion/IVTElement;)V
    .registers 6

    .line 472
    invoke-virtual {p2}, Lcom/immersion/IVTElement;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    .line 474
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    invoke-virtual {p2}, Lcom/immersion/IVTElement;->getBuffer()[I

    move-result-object v2

    check-cast p2, Lcom/immersion/IVTWaveformElement;

    invoke-virtual {p2}, Lcom/immersion/IVTWaveformElement;->getDefinition()Lcom/immersion/WaveformEffectDefinition;

    move-result-object p2

    invoke-virtual {p2}, Lcom/immersion/WaveformEffectDefinition;->getData()[B

    move-result-object p2

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/immersion/ImmVibe;->insertIVTElement([BI[I[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    goto :goto_33

    .line 478
    :cond_22
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    invoke-virtual {p2}, Lcom/immersion/IVTElement;->getBuffer()[I

    move-result-object p2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/immersion/ImmVibe;->insertIVTElement([BI[I[B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    :goto_33
    return-void
.end method

.method public readElement(II)Lcom/immersion/IVTElement;
    .registers 6

    .line 592
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    invoke-virtual {v0, v1, p1, p2}, Lcom/immersion/ImmVibe;->readIVTElement([BII)[I

    move-result-object v0

    invoke-static {v0}, Lcom/immersion/IVTElement;->newIVTElement([I)Lcom/immersion/IVTElement;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 594
    invoke-virtual {v0}, Lcom/immersion/IVTElement;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2b

    .line 596
    move-object v1, v0

    check-cast v1, Lcom/immersion/IVTWaveformElement;

    invoke-virtual {v1}, Lcom/immersion/IVTWaveformElement;->getDefinition()Lcom/immersion/WaveformEffectDefinition;

    move-result-object v1

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v2

    iget-object p0, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    invoke-virtual {v2, p0, p1, p2}, Lcom/immersion/ImmVibe;->readIVTElementData([BII)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/immersion/WaveformEffectDefinition;->setData([B)V

    :cond_2b
    return-object v0
.end method

.method public removeElement(II)V
    .registers 5

    .line 538
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    invoke-virtual {v0, v1, p1, p2}, Lcom/immersion/ImmVibe;->removeIVTElement([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    return-void
.end method

.method public saveHapticTrack(Ljava/lang/String;)V
    .registers 3

    .line 636
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object p0, p0, Lcom/immersion/IVTBuffer;->ivt:[B

    invoke-virtual {v0, p0, p1}, Lcom/immersion/ImmVibe;->saveIVTFile([BLjava/lang/String;)V

    return-void
.end method
