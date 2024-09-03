.class public Lcom/immersion/IVTWaveformElement;
.super Lcom/immersion/IVTElement;
.source "IVTWaveformElement.java"


# instance fields
.field private definition:Lcom/immersion/WaveformEffectDefinition;


# direct methods
.method public constructor <init>(ILcom/immersion/WaveformEffectDefinition;)V
    .registers 4

    const/4 v0, 0x3

    .line 33
    invoke-direct {p0, v0, p1}, Lcom/immersion/IVTElement;-><init>(II)V

    .line 34
    iput-object p2, p0, Lcom/immersion/IVTWaveformElement;->definition:Lcom/immersion/WaveformEffectDefinition;

    return-void
.end method


# virtual methods
.method public getBuffer()[I
    .registers 5

    const/16 v0, 0x8

    .line 59
    new-array v0, v0, [I

    .line 61
    invoke-virtual {p0}, Lcom/immersion/IVTWaveformElement;->getType()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 62
    invoke-virtual {p0}, Lcom/immersion/IVTWaveformElement;->getTime()I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 64
    iget-object v1, p0, Lcom/immersion/IVTWaveformElement;->definition:Lcom/immersion/WaveformEffectDefinition;

    invoke-virtual {v1}, Lcom/immersion/WaveformEffectDefinition;->getDataSize()I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 65
    iget-object v1, p0, Lcom/immersion/IVTWaveformElement;->definition:Lcom/immersion/WaveformEffectDefinition;

    invoke-virtual {v1}, Lcom/immersion/WaveformEffectDefinition;->getSampleRate()I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 66
    iget-object v1, p0, Lcom/immersion/IVTWaveformElement;->definition:Lcom/immersion/WaveformEffectDefinition;

    invoke-virtual {v1}, Lcom/immersion/WaveformEffectDefinition;->getBitDepth()I

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 67
    iget-object v1, p0, Lcom/immersion/IVTWaveformElement;->definition:Lcom/immersion/WaveformEffectDefinition;

    invoke-virtual {v1}, Lcom/immersion/WaveformEffectDefinition;->getMagnitude()I

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 68
    iget-object p0, p0, Lcom/immersion/IVTWaveformElement;->definition:Lcom/immersion/WaveformEffectDefinition;

    invoke-virtual {p0}, Lcom/immersion/WaveformEffectDefinition;->getActuatorIndex()I

    move-result p0

    const/4 v1, 0x7

    aput p0, v0, v1

    return-object v0
.end method

.method public getDefinition()Lcom/immersion/WaveformEffectDefinition;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/immersion/IVTWaveformElement;->definition:Lcom/immersion/WaveformEffectDefinition;

    return-object p0
.end method

.method public setDefinition(Lcom/immersion/WaveformEffectDefinition;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/immersion/IVTWaveformElement;->definition:Lcom/immersion/WaveformEffectDefinition;

    return-void
.end method
