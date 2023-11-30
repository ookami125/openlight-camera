.class public final enum Lopenlight/co/camera/utils/Constants$ExposureCompValues;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExposureCompValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/utils/Constants$ExposureCompValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/utils/Constants$ExposureCompValues;

.field public static final enum EXPOSURE_COMP_00:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

.field public static final enum EXPOSURE_COMP_02:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

.field public static final enum EXPOSURE_COMP_04:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

.field public static final enum EXPOSURE_COMP_06:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

.field public static final enum EXPOSURE_COMP_08:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

.field public static final enum EXPOSURE_COMP_10:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

.field public static final enum EXPOSURE_COMP_12:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

.field public static final enum EXPOSURE_COMP_NEG_02:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

.field public static final enum EXPOSURE_COMP_NEG_04:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

.field public static final enum EXPOSURE_COMP_NEG_06:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

.field public static final enum EXPOSURE_COMP_NEG_08:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

.field public static final enum EXPOSURE_COMP_NEG_10:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

.field public static final enum EXPOSURE_COMP_NEG_12:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

.field private static final sVals:[Lopenlight/co/camera/utils/Constants$ExposureCompValues;


# instance fields
.field private final exposureCompensationVal:I

.field private final exposureIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 241
    new-instance v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    const-string v1, "EXPOSURE_COMP_12"

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_12:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    .line 242
    new-instance v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    const-string v1, "EXPOSURE_COMP_10"

    const/4 v4, 0x1

    const/16 v5, 0xa

    invoke-direct {v0, v1, v4, v4, v5}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_10:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    .line 243
    new-instance v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    const-string v1, "EXPOSURE_COMP_08"

    const/16 v6, 0x8

    const/4 v7, 0x2

    invoke-direct {v0, v1, v7, v7, v6}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_08:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    .line 244
    new-instance v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    const-string v1, "EXPOSURE_COMP_06"

    const/4 v8, 0x3

    const/4 v9, 0x6

    invoke-direct {v0, v1, v8, v8, v9}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_06:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    .line 245
    new-instance v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    const-string v1, "EXPOSURE_COMP_04"

    const/4 v10, 0x4

    invoke-direct {v0, v1, v10, v10, v10}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_04:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    .line 246
    new-instance v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    const-string v1, "EXPOSURE_COMP_02"

    const/4 v11, 0x5

    invoke-direct {v0, v1, v11, v11, v7}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_02:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    .line 247
    new-instance v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    const-string v1, "EXPOSURE_COMP_00"

    invoke-direct {v0, v1, v9, v9, v3}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_00:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    .line 248
    new-instance v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    const-string v1, "EXPOSURE_COMP_NEG_02"

    const/4 v12, 0x7

    const/4 v13, -0x2

    invoke-direct {v0, v1, v12, v12, v13}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_NEG_02:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    .line 249
    new-instance v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    const-string v1, "EXPOSURE_COMP_NEG_04"

    const/4 v13, -0x4

    invoke-direct {v0, v1, v6, v6, v13}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_NEG_04:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    .line 250
    new-instance v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    const-string v1, "EXPOSURE_COMP_NEG_06"

    const/16 v13, 0x9

    const/4 v14, -0x6

    invoke-direct {v0, v1, v13, v13, v14}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_NEG_06:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    .line 251
    new-instance v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    const-string v1, "EXPOSURE_COMP_NEG_08"

    const/4 v14, -0x8

    invoke-direct {v0, v1, v5, v5, v14}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_NEG_08:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    .line 252
    new-instance v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    const-string v1, "EXPOSURE_COMP_NEG_10"

    const/16 v14, 0xb

    const/16 v15, -0xa

    invoke-direct {v0, v1, v14, v14, v15}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_NEG_10:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    .line 253
    new-instance v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    const-string v1, "EXPOSURE_COMP_NEG_12"

    const/16 v15, -0xc

    invoke-direct {v0, v1, v2, v2, v15}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_NEG_12:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    const/16 v0, 0xd

    .line 240
    new-array v0, v0, [Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    sget-object v1, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_12:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_10:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    aput-object v1, v0, v4

    sget-object v1, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_08:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    aput-object v1, v0, v7

    sget-object v1, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_06:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    aput-object v1, v0, v8

    sget-object v1, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_04:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    aput-object v1, v0, v10

    sget-object v1, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_02:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    aput-object v1, v0, v11

    sget-object v1, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_00:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    aput-object v1, v0, v9

    sget-object v1, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_NEG_02:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    aput-object v1, v0, v12

    sget-object v1, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_NEG_04:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    aput-object v1, v0, v6

    sget-object v1, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_NEG_06:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    aput-object v1, v0, v13

    sget-object v1, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_NEG_08:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    aput-object v1, v0, v5

    sget-object v1, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_NEG_10:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    aput-object v1, v0, v14

    sget-object v1, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_NEG_12:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    aput-object v1, v0, v2

    sput-object v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->$VALUES:[Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    .line 259
    invoke-static {}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->values()[Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->sVals:[Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 261
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 262
    iput p3, p0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->exposureIndex:I

    .line 263
    iput p4, p0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->exposureCompensationVal:I

    return-void
.end method

.method public static forIndex(I)Lopenlight/co/camera/utils/Constants$ExposureCompValues;
    .locals 1

    .line 287
    sget-object v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->sVals:[Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static maxIndex()I
    .locals 1

    .line 282
    sget-object v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->sVals:[Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/utils/Constants$ExposureCompValues;
    .locals 1

    .line 240
    const-class v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/utils/Constants$ExposureCompValues;
    .locals 1

    .line 240
    sget-object v0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->$VALUES:[Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    invoke-virtual {v0}, [Lopenlight/co/camera/utils/Constants$ExposureCompValues;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    return-object v0
.end method


# virtual methods
.method public getExposureCompensationIndex()I
    .locals 0

    .line 272
    iget p0, p0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->exposureIndex:I

    return p0
.end method

.method public getExposureCompensationVal()I
    .locals 0

    .line 268
    iget p0, p0, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->exposureCompensationVal:I

    return p0
.end method
