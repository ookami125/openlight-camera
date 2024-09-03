.class Landroid/support/v7/widget/AdapterHelper$UpdateOp;
.super Ljava/lang/Object;
.source "AdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/AdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateOp"
.end annotation


# static fields
.field static final ADD:I = 0x1

.field static final MOVE:I = 0x8

.field static final POOL_SIZE:I = 0x1e

.field static final REMOVE:I = 0x2

.field static final UPDATE:I = 0x4


# instance fields
.field cmd:I

.field itemCount:I

.field payload:Ljava/lang/Object;

.field positionStart:I


# direct methods
.method constructor <init>(IIILjava/lang/Object;)V
    .registers 5

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    iput p1, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 652
    iput p2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 653
    iput p3, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 654
    iput-object p4, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method cmdToString()Ljava/lang/String;
    .registers 2

    .line 658
    iget p0, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_18

    const/16 v0, 0x8

    if-eq p0, v0, :cond_15

    packed-switch p0, :pswitch_data_1c

    const-string p0, "??"

    return-object p0

    :pswitch_f
    const-string p0, "rm"

    return-object p0

    :pswitch_12
    const-string p0, "add"

    return-object p0

    :cond_15
    const-string p0, "mv"

    return-object p0

    :cond_18
    const-string p0, "up"

    return-object p0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_5c

    .line 683
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_5c

    .line 687
    :cond_12
    check-cast p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 689
    iget v2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-eq v2, v3, :cond_1b

    return v1

    .line 692
    :cond_1b
    iget v2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_39

    iget v2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v3, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ne v2, v0, :cond_39

    .line 694
    iget v2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v2, v3, :cond_39

    iget v2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ne v2, v3, :cond_39

    return v0

    .line 698
    :cond_39
    iget v2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v2, v3, :cond_40

    return v1

    .line 701
    :cond_40
    iget v2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v2, v3, :cond_47

    return v1

    .line 704
    :cond_47
    iget-object v2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    if-eqz v2, :cond_56

    .line 705
    iget-object p0, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iget-object p1, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5b

    return v1

    .line 708
    :cond_56
    iget-object p0, p1, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    if-eqz p0, :cond_5b

    return v1

    :cond_5b
    return v0

    :cond_5c
    :goto_5c
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 717
    iget v0, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    mul-int/lit8 v0, v0, 0x1f

    .line 718
    iget v1, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 719
    iget p0, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {p0}, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmdToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",p:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
