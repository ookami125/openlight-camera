.class public Landroid/support/v4/graphics/PathParser;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/PathParser$PathDataNode;,
        Landroid/support/v4/graphics/PathParser$ExtractFloatResult;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "PathParser"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addNode(Ljava/util/ArrayList;C[F)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/graphics/PathParser$PathDataNode;",
            ">;C[F)V"
        }
    .end annotation

    .line 188
    new-instance v0, Landroid/support/v4/graphics/PathParser$PathDataNode;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/graphics/PathParser$PathDataNode;-><init>(C[F)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static canMorph([Landroid/support/v4/graphics/PathParser$PathDataNode;[Landroid/support/v4/graphics/PathParser$PathDataNode;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2c

    if-nez p1, :cond_6

    goto :goto_2c

    .line 140
    :cond_6
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_b

    return v0

    :cond_b
    move v1, v0

    .line 144
    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_2a

    .line 145
    aget-object v2, p0, v1

    iget-char v2, v2, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    aget-object v3, p1, v1

    iget-char v3, v3, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    if-ne v2, v3, :cond_29

    aget-object v2, p0, v1

    iget-object v2, v2, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v2, v2

    aget-object v3, p1, v1

    iget-object v3, v3, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v3, v3

    if-eq v2, v3, :cond_26

    goto :goto_29

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_29
    :goto_29
    return v0

    :cond_2a
    const/4 p0, 0x1

    return p0

    :cond_2c
    :goto_2c
    return v0
.end method

.method static copyOfRange([FII)[F
    .registers 5

    if-gt p1, p2, :cond_1a

    .line 57
    array-length v0, p0

    if-ltz p1, :cond_14

    if-gt p1, v0, :cond_14

    sub-int/2addr p2, p1

    sub-int/2addr v0, p1

    .line 62
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 63
    new-array p2, p2, [F

    const/4 v1, 0x0

    .line 64
    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 59
    :cond_14
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    .line 55
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .registers 8

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 97
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    .line 98
    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_36

    .line 99
    invoke-static {p0, v3}, Landroid/support/v4/graphics/PathParser;->nextStart(Ljava/lang/String;I)I

    move-result v3

    .line 100
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_30

    .line 102
    invoke-static {v4}, Landroid/support/v4/graphics/PathParser;->getFloats(Ljava/lang/String;)[F

    move-result-object v5

    .line 103
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v0, v4, v5}, Landroid/support/v4/graphics/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    :cond_30
    add-int/lit8 v4, v3, 0x1

    move v6, v4

    move v4, v3

    move v3, v6

    goto :goto_d

    :cond_36
    sub-int/2addr v3, v4

    if-ne v3, v1, :cond_48

    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v4, v1, :cond_48

    .line 110
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    new-array v1, v2, [F

    invoke-static {v0, p0, v1}, Landroid/support/v4/graphics/PathParser;->addNode(Ljava/util/ArrayList;C[F)V

    .line 112
    :cond_48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/support/v4/graphics/PathParser$PathDataNode;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/support/v4/graphics/PathParser$PathDataNode;

    return-object p0
.end method

.method public static createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;
    .registers 5

    .line 73
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 74
    invoke-static {p0}, Landroid/support/v4/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 77
    :try_start_b
    invoke-static {v1, v0}, Landroid/support/v4/graphics/PathParser$PathDataNode;->nodesToPath([Landroid/support/v4/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public static deepCopyNodes([Landroid/support/v4/graphics/PathParser$PathDataNode;)[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 123
    :cond_4
    array-length v0, p0

    new-array v0, v0, [Landroid/support/v4/graphics/PathParser$PathDataNode;

    const/4 v1, 0x0

    .line 124
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_17

    .line 125
    new-instance v2, Landroid/support/v4/graphics/PathParser$PathDataNode;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroid/support/v4/graphics/PathParser$PathDataNode;-><init>(Landroid/support/v4/graphics/PathParser$PathDataNode;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_17
    return-object v0
.end method

.method private static extract(Ljava/lang/String;ILandroid/support/v4/graphics/PathParser$ExtractFloatResult;)V
    .registers 11

    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p2, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    move v1, p1

    move v2, v0

    move v3, v2

    move v4, v3

    .line 261
    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_3d

    .line 264
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    const/4 v7, 0x1

    if-eq v5, v6, :cond_35

    const/16 v6, 0x45

    if-eq v5, v6, :cond_33

    const/16 v6, 0x65

    if-eq v5, v6, :cond_33

    packed-switch v5, :pswitch_data_40

    goto :goto_31

    :pswitch_22
    if-nez v3, :cond_27

    move v2, v0

    move v3, v7

    goto :goto_37

    .line 283
    :cond_27
    iput-boolean v7, p2, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    goto :goto_35

    :pswitch_2a
    if-eq v1, p1, :cond_31

    if-nez v2, :cond_31

    .line 274
    iput-boolean v7, p2, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    goto :goto_35

    :cond_31
    :goto_31
    move v2, v0

    goto :goto_37

    :cond_33
    move v2, v7

    goto :goto_37

    :cond_35
    :goto_35
    :pswitch_35
    move v2, v0

    move v4, v7

    :goto_37
    if-eqz v4, :cond_3a

    goto :goto_3d

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 297
    :cond_3d
    :goto_3d
    iput v1, p2, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    return-void

    :pswitch_data_40
    .packed-switch 0x2c
        :pswitch_35
        :pswitch_2a
        :pswitch_22
    .end packed-switch
.end method

.method private static getFloats(Ljava/lang/String;)[F
    .registers 9

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_64

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_12

    goto :goto_64

    .line 213
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [F

    .line 218
    new-instance v2, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;

    invoke-direct {v2}, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;-><init>()V

    .line 219
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    move v5, v0

    :goto_23
    if-ge v4, v3, :cond_42

    .line 225
    invoke-static {p0, v4, v2}, Landroid/support/v4/graphics/PathParser;->extract(Ljava/lang/String;ILandroid/support/v4/graphics/PathParser$ExtractFloatResult;)V

    .line 226
    iget v6, v2, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndPosition:I

    if-ge v4, v6, :cond_39

    add-int/lit8 v7, v5, 0x1

    .line 230
    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 229
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v1, v5

    move v5, v7

    .line 233
    :cond_39
    iget-boolean v4, v2, Landroid/support/v4/graphics/PathParser$ExtractFloatResult;->mEndWithNegOrDot:Z

    if-eqz v4, :cond_3f

    move v4, v6

    goto :goto_23

    :cond_3f
    add-int/lit8 v4, v6, 0x1

    goto :goto_23

    .line 240
    :cond_42
    invoke-static {v1, v0, v5}, Landroid/support/v4/graphics/PathParser;->copyOfRange([FII)[F

    move-result-object v0
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_46} :catch_47

    return-object v0

    :catch_47
    move-exception v0

    .line 242
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in parsing \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 210
    :cond_64
    :goto_64
    new-array p0, v0, [F

    return-object p0
.end method

.method private static nextStart(Ljava/lang/String;I)I
    .registers 5

    .line 172
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_24

    .line 173
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int/2addr v1, v2

    if-lez v1, :cond_18

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int/2addr v1, v2

    if-gtz v1, :cond_21

    :cond_18
    const/16 v1, 0x65

    if-eq v0, v1, :cond_21

    const/16 v1, 0x45

    if-eq v0, v1, :cond_21

    return p1

    :cond_21
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_24
    return p1
.end method

.method public static updateNodes([Landroid/support/v4/graphics/PathParser$PathDataNode;[Landroid/support/v4/graphics/PathParser$PathDataNode;)V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 161
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_27

    .line 162
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    iget-char v3, v3, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    iput-char v3, v2, Landroid/support/v4/graphics/PathParser$PathDataNode;->mType:C

    move v2, v0

    .line 163
    :goto_e
    aget-object v3, p1, v1

    iget-object v3, v3, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    array-length v3, v3

    if-ge v2, v3, :cond_24

    .line 164
    aget-object v3, p0, v1

    iget-object v3, v3, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    aget-object v4, p1, v1

    iget-object v4, v4, Landroid/support/v4/graphics/PathParser$PathDataNode;->mParams:[F

    aget v4, v4, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_27
    return-void
.end method
