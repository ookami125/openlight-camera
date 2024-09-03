.class public enum Lopenlight/co/camera/enums/AwbMode;
.super Ljava/lang/Enum;
.source "AwbMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/enums/AwbMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/enums/AwbMode;

.field public static final enum AUTO:Lopenlight/co/camera/enums/AwbMode;

.field public static final CAM_AWB_AUTO:Ljava/lang/String; = "wb_auto"

.field public static final CAM_AWB_CLOUDY:Ljava/lang/String; = "wb_cloudy"

.field public static final CAM_AWB_DAY_LIGHT:Ljava/lang/String; = "wb_daylight"

.field public static final CAM_AWB_FLUORESCENT:Ljava/lang/String; = "wb_fluorescent"

.field public static final CAM_AWB_INCANDESCENT:Ljava/lang/String; = "wb_incandescent"

.field public static final enum CLOUDY:Lopenlight/co/camera/enums/AwbMode;

.field public static final enum DAYLIGHT:Lopenlight/co/camera/enums/AwbMode;

.field public static final enum FLUORESCENT:Lopenlight/co/camera/enums/AwbMode;

.field public static final enum INCANDESCENT:Lopenlight/co/camera/enums/AwbMode;


# instance fields
.field private final mBadgeResId:I

.field private final mCaptureRequestValue:I

.field private final mConfirmationResId:I

.field private final mPrefsKey:Ljava/lang/String;

.field private final mResId:I

.field private final mSelectedResId:I


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .line 15
    new-instance v8, Lopenlight/co/camera/enums/AwbMode$1;

    const-string v1, "AUTO"

    const-string v3, "wb_auto"

    const/4 v2, 0x0

    const v4, 0x7f0e0026

    const v5, 0x7f0800dd

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lopenlight/co/camera/enums/AwbMode$1;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v8, Lopenlight/co/camera/enums/AwbMode;->AUTO:Lopenlight/co/camera/enums/AwbMode;

    .line 24
    new-instance v0, Lopenlight/co/camera/enums/AwbMode;

    const-string v10, "INCANDESCENT"

    const-string v12, "wb_incandescent"

    const/4 v11, 0x1

    const v13, 0x7f0800c0

    const v14, 0x7f0800c1

    const v15, 0x7f0800e1

    const v16, 0x7f080169

    const/16 v17, 0x2

    move-object v9, v0

    invoke-direct/range {v9 .. v17}, Lopenlight/co/camera/enums/AwbMode;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    sput-object v0, Lopenlight/co/camera/enums/AwbMode;->INCANDESCENT:Lopenlight/co/camera/enums/AwbMode;

    .line 30
    new-instance v0, Lopenlight/co/camera/enums/AwbMode;

    const-string v2, "FLUORESCENT"

    const-string v4, "wb_fluorescent"

    const/4 v3, 0x2

    const v5, 0x7f0800be

    const v6, 0x7f0800bf

    const v7, 0x7f0800e0

    const v8, 0x7f080168

    const/4 v9, 0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lopenlight/co/camera/enums/AwbMode;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    sput-object v0, Lopenlight/co/camera/enums/AwbMode;->FLUORESCENT:Lopenlight/co/camera/enums/AwbMode;

    .line 36
    new-instance v0, Lopenlight/co/camera/enums/AwbMode;

    const-string v11, "DAYLIGHT"

    const-string v13, "wb_daylight"

    const/4 v12, 0x3

    const v14, 0x7f0800bc

    const v15, 0x7f0800bd

    const v16, 0x7f0800df

    const v17, 0x7f080167

    const/16 v18, 0x5

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lopenlight/co/camera/enums/AwbMode;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    sput-object v0, Lopenlight/co/camera/enums/AwbMode;->DAYLIGHT:Lopenlight/co/camera/enums/AwbMode;

    .line 42
    new-instance v0, Lopenlight/co/camera/enums/AwbMode;

    const-string v2, "CLOUDY"

    const-string v4, "wb_cloudy"

    const/4 v3, 0x4

    const v5, 0x7f0800ba

    const v6, 0x7f0800bb

    const v7, 0x7f0800de

    const v8, 0x7f080166

    const/4 v9, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lopenlight/co/camera/enums/AwbMode;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    sput-object v0, Lopenlight/co/camera/enums/AwbMode;->CLOUDY:Lopenlight/co/camera/enums/AwbMode;

    const/4 v0, 0x5

    .line 12
    new-array v0, v0, [Lopenlight/co/camera/enums/AwbMode;

    sget-object v1, Lopenlight/co/camera/enums/AwbMode;->AUTO:Lopenlight/co/camera/enums/AwbMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/enums/AwbMode;->INCANDESCENT:Lopenlight/co/camera/enums/AwbMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/enums/AwbMode;->FLUORESCENT:Lopenlight/co/camera/enums/AwbMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/enums/AwbMode;->DAYLIGHT:Lopenlight/co/camera/enums/AwbMode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/enums/AwbMode;->CLOUDY:Lopenlight/co/camera/enums/AwbMode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lopenlight/co/camera/enums/AwbMode;->$VALUES:[Lopenlight/co/camera/enums/AwbMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIII)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII)V"
        }
    .end annotation

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    .line 100
    invoke-direct/range {v0 .. v8}, Lopenlight/co/camera/enums/AwbMode;-><init>(Ljava/lang/String;ILjava/lang/String;IIIII)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIII)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIII)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput-object p3, p0, Lopenlight/co/camera/enums/AwbMode;->mPrefsKey:Ljava/lang/String;

    .line 82
    iput p4, p0, Lopenlight/co/camera/enums/AwbMode;->mResId:I

    .line 83
    iput p5, p0, Lopenlight/co/camera/enums/AwbMode;->mSelectedResId:I

    .line 84
    iput p6, p0, Lopenlight/co/camera/enums/AwbMode;->mConfirmationResId:I

    .line 85
    iput p7, p0, Lopenlight/co/camera/enums/AwbMode;->mBadgeResId:I

    .line 86
    iput p8, p0, Lopenlight/co/camera/enums/AwbMode;->mCaptureRequestValue:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIILopenlight/co/camera/enums/AwbMode$1;)V
    .registers 9

    .line 12
    invoke-direct/range {p0 .. p7}, Lopenlight/co/camera/enums/AwbMode;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    return-void
.end method

.method public static getModeByPrefsKey(Ljava/lang/String;)Lopenlight/co/camera/enums/AwbMode;
    .registers 6

    .line 112
    invoke-static {}, Lopenlight/co/camera/enums/AwbMode;->values()[Lopenlight/co/camera/enums/AwbMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 113
    iget-object v4, v3, Lopenlight/co/camera/enums/AwbMode;->mPrefsKey:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 117
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching awb mode found for prefsKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/enums/AwbMode;
    .registers 2

    .line 12
    const-class v0, Lopenlight/co/camera/enums/AwbMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/enums/AwbMode;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/enums/AwbMode;
    .registers 1

    .line 12
    sget-object v0, Lopenlight/co/camera/enums/AwbMode;->$VALUES:[Lopenlight/co/camera/enums/AwbMode;

    invoke-virtual {v0}, [Lopenlight/co/camera/enums/AwbMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/enums/AwbMode;

    return-object v0
.end method


# virtual methods
.method public getBadgeResId()I
    .registers 1

    .line 174
    iget p0, p0, Lopenlight/co/camera/enums/AwbMode;->mBadgeResId:I

    return p0
.end method

.method public getCaptureRequestModeValue()I
    .registers 1

    .line 183
    iget p0, p0, Lopenlight/co/camera/enums/AwbMode;->mCaptureRequestValue:I

    return p0
.end method

.method public getConfirmationResId()I
    .registers 1

    .line 165
    iget p0, p0, Lopenlight/co/camera/enums/AwbMode;->mConfirmationResId:I

    return p0
.end method

.method public getPrefsKey()Ljava/lang/String;
    .registers 1

    .line 137
    iget-object p0, p0, Lopenlight/co/camera/enums/AwbMode;->mPrefsKey:Ljava/lang/String;

    return-object p0
.end method

.method public getResourceId()I
    .registers 1

    .line 146
    iget p0, p0, Lopenlight/co/camera/enums/AwbMode;->mResId:I

    return p0
.end method

.method public getSelectedResId()I
    .registers 1

    .line 156
    iget p0, p0, Lopenlight/co/camera/enums/AwbMode;->mSelectedResId:I

    return p0
.end method

.method public isAuto()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
