.class public Lcom/immersion/PeriodicEffectDefinition;
.super Ljava/lang/Object;
.source "PeriodicEffectDefinition.java"


# instance fields
.field private actuatorIndex:I

.field private attackLevel:I

.field private attackTime:I

.field private duration:I

.field private fadeLevel:I

.field private fadeTime:I

.field private magnitude:I

.field private period:I

.field private styleAndWaveType:I


# direct methods
.method public constructor <init>(IIIIIIIII)V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-virtual {p0, p1}, Lcom/immersion/PeriodicEffectDefinition;->setDuration(I)V

    .line 140
    invoke-virtual {p0, p2}, Lcom/immersion/PeriodicEffectDefinition;->setMagnitude(I)V

    .line 141
    invoke-virtual {p0, p3}, Lcom/immersion/PeriodicEffectDefinition;->setPeriod(I)V

    .line 142
    invoke-virtual {p0, p4}, Lcom/immersion/PeriodicEffectDefinition;->setStyleAndWaveType(I)V

    .line 143
    invoke-virtual {p0, p5}, Lcom/immersion/PeriodicEffectDefinition;->setAttackTime(I)V

    .line 144
    invoke-virtual {p0, p6}, Lcom/immersion/PeriodicEffectDefinition;->setAttackLevel(I)V

    .line 145
    invoke-virtual {p0, p7}, Lcom/immersion/PeriodicEffectDefinition;->setFadeTime(I)V

    .line 146
    invoke-virtual {p0, p8}, Lcom/immersion/PeriodicEffectDefinition;->setFadeLevel(I)V

    .line 147
    invoke-virtual {p0, p9}, Lcom/immersion/PeriodicEffectDefinition;->setActuatorIndex(I)V

    return-void
.end method


# virtual methods
.method public getActuatorIndex()I
    .locals 0

    .line 493
    iget p0, p0, Lcom/immersion/PeriodicEffectDefinition;->actuatorIndex:I

    return p0
.end method

.method public getAttackLevel()I
    .locals 0

    .line 385
    iget p0, p0, Lcom/immersion/PeriodicEffectDefinition;->attackLevel:I

    return p0
.end method

.method public getAttackTime()I
    .locals 0

    .line 355
    iget p0, p0, Lcom/immersion/PeriodicEffectDefinition;->attackTime:I

    return p0
.end method

.method public getDuration()I
    .locals 0

    .line 184
    iget p0, p0, Lcom/immersion/PeriodicEffectDefinition;->duration:I

    return p0
.end method

.method public getFadeLevel()I
    .locals 0

    .line 447
    iget p0, p0, Lcom/immersion/PeriodicEffectDefinition;->fadeLevel:I

    return p0
.end method

.method public getFadeTime()I
    .locals 0

    .line 417
    iget p0, p0, Lcom/immersion/PeriodicEffectDefinition;->fadeTime:I

    return p0
.end method

.method public getMagnitude()I
    .locals 0

    .line 214
    iget p0, p0, Lcom/immersion/PeriodicEffectDefinition;->magnitude:I

    return p0
.end method

.method public getPeriod()I
    .locals 0

    .line 270
    iget p0, p0, Lcom/immersion/PeriodicEffectDefinition;->period:I

    return p0
.end method

.method public getStyleAndWaveType()I
    .locals 0

    .line 323
    iget p0, p0, Lcom/immersion/PeriodicEffectDefinition;->styleAndWaveType:I

    return p0
.end method

.method public setActuatorIndex(I)V
    .locals 0

    .line 470
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->actuatorIndex:I

    return-void
.end method

.method public setAttackLevel(I)V
    .locals 0

    .line 370
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->attackLevel:I

    return-void
.end method

.method public setAttackTime(I)V
    .locals 0

    .line 339
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->attackTime:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 165
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->duration:I

    return-void
.end method

.method public setFadeLevel(I)V
    .locals 0

    .line 432
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->fadeLevel:I

    return-void
.end method

.method public setFadeTime(I)V
    .locals 0

    .line 401
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->fadeTime:I

    return-void
.end method

.method public setMagnitude(I)V
    .locals 0

    .line 199
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->magnitude:I

    return-void
.end method

.method public setPeriod(I)V
    .locals 0

    .line 242
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->period:I

    return-void
.end method

.method public setStyleAndWaveType(I)V
    .locals 0

    .line 297
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->styleAndWaveType:I

    return-void
.end method
