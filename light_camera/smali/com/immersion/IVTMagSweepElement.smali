.class public Lcom/immersion/IVTMagSweepElement;
.super Lcom/immersion/IVTElement;
.source "IVTMagSweepElement.java"


# instance fields
.field private definition:Lcom/immersion/MagSweepEffectDefinition;


# direct methods
.method public constructor <init>(ILcom/immersion/MagSweepEffectDefinition;)V
    .locals 1

    const/4 v0, 0x1

    .line 33
    invoke-direct {p0, v0, p1}, Lcom/immersion/IVTElement;-><init>(II)V

    .line 34
    iput-object p2, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    return-void
.end method


# virtual methods
.method public getBuffer()[I
    .locals 3

    const/16 v0, 0xa

    .line 59
    new-array v0, v0, [I

    .line 61
    invoke-virtual {p0}, Lcom/immersion/IVTMagSweepElement;->getType()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 62
    invoke-virtual {p0}, Lcom/immersion/IVTMagSweepElement;->getTime()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 63
    iget-object v1, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v1}, Lcom/immersion/MagSweepEffectDefinition;->getDuration()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 64
    iget-object v1, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v1}, Lcom/immersion/MagSweepEffectDefinition;->getMagnitude()I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 65
    iget-object v1, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v1}, Lcom/immersion/MagSweepEffectDefinition;->getStyle()I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 66
    iget-object v1, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v1}, Lcom/immersion/MagSweepEffectDefinition;->getAttackTime()I

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 67
    iget-object v1, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v1}, Lcom/immersion/MagSweepEffectDefinition;->getAttackLevel()I

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 68
    iget-object v1, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v1}, Lcom/immersion/MagSweepEffectDefinition;->getFadeTime()I

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 69
    iget-object v1, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v1}, Lcom/immersion/MagSweepEffectDefinition;->getFadeLevel()I

    move-result v1

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 70
    iget-object p0, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {p0}, Lcom/immersion/MagSweepEffectDefinition;->getActuatorIndex()I

    move-result p0

    const/16 v1, 0x9

    aput p0, v0, v1

    return-object v0
.end method

.method public getDefinition()Lcom/immersion/MagSweepEffectDefinition;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    return-object p0
.end method

.method public setDefinition(Lcom/immersion/MagSweepEffectDefinition;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    return-void
.end method
