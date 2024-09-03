.class Lcom/bumptech/glide/gifencoder/LZWEncoder;
.super Ljava/lang/Object;
.source "LZWEncoder.java"


# static fields
.field static final BITS:I = 0xc

.field private static final EOF:I = -0x1

.field static final HSIZE:I = 0x138b


# instance fields
.field ClearCode:I

.field EOFCode:I

.field a_count:I

.field accum:[B

.field clear_flg:Z

.field codetab:[I

.field private curPixel:I

.field cur_accum:I

.field cur_bits:I

.field free_ent:I

.field g_init_bits:I

.field hsize:I

.field htab:[I

.field private imgH:I

.field private imgW:I

.field private initCodeSize:I

.field masks:[I

.field maxbits:I

.field maxcode:I

.field maxmaxcode:I

.field n_bits:I

.field private pixAry:[B

.field private remaining:I


# direct methods
.method constructor <init>(II[BI)V
    .registers 7

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    .line 48
    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxbits:I

    const/16 v0, 0x1000

    .line 52
    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxmaxcode:I

    const/16 v0, 0x138b

    .line 54
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    .line 56
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->codetab:[I

    .line 58
    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->hsize:I

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    .line 64
    iput-boolean v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->clear_flg:Z

    .line 99
    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    .line 101
    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    const/16 v0, 0x11

    .line 103
    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->masks:[I

    const/16 v0, 0x100

    .line 110
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->accum:[B

    .line 114
    iput p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->imgW:I

    .line 115
    iput p2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->imgH:I

    .line 116
    iput-object p3, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->pixAry:[B

    const/4 p1, 0x2

    .line 117
    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->initCodeSize:I

    return-void

    nop

    :array_3e
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
    .end array-data
.end method

.method private nextPixel()I
    .registers 4

    .line 245
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->remaining:I

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    .line 248
    :cond_6
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->remaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->remaining:I

    .line 250
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->pixAry:[B

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->curPixel:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->curPixel:I

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method final MAXCODE(I)I
    .registers 2

    const/4 p0, 0x1

    shl-int p1, p0, p1

    sub-int/2addr p1, p0

    return p1
.end method

.method char_out(BLjava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->accum:[B

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    aput-byte p1, v0, v1

    .line 124
    iget p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    const/16 v0, 0xfe

    if-lt p1, v0, :cond_13

    .line 125
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->flush_char(Ljava/io/OutputStream;)V

    :cond_13
    return-void
.end method

.method cl_block(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->hsize:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cl_hash(I)V

    .line 133
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->ClearCode:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->clear_flg:Z

    .line 136
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->ClearCode:I

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->output(ILjava/io/OutputStream;)V

    return-void
.end method

.method cl_hash(I)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_b

    .line 142
    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method compress(ILjava/io/OutputStream;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iput p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->g_init_bits:I

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->clear_flg:Z

    .line 159
    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->g_init_bits:I

    iput v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    .line 160
    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->MAXCODE(I)I

    move-result v1

    iput v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxcode:I

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    shl-int p1, v1, p1

    .line 162
    iput p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->ClearCode:I

    .line 163
    iget p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->ClearCode:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->EOFCode:I

    .line 164
    iget p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->ClearCode:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    .line 166
    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    .line 168
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->nextPixel()I

    move-result p1

    .line 171
    iget v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->hsize:I

    :goto_2a
    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_33

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v2, v2, 0x2

    goto :goto_2a

    :cond_33
    rsub-int/lit8 v0, v0, 0x8

    .line 175
    iget v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->hsize:I

    .line 176
    invoke-virtual {p0, v2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cl_hash(I)V

    .line 178
    iget v3, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->ClearCode:I

    invoke-virtual {p0, v3, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 181
    :goto_3f
    invoke-direct {p0}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->nextPixel()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_96

    .line 182
    iget v4, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxbits:I

    shl-int v4, v3, v4

    add-int/2addr v4, p1

    shl-int v5, v3, v0

    xor-int/2addr v5, p1

    .line 185
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    aget v6, v6, v5

    if-ne v6, v4, :cond_59

    .line 186
    iget-object p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->codetab:[I

    aget p1, p1, v5

    goto :goto_3f

    .line 188
    :cond_59
    iget-object v6, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    aget v6, v6, v5

    if-ltz v6, :cond_79

    sub-int v6, v2, v5

    if-nez v5, :cond_64

    move v6, v1

    :cond_64
    sub-int/2addr v5, v6

    if-gez v5, :cond_68

    add-int/2addr v5, v2

    .line 197
    :cond_68
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    aget v7, v7, v5

    if-ne v7, v4, :cond_73

    .line 198
    iget-object p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->codetab:[I

    aget p1, p1, v5

    goto :goto_3f

    .line 201
    :cond_73
    iget-object v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    aget v7, v7, v5

    if-gez v7, :cond_64

    .line 203
    :cond_79
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 205
    iget p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    iget v6, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxmaxcode:I

    if-ge p1, v6, :cond_91

    .line 206
    iget-object p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->codetab:[I

    iget v6, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    aput v6, p1, v5

    .line 207
    iget-object p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->htab:[I

    aput v4, p1, v5

    goto :goto_94

    .line 209
    :cond_91
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cl_block(Ljava/io/OutputStream;)V

    :goto_94
    move p1, v3

    goto :goto_3f

    .line 212
    :cond_96
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->output(ILjava/io/OutputStream;)V

    .line 213
    iget p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->EOFCode:I

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->output(ILjava/io/OutputStream;)V

    return-void
.end method

.method encode(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->initCodeSize:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 220
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->imgW:I

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->imgH:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->remaining:I

    const/4 v0, 0x0

    .line 221
    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->curPixel:I

    .line 223
    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->initCodeSize:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->compress(ILjava/io/OutputStream;)V

    .line 225
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method flush_char(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    if-lez v0, :cond_13

    .line 231
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 232
    iget-object v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->accum:[B

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 233
    iput v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->a_count:I

    :cond_13
    return-void
.end method

.method output(ILjava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    iget-object v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->masks:[I

    iget v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    aget v1, v1, v2

    and-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    .line 258
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    if-lez v0, :cond_19

    .line 259
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    goto :goto_1b

    .line 261
    :cond_19
    iput p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    .line 263
    :goto_1b
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    iget v1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    .line 265
    :goto_22
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3b

    .line 266
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->char_out(BLjava/io/OutputStream;)V

    .line 267
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    shr-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    .line 268
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    goto :goto_22

    .line 273
    :cond_3b
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->free_ent:I

    iget v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxcode:I

    if-gt v0, v2, :cond_45

    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->clear_flg:Z

    if-eqz v0, :cond_70

    .line 274
    :cond_45
    iget-boolean v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->clear_flg:Z

    if-eqz v0, :cond_57

    .line 275
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->g_init_bits:I

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->MAXCODE(I)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxcode:I

    const/4 v0, 0x0

    .line 276
    iput-boolean v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->clear_flg:Z

    goto :goto_70

    .line 278
    :cond_57
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    .line 279
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    iget v2, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxbits:I

    if-ne v0, v2, :cond_68

    .line 280
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxmaxcode:I

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxcode:I

    goto :goto_70

    .line 282
    :cond_68
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->n_bits:I

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->MAXCODE(I)I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->maxcode:I

    .line 286
    :cond_70
    :goto_70
    iget v0, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->EOFCode:I

    if-ne p1, v0, :cond_8e

    .line 288
    :goto_74
    iget p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    if-lez p1, :cond_8b

    .line 289
    iget p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->char_out(BLjava/io/OutputStream;)V

    .line 290
    iget p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    shr-int/2addr p1, v1

    iput p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_accum:I

    .line 291
    iget p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/bumptech/glide/gifencoder/LZWEncoder;->cur_bits:I

    goto :goto_74

    .line 294
    :cond_8b
    invoke-virtual {p0, p2}, Lcom/bumptech/glide/gifencoder/LZWEncoder;->flush_char(Ljava/io/OutputStream;)V

    :cond_8e
    return-void
.end method
