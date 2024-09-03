.class public Lorg/apache/commons/io/FilenameUtils;
.super Ljava/lang/Object;
.source "FilenameUtils.java"


# static fields
.field public static final EXTENSION_SEPARATOR:C = '.'

.field public static final EXTENSION_SEPARATOR_STR:Ljava/lang/String;

.field private static final NOT_FOUND:I = -0x1

.field private static final OTHER_SEPARATOR:C

.field private static final SYSTEM_SEPARATOR:C

.field private static final UNIX_SEPARATOR:C = '/'

.field private static final WINDOWS_SEPARATOR:C = '\\'


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x2e

    .line 97
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FilenameUtils;->EXTENSION_SEPARATOR_STR:Ljava/lang/String;

    .line 112
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    .line 119
    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x2f

    .line 120
    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    goto :goto_1b

    :cond_17
    const/16 v0, 0x5c

    .line 122
    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    :goto_1b
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 487
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_8

    return-object v1

    :cond_8
    if-lez v0, :cond_f

    .line 492
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    if-nez p0, :cond_12

    return-object v1

    .line 497
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1d

    .line 499
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    .line 501
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 502
    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 505
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static directoryContains(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_16

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return v0

    .line 544
    :cond_6
    sget-object v1, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-virtual {v1, p0, p1}, Lorg/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    return v0

    .line 548
    :cond_f
    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-virtual {v0, p1, p0}, Lorg/apache/commons/io/IOCase;->checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 537
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Directory must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 929
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_b

    return-object v0

    .line 933
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_19

    if-eqz p1, :cond_18

    .line 935
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    return-object p0

    .line 940
    :cond_19
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    if-gez v0, :cond_25

    .line 942
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    add-int/2addr v0, p1

    if-nez v0, :cond_2a

    add-int/lit8 v0, v0, 0x1

    .line 948
    :cond_2a
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static doGetPath(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 845
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_b

    return-object v0

    .line 849
    :cond_b
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    add-int/2addr p1, v0

    .line 851
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_23

    if-ltz v0, :cond_23

    if-lt v1, p1, :cond_1b

    goto :goto_23

    .line 854
    :cond_1b
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 855
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    return-object p0

    :cond_23
    :goto_23
    const-string p0, ""

    return-object p0
.end method

.method private static doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    return-object v2

    .line 354
    :cond_8
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_12

    return-object v0

    .line 360
    :cond_12
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_19

    return-object v2

    :cond_19
    add-int/lit8 v5, v3, 0x2

    .line 365
    new-array v5, v5, [C

    .line 366
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6, v5, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 369
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne v1, v0, :cond_2c

    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    goto :goto_2e

    :cond_2c
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    :goto_2e
    move v6, v7

    .line 370
    :goto_2f
    array-length v8, v5

    if-ge v6, v8, :cond_3b

    .line 371
    aget-char v8, v5, v6

    if-ne v8, v0, :cond_38

    .line 372
    aput-char v1, v5, v6

    :cond_38
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    :cond_3b
    add-int/lit8 v0, v3, -0x1

    .line 378
    aget-char v0, v5, v0

    const/4 v6, 0x1

    if-eq v0, v1, :cond_48

    add-int/lit8 v0, v3, 0x1

    .line 379
    aput-char v1, v5, v3

    move v3, v7

    goto :goto_4a

    :cond_48
    move v0, v3

    move v3, v6

    :goto_4a
    add-int/lit8 v8, v4, 0x1

    move v9, v0

    move v0, v8

    :goto_4e
    if-ge v0, v9, :cond_65

    .line 385
    aget-char v10, v5, v0

    if-ne v10, v1, :cond_63

    add-int/lit8 v10, v0, -0x1

    aget-char v11, v5, v10

    if-ne v11, v1, :cond_63

    sub-int v11, v9, v0

    .line 386
    invoke-static {v5, v0, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_63
    add-int/2addr v0, v6

    goto :goto_4e

    :cond_65
    move v0, v8

    :goto_66
    const/16 v10, 0x2e

    if-ge v0, v9, :cond_8e

    .line 394
    aget-char v11, v5, v0

    if-ne v11, v1, :cond_8c

    add-int/lit8 v11, v0, -0x1

    aget-char v12, v5, v11

    if-ne v12, v10, :cond_8c

    if-eq v0, v8, :cond_7c

    add-int/lit8 v10, v0, -0x2

    aget-char v10, v5, v10

    if-ne v10, v1, :cond_8c

    :cond_7c
    add-int/lit8 v10, v9, -0x1

    if-ne v0, v10, :cond_81

    move v3, v6

    :cond_81
    add-int/lit8 v10, v0, 0x1

    sub-int v12, v9, v0

    .line 399
    invoke-static {v5, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v9, -0x2

    add-int/lit8 v0, v0, -0x1

    :cond_8c
    add-int/2addr v0, v6

    goto :goto_66

    :cond_8e
    add-int/lit8 v0, v4, 0x2

    move v11, v3

    move v3, v0

    :goto_92
    if-ge v3, v9, :cond_da

    .line 408
    aget-char v12, v5, v3

    if-ne v12, v1, :cond_d6

    add-int/lit8 v12, v3, -0x1

    aget-char v12, v5, v12

    if-ne v12, v10, :cond_d6

    add-int/lit8 v12, v3, -0x2

    aget-char v12, v5, v12

    if-ne v12, v10, :cond_d6

    if-eq v3, v0, :cond_ac

    add-int/lit8 v12, v3, -0x3

    aget-char v12, v5, v12

    if-ne v12, v1, :cond_d6

    :cond_ac
    if-ne v3, v0, :cond_af

    return-object v2

    :cond_af
    add-int/lit8 v12, v9, -0x1

    if-ne v3, v12, :cond_b4

    move v11, v6

    :cond_b4
    add-int/lit8 v12, v3, -0x4

    :goto_b6
    if-lt v12, v4, :cond_cb

    .line 418
    aget-char v13, v5, v12

    if-ne v13, v1, :cond_c8

    add-int/lit8 v13, v3, 0x1

    add-int/lit8 v14, v12, 0x1

    sub-int v15, v9, v3

    .line 420
    invoke-static {v5, v13, v5, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v3, v12

    sub-int/2addr v9, v3

    goto :goto_d7

    :cond_c8
    add-int/lit8 v12, v12, -0x1

    goto :goto_b6

    :cond_cb
    add-int/lit8 v12, v3, 0x1

    sub-int v3, v9, v3

    .line 427
    invoke-static {v5, v12, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v12, v4

    sub-int/2addr v9, v12

    move v14, v8

    goto :goto_d7

    :cond_d6
    move v14, v3

    :goto_d7
    add-int/lit8 v3, v14, 0x1

    goto :goto_92

    :cond_da
    if-gtz v9, :cond_df

    const-string v0, ""

    return-object v0

    :cond_df
    if-gt v9, v4, :cond_e7

    .line 437
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v7, v9}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_e7
    if-eqz v11, :cond_f1

    if-eqz p2, :cond_f1

    .line 440
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v7, v9}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 442
    :cond_f1
    new-instance v0, Ljava/lang/String;

    sub-int/2addr v9, v6

    invoke-direct {v0, v5, v7, v9}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1091
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z
    .registers 4

    if-eqz p0, :cond_25

    if-nez p1, :cond_5

    goto :goto_25

    :cond_5
    if-eqz p2, :cond_1c

    .line 1161
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1162
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    goto :goto_1c

    .line 1164
    :cond_14
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Error normalizing one or both of the file names"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    :goto_1c
    if-nez p3, :cond_20

    .line 1169
    sget-object p3, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 1171
    :cond_20
    invoke-virtual {p3, p0, p1}, Lorg/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_25
    :goto_25
    if-nez p0, :cond_2b

    if-nez p1, :cond_2b

    const/4 p0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    :goto_2c
    return p0
.end method

.method public static equalsNormalized(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1122
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method

.method public static equalsNormalizedOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1139
    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method

.method public static equalsOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 1106
    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method

.method private static failIfNullBytePresent(Ljava/lang/String;)V
    .registers 4

    .line 985
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_18

    .line 987
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_10

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 988
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null byte present in file/path name. There are no known legitimate use cases for such data, but several injection attacks may use it"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    return-void
.end method

.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 1013
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1038
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    const-string p0, ""

    return-object p0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    .line 1042
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFullPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 885
    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFullPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 915
    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 973
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    .line 974
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 975
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 803
    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 831
    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 766
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_b

    return-object v0

    .line 770
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v1, v0, :cond_35

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_35
    const/4 v0, 0x0

    .line 774
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 775
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getPrefixLength(Ljava/lang/String;)I
    .registers 10

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 638
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 642
    :cond_c
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_15

    return v0

    :cond_15
    const/16 v4, 0x7e

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v1, v5, :cond_23

    if-ne v2, v4, :cond_1e

    return v6

    .line 650
    :cond_1e
    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result p0

    return p0

    :cond_23
    const/16 v7, 0x5c

    const/16 v8, 0x2f

    if-ne v2, v4, :cond_43

    .line 653
    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 654
    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    if-ne v2, v0, :cond_37

    if-ne p0, v0, :cond_37

    add-int/2addr v1, v5

    return v1

    :cond_37
    if-ne v2, v0, :cond_3a

    move v2, p0

    :cond_3a
    if-ne p0, v0, :cond_3d

    move p0, v2

    .line 660
    :cond_3d
    invoke-static {v2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/2addr p0, v5

    return p0

    .line 662
    :cond_43
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_66

    .line 664
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_65

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_65

    if-eq v1, v6, :cond_64

    .line 666
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result p0

    if-nez p0, :cond_62

    goto :goto_64

    :cond_62
    const/4 p0, 0x3

    return p0

    :cond_64
    :goto_64
    return v6

    :cond_65
    return v0

    .line 673
    :cond_66
    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-static {v4}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 674
    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 675
    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    if-ne v1, v0, :cond_7e

    if-eq p0, v0, :cond_8f

    :cond_7e
    if-eq v1, v6, :cond_8f

    if-ne p0, v6, :cond_83

    goto :goto_8f

    :cond_83
    if-ne v1, v0, :cond_86

    move v1, p0

    :cond_86
    if-ne p0, v0, :cond_89

    move p0, v1

    .line 681
    :cond_89
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/2addr p0, v5

    return p0

    :cond_8f
    :goto_8f
    return v0

    .line 683
    :cond_90
    invoke-static {v2}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result p0

    return p0
.end method

.method public static indexOfExtension(Ljava/lang/String;)I
    .registers 3

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/16 v1, 0x2e

    .line 727
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 728
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result p0

    if-le p0, v1, :cond_11

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    return v0
.end method

.method public static indexOfLastSeparator(Ljava/lang/String;)I
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, -0x1

    return p0

    :cond_4
    const/16 v0, 0x2f

    .line 704
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x5c

    .line 705
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    .line 706
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static isExtension(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1191
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    if-eqz p1, :cond_19

    .line 1193
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_19

    .line 1196
    :cond_10
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1197
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1194
    :cond_19
    :goto_19
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_21

    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method public static isExtension(Ljava/lang/String;Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1246
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_2d

    .line 1248
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_2d

    .line 1251
    :cond_11
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1252
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1253
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    return v1

    :cond_2c
    return v0

    .line 1249
    :cond_2d
    :goto_2d
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_35

    move v0, v1

    :cond_35
    return v0
.end method

.method public static isExtension(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1216
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_23

    .line 1218
    array-length v2, p1

    if-nez v2, :cond_e

    goto :goto_23

    .line 1221
    :cond_e
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1222
    array-length v2, p1

    move v3, v0

    :goto_14
    if-ge v3, v2, :cond_22

    aget-object v4, p1, v3

    .line 1223
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    return v1

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_22
    return v0

    .line 1219
    :cond_23
    :goto_23
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_2b

    move v0, v1

    :cond_2b
    return v0
.end method

.method private static isSeparator(C)Z
    .registers 2

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_b

    const/16 v0, 0x5c

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method static isSystemWindows()Z
    .registers 2

    .line 140
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 196
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalize(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_5

    const/16 p1, 0x2f

    goto :goto_7

    :cond_5
    const/16 p1, 0x5c

    :goto_7
    const/4 v0, 0x1

    .line 244
    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 290
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalizeNoEndSeparator(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_5

    const/16 p1, 0x2f

    goto :goto_7

    :cond_5
    const/16 p1, 0x5c

    :goto_7
    const/4 v0, 0x0

    .line 338
    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1068
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->failIfNullBytePresent(Ljava/lang/String;)V

    .line 1070
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    return-object p0

    :cond_f
    const/4 v1, 0x0

    .line 1074
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static separatorsToSystem(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 588
    :cond_4
    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 589
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 591
    :cond_f
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_13

    const/16 v0, 0x5c

    .line 559
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    goto :goto_13

    :cond_c
    const/16 v1, 0x2f

    .line 562
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    :goto_13
    return-object p0
.end method

.method public static separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_13

    const/16 v0, 0x2f

    .line 572
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    goto :goto_13

    :cond_c
    const/16 v1, 0x5c

    .line 575
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    :goto_13
    return-object p0
.end method

.method static splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    const/16 v0, 0x3f

    .line 1421
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0x2a

    const/4 v4, 0x0

    if-ne v1, v2, :cond_18

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_18

    const/4 v0, 0x1

    .line 1422
    new-array v0, v0, [Ljava/lang/String;

    aput-object p0, v0, v4

    return-object v0

    .line 1425
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 1426
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1429
    array-length v5, p0

    move v6, v4

    move v7, v6

    :goto_29
    if-ge v6, v5, :cond_59

    aget-char v8, p0, v6

    if-eq v8, v0, :cond_36

    if-ne v8, v3, :cond_32

    goto :goto_36

    .line 1441
    :cond_32
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_55

    .line 1431
    :cond_36
    :goto_36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_46

    .line 1432
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1433
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_46
    if-ne v8, v0, :cond_4e

    const-string v7, "?"

    .line 1436
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    :cond_4e
    if-eq v7, v3, :cond_55

    const-string v7, "*"

    .line 1438
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55
    :goto_55
    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto :goto_29

    .line 1445
    :cond_59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_66

    .line 1446
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    :cond_66
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 1284
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z
    .registers 12

    const/4 v0, 0x1

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_aa

    if-nez p1, :cond_d

    goto/16 :goto_aa

    :cond_d
    if-nez p2, :cond_11

    .line 1335
    sget-object p2, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 1337
    :cond_11
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1341
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    move v3, v1

    move v4, v3

    move v5, v4

    .line 1345
    :goto_1d
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v6

    if-lez v6, :cond_30

    .line 1346
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 1347
    aget v4, v3, v1

    .line 1348
    aget v3, v3, v0

    move v5, v4

    move v4, v0

    goto :goto_33

    :cond_30
    move v8, v4

    move v4, v3

    move v3, v8

    .line 1353
    :goto_33
    array-length v6, p1

    if-ge v5, v6, :cond_94

    .line 1355
    aget-object v6, p1, v5

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    add-int/lit8 v3, v3, 0x1

    .line 1358
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v3, v6, :cond_49

    goto :goto_94

    :cond_49
    :goto_49
    move v4, v1

    goto :goto_91

    .line 1363
    :cond_4b
    aget-object v6, p1, v5

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 1366
    array-length v4, p1

    sub-int/2addr v4, v0

    if-ne v5, v4, :cond_5d

    .line 1367
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    :cond_5d
    move v4, v0

    goto :goto_91

    :cond_5f
    if-eqz v4, :cond_80

    .line 1374
    aget-object v6, p1, v5

    invoke-virtual {p2, p0, v3, v6}, Lorg/apache/commons/io/IOCase;->checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_6b

    goto :goto_94

    :cond_6b
    add-int/lit8 v4, v3, 0x1

    .line 1379
    aget-object v6, p1, v5

    invoke-virtual {p2, p0, v4, v6}, Lorg/apache/commons/io/IOCase;->checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_89

    const/4 v6, 0x2

    .line 1381
    new-array v6, v6, [I

    aput v5, v6, v1

    aput v4, v6, v0

    invoke-virtual {v2, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_89

    .line 1385
    :cond_80
    aget-object v6, p1, v5

    invoke-virtual {p2, p0, v3, v6}, Lorg/apache/commons/io/IOCase;->checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_89

    goto :goto_94

    .line 1392
    :cond_89
    :goto_89
    aget-object v4, p1, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_49

    :goto_91
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 1400
    :cond_94
    :goto_94
    array-length v6, p1

    if-ne v5, v6, :cond_9e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v3, v6, :cond_9e

    return v0

    .line 1404
    :cond_9e
    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v6

    if-gtz v6, :cond_a5

    return v1

    :cond_a5
    move v8, v4

    move v4, v3

    move v3, v8

    goto/16 :goto_1d

    :cond_aa
    :goto_aa
    return v1
.end method

.method public static wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 1310
    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result p0

    return p0
.end method
