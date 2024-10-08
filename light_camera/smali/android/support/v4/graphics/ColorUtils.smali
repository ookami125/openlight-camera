.class public final Landroid/support/v4/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static final MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final MIN_ALPHA_SEARCH_PRECISION:I = 0x1

.field private static final TEMP_ARRAY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[D>;"
        }
    .end annotation
.end field

.field private static final XYZ_EPSILON:D = 0.008856

.field private static final XYZ_KAPPA:D = 903.3

.field private static final XYZ_WHITE_REFERENCE_X:D = 95.047

.field private static final XYZ_WHITE_REFERENCE_Y:D = 100.0

.field private static final XYZ_WHITE_REFERENCE_Z:D = 108.883


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSLToColor([F)I
    .registers 7
    .param p0    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    const/4 v0, 0x0

    .line 238
    aget v1, p0, v0

    const/4 v2, 0x1

    .line 239
    aget v2, p0, v2

    const/4 v3, 0x2

    .line 240
    aget p0, p0, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, p0, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    .line 242
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v5, v4

    mul-float/2addr v4, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    sub-float/2addr p0, v2

    const/high16 v2, 0x42700000    # 60.0f

    div-float v2, v1, v2

    rem-float/2addr v2, v3

    sub-float/2addr v2, v5

    .line 244
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v5, v2

    mul-float/2addr v5, v4

    float-to-int v1, v1

    .line 246
    div-int/lit8 v1, v1, 0x3c

    const/high16 v2, 0x437f0000    # 255.0f

    packed-switch v1, :pswitch_data_b6

    move p0, v0

    move v1, p0

    move v3, v1

    goto :goto_a2

    :pswitch_33
    add-float/2addr v4, p0

    mul-float/2addr v4, v2

    .line 278
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-float v3, p0, v2

    .line 279
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float/2addr v5, p0

    mul-float/2addr v5, v2

    .line 280
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_a2

    :pswitch_46
    add-float/2addr v5, p0

    mul-float/2addr v5, v2

    .line 272
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-float v3, p0, v2

    .line 273
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float/2addr v4, p0

    mul-float/2addr v4, v2

    .line 274
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_a2

    :pswitch_59
    mul-float v1, p0, v2

    .line 267
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v5, p0

    mul-float/2addr v5, v2

    .line 268
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float/2addr v4, p0

    mul-float/2addr v4, v2

    .line 269
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_a2

    :pswitch_6c
    mul-float v1, p0, v2

    .line 262
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v4, p0

    mul-float/2addr v4, v2

    .line 263
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-float/2addr v5, p0

    mul-float/2addr v5, v2

    .line 264
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_a2

    :pswitch_7f
    add-float/2addr v5, p0

    mul-float/2addr v5, v2

    .line 257
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v4, p0

    mul-float/2addr v4, v2

    .line 258
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-float/2addr p0, v2

    .line 259
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_a2

    :pswitch_91
    add-float/2addr v4, p0

    mul-float/2addr v4, v2

    .line 252
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-float/2addr v5, p0

    mul-float/2addr v5, v2

    .line 253
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-float/2addr p0, v2

    .line 254
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_a2
    const/16 v2, 0xff

    .line 284
    invoke-static {v1, v0, v2}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v1

    .line 285
    invoke-static {v3, v0, v2}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v3

    .line 286
    invoke-static {p0, v0, v2}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result p0

    .line 288
    invoke-static {v1, v3, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0

    nop

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_91
        :pswitch_7f
        :pswitch_6c
        :pswitch_59
        :pswitch_46
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method

.method public static LABToColor(DDD)I
    .registers 14
    .param p0    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .param p4    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 502
    invoke-static {}, Landroid/support/v4/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v7

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, v7

    .line 503
    invoke-static/range {v0 .. v6}, Landroid/support/v4/graphics/ColorUtils;->LABToXYZ(DDD[D)V

    const/4 p0, 0x0

    .line 504
    aget-wide v0, v7, p0

    const/4 p0, 0x1

    aget-wide v2, v7, p0

    const/4 p0, 0x2

    aget-wide v4, v7, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/graphics/ColorUtils;->XYZToColor(DDD)I

    move-result p0

    return p0
.end method

.method public static LABToXYZ(DDD[D)V
    .registers 28
    .param p0    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .param p4    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = -128.0
            to = 127.0
        .end annotation
    .end param
    .param p6    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    add-double v4, p0, v2

    const-wide/high16 v6, 0x405d000000000000L    # 116.0

    div-double/2addr v4, v6

    const-wide v8, 0x407f400000000000L    # 500.0

    div-double v8, p2, v8

    add-double/2addr v8, v4

    const-wide/high16 v10, 0x4069000000000000L    # 200.0

    div-double v10, p4, v10

    sub-double v10, v4, v10

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    .line 449
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    const-wide v16, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v18, v14, v16

    const-wide v19, 0x408c3a6666666666L    # 903.3

    if-lez v18, :cond_2a

    goto :goto_2f

    :cond_2a
    mul-double/2addr v8, v6

    const/4 v14, 0x0

    sub-double/2addr v8, v2

    div-double v14, v8, v19

    :goto_2f
    const-wide v8, 0x401fff9da4c11507L    # 7.9996247999999985

    cmpl-double v8, p0, v8

    if-lez v8, :cond_3d

    .line 451
    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_3f

    :cond_3d
    div-double v0, p0, v19

    .line 453
    :goto_3f
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    cmpl-double v8, v4, v16

    if-lez v8, :cond_48

    goto :goto_4d

    :cond_48
    mul-double/2addr v10, v6

    const/4 v4, 0x0

    sub-double/2addr v10, v2

    div-double v4, v10, v19

    :goto_4d
    const/4 v2, 0x0

    const-wide v6, 0x4057c3020c49ba5eL    # 95.047

    mul-double/2addr v14, v6

    .line 456
    aput-wide v14, p6, v2

    const/4 v2, 0x1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v6

    .line 457
    aput-wide v0, p6, v2

    const/4 v0, 0x2

    const-wide v2, 0x405b3883126e978dL    # 108.883

    mul-double/2addr v4, v2

    .line 458
    aput-wide v4, p6, v0

    return-void
.end method

.method public static RGBToHSL(III[F)V
    .registers 11
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    int-to-float p1, p1

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    .line 177
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 178
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float v2, v0, v1

    add-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v1, v0, v1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-nez v1, :cond_29

    move p0, v6

    move p1, p0

    goto :goto_4c

    :cond_29
    cmpl-float v1, v0, p0

    if-nez v1, :cond_34

    sub-float/2addr p1, p2

    div-float/2addr p1, v2

    const/high16 p0, 0x40c00000    # 6.0f

    rem-float/2addr p1, p0

    move p0, p1

    goto :goto_42

    :cond_34
    cmpl-float v0, v0, p1

    if-nez v0, :cond_3d

    sub-float/2addr p2, p0

    div-float/2addr p2, v2

    add-float/2addr p2, v4

    move p0, p2

    goto :goto_42

    :cond_3d
    sub-float/2addr p0, p1

    div-float/2addr p0, v2

    const/high16 p1, 0x40800000    # 4.0f

    add-float/2addr p0, p1

    :goto_42
    mul-float/2addr v4, v3

    sub-float/2addr v4, v5

    .line 196
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float p1, v5, p1

    div-float p1, v2, p1

    :goto_4c
    const/high16 p2, 0x42700000    # 60.0f

    mul-float/2addr p0, p2

    const/high16 p2, 0x43b40000    # 360.0f

    rem-float/2addr p0, p2

    cmpg-float v0, p0, v6

    if-gez v0, :cond_57

    add-float/2addr p0, p2

    :cond_57
    const/4 v0, 0x0

    .line 204
    invoke-static {p0, v6, p2}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result p0

    aput p0, p3, v0

    const/4 p0, 0x1

    .line 205
    invoke-static {p1, v6, v5}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result p1

    aput p1, p3, p0

    const/4 p0, 0x2

    .line 206
    invoke-static {v3, v6, v5}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F

    move-result p1

    aput p1, p3, p0

    return-void
.end method

.method public static RGBToLAB(III[D)V
    .registers 11
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 331
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/graphics/ColorUtils;->RGBToXYZ(III[D)V

    const/4 p0, 0x0

    .line 333
    aget-wide v0, p3, p0

    const/4 p0, 0x1

    aget-wide v2, p3, p0

    const/4 p0, 0x2

    aget-wide v4, p3, p0

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Landroid/support/v4/graphics/ColorUtils;->XYZToLAB(DDD[D)V

    return-void
.end method

.method public static RGBToXYZ(III[D)V
    .registers 24
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .param p3    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p3

    .line 376
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b1

    move/from16 v1, p0

    int-to-double v1, v1

    const-wide v3, 0x406fe00000000000L    # 255.0

    div-double/2addr v1, v3

    const-wide v5, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v7, v1, v5

    const-wide v8, 0x4003333333333333L    # 2.4

    const-wide v10, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v12, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v14, 0x4029d70a3d70a3d7L    # 12.92

    if-gez v7, :cond_32

    div-double/2addr v1, v14

    :goto_2d
    move-wide/from16 v16, v1

    move/from16 v1, p1

    goto :goto_3a

    :cond_32
    const/4 v7, 0x0

    add-double/2addr v1, v12

    div-double/2addr v1, v10

    .line 381
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    goto :goto_2d

    :goto_3a
    int-to-double v1, v1

    div-double/2addr v1, v3

    cmpg-double v7, v1, v5

    if-gez v7, :cond_46

    div-double/2addr v1, v14

    :goto_41
    move-wide/from16 v18, v1

    move/from16 v1, p2

    goto :goto_4e

    :cond_46
    const/4 v7, 0x0

    add-double/2addr v1, v12

    div-double/2addr v1, v10

    .line 383
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    goto :goto_41

    :goto_4e
    int-to-double v1, v1

    div-double/2addr v1, v3

    cmpg-double v3, v1, v5

    if-gez v3, :cond_56

    div-double/2addr v1, v14

    goto :goto_5d

    :cond_56
    const/4 v3, 0x0

    add-double/2addr v1, v12

    div-double/2addr v1, v10

    .line 385
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    :goto_5d
    const/4 v3, 0x0

    const-wide v4, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double v4, v4, v16

    const-wide v6, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double v6, v6, v18

    add-double/2addr v4, v6

    const-wide v6, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double/2addr v6, v1

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    .line 387
    aput-wide v4, v0, v3

    const/4 v3, 0x1

    const-wide v4, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double v4, v4, v16

    const-wide v8, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double v8, v8, v18

    add-double/2addr v4, v8

    const-wide v8, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v8, v1

    add-double/2addr v4, v8

    mul-double/2addr v4, v6

    .line 388
    aput-wide v4, v0, v3

    const/4 v3, 0x2

    const-wide v4, 0x3f93c36113404ea5L    # 0.0193

    mul-double v16, v16, v4

    const-wide v4, 0x3fbe83e425aee632L    # 0.1192

    mul-double v18, v18, v4

    add-double v16, v16, v18

    const-wide v4, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double/2addr v1, v4

    add-double v16, v16, v1

    mul-double v16, v16, v6

    .line 389
    aput-wide v16, v0, v3

    return-void

    .line 377
    :cond_b1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outXyz must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static XYZToColor(DDD)I
    .registers 24
    .param p0    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 95.047
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p4    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 108.883
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    const-wide v6, 0x4009ecbfb15b573fL    # 3.2406

    mul-double v6, v6, p0

    const-wide v8, -0x400767a0f9096bbaL    # -1.5372

    mul-double v8, v8, p2

    add-double/2addr v6, v8

    const-wide v8, -0x402016f0068db8bbL    # -0.4986

    mul-double v8, v8, p4

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    const-wide v10, -0x4010fec56d5cfaadL    # -0.9689

    mul-double v10, v10, p0

    const-wide v12, 0x3ffe0346dc5d6388L    # 1.8758

    mul-double v12, v12, p2

    add-double/2addr v10, v12

    const-wide v12, 0x3fa53f7ced916873L    # 0.0415

    mul-double v12, v12, p4

    add-double/2addr v10, v12

    div-double/2addr v10, v8

    const-wide v12, 0x3fac84b5dcc63f14L    # 0.0557

    mul-double v0, p0, v12

    const-wide v12, -0x4035e353f7ced917L    # -0.204

    mul-double v2, p2, v12

    add-double/2addr v0, v2

    const-wide v2, 0x3ff0e978d4fdf3b6L    # 1.057

    mul-double v2, v2, p4

    add-double/2addr v0, v2

    div-double/2addr v0, v8

    const-wide v2, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v4, v6, v2

    const-wide v8, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v12, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v14, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    const-wide v16, 0x3ff0e147ae147ae1L    # 1.055

    if-lez v4, :cond_6f

    .line 480
    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v4, v4, v16

    sub-double/2addr v4, v12

    goto :goto_71

    :cond_6f
    mul-double v4, v6, v8

    :goto_71
    cmpl-double v6, v10, v2

    if-lez v6, :cond_7d

    .line 481
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double v6, v6, v16

    sub-double/2addr v6, v12

    goto :goto_7f

    :cond_7d
    mul-double v6, v10, v8

    :goto_7f
    cmpl-double v2, v0, v2

    if-lez v2, :cond_8b

    .line 482
    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double v0, v0, v16

    sub-double/2addr v0, v12

    goto :goto_8c

    :cond_8b
    mul-double/2addr v0, v8

    :goto_8c
    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v2

    .line 485
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    const/16 v5, 0xff

    const/4 v8, 0x0

    invoke-static {v4, v8, v5}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v4

    mul-double/2addr v6, v2

    .line 486
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v6, v8, v5}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v6

    mul-double/2addr v0, v2

    .line 487
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0, v8, v5}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I

    move-result v0

    .line 484
    invoke-static {v4, v6, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static XYZToLAB(DDD[D)V
    .registers 14
    .param p0    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 95.047
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 100.0
        .end annotation
    .end param
    .param p4    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 108.883
        .end annotation
    .end param
    .param p6    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 413
    array-length v0, p6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_40

    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    div-double/2addr p0, v0

    .line 416
    invoke-static {p0, p1}, Landroid/support/v4/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p2, v0

    .line 417
    invoke-static {p2, p3}, Landroid/support/v4/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide p2

    const-wide v0, 0x405b3883126e978dL    # 108.883

    div-double/2addr p4, v0

    .line 418
    invoke-static {p4, p5}, Landroid/support/v4/graphics/ColorUtils;->pivotXyzComponent(D)D

    move-result-wide p4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x405d000000000000L    # 116.0

    mul-double/2addr v3, p2

    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    sub-double/2addr v3, v5

    .line 419
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    aput-wide v1, p6, v0

    const/4 v0, 0x1

    const-wide v1, 0x407f400000000000L    # 500.0

    sub-double/2addr p0, p2

    mul-double/2addr p0, v1

    .line 420
    aput-wide p0, p6, v0

    const/4 p0, 0x2

    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    sub-double/2addr p2, p4

    mul-double/2addr p2, v0

    .line 421
    aput-wide p2, p6, p0

    return-void

    .line 414
    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "outLab must have a length of 3."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blendARGB(IIF)I
    .registers 8
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 544
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 545
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 546
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 547
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int v0, v3

    float-to-int p0, p0

    .line 548
    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static blendHSL([F[FF[F)V
    .registers 8
    .param p0    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p3    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 565
    array-length v0, p3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    const/4 v1, 0x0

    .line 570
    aget v2, p0, v1

    aget v3, p1, v1

    invoke-static {v2, v3, p2}, Landroid/support/v4/graphics/ColorUtils;->circularInterpolate(FFF)F

    move-result v2

    aput v2, p3, v1

    const/4 v1, 0x1

    .line 571
    aget v2, p0, v1

    mul-float/2addr v2, v0

    aget v3, p1, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    aput v2, p3, v1

    const/4 v1, 0x2

    .line 572
    aget p0, p0, v1

    mul-float/2addr p0, v0

    aget p1, p1, v1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    aput p0, p3, v1

    return-void

    .line 566
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "result must have a length of 3."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blendLAB([D[DD[D)V
    .registers 12
    .param p0    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p4    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 588
    array-length v0, p4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p2

    const/4 v2, 0x0

    .line 592
    aget-wide v3, p0, v2

    mul-double/2addr v3, v0

    aget-wide v5, p1, v2

    mul-double/2addr v5, p2

    add-double/2addr v3, v5

    aput-wide v3, p4, v2

    const/4 v2, 0x1

    .line 593
    aget-wide v3, p0, v2

    mul-double/2addr v3, v0

    aget-wide v5, p1, v2

    mul-double/2addr v5, p2

    add-double/2addr v3, v5

    aput-wide v3, p4, v2

    const/4 v2, 0x2

    .line 594
    aget-wide v3, p0, v2

    mul-double/2addr v3, v0

    aget-wide p0, p1, v2

    mul-double/2addr p0, p2

    add-double/2addr v3, p0

    aput-wide v3, p4, v2

    return-void

    .line 589
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "outResult must have a length of 3."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static calculateContrast(II)D
    .registers 6
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 91
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2b

    .line 95
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ge v0, v1, :cond_12

    .line 97
    invoke-static {p0, p1}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result p0

    .line 100
    :cond_12
    invoke-static {p0}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    .line 101
    invoke-static {p1}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide p0

    add-double/2addr p0, v2

    .line 104
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    div-double/2addr v2, p0

    return-wide v2

    .line 92
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "background can not be translucent: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static calculateLuminance(I)D
    .registers 6
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 77
    invoke-static {}, Landroid/support/v4/graphics/ColorUtils;->getTempDouble3Array()[D

    move-result-object v0

    .line 78
    invoke-static {p0, v0}, Landroid/support/v4/graphics/ColorUtils;->colorToXYZ(I[D)V

    const/4 p0, 0x1

    .line 80
    aget-wide v1, v0, p0

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public static calculateMinimumAlpha(IIF)I
    .registers 11
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 119
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_39

    .line 125
    invoke-static {p0, v1}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 126
    invoke-static {v0, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v2

    float-to-double v4, p2

    cmpg-double p2, v2, v4

    if-gez p2, :cond_17

    const/4 p0, -0x1

    return p0

    :cond_17
    const/4 p2, 0x0

    move v0, p2

    :goto_19
    const/16 v2, 0xa

    if-gt p2, v2, :cond_38

    sub-int v2, v1, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_38

    add-int v2, v0, v1

    .line 139
    div-int/lit8 v2, v2, 0x2

    .line 141
    invoke-static {p0, v2}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    .line 142
    invoke-static {v3, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D

    move-result-wide v6

    cmpg-double v3, v6, v4

    if-gez v3, :cond_34

    move v0, v2

    goto :goto_35

    :cond_34
    move v1, v2

    :goto_35
    add-int/lit8 p2, p2, 0x1

    goto :goto_19

    :cond_38
    return v1

    .line 120
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "background can not be translucent: #"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static circularInterpolate(FFF)F
    .registers 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    sub-float v0, p1, p0

    .line 599
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v0, v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    if-lez v0, :cond_15

    cmpl-float v0, p1, p0

    if-lez v0, :cond_14

    add-float/2addr p0, v1

    goto :goto_15

    :cond_14
    add-float/2addr p1, v1

    :cond_15
    :goto_15
    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    rem-float/2addr p0, v1

    return p0
.end method

.method public static colorToHSL(I[F)V
    .registers 4
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 221
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Landroid/support/v4/graphics/ColorUtils;->RGBToHSL(III[F)V

    return-void
.end method

.method public static colorToLAB(I[D)V
    .registers 4
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 310
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Landroid/support/v4/graphics/ColorUtils;->RGBToLAB(III[D)V

    return-void
.end method

.method public static colorToXYZ(I[D)V
    .registers 4
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 353
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Landroid/support/v4/graphics/ColorUtils;->RGBToXYZ(III[D)V

    return-void
.end method

.method private static compositeAlpha(II)I
    .registers 2

    rsub-int p1, p1, 0xff

    rsub-int p0, p0, 0xff

    mul-int/2addr p1, p0

    .line 63
    div-int/lit16 p1, p1, 0xff

    rsub-int p0, p1, 0xff

    return p0
.end method

.method public static compositeColors(II)I
    .registers 8
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 48
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 49
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 50
    invoke-static {v1, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeAlpha(II)I

    move-result v2

    .line 52
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 53
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 52
    invoke-static {v3, v1, v4, v0, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v3

    .line 54
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 55
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 54
    invoke-static {v4, v1, v5, v0, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v4

    .line 56
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 57
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 56
    invoke-static {p0, v1, p1, v0, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result p0

    .line 59
    invoke-static {v2, v3, v4, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private static compositeComponent(IIIII)I
    .registers 5

    if-nez p4, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    mul-int/lit16 p0, p0, 0xff

    mul-int/2addr p0, p1

    mul-int/2addr p2, p3

    rsub-int p1, p1, 0xff

    mul-int/2addr p2, p1

    add-int/2addr p0, p2

    mul-int/lit16 p4, p4, 0xff

    .line 68
    div-int/2addr p0, p4

    return p0
.end method

.method private static constrain(FFF)F
    .registers 4

    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move p0, p1

    goto :goto_b

    :cond_6
    cmpl-float p1, p0, p2

    if-lez p1, :cond_b

    move p0, p2

    :cond_b
    :goto_b
    return p0
.end method

.method private static constrain(III)I
    .registers 3

    if-ge p0, p1, :cond_4

    move p0, p1

    goto :goto_7

    :cond_4
    if-le p0, p2, :cond_7

    move p0, p2

    :cond_7
    :goto_7
    return p0
.end method

.method public static distanceEuclidean([D[D)D
    .registers 11
    .param p0    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [D
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 511
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    sub-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const/4 v2, 0x1

    aget-wide v5, p0, v2

    aget-wide v7, p1, v2

    sub-double/2addr v5, v7

    .line 512
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v0, v5

    const/4 v2, 0x2

    aget-wide v5, p0, v2

    aget-wide p0, p1, v2

    sub-double/2addr v5, p0

    .line 513
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    .line 511
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static getTempDouble3Array()[D
    .registers 2

    .line 610
    sget-object v0, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    if-nez v0, :cond_12

    const/4 v0, 0x3

    .line 612
    new-array v0, v0, [D

    .line 613
    sget-object v1, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_12
    return-object v0
.end method

.method private static pivotXyzComponent(D)D
    .registers 4

    const-wide v0, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v0, p0, v0

    if-lez v0, :cond_13

    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    .line 526
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    goto :goto_1f

    :cond_13
    const-wide v0, 0x408c3a6666666666L    # 903.3

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double/2addr p0, v0

    const-wide/high16 v0, 0x405d000000000000L    # 116.0

    div-double/2addr p0, v0

    :goto_1f
    return-wide p0
.end method

.method public static setAlphaComponent(II)I
    .registers 3
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    if-ltz p1, :cond_e

    const/16 v0, 0xff

    if-gt p1, v0, :cond_e

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    .line 298
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
