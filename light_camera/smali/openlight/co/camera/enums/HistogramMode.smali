.class public final enum Lopenlight/co/camera/enums/HistogramMode;
.super Ljava/lang/Enum;
.source "HistogramMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/enums/HistogramMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/enums/HistogramMode;

.field public static final CAM_HISTOGRAM_OFF:Ljava/lang/String; = "histogram_off"

.field public static final CAM_HISTOGRAM_ON:Ljava/lang/String; = "histogram_on"

.field public static final enum OFF:Lopenlight/co/camera/enums/HistogramMode;

.field public static final enum ON:Lopenlight/co/camera/enums/HistogramMode;


# instance fields
.field private final mFirstLevelResId:I

.field private final mPrefsKey:Ljava/lang/String;

.field private final mSecondLevelResId:I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 12
    new-instance v6, Lopenlight/co/camera/enums/HistogramMode;

    const-string v1, "OFF"

    const-string v3, "histogram_off"

    const/4 v2, 0x0

    const v4, 0x7f08009e

    const v5, 0x7f0e002a

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lopenlight/co/camera/enums/HistogramMode;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v6, Lopenlight/co/camera/enums/HistogramMode;->OFF:Lopenlight/co/camera/enums/HistogramMode;

    .line 15
    new-instance v0, Lopenlight/co/camera/enums/HistogramMode;

    const-string v8, "ON"

    const-string v10, "histogram_on"

    const/4 v9, 0x1

    const v11, 0x7f08009f

    const v12, 0x7f0e002b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lopenlight/co/camera/enums/HistogramMode;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lopenlight/co/camera/enums/HistogramMode;->ON:Lopenlight/co/camera/enums/HistogramMode;

    const/4 v0, 0x2

    .line 10
    new-array v0, v0, [Lopenlight/co/camera/enums/HistogramMode;

    sget-object v1, Lopenlight/co/camera/enums/HistogramMode;->OFF:Lopenlight/co/camera/enums/HistogramMode;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/enums/HistogramMode;->ON:Lopenlight/co/camera/enums/HistogramMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lopenlight/co/camera/enums/HistogramMode;->$VALUES:[Lopenlight/co/camera/enums/HistogramMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lopenlight/co/camera/enums/HistogramMode;->mPrefsKey:Ljava/lang/String;

    .line 39
    iput p4, p0, Lopenlight/co/camera/enums/HistogramMode;->mFirstLevelResId:I

    .line 40
    iput p5, p0, Lopenlight/co/camera/enums/HistogramMode;->mSecondLevelResId:I

    return-void
.end method

.method public static getModeByPrefsKey(Ljava/lang/String;)Lopenlight/co/camera/enums/HistogramMode;
    .registers 6

    .line 50
    invoke-static {}, Lopenlight/co/camera/enums/HistogramMode;->values()[Lopenlight/co/camera/enums/HistogramMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 51
    iget-object v4, v3, Lopenlight/co/camera/enums/HistogramMode;->mPrefsKey:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 55
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching Histogram mode found for prefsKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/enums/HistogramMode;
    .registers 2

    .line 10
    const-class v0, Lopenlight/co/camera/enums/HistogramMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/enums/HistogramMode;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/enums/HistogramMode;
    .registers 1

    .line 10
    sget-object v0, Lopenlight/co/camera/enums/HistogramMode;->$VALUES:[Lopenlight/co/camera/enums/HistogramMode;

    invoke-virtual {v0}, [Lopenlight/co/camera/enums/HistogramMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/enums/HistogramMode;

    return-object v0
.end method


# virtual methods
.method public getFirstLevelResId()I
    .registers 1

    .line 72
    iget p0, p0, Lopenlight/co/camera/enums/HistogramMode;->mFirstLevelResId:I

    return p0
.end method

.method public getPrefsKey()Ljava/lang/String;
    .registers 1

    .line 64
    iget-object p0, p0, Lopenlight/co/camera/enums/HistogramMode;->mPrefsKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondLevelResId()I
    .registers 1

    .line 80
    iget p0, p0, Lopenlight/co/camera/enums/HistogramMode;->mSecondLevelResId:I

    return p0
.end method
