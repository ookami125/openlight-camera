.class public Lcom/immersion/IVTRepeatElement;
.super Lcom/immersion/IVTElement;
.source "IVTRepeatElement.java"


# instance fields
.field private duration:I

.field private repeatCount:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x2

    .line 39
    invoke-direct {p0, v0, p1}, Lcom/immersion/IVTElement;-><init>(II)V

    .line 40
    iput p2, p0, Lcom/immersion/IVTRepeatElement;->repeatCount:I

    .line 41
    iput p3, p0, Lcom/immersion/IVTRepeatElement;->duration:I

    return-void
.end method


# virtual methods
.method public getBuffer()[I
    .locals 3

    const/4 v0, 0x4

    .line 94
    new-array v0, v0, [I

    .line 96
    invoke-virtual {p0}, Lcom/immersion/IVTRepeatElement;->getType()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 97
    invoke-virtual {p0}, Lcom/immersion/IVTRepeatElement;->getTime()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 98
    iget v1, p0, Lcom/immersion/IVTRepeatElement;->repeatCount:I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 99
    iget p0, p0, Lcom/immersion/IVTRepeatElement;->duration:I

    const/4 v1, 0x3

    aput p0, v0, v1

    return-object v0
.end method

.method public getDuration()I
    .locals 0

    .line 89
    iget p0, p0, Lcom/immersion/IVTRepeatElement;->duration:I

    return p0
.end method

.method public getRepeatCount()I
    .locals 0

    .line 67
    iget p0, p0, Lcom/immersion/IVTRepeatElement;->repeatCount:I

    return p0
.end method

.method public setDuration(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/immersion/IVTRepeatElement;->duration:I

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/immersion/IVTRepeatElement;->repeatCount:I

    return-void
.end method
