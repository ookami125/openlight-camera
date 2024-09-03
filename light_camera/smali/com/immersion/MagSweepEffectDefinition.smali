.class public Lcom/immersion/MagSweepEffectDefinition;
.super Ljava/lang/Object;
.source "MagSweepEffectDefinition.java"


# instance fields
.field private actuatorIndex:I

.field private attackLevel:I

.field private attackTime:I

.field private duration:I

.field private fadeLevel:I

.field private fadeTime:I

.field private magnitude:I

.field private style:I


# direct methods
.method public constructor <init>(IIIIIIII)V
    .registers 9

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p0, p1}, Lcom/immersion/MagSweepEffectDefinition;->setDuration(I)V

    .line 108
    invoke-virtual {p0, p2}, Lcom/immersion/MagSweepEffectDefinition;->setMagnitude(I)V

    .line 109
    invoke-virtual {p0, p3}, Lcom/immersion/MagSweepEffectDefinition;->setStyle(I)V

    .line 110
    invoke-virtual {p0, p4}, Lcom/immersion/MagSweepEffectDefinition;->setAttackTime(I)V

    .line 111
    invoke-virtual {p0, p5}, Lcom/immersion/MagSweepEffectDefinition;->setAttackLevel(I)V

    .line 112
    invoke-virtual {p0, p6}, Lcom/immersion/MagSweepEffectDefinition;->setFadeTime(I)V

    .line 113
    invoke-virtual {p0, p7}, Lcom/immersion/MagSweepEffectDefinition;->setFadeLevel(I)V

    .line 114
    invoke-virtual {p0, p8}, Lcom/immersion/MagSweepEffectDefinition;->setActuatorIndex(I)V

    return-void
.end method


# virtual methods
.method public getActuatorIndex()I
    .registers 1

    .line 385
    iget p0, p0, Lcom/immersion/MagSweepEffectDefinition;->actuatorIndex:I

    return p0
.end method

.method public getAttackLevel()I
    .registers 1

    .line 277
    iget p0, p0, Lcom/immersion/MagSweepEffectDefinition;->attackLevel:I

    return p0
.end method

.method public getAttackTime()I
    .registers 1

    .line 247
    iget p0, p0, Lcom/immersion/MagSweepEffectDefinition;->attackTime:I

    return p0
.end method

.method public getDuration()I
    .registers 1

    .line 151
    iget p0, p0, Lcom/immersion/MagSweepEffectDefinition;->duration:I

    return p0
.end method

.method public getFadeLevel()I
    .registers 1

    .line 339
    iget p0, p0, Lcom/immersion/MagSweepEffectDefinition;->fadeLevel:I

    return p0
.end method

.method public getFadeTime()I
    .registers 1

    .line 309
    iget p0, p0, Lcom/immersion/MagSweepEffectDefinition;->fadeTime:I

    return p0
.end method

.method public getMagnitude()I
    .registers 1

    .line 181
    iget p0, p0, Lcom/immersion/MagSweepEffectDefinition;->magnitude:I

    return p0
.end method

.method public getStyle()I
    .registers 1

    .line 215
    iget p0, p0, Lcom/immersion/MagSweepEffectDefinition;->style:I

    return p0
.end method

.method public setActuatorIndex(I)V
    .registers 2

    .line 362
    iput p1, p0, Lcom/immersion/MagSweepEffectDefinition;->actuatorIndex:I

    return-void
.end method

.method public setAttackLevel(I)V
    .registers 2

    .line 262
    iput p1, p0, Lcom/immersion/MagSweepEffectDefinition;->attackLevel:I

    return-void
.end method

.method public setAttackTime(I)V
    .registers 2

    .line 231
    iput p1, p0, Lcom/immersion/MagSweepEffectDefinition;->attackTime:I

    return-void
.end method

.method public setDuration(I)V
    .registers 2

    .line 132
    iput p1, p0, Lcom/immersion/MagSweepEffectDefinition;->duration:I

    return-void
.end method

.method public setFadeLevel(I)V
    .registers 2

    .line 324
    iput p1, p0, Lcom/immersion/MagSweepEffectDefinition;->fadeLevel:I

    return-void
.end method

.method public setFadeTime(I)V
    .registers 2

    .line 293
    iput p1, p0, Lcom/immersion/MagSweepEffectDefinition;->fadeTime:I

    return-void
.end method

.method public setMagnitude(I)V
    .registers 2

    .line 166
    iput p1, p0, Lcom/immersion/MagSweepEffectDefinition;->magnitude:I

    return-void
.end method

.method public setStyle(I)V
    .registers 2

    .line 198
    iput p1, p0, Lcom/immersion/MagSweepEffectDefinition;->style:I

    return-void
.end method
