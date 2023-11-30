.class public Lcom/immersion/EnhancedWaveformEffectDefinition;
.super Ljava/lang/Object;
.source "EnhancedWaveformEffectDefinition.java"


# instance fields
.field private actuatorIndex:I

.field private data:[B

.field private format:I

.field private magnitude:I

.field private sampleRate:I

.field private secureMode:I


# direct methods
.method public constructor <init>([BIIIII)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p0, p1}, Lcom/immersion/EnhancedWaveformEffectDefinition;->setData([B)V

    .line 80
    invoke-virtual {p0, p2}, Lcom/immersion/EnhancedWaveformEffectDefinition;->setSampleRate(I)V

    .line 81
    invoke-virtual {p0, p3}, Lcom/immersion/EnhancedWaveformEffectDefinition;->setFormat(I)V

    .line 82
    invoke-virtual {p0, p4}, Lcom/immersion/EnhancedWaveformEffectDefinition;->setMagnitude(I)V

    .line 83
    invoke-virtual {p0, p5}, Lcom/immersion/EnhancedWaveformEffectDefinition;->setActuatorIndex(I)V

    .line 84
    invoke-virtual {p0, p6}, Lcom/immersion/EnhancedWaveformEffectDefinition;->setSecureMode(I)V

    return-void
.end method


# virtual methods
.method public getActuatorIndex()I
    .locals 0

    .line 254
    iget p0, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->actuatorIndex:I

    return p0
.end method

.method public getData()[B
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->data:[B

    return-object p0
.end method

.method public getDataSize()I
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->data:[B

    array-length p0, p0

    return p0
.end method

.method public getFormat()I
    .locals 0

    .line 190
    iget p0, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->format:I

    return p0
.end method

.method public getMagnitude()I
    .locals 0

    .line 230
    iget p0, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->magnitude:I

    return p0
.end method

.method public getSampleRate()I
    .locals 0

    .line 169
    iget p0, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->sampleRate:I

    return p0
.end method

.method public getSecureMode()I
    .locals 0

    .line 280
    iget p0, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->secureMode:I

    return p0
.end method

.method public setActuatorIndex(I)V
    .locals 0

    .line 242
    iput p1, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->actuatorIndex:I

    return-void
.end method

.method public setData([B)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->data:[B

    return-void
.end method

.method public setFormat(I)V
    .locals 0

    .line 180
    iput p1, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->format:I

    return-void
.end method

.method public setMagnitude(I)V
    .locals 0

    .line 210
    iput p1, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->magnitude:I

    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->sampleRate:I

    return-void
.end method

.method public setSecureMode(I)V
    .locals 0

    .line 267
    iput p1, p0, Lcom/immersion/EnhancedWaveformEffectDefinition;->secureMode:I

    return-void
.end method
