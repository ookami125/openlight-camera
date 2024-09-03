.class public final enum Lopenlight/co/camera/enums/TimerMode;
.super Ljava/lang/Enum;
.source "TimerMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/enums/TimerMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/enums/TimerMode;

.field public static final enum FIVE_SEC:Lopenlight/co/camera/enums/TimerMode;

.field public static final enum OFF:Lopenlight/co/camera/enums/TimerMode;

.field public static final enum TEN_SEC:Lopenlight/co/camera/enums/TimerMode;

.field public static final enum THREE_SEC:Lopenlight/co/camera/enums/TimerMode;

.field public static final TIMER_10S:Ljava/lang/String; = "10s"

.field public static final TIMER_20S:Ljava/lang/String; = "20s"

.field public static final TIMER_3S:Ljava/lang/String; = "3s"

.field public static final TIMER_5S:Ljava/lang/String; = "5s"

.field public static final TIMER_OFF:Ljava/lang/String; = "timer_off"

.field public static final enum TWENTY_SEC:Lopenlight/co/camera/enums/TimerMode;


# instance fields
.field private final mConfirmationResId:I

.field private final mFirstLevelResId:I

.field private final mPrefsKey:Ljava/lang/String;

.field private final mSecondLevelResId:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 12
    new-instance v7, Lopenlight/co/camera/enums/TimerMode;

    const-string v1, "OFF"

    const-string v3, "timer_off"

    const/4 v2, 0x0

    const v4, 0x7f0800b6

    const v5, 0x7f0e002a

    const v6, 0x7f0800d9

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lopenlight/co/camera/enums/TimerMode;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v7, Lopenlight/co/camera/enums/TimerMode;->OFF:Lopenlight/co/camera/enums/TimerMode;

    .line 16
    new-instance v0, Lopenlight/co/camera/enums/TimerMode;

    const-string v9, "THREE_SEC"

    const-string v11, "3s"

    const/4 v10, 0x1

    const v12, 0x7f0800b0

    const v13, 0x7f0e0033

    const v14, 0x7f0800d7

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lopenlight/co/camera/enums/TimerMode;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/enums/TimerMode;->THREE_SEC:Lopenlight/co/camera/enums/TimerMode;

    .line 20
    new-instance v0, Lopenlight/co/camera/enums/TimerMode;

    const-string v2, "FIVE_SEC"

    const-string v4, "5s"

    const/4 v3, 0x2

    const v5, 0x7f0800b3

    const v6, 0x7f0e0034

    const v7, 0x7f0800d8

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lopenlight/co/camera/enums/TimerMode;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/enums/TimerMode;->FIVE_SEC:Lopenlight/co/camera/enums/TimerMode;

    .line 24
    new-instance v0, Lopenlight/co/camera/enums/TimerMode;

    const-string v9, "TEN_SEC"

    const-string v11, "10s"

    const/4 v10, 0x3

    const v12, 0x7f0800aa

    const v13, 0x7f0e0031

    const v14, 0x7f0800d5

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lopenlight/co/camera/enums/TimerMode;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/enums/TimerMode;->TEN_SEC:Lopenlight/co/camera/enums/TimerMode;

    .line 28
    new-instance v0, Lopenlight/co/camera/enums/TimerMode;

    const-string v2, "TWENTY_SEC"

    const-string v4, "20s"

    const/4 v3, 0x4

    const v5, 0x7f0800ad

    const v6, 0x7f0e0032

    const v7, 0x7f0800d6

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lopenlight/co/camera/enums/TimerMode;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lopenlight/co/camera/enums/TimerMode;->TWENTY_SEC:Lopenlight/co/camera/enums/TimerMode;

    const/4 v0, 0x5

    .line 10
    new-array v0, v0, [Lopenlight/co/camera/enums/TimerMode;

    sget-object v1, Lopenlight/co/camera/enums/TimerMode;->OFF:Lopenlight/co/camera/enums/TimerMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/enums/TimerMode;->THREE_SEC:Lopenlight/co/camera/enums/TimerMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/enums/TimerMode;->FIVE_SEC:Lopenlight/co/camera/enums/TimerMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/enums/TimerMode;->TEN_SEC:Lopenlight/co/camera/enums/TimerMode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/enums/TimerMode;->TWENTY_SEC:Lopenlight/co/camera/enums/TimerMode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lopenlight/co/camera/enums/TimerMode;->$VALUES:[Lopenlight/co/camera/enums/TimerMode;

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

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput-object p3, p0, Lopenlight/co/camera/enums/TimerMode;->mPrefsKey:Ljava/lang/String;

    .line 58
    iput p4, p0, Lopenlight/co/camera/enums/TimerMode;->mFirstLevelResId:I

    .line 59
    iput p5, p0, Lopenlight/co/camera/enums/TimerMode;->mSecondLevelResId:I

    .line 60
    iput p6, p0, Lopenlight/co/camera/enums/TimerMode;->mConfirmationResId:I

    return-void
.end method

.method public static getModeByPrefsKey(Ljava/lang/String;)Lopenlight/co/camera/enums/TimerMode;
    .registers 6

    .line 69
    invoke-static {}, Lopenlight/co/camera/enums/TimerMode;->values()[Lopenlight/co/camera/enums/TimerMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 70
    iget-object v4, v3, Lopenlight/co/camera/enums/TimerMode;->mPrefsKey:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 74
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching timer mode found for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/enums/TimerMode;
    .registers 2

    .line 10
    const-class v0, Lopenlight/co/camera/enums/TimerMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/enums/TimerMode;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/enums/TimerMode;
    .registers 1

    .line 10
    sget-object v0, Lopenlight/co/camera/enums/TimerMode;->$VALUES:[Lopenlight/co/camera/enums/TimerMode;

    invoke-virtual {v0}, [Lopenlight/co/camera/enums/TimerMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/enums/TimerMode;

    return-object v0
.end method


# virtual methods
.method public getConfirmationResId()I
    .registers 1

    .line 107
    iget p0, p0, Lopenlight/co/camera/enums/TimerMode;->mConfirmationResId:I

    return p0
.end method

.method public getFirstLevelResId()I
    .registers 1

    .line 91
    iget p0, p0, Lopenlight/co/camera/enums/TimerMode;->mFirstLevelResId:I

    return p0
.end method

.method public getPrefsKey()Ljava/lang/String;
    .registers 1

    .line 83
    iget-object p0, p0, Lopenlight/co/camera/enums/TimerMode;->mPrefsKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondLevelResId()I
    .registers 1

    .line 99
    iget p0, p0, Lopenlight/co/camera/enums/TimerMode;->mSecondLevelResId:I

    return p0
.end method
