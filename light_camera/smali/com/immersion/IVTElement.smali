.class public Lcom/immersion/IVTElement;
.super Ljava/lang/Object;
.source "IVTElement.java"


# instance fields
.field private time:I

.field private type:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Lcom/immersion/IVTElement;->setType(I)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/immersion/IVTElement;->setTime(I)V

    return-void
.end method

.method static newIVTElement([I)Lcom/immersion/IVTElement;
    .registers 22

    if-eqz p0, :cond_7e

    const/4 v1, 0x0

    .line 58
    aget v1, p0, v1

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x1

    packed-switch v1, :pswitch_data_80

    goto/16 :goto_7e

    .line 69
    :pswitch_15
    new-instance v1, Lcom/immersion/IVTWaveformElement;

    aget v2, p0, v10

    new-instance v3, Lcom/immersion/WaveformEffectDefinition;

    const/4 v11, 0x0

    aget v12, p0, v9

    aget v13, p0, v7

    aget v14, p0, v6

    aget v15, p0, v5

    aget v16, p0, v4

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lcom/immersion/WaveformEffectDefinition;-><init>([BIIIII)V

    invoke-direct {v1, v2, v3}, Lcom/immersion/IVTWaveformElement;-><init>(ILcom/immersion/WaveformEffectDefinition;)V

    goto :goto_7f

    .line 73
    :pswitch_2e
    new-instance v1, Lcom/immersion/IVTRepeatElement;

    aget v2, p0, v10

    aget v3, p0, v8

    aget v0, p0, v9

    invoke-direct {v1, v2, v3, v0}, Lcom/immersion/IVTRepeatElement;-><init>(III)V

    goto :goto_7f

    .line 61
    :pswitch_3a
    new-instance v1, Lcom/immersion/IVTMagSweepElement;

    aget v10, p0, v10

    new-instance v15, Lcom/immersion/MagSweepEffectDefinition;

    aget v12, p0, v8

    aget v13, p0, v9

    aget v14, p0, v7

    aget v6, p0, v6

    aget v16, p0, v5

    aget v17, p0, v4

    aget v18, p0, v3

    aget v19, p0, v2

    move-object v11, v15

    move-object v0, v15

    move v15, v6

    invoke-direct/range {v11 .. v19}, Lcom/immersion/MagSweepEffectDefinition;-><init>(IIIIIIII)V

    invoke-direct {v1, v10, v0}, Lcom/immersion/IVTMagSweepElement;-><init>(ILcom/immersion/MagSweepEffectDefinition;)V

    goto :goto_7f

    .line 65
    :pswitch_5a
    new-instance v1, Lcom/immersion/IVTPeriodicElement;

    aget v10, p0, v10

    new-instance v15, Lcom/immersion/PeriodicEffectDefinition;

    aget v12, p0, v8

    aget v13, p0, v9

    aget v14, p0, v7

    aget v6, p0, v6

    aget v16, p0, v5

    aget v17, p0, v4

    aget v18, p0, v3

    aget v19, p0, v2

    const/16 v2, 0xa

    aget v20, p0, v2

    move-object v11, v15

    move-object v0, v15

    move v15, v6

    invoke-direct/range {v11 .. v20}, Lcom/immersion/PeriodicEffectDefinition;-><init>(IIIIIIIII)V

    invoke-direct {v1, v10, v0}, Lcom/immersion/IVTPeriodicElement;-><init>(ILcom/immersion/PeriodicEffectDefinition;)V

    goto :goto_7f

    :cond_7e
    :goto_7e
    const/4 v1, 0x0

    :goto_7f
    return-object v1

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_3a
        :pswitch_2e
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public getBuffer()[I
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTime()I
    .registers 1

    .line 131
    iget p0, p0, Lcom/immersion/IVTElement;->time:I

    return p0
.end method

.method public getType()I
    .registers 1

    .line 109
    iget p0, p0, Lcom/immersion/IVTElement;->type:I

    return p0
.end method

.method public setTime(I)V
    .registers 2

    .line 120
    iput p1, p0, Lcom/immersion/IVTElement;->time:I

    return-void
.end method

.method setType(I)V
    .registers 2

    .line 93
    iput p1, p0, Lcom/immersion/IVTElement;->type:I

    return-void
.end method
