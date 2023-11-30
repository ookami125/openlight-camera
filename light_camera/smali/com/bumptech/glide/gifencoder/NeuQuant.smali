.class Lcom/bumptech/glide/gifencoder/NeuQuant;
.super Ljava/lang/Object;
.source "NeuQuant.java"


# static fields
.field protected static final alphabiasshift:I = 0xa

.field protected static final alpharadbias:I = 0x40000

.field protected static final alpharadbshift:I = 0x12

.field protected static final beta:I = 0x40

.field protected static final betagamma:I = 0x10000

.field protected static final betashift:I = 0xa

.field protected static final gamma:I = 0x400

.field protected static final gammashift:I = 0xa

.field protected static final initalpha:I = 0x400

.field protected static final initrad:I = 0x20

.field protected static final initradius:I = 0x800

.field protected static final intbias:I = 0x10000

.field protected static final intbiasshift:I = 0x10

.field protected static final maxnetpos:I = 0xff

.field protected static final minpicturebytes:I = 0x5e5

.field protected static final ncycles:I = 0x64

.field protected static final netbiasshift:I = 0x4

.field protected static final netsize:I = 0x100

.field protected static final prime1:I = 0x1f3

.field protected static final prime2:I = 0x1eb

.field protected static final prime3:I = 0x1e7

.field protected static final prime4:I = 0x1f7

.field protected static final radbias:I = 0x100

.field protected static final radbiasshift:I = 0x8

.field protected static final radiusbias:I = 0x40

.field protected static final radiusbiasshift:I = 0x6

.field protected static final radiusdec:I = 0x1e


# instance fields
.field protected alphadec:I

.field protected bias:[I

.field protected freq:[I

.field protected lengthcount:I

.field protected netindex:[I

.field protected network:[[I

.field protected radpower:[I

.field protected samplefac:I

.field protected thepicture:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 3

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 123
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    .line 127
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    .line 130
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    const/16 v1, 0x20

    .line 132
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    .line 145
    iput-object p1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->thepicture:[B

    .line 146
    iput p2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    .line 147
    iput p3, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    .line 149
    new-array p1, v0, [[I

    iput-object p1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    if-ge p2, v0, :cond_0

    .line 151
    iget-object p3, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    aput-object v1, p3, p2

    .line 152
    iget-object p3, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object p3, p3, p2

    const/4 v1, 0x2

    shl-int/lit8 v2, p2, 0xc

    .line 153
    div-int/2addr v2, v0

    aput v2, p3, v1

    const/4 v1, 0x1

    aput v2, p3, v1

    aput v2, p3, p1

    .line 154
    iget-object p3, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aput v0, p3, p2

    .line 155
    iget-object p3, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aput p1, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected alterneigh(IIIII)V
    .locals 14

    move-object v0, p0

    sub-int v3, p2, p1

    const/4 v4, -0x1

    if-ge v3, v4, :cond_0

    move v3, v4

    :cond_0
    add-int v1, p2, p1

    const/16 v4, 0x100

    if-le v1, v4, :cond_1

    move v1, v4

    :cond_1
    add-int/lit8 v4, p2, 0x1

    const/4 v5, 0x1

    add-int/lit8 v2, p2, -0x1

    move v6, v5

    :goto_0
    if-lt v4, v1, :cond_3

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    return-void

    .line 422
    :cond_3
    :goto_1
    iget-object v7, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    add-int/lit8 v8, v6, 0x1

    aget v6, v7, v6

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/high16 v10, 0x40000

    if-ge v4, v1, :cond_4

    .line 424
    iget-object v11, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    add-int/lit8 v12, v4, 0x1

    aget-object v4, v11, v4

    .line 426
    :try_start_0
    aget v11, v4, v9

    aget v13, v4, v9

    sub-int v13, v13, p3

    mul-int/2addr v13, v6

    div-int/2addr v13, v10

    sub-int/2addr v11, v13

    aput v11, v4, v9

    .line 427
    aget v11, v4, v5

    aget v13, v4, v5

    sub-int v13, v13, p4

    mul-int/2addr v13, v6

    div-int/2addr v13, v10

    sub-int/2addr v11, v13

    aput v11, v4, v5

    .line 428
    aget v11, v4, v7

    aget v13, v4, v7

    sub-int v13, v13, p5

    mul-int/2addr v13, v6

    div-int/2addr v13, v10

    sub-int/2addr v11, v13

    aput v11, v4, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move v4, v12

    :cond_4
    if-le v2, v3, :cond_5

    .line 433
    iget-object v11, v0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    add-int/lit8 v12, v2, -0x1

    aget-object v2, v11, v2

    .line 435
    :try_start_1
    aget v11, v2, v9

    aget v13, v2, v9

    sub-int v13, v13, p3

    mul-int/2addr v13, v6

    div-int/2addr v13, v10

    sub-int/2addr v11, v13

    aput v11, v2, v9

    .line 436
    aget v9, v2, v5

    aget v11, v2, v5

    sub-int v11, v11, p4

    mul-int/2addr v11, v6

    div-int/2addr v11, v10

    sub-int/2addr v9, v11

    aput v9, v2, v5

    .line 437
    aget v9, v2, v7

    aget v11, v2, v7

    sub-int v11, v11, p5

    mul-int/2addr v6, v11

    div-int/2addr v6, v10

    sub-int/2addr v9, v6

    aput v9, v2, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move v6, v8

    move v2, v12

    goto :goto_0

    :cond_5
    move v6, v8

    goto :goto_0
.end method

.method protected altersingle(IIIII)V
    .locals 2

    .line 451
    iget-object p0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object p0, p0, p2

    const/4 p2, 0x0

    .line 452
    aget v0, p0, p2

    aget v1, p0, p2

    sub-int/2addr v1, p3

    mul-int/2addr v1, p1

    div-int/lit16 v1, v1, 0x400

    sub-int/2addr v0, v1

    aput v0, p0, p2

    const/4 p2, 0x1

    .line 453
    aget p3, p0, p2

    aget v0, p0, p2

    sub-int/2addr v0, p4

    mul-int/2addr v0, p1

    div-int/lit16 v0, v0, 0x400

    sub-int/2addr p3, v0

    aput p3, p0, p2

    const/4 p2, 0x2

    .line 454
    aget p3, p0, p2

    aget p4, p0, p2

    sub-int/2addr p4, p5

    mul-int/2addr p1, p4

    div-int/lit16 p1, p1, 0x400

    sub-int/2addr p3, p1

    aput p3, p0, p2

    return-void
.end method

.method public colorMap()[B
    .locals 10

    const/16 v0, 0x300

    .line 160
    new-array v0, v0, [B

    const/16 v1, 0x100

    .line 161
    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    .line 163
    iget-object v5, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v5, v5, v4

    const/4 v6, 0x3

    aget v5, v5, v6

    aput v4, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    move v5, v4

    :goto_1
    if-ge v4, v1, :cond_1

    .line 166
    aget v6, v2, v4

    add-int/lit8 v7, v5, 0x1

    .line 167
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v8, v8, v6

    aget v8, v8, v3

    int-to-byte v8, v8

    aput-byte v8, v0, v5

    add-int/lit8 v5, v7, 0x1

    .line 168
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v8, v8, v6

    const/4 v9, 0x1

    aget v8, v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    add-int/lit8 v7, v5, 0x1

    .line 169
    iget-object v8, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v6, v8, v6

    const/4 v8, 0x2

    aget v6, v6, v8

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method protected contest(III)I
    .locals 9

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, -0x1

    move v4, v1

    move v5, v4

    move v3, v2

    move v1, v0

    :goto_0
    const/16 v6, 0x100

    if-ge v1, v6, :cond_5

    .line 477
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v6, v6, v1

    .line 478
    aget v7, v6, v0

    sub-int/2addr v7, p1

    if-gez v7, :cond_0

    neg-int v7, v7

    :cond_0
    const/4 v8, 0x1

    .line 481
    aget v8, v6, v8

    sub-int/2addr v8, p2

    if-gez v8, :cond_1

    neg-int v8, v8

    :cond_1
    add-int/2addr v7, v8

    const/4 v8, 0x2

    .line 485
    aget v6, v6, v8

    sub-int/2addr v6, p3

    if-gez v6, :cond_2

    neg-int v6, v6

    :cond_2
    add-int/2addr v7, v6

    if-ge v7, v4, :cond_3

    move v2, v1

    move v4, v7

    .line 493
    :cond_3
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aget v6, v6, v1

    shr-int/lit8 v6, v6, 0xc

    sub-int/2addr v7, v6

    if-ge v7, v5, :cond_4

    move v3, v1

    move v5, v7

    .line 498
    :cond_4
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aget v6, v6, v1

    shr-int/lit8 v6, v6, 0xa

    .line 499
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aget v8, v7, v1

    sub-int/2addr v8, v6

    aput v8, v7, v1

    .line 500
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aget v8, v7, v1

    shl-int/lit8 v6, v6, 0xa

    add-int/2addr v8, v6

    aput v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 502
    :cond_5
    iget-object p1, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->freq:[I

    aget p2, p1, v2

    add-int/lit8 p2, p2, 0x40

    aput p2, p1, v2

    .line 503
    iget-object p0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->bias:[I

    aget p1, p0, v2

    const/high16 p2, 0x10000

    sub-int/2addr p1, p2

    aput p1, p0, v2

    return v3
.end method

.method public inxbuild()V
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    const/16 v4, 0x100

    const/4 v5, 0x1

    if-ge v1, v4, :cond_5

    .line 189
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v6, v6, v1

    .line 191
    aget v7, v6, v5

    add-int/lit8 v8, v1, 0x1

    move v10, v1

    move v9, v7

    move v7, v8

    :goto_1
    if-ge v7, v4, :cond_1

    .line 194
    iget-object v11, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v11, v11, v7

    .line 195
    aget v12, v11, v5

    if-ge v12, v9, :cond_0

    .line 197
    aget v9, v11, v5

    move v10, v7

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 200
    :cond_1
    iget-object v4, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v4, v4, v10

    if-eq v1, v10, :cond_2

    .line 203
    aget v7, v4, v0

    .line 204
    aget v10, v6, v0

    aput v10, v4, v0

    .line 205
    aput v7, v6, v0

    .line 206
    aget v7, v4, v5

    .line 207
    aget v10, v6, v5

    aput v10, v4, v5

    .line 208
    aput v7, v6, v5

    const/4 v7, 0x2

    .line 209
    aget v10, v4, v7

    .line 210
    aget v11, v6, v7

    aput v11, v4, v7

    .line 211
    aput v10, v6, v7

    const/4 v7, 0x3

    .line 212
    aget v10, v4, v7

    .line 213
    aget v11, v6, v7

    aput v11, v4, v7

    .line 214
    aput v10, v6, v7

    :cond_2
    if-eq v9, v2, :cond_4

    .line 218
    iget-object v4, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    add-int/2addr v3, v1

    shr-int/2addr v3, v5

    aput v3, v4, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v9, :cond_3

    .line 220
    iget-object v3, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    aput v1, v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    move v2, v9

    :cond_4
    move v1, v8

    goto :goto_0

    .line 225
    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    const/16 v1, 0xff

    add-int/2addr v3, v1

    shr-int/2addr v3, v5

    aput v3, v0, v2

    add-int/2addr v2, v5

    :goto_3
    if-ge v2, v4, :cond_6

    .line 227
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public learn()V
    .locals 23

    move-object/from16 v6, p0

    .line 240
    iget v0, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    const/16 v1, 0x5e5

    const/4 v7, 0x1

    if-ge v0, v1, :cond_0

    .line 241
    iput v7, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    .line 242
    :cond_0
    iget v0, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    sub-int/2addr v0, v7

    const/4 v2, 0x3

    div-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1e

    iput v0, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->alphadec:I

    .line 243
    iget-object v8, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->thepicture:[B

    .line 245
    iget v9, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    .line 246
    iget v0, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    iget v3, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->samplefac:I

    mul-int/2addr v3, v2

    div-int v10, v0, v3

    .line 247
    div-int/lit8 v0, v10, 0x64

    const/16 v3, 0x800

    const/16 v4, 0x20

    const/4 v11, 0x0

    move v5, v11

    :goto_0
    const/16 v12, 0x400

    if-ge v5, v4, :cond_1

    .line 255
    iget-object v13, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    mul-int v14, v5, v5

    rsub-int v14, v14, 0x400

    mul-int/lit16 v14, v14, 0x100

    div-int/2addr v14, v12

    mul-int/2addr v12, v14

    aput v12, v13, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 259
    :cond_1
    iget v5, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    if-ge v5, v1, :cond_2

    move v13, v2

    goto :goto_2

    .line 261
    :cond_2
    iget v2, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    rem-int/lit16 v2, v2, 0x1f3

    if-eqz v2, :cond_4

    const/16 v1, 0x5d9

    :cond_3
    :goto_1
    move v13, v1

    goto :goto_2

    .line 264
    :cond_4
    iget v2, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    rem-int/lit16 v2, v2, 0x1eb

    if-eqz v2, :cond_5

    const/16 v1, 0x5c1

    goto :goto_1

    .line 267
    :cond_5
    iget v2, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    rem-int/lit16 v2, v2, 0x1e7

    if-eqz v2, :cond_3

    const/16 v1, 0x5b5

    goto :goto_1

    :goto_2
    move/from16 v17, v0

    move/from16 v18, v3

    move/from16 v16, v4

    move v14, v11

    move v15, v12

    move v12, v14

    :cond_6
    :goto_3
    if-ge v12, v10, :cond_c

    add-int/lit8 v0, v14, 0x0

    .line 276
    aget-byte v0, v8, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v5, v0, 0x4

    add-int/lit8 v0, v14, 0x1

    .line 277
    aget-byte v0, v8, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v4, v0, 0x4

    add-int/lit8 v0, v14, 0x2

    .line 278
    aget-byte v0, v8, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0x4

    .line 279
    invoke-virtual {v6, v5, v4, v3}, Lcom/bumptech/glide/gifencoder/NeuQuant;->contest(III)I

    move-result v19

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v19

    move/from16 v20, v3

    move v3, v5

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v5, v20

    .line 281
    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/gifencoder/NeuQuant;->altersingle(IIIII)V

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v21

    move/from16 v5, v20

    .line 283
    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/gifencoder/NeuQuant;->alterneigh(IIIII)V

    :cond_7
    add-int/2addr v14, v13

    if-lt v14, v9, :cond_8

    .line 287
    iget v0, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->lengthcount:I

    sub-int/2addr v14, v0

    :cond_8
    add-int/lit8 v12, v12, 0x1

    if-nez v17, :cond_9

    move/from16 v17, v7

    .line 292
    :cond_9
    rem-int v0, v12, v17

    if-nez v0, :cond_6

    .line 293
    iget v0, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->alphadec:I

    div-int v0, v15, v0

    sub-int/2addr v15, v0

    .line 294
    div-int/lit8 v0, v18, 0x1e

    sub-int v18, v18, v0

    shr-int/lit8 v0, v18, 0x6

    if-gt v0, v7, :cond_a

    move v0, v11

    :cond_a
    move v1, v11

    :goto_4
    if-ge v1, v0, :cond_b

    .line 299
    iget-object v2, v6, Lcom/bumptech/glide/gifencoder/NeuQuant;->radpower:[I

    mul-int v3, v0, v0

    mul-int v4, v1, v1

    sub-int v4, v3, v4

    mul-int/lit16 v4, v4, 0x100

    div-int/2addr v4, v3

    mul-int/2addr v4, v15

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    move/from16 v16, v0

    goto :goto_3

    :cond_c
    return-void
.end method

.method public map(III)I
    .locals 12

    .line 319
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->netindex:[I

    aget v0, v0, p2

    add-int/lit8 v1, v0, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x3e8

    move v4, v3

    move v3, v2

    :cond_0
    :goto_0
    const/16 v5, 0x100

    if-lt v0, v5, :cond_2

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    return v3

    :cond_2
    :goto_1
    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge v0, v5, :cond_7

    .line 324
    iget-object v10, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v10, v10, v0

    .line 325
    aget v11, v10, v9

    sub-int/2addr v11, p2

    if-lt v11, v4, :cond_3

    move v0, v5

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    if-gez v11, :cond_4

    neg-int v11, v11

    .line 332
    :cond_4
    aget v5, v10, v8

    sub-int/2addr v5, p1

    if-gez v5, :cond_5

    neg-int v5, v5

    :cond_5
    add-int/2addr v11, v5

    if-ge v11, v4, :cond_7

    .line 337
    aget v5, v10, v7

    sub-int/2addr v5, p3

    if-gez v5, :cond_6

    neg-int v5, v5

    :cond_6
    add-int/2addr v11, v5

    if-ge v11, v4, :cond_7

    .line 343
    aget v3, v10, v6

    move v4, v11

    :cond_7
    :goto_2
    if-ltz v1, :cond_0

    .line 349
    iget-object v5, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v5, v5, v1

    .line 350
    aget v9, v5, v9

    sub-int v9, p2, v9

    if-lt v9, v4, :cond_8

    move v1, v2

    goto :goto_0

    :cond_8
    add-int/lit8 v1, v1, -0x1

    if-gez v9, :cond_9

    neg-int v9, v9

    .line 357
    :cond_9
    aget v8, v5, v8

    sub-int/2addr v8, p1

    if-gez v8, :cond_a

    neg-int v8, v8

    :cond_a
    add-int/2addr v9, v8

    if-ge v9, v4, :cond_0

    .line 362
    aget v7, v5, v7

    sub-int/2addr v7, p3

    if-gez v7, :cond_b

    neg-int v7, v7

    :cond_b
    add-int/2addr v7, v9

    if-ge v7, v4, :cond_0

    .line 368
    aget v3, v5, v6

    move v4, v7

    goto :goto_0
.end method

.method public process()[B
    .locals 0

    .line 378
    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->learn()V

    .line 379
    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->unbiasnet()V

    .line 380
    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->inxbuild()V

    .line 381
    invoke-virtual {p0}, Lcom/bumptech/glide/gifencoder/NeuQuant;->colorMap()[B

    move-result-object p0

    return-object p0
.end method

.method public unbiasnet()V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 394
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v2, v1

    aget v3, v2, v0

    shr-int/lit8 v3, v3, 0x4

    aput v3, v2, v0

    .line 395
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v2, v1

    const/4 v3, 0x1

    aget v4, v2, v3

    shr-int/lit8 v4, v4, 0x4

    aput v4, v2, v3

    .line 396
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v2, v1

    const/4 v3, 0x2

    aget v4, v2, v3

    shr-int/lit8 v4, v4, 0x4

    aput v4, v2, v3

    .line 397
    iget-object v2, p0, Lcom/bumptech/glide/gifencoder/NeuQuant;->network:[[I

    aget-object v2, v2, v1

    const/4 v3, 0x3

    aput v1, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
