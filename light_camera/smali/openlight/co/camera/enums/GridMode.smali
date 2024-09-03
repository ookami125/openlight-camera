.class public final enum Lopenlight/co/camera/enums/GridMode;
.super Ljava/lang/Enum;
.source "GridMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/enums/GridMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/enums/GridMode;

.field public static final enum GOLDEN_RATIO:Lopenlight/co/camera/enums/GridMode;

.field public static final GRID_3_3:Ljava/lang/String; = "3x3"

.field public static final GRID_CROSS:Ljava/lang/String; = "cross"

.field public static final GRID_DENSE:Ljava/lang/String; = "dense"

.field public static final GRID_GOLDEN_RATIO:Ljava/lang/String; = "golden_ratio"

.field public static final GRID_OFF:Ljava/lang/String; = "grid_off"

.field public static final enum OFF:Lopenlight/co/camera/enums/GridMode;

.field public static final enum THREE_BY_THREE:Lopenlight/co/camera/enums/GridMode;


# instance fields
.field private final mFirstLevelResId:I

.field private final mPrefsKey:Ljava/lang/String;

.field private final mSecondLevelResId:I

.field private final mSelectedResId:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    .line 12
    new-instance v6, Lopenlight/co/camera/enums/GridMode;

    const-string v1, "OFF"

    const-string v3, "grid_off"

    const/4 v2, 0x0

    const v4, 0x7f080095

    const v5, 0x7f0e002a

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lopenlight/co/camera/enums/GridMode;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v6, Lopenlight/co/camera/enums/GridMode;->OFF:Lopenlight/co/camera/enums/GridMode;

    .line 15
    new-instance v0, Lopenlight/co/camera/enums/GridMode;

    const-string v8, "THREE_BY_THREE"

    const-string v10, "3x3"

    const/4 v9, 0x1

    const v11, 0x7f080096

    const v12, 0x7f080096

    const v13, 0x7f080097

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lopenlight/co/camera/enums/GridMode;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/enums/GridMode;->THREE_BY_THREE:Lopenlight/co/camera/enums/GridMode;

    .line 19
    new-instance v0, Lopenlight/co/camera/enums/GridMode;

    const-string v2, "GOLDEN_RATIO"

    const-string v4, "golden_ratio"

    const/4 v3, 0x2

    const v5, 0x7f08009a

    const v6, 0x7f08009a

    const v7, 0x7f08009b

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lopenlight/co/camera/enums/GridMode;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/enums/GridMode;->GOLDEN_RATIO:Lopenlight/co/camera/enums/GridMode;

    const/4 v0, 0x3

    .line 10
    new-array v0, v0, [Lopenlight/co/camera/enums/GridMode;

    sget-object v1, Lopenlight/co/camera/enums/GridMode;->OFF:Lopenlight/co/camera/enums/GridMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/enums/GridMode;->THREE_BY_THREE:Lopenlight/co/camera/enums/GridMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/enums/GridMode;->GOLDEN_RATIO:Lopenlight/co/camera/enums/GridMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lopenlight/co/camera/enums/GridMode;->$VALUES:[Lopenlight/co/camera/enums/GridMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 62
    invoke-direct/range {v0 .. v6}, Lopenlight/co/camera/enums/GridMode;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput-object p3, p0, Lopenlight/co/camera/enums/GridMode;->mPrefsKey:Ljava/lang/String;

    .line 50
    iput p4, p0, Lopenlight/co/camera/enums/GridMode;->mFirstLevelResId:I

    .line 51
    iput p5, p0, Lopenlight/co/camera/enums/GridMode;->mSecondLevelResId:I

    .line 52
    iput p6, p0, Lopenlight/co/camera/enums/GridMode;->mSelectedResId:I

    return-void
.end method

.method public static getModeByPrefsKey(Ljava/lang/String;)Lopenlight/co/camera/enums/GridMode;
    .registers 6

    .line 72
    invoke-static {}, Lopenlight/co/camera/enums/GridMode;->values()[Lopenlight/co/camera/enums/GridMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 73
    iget-object v4, v3, Lopenlight/co/camera/enums/GridMode;->mPrefsKey:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 77
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching Grid mode found for prefsKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/enums/GridMode;
    .registers 2

    .line 10
    const-class v0, Lopenlight/co/camera/enums/GridMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/enums/GridMode;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/enums/GridMode;
    .registers 1

    .line 10
    sget-object v0, Lopenlight/co/camera/enums/GridMode;->$VALUES:[Lopenlight/co/camera/enums/GridMode;

    invoke-virtual {v0}, [Lopenlight/co/camera/enums/GridMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/enums/GridMode;

    return-object v0
.end method


# virtual methods
.method public getFirstLevelResId()I
    .registers 1

    .line 94
    iget p0, p0, Lopenlight/co/camera/enums/GridMode;->mFirstLevelResId:I

    return p0
.end method

.method public getPrefsKey()Ljava/lang/String;
    .registers 1

    .line 86
    iget-object p0, p0, Lopenlight/co/camera/enums/GridMode;->mPrefsKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondLevelResId()I
    .registers 1

    .line 102
    iget p0, p0, Lopenlight/co/camera/enums/GridMode;->mSecondLevelResId:I

    return p0
.end method

.method public getSelectedResId()I
    .registers 1

    .line 110
    iget p0, p0, Lopenlight/co/camera/enums/GridMode;->mSelectedResId:I

    return p0
.end method
