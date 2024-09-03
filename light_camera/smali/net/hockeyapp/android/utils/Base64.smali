.class public Lnet/hockeyapp/android/utils/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/utils/Base64$Encoder;,
        Lnet/hockeyapp/android/utils/Base64$Decoder;,
        Lnet/hockeyapp/android/utils/Base64$Coder;
    }
.end annotation


# static fields
.field public static final CRLF:I = 0x4

.field public static final DEFAULT:I = 0x0

.field public static final NO_PADDING:I = 0x1

.field public static final NO_WRAP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BASE64"

.field public static final URL_SAFE:I = 0x8


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;I)[B
    .registers 2

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p1}, Lnet/hockeyapp/android/utils/Base64;->decode([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([BI)[B
    .registers 4

    .line 117
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lnet/hockeyapp/android/utils/Base64;->decode([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([BIII)[B
    .registers 6

    .line 139
    new-instance v0, Lnet/hockeyapp/android/utils/Base64$Decoder;

    mul-int/lit8 v1, p2, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    invoke-direct {v0, p3, v1}, Lnet/hockeyapp/android/utils/Base64$Decoder;-><init>(I[B)V

    const/4 p3, 0x1

    .line 141
    invoke-virtual {v0, p0, p1, p2, p3}, Lnet/hockeyapp/android/utils/Base64$Decoder;->process([BIIZ)Z

    move-result p0

    if-eqz p0, :cond_29

    .line 146
    iget p0, v0, Lnet/hockeyapp/android/utils/Base64$Decoder;->op:I

    iget-object p1, v0, Lnet/hockeyapp/android/utils/Base64$Decoder;->output:[B

    array-length p1, p1

    if-ne p0, p1, :cond_1c

    .line 147
    iget-object p0, v0, Lnet/hockeyapp/android/utils/Base64$Decoder;->output:[B

    return-object p0

    .line 152
    :cond_1c
    iget p0, v0, Lnet/hockeyapp/android/utils/Base64$Decoder;->op:I

    new-array p0, p0, [B

    .line 153
    iget-object p1, v0, Lnet/hockeyapp/android/utils/Base64$Decoder;->output:[B

    iget p2, v0, Lnet/hockeyapp/android/utils/Base64$Decoder;->op:I

    const/4 p3, 0x0

    invoke-static {p1, p3, p0, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    .line 142
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad base-64"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encode([BI)[B
    .registers 4

    .line 480
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lnet/hockeyapp/android/utils/Base64;->encode([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static encode([BIII)[B
    .registers 8

    .line 497
    new-instance v0, Lnet/hockeyapp/android/utils/Base64$Encoder;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lnet/hockeyapp/android/utils/Base64$Encoder;-><init>(I[B)V

    .line 500
    div-int/lit8 p3, p2, 0x3

    mul-int/lit8 p3, p3, 0x4

    .line 503
    iget-boolean v1, v0, Lnet/hockeyapp/android/utils/Base64$Encoder;->do_padding:Z

    if-eqz v1, :cond_15

    .line 504
    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_20

    add-int/lit8 p3, p3, 0x4

    goto :goto_20

    .line 508
    :cond_15
    rem-int/lit8 v1, p2, 0x3

    packed-switch v1, :pswitch_data_4a

    goto :goto_20

    :pswitch_1b
    add-int/lit8 p3, p3, 0x3

    goto :goto_20

    :pswitch_1e
    add-int/lit8 p3, p3, 0x2

    .line 521
    :cond_20
    :goto_20
    :pswitch_20
    iget-boolean v1, v0, Lnet/hockeyapp/android/utils/Base64$Encoder;->do_newline:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_35

    if-lez p2, :cond_35

    add-int/lit8 v1, p2, -0x1

    .line 522
    div-int/lit8 v1, v1, 0x39

    add-int/2addr v1, v2

    iget-boolean v3, v0, Lnet/hockeyapp/android/utils/Base64$Encoder;->do_cr:Z

    if-eqz v3, :cond_32

    const/4 v3, 0x2

    goto :goto_33

    :cond_32
    move v3, v2

    :goto_33
    mul-int/2addr v1, v3

    add-int/2addr p3, v1

    .line 526
    :cond_35
    new-array v1, p3, [B

    iput-object v1, v0, Lnet/hockeyapp/android/utils/Base64$Encoder;->output:[B

    .line 527
    invoke-virtual {v0, p0, p1, p2, v2}, Lnet/hockeyapp/android/utils/Base64$Encoder;->process([BIIZ)Z

    .line 529
    iget p0, v0, Lnet/hockeyapp/android/utils/Base64$Encoder;->op:I

    if-ne p0, p3, :cond_43

    .line 533
    iget-object p0, v0, Lnet/hockeyapp/android/utils/Base64$Encoder;->output:[B

    return-object p0

    .line 530
    :cond_43
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .registers 3

    .line 440
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lnet/hockeyapp/android/utils/Base64;->encode([BI)[B

    move-result-object p0

    const-string p1, "US-ASCII"

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception p0

    .line 443
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public static encodeToString([BIII)Ljava/lang/String;
    .registers 5

    .line 462
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lnet/hockeyapp/android/utils/Base64;->encode([BIII)[B

    move-result-object p0

    const-string p1, "US-ASCII"

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception p0

    .line 465
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
