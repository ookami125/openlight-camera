.class public enum Lopenlight/co/camera/enums/FlashMode;
.super Ljava/lang/Enum;
.source "FlashMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/enums/FlashMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/enums/FlashMode;

.field public static final enum AUTO:Lopenlight/co/camera/enums/FlashMode;

.field public static final CAM_FLASH_AUTO:Ljava/lang/String; = "flash_auto"

.field public static final CAM_FLASH_OFF:Ljava/lang/String; = "flash_off"

.field public static final CAM_FLASH_ON:Ljava/lang/String; = "flash_on"

.field public static final enum OFF:Lopenlight/co/camera/enums/FlashMode;

.field public static final enum ON:Lopenlight/co/camera/enums/FlashMode;


# instance fields
.field private final mAeFlashRequestValue:I

.field private final mBadgeResourceId:I

.field private final mConfirmationResourceId:I

.field private final mFirstLevelResourceId:I

.field private final mPrefsKey:Ljava/lang/String;

.field private final mSecondLevelResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 21
    new-instance v9, Lopenlight/co/camera/enums/FlashMode$1;

    const-string v1, "OFF"

    const-string v3, "flash_off"

    const/4 v2, 0x0

    const v4, 0x7f080094

    const v5, 0x7f0e002a

    const v6, 0x7f0800ce

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lopenlight/co/camera/enums/FlashMode$1;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    sput-object v9, Lopenlight/co/camera/enums/FlashMode;->OFF:Lopenlight/co/camera/enums/FlashMode;

    .line 32
    new-instance v0, Lopenlight/co/camera/enums/FlashMode$2;

    const-string v11, "AUTO"

    const-string v13, "flash_auto"

    const/4 v12, 0x1

    const v14, 0x7f080093

    const v15, 0x7f0e0029

    const v16, 0x7f0800cd

    const v17, 0x7f0800ee

    const/16 v18, 0x2

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lopenlight/co/camera/enums/FlashMode$2;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    sput-object v0, Lopenlight/co/camera/enums/FlashMode;->AUTO:Lopenlight/co/camera/enums/FlashMode;

    .line 44
    new-instance v0, Lopenlight/co/camera/enums/FlashMode$3;

    const-string v2, "ON"

    const-string v4, "flash_on"

    const/4 v3, 0x2

    const v5, 0x7f080092

    const v6, 0x7f0e002b

    const v7, 0x7f0800cf

    const v8, 0x7f0800ef

    const/4 v9, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lopenlight/co/camera/enums/FlashMode$3;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    sput-object v0, Lopenlight/co/camera/enums/FlashMode;->ON:Lopenlight/co/camera/enums/FlashMode;

    const/4 v0, 0x3

    .line 18
    new-array v0, v0, [Lopenlight/co/camera/enums/FlashMode;

    sget-object v1, Lopenlight/co/camera/enums/FlashMode;->OFF:Lopenlight/co/camera/enums/FlashMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/enums/FlashMode;->AUTO:Lopenlight/co/camera/enums/FlashMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/enums/FlashMode;->ON:Lopenlight/co/camera/enums/FlashMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lopenlight/co/camera/enums/FlashMode;->$VALUES:[Lopenlight/co/camera/enums/FlashMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIII)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput-object p3, p0, Lopenlight/co/camera/enums/FlashMode;->mPrefsKey:Ljava/lang/String;

    .line 77
    iput p4, p0, Lopenlight/co/camera/enums/FlashMode;->mFirstLevelResourceId:I

    .line 78
    iput p5, p0, Lopenlight/co/camera/enums/FlashMode;->mSecondLevelResourceId:I

    .line 79
    iput p6, p0, Lopenlight/co/camera/enums/FlashMode;->mConfirmationResourceId:I

    .line 80
    iput p7, p0, Lopenlight/co/camera/enums/FlashMode;->mBadgeResourceId:I

    .line 81
    iput p8, p0, Lopenlight/co/camera/enums/FlashMode;->mAeFlashRequestValue:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIILopenlight/co/camera/enums/FlashMode$1;)V
    .locals 0

    .line 18
    invoke-direct/range {p0 .. p8}, Lopenlight/co/camera/enums/FlashMode;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    return-void
.end method

.method public static getEnabledModes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lopenlight/co/camera/enums/FlashMode;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-static {}, Lopenlight/co/camera/enums/FlashMode;->values()[Lopenlight/co/camera/enums/FlashMode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 162
    invoke-virtual {v4}, Lopenlight/co/camera/enums/FlashMode;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 163
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getModeByPrefsKey(Ljava/lang/String;)Lopenlight/co/camera/enums/FlashMode;
    .locals 5

    .line 86
    invoke-static {}, Lopenlight/co/camera/enums/FlashMode;->values()[Lopenlight/co/camera/enums/FlashMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 87
    iget-object v4, v3, Lopenlight/co/camera/enums/FlashMode;->mPrefsKey:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching burst mode found for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/enums/FlashMode;
    .locals 1

    .line 18
    const-class v0, Lopenlight/co/camera/enums/FlashMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/enums/FlashMode;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/enums/FlashMode;
    .locals 1

    .line 18
    sget-object v0, Lopenlight/co/camera/enums/FlashMode;->$VALUES:[Lopenlight/co/camera/enums/FlashMode;

    invoke-virtual {v0}, [Lopenlight/co/camera/enums/FlashMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/enums/FlashMode;

    return-object v0
.end method


# virtual methods
.method public getAeFlashMode()I
    .locals 0

    .line 150
    iget p0, p0, Lopenlight/co/camera/enums/FlashMode;->mAeFlashRequestValue:I

    return p0
.end method

.method public getBadgeResourceId()I
    .locals 0

    .line 141
    iget p0, p0, Lopenlight/co/camera/enums/FlashMode;->mBadgeResourceId:I

    return p0
.end method

.method public getConfirmationResourceId()I
    .locals 0

    .line 132
    iget p0, p0, Lopenlight/co/camera/enums/FlashMode;->mConfirmationResourceId:I

    return p0
.end method

.method public getFirstLevelResId()I
    .locals 0

    .line 114
    iget p0, p0, Lopenlight/co/camera/enums/FlashMode;->mFirstLevelResourceId:I

    return p0
.end method

.method public getPrefsKey()Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Lopenlight/co/camera/enums/FlashMode;->mPrefsKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondLevelResId()I
    .locals 0

    .line 123
    iget p0, p0, Lopenlight/co/camera/enums/FlashMode;->mSecondLevelResourceId:I

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
