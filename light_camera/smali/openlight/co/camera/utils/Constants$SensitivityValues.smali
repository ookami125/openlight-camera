.class public final enum Lopenlight/co/camera/utils/Constants$SensitivityValues;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SensitivityValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/utils/Constants$SensitivityValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/utils/Constants$SensitivityValues;

.field public static final enum ISO_100:Lopenlight/co/camera/utils/Constants$SensitivityValues;

.field public static final enum ISO_1000:Lopenlight/co/camera/utils/Constants$SensitivityValues;

.field public static final enum ISO_125:Lopenlight/co/camera/utils/Constants$SensitivityValues;

.field public static final enum ISO_1250:Lopenlight/co/camera/utils/Constants$SensitivityValues;

.field public static final enum ISO_160:Lopenlight/co/camera/utils/Constants$SensitivityValues;

.field public static final enum ISO_1600:Lopenlight/co/camera/utils/Constants$SensitivityValues;

.field public static final enum ISO_200:Lopenlight/co/camera/utils/Constants$SensitivityValues;

.field public static final enum ISO_2400:Lopenlight/co/camera/utils/Constants$SensitivityValues;

.field public static final enum ISO_250:Lopenlight/co/camera/utils/Constants$SensitivityValues;

.field public static final enum ISO_320:Lopenlight/co/camera/utils/Constants$SensitivityValues;

.field public static final enum ISO_3200:Lopenlight/co/camera/utils/Constants$SensitivityValues;

.field public static final enum ISO_400:Lopenlight/co/camera/utils/Constants$SensitivityValues;

.field public static final enum ISO_500:Lopenlight/co/camera/utils/Constants$SensitivityValues;

.field public static final enum ISO_640:Lopenlight/co/camera/utils/Constants$SensitivityValues;

.field public static final enum ISO_800:Lopenlight/co/camera/utils/Constants$SensitivityValues;

.field private static final sVals:[Lopenlight/co/camera/utils/Constants$SensitivityValues;


# instance fields
.field private final sensitivityIndex:I

.field private final sensitivityVal:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 180
    new-instance v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;

    const-string v1, "ISO_3200"

    const/4 v2, 0x0

    const/16 v3, 0xc80

    invoke-direct {v0, v1, v2, v2, v3}, Lopenlight/co/camera/utils/Constants$SensitivityValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_3200:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    .line 181
    new-instance v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;

    const-string v1, "ISO_2400"

    const/4 v3, 0x1

    const/16 v4, 0x960

    invoke-direct {v0, v1, v3, v3, v4}, Lopenlight/co/camera/utils/Constants$SensitivityValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_2400:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    .line 182
    new-instance v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;

    const-string v1, "ISO_1600"

    const/4 v4, 0x2

    const/16 v5, 0x640

    invoke-direct {v0, v1, v4, v4, v5}, Lopenlight/co/camera/utils/Constants$SensitivityValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_1600:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    .line 183
    new-instance v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;

    const-string v1, "ISO_1250"

    const/4 v5, 0x3

    const/16 v6, 0x4e2

    invoke-direct {v0, v1, v5, v5, v6}, Lopenlight/co/camera/utils/Constants$SensitivityValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_1250:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    .line 184
    new-instance v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;

    const-string v1, "ISO_1000"

    const/4 v6, 0x4

    const/16 v7, 0x3e8

    invoke-direct {v0, v1, v6, v6, v7}, Lopenlight/co/camera/utils/Constants$SensitivityValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_1000:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    .line 185
    new-instance v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;

    const-string v1, "ISO_800"

    const/4 v7, 0x5

    const/16 v8, 0x320

    invoke-direct {v0, v1, v7, v7, v8}, Lopenlight/co/camera/utils/Constants$SensitivityValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_800:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    .line 186
    new-instance v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;

    const-string v1, "ISO_640"

    const/4 v8, 0x6

    const/16 v9, 0x280

    invoke-direct {v0, v1, v8, v8, v9}, Lopenlight/co/camera/utils/Constants$SensitivityValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_640:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    .line 187
    new-instance v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;

    const-string v1, "ISO_500"

    const/4 v9, 0x7

    const/16 v10, 0x1f4

    invoke-direct {v0, v1, v9, v9, v10}, Lopenlight/co/camera/utils/Constants$SensitivityValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_500:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    .line 188
    new-instance v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;

    const-string v1, "ISO_400"

    const/16 v10, 0x8

    const/16 v11, 0x190

    invoke-direct {v0, v1, v10, v10, v11}, Lopenlight/co/camera/utils/Constants$SensitivityValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_400:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    .line 189
    new-instance v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;

    const-string v1, "ISO_320"

    const/16 v11, 0x9

    const/16 v12, 0x140

    invoke-direct {v0, v1, v11, v11, v12}, Lopenlight/co/camera/utils/Constants$SensitivityValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_320:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    .line 190
    new-instance v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;

    const-string v1, "ISO_250"

    const/16 v12, 0xa

    const/16 v13, 0xfa

    invoke-direct {v0, v1, v12, v12, v13}, Lopenlight/co/camera/utils/Constants$SensitivityValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_250:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    .line 191
    new-instance v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;

    const-string v1, "ISO_200"

    const/16 v13, 0xb

    const/16 v14, 0xc8

    invoke-direct {v0, v1, v13, v13, v14}, Lopenlight/co/camera/utils/Constants$SensitivityValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_200:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    .line 192
    new-instance v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;

    const-string v1, "ISO_160"

    const/16 v14, 0xc

    const/16 v15, 0xa0

    invoke-direct {v0, v1, v14, v14, v15}, Lopenlight/co/camera/utils/Constants$SensitivityValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_160:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    .line 193
    new-instance v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;

    const-string v1, "ISO_125"

    const/16 v15, 0xd

    const/16 v14, 0x7d

    invoke-direct {v0, v1, v15, v15, v14}, Lopenlight/co/camera/utils/Constants$SensitivityValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_125:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    .line 194
    new-instance v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;

    const-string v1, "ISO_100"

    const/16 v14, 0xe

    const/16 v15, 0x64

    invoke-direct {v0, v1, v14, v14, v15}, Lopenlight/co/camera/utils/Constants$SensitivityValues;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_100:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    const/16 v0, 0xf

    .line 179
    new-array v0, v0, [Lopenlight/co/camera/utils/Constants$SensitivityValues;

    sget-object v1, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_3200:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_2400:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_1600:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    aput-object v1, v0, v4

    sget-object v1, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_1250:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    aput-object v1, v0, v5

    sget-object v1, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_1000:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    aput-object v1, v0, v6

    sget-object v1, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_800:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    aput-object v1, v0, v7

    sget-object v1, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_640:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    aput-object v1, v0, v8

    sget-object v1, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_500:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    aput-object v1, v0, v9

    sget-object v1, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_400:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    aput-object v1, v0, v10

    sget-object v1, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_320:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    aput-object v1, v0, v11

    sget-object v1, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_250:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    aput-object v1, v0, v12

    sget-object v1, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_200:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    aput-object v1, v0, v13

    sget-object v1, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_160:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_125:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_100:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    aput-object v1, v0, v14

    sput-object v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->$VALUES:[Lopenlight/co/camera/utils/Constants$SensitivityValues;

    .line 198
    invoke-static {}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->values()[Lopenlight/co/camera/utils/Constants$SensitivityValues;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->sVals:[Lopenlight/co/camera/utils/Constants$SensitivityValues;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 200
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 201
    iput p3, p0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->sensitivityIndex:I

    .line 202
    iput p4, p0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->sensitivityVal:I

    return-void
.end method

.method public static forIndex(I)Lopenlight/co/camera/utils/Constants$SensitivityValues;
    .locals 1

    .line 236
    sget-object v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->sVals:[Lopenlight/co/camera/utils/Constants$SensitivityValues;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static maxIndex()I
    .locals 1

    .line 225
    sget-object v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->sVals:[Lopenlight/co/camera/utils/Constants$SensitivityValues;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/utils/Constants$SensitivityValues;
    .locals 1

    .line 179
    const-class v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/utils/Constants$SensitivityValues;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/utils/Constants$SensitivityValues;
    .locals 1

    .line 179
    sget-object v0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->$VALUES:[Lopenlight/co/camera/utils/Constants$SensitivityValues;

    invoke-virtual {v0}, [Lopenlight/co/camera/utils/Constants$SensitivityValues;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/utils/Constants$SensitivityValues;

    return-object v0
.end method


# virtual methods
.method public getSensitivityIndex()I
    .locals 0

    .line 215
    iget p0, p0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->sensitivityIndex:I

    return p0
.end method

.method public getSensitivityVal()I
    .locals 0

    .line 211
    iget p0, p0, Lopenlight/co/camera/utils/Constants$SensitivityValues;->sensitivityVal:I

    return p0
.end method
