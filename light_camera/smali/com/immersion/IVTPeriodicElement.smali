.class public Lcom/immersion/IVTPeriodicElement;
.super Lcom/immersion/IVTElement;
.source "IVTPeriodicElement.java"


# instance fields
.field private definition:Lcom/immersion/PeriodicEffectDefinition;


# direct methods
.method public constructor <init>(ILcom/immersion/PeriodicEffectDefinition;)V
    .registers 4

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0, p1}, Lcom/immersion/IVTElement;-><init>(II)V

    .line 34
    iput-object p2, p0, Lcom/immersion/IVTPeriodicElement;->definition:Lcom/immersion/PeriodicEffectDefinition;

    return-void
.end method


# virtual methods
.method public getBuffer()[I
    .registers 4

    const/16 v0, 0xb

    .line 59
    new-array v0, v0, [I

    .line 61
    invoke-virtual {p0}, Lcom/immersion/IVTPeriodicElement;->getType()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 62
    invoke-virtual {p0}, Lcom/immersion/IVTPeriodicElement;->getTime()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 63
    iget-object v1, p0, Lcom/immersion/IVTPeriodicElement;->definition:Lcom/immersion/PeriodicEffectDefinition;

    invoke-virtual {v1}, Lcom/immersion/PeriodicEffectDefinition;->getDuration()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 64
    iget-object v1, p0, Lcom/immersion/IVTPeriodicElement;->definition:Lcom/immersion/PeriodicEffectDefinition;

    invoke-virtual {v1}, Lcom/immersion/PeriodicEffectDefinition;->getPeriod()I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 65
    iget-object v1, p0, Lcom/immersion/IVTPeriodicElement;->definition:Lcom/immersion/PeriodicEffectDefinition;

    invoke-virtual {v1}, Lcom/immersion/PeriodicEffectDefinition;->getMagnitude()I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 66
    iget-object v1, p0, Lcom/immersion/IVTPeriodicElement;->definition:Lcom/immersion/PeriodicEffectDefinition;

    invoke-virtual {v1}, Lcom/immersion/PeriodicEffectDefinition;->getStyleAndWaveType()I

    move-result v1

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 67
    iget-object v1, p0, Lcom/immersion/IVTPeriodicElement;->definition:Lcom/immersion/PeriodicEffectDefinition;

    invoke-virtual {v1}, Lcom/immersion/PeriodicEffectDefinition;->getAttackTime()I

    move-result v1

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 68
    iget-object v1, p0, Lcom/immersion/IVTPeriodicElement;->definition:Lcom/immersion/PeriodicEffectDefinition;

    invoke-virtual {v1}, Lcom/immersion/PeriodicEffectDefinition;->getAttackLevel()I

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 69
    iget-object v1, p0, Lcom/immersion/IVTPeriodicElement;->definition:Lcom/immersion/PeriodicEffectDefinition;

    invoke-virtual {v1}, Lcom/immersion/PeriodicEffectDefinition;->getFadeTime()I

    move-result v1

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 70
    iget-object v1, p0, Lcom/immersion/IVTPeriodicElement;->definition:Lcom/immersion/PeriodicEffectDefinition;

    invoke-virtual {v1}, Lcom/immersion/PeriodicEffectDefinition;->getFadeLevel()I

    move-result v1

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 71
    iget-object p0, p0, Lcom/immersion/IVTPeriodicElement;->definition:Lcom/immersion/PeriodicEffectDefinition;

    invoke-virtual {p0}, Lcom/immersion/PeriodicEffectDefinition;->getActuatorIndex()I

    move-result p0

    const/16 v1, 0xa

    aput p0, v0, v1

    return-object v0
.end method

.method public getDefinition()Lcom/immersion/PeriodicEffectDefinition;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/immersion/IVTPeriodicElement;->definition:Lcom/immersion/PeriodicEffectDefinition;

    return-object p0
.end method

.method public setDefinition(Lcom/immersion/PeriodicEffectDefinition;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/immersion/IVTPeriodicElement;->definition:Lcom/immersion/PeriodicEffectDefinition;

    return-void
.end method
