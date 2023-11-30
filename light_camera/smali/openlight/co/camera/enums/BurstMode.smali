.class public final enum Lopenlight/co/camera/enums/BurstMode;
.super Ljava/lang/Enum;
.source "BurstMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/enums/BurstMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/enums/BurstMode;

.field public static final BURST_MODE_3_CAPTURE:Ljava/lang/String; = "burst_3"

.field public static final BURST_MODE_6_CAPTURE:Ljava/lang/String; = "burst_6"

.field public static final BURST_MODE_9_CAPTURE:Ljava/lang/String; = "burst_9"

.field public static final BURST_MODE_OFF:Ljava/lang/String; = "burst_off"

.field public static final enum CAPTURE_SIX:Lopenlight/co/camera/enums/BurstMode;

.field public static final enum CAPTURE_THREE:Lopenlight/co/camera/enums/BurstMode;

.field public static final enum OFF:Lopenlight/co/camera/enums/BurstMode;


# instance fields
.field private final mConfirmationResId:I

.field private final mFirstLevelResId:I

.field private final mPrefsKey:Ljava/lang/String;

.field private final mSecondLevelResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 12
    new-instance v7, Lopenlight/co/camera/enums/BurstMode;

    const-string v1, "OFF"

    const-string v3, "burst_off"

    const/4 v2, 0x0

    const v4, 0x7f080074

    const v5, 0x7f0e002a

    const v6, 0x7f0800c9

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lopenlight/co/camera/enums/BurstMode;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v7, Lopenlight/co/camera/enums/BurstMode;->OFF:Lopenlight/co/camera/enums/BurstMode;

    .line 16
    new-instance v0, Lopenlight/co/camera/enums/BurstMode;

    const-string v9, "CAPTURE_THREE"

    const-string v11, "burst_3"

    const/4 v10, 0x1

    const v12, 0x7f080065

    const v13, 0x7f0e0027

    const v14, 0x7f0800c3

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lopenlight/co/camera/enums/BurstMode;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/enums/BurstMode;->CAPTURE_THREE:Lopenlight/co/camera/enums/BurstMode;

    .line 20
    new-instance v0, Lopenlight/co/camera/enums/BurstMode;

    const-string v2, "CAPTURE_SIX"

    const-string v4, "burst_6"

    const/4 v3, 0x2

    const v5, 0x7f080066

    const v6, 0x7f0e0028

    const v7, 0x7f0800c5

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lopenlight/co/camera/enums/BurstMode;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/enums/BurstMode;->CAPTURE_SIX:Lopenlight/co/camera/enums/BurstMode;

    const/4 v0, 0x3

    .line 10
    new-array v0, v0, [Lopenlight/co/camera/enums/BurstMode;

    sget-object v1, Lopenlight/co/camera/enums/BurstMode;->OFF:Lopenlight/co/camera/enums/BurstMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/enums/BurstMode;->CAPTURE_THREE:Lopenlight/co/camera/enums/BurstMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/enums/BurstMode;->CAPTURE_SIX:Lopenlight/co/camera/enums/BurstMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lopenlight/co/camera/enums/BurstMode;->$VALUES:[Lopenlight/co/camera/enums/BurstMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lopenlight/co/camera/enums/BurstMode;->mPrefsKey:Ljava/lang/String;

    .line 52
    iput p4, p0, Lopenlight/co/camera/enums/BurstMode;->mFirstLevelResId:I

    .line 53
    iput p5, p0, Lopenlight/co/camera/enums/BurstMode;->mSecondLevelResId:I

    .line 54
    iput p6, p0, Lopenlight/co/camera/enums/BurstMode;->mConfirmationResId:I

    return-void
.end method

.method public static getModeByPrefsKey(Ljava/lang/String;)Lopenlight/co/camera/enums/BurstMode;
    .locals 5

    .line 64
    invoke-static {}, Lopenlight/co/camera/enums/BurstMode;->values()[Lopenlight/co/camera/enums/BurstMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 65
    iget-object v4, v3, Lopenlight/co/camera/enums/BurstMode;->mPrefsKey:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
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

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/enums/BurstMode;
    .locals 1

    .line 10
    const-class v0, Lopenlight/co/camera/enums/BurstMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/enums/BurstMode;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/enums/BurstMode;
    .locals 1

    .line 10
    sget-object v0, Lopenlight/co/camera/enums/BurstMode;->$VALUES:[Lopenlight/co/camera/enums/BurstMode;

    invoke-virtual {v0}, [Lopenlight/co/camera/enums/BurstMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/enums/BurstMode;

    return-object v0
.end method


# virtual methods
.method public getConfirmationResId()I
    .locals 0

    .line 102
    iget p0, p0, Lopenlight/co/camera/enums/BurstMode;->mConfirmationResId:I

    return p0
.end method

.method public getFirstLevelResId()I
    .locals 0

    .line 86
    iget p0, p0, Lopenlight/co/camera/enums/BurstMode;->mFirstLevelResId:I

    return p0
.end method

.method public getPrefsKey()Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lopenlight/co/camera/enums/BurstMode;->mPrefsKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondLevelResId()I
    .locals 0

    .line 94
    iget p0, p0, Lopenlight/co/camera/enums/BurstMode;->mSecondLevelResId:I

    return p0
.end method
