.class public final enum Lopenlight/co/camera/enums/CafMode;
.super Ljava/lang/Enum;
.source "CafMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/enums/CafMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/enums/CafMode;

.field public static final enum AFD:Lopenlight/co/camera/enums/CafMode;

.field public static final enum AFS:Lopenlight/co/camera/enums/CafMode;

.field public static final CAM_CAF_MODE_AFD:Ljava/lang/String; = "cam_caf_mode_afd"

.field public static final CAM_CAF_MODE_AFS:Ljava/lang/String; = "cam_caf_mode_afs"


# instance fields
.field private final mConfirmationResId:I

.field private final mFirstLevelResId:I

.field private final mPrefsKey:Ljava/lang/String;

.field private final mSecondLevelResId:I

.field private final mStatusBarId:I


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 12
    new-instance v8, Lopenlight/co/camera/enums/CafMode;

    const-string v1, "AFS"

    const-string v3, "cam_caf_mode_afs"

    const/4 v2, 0x0

    const v4, 0x7f080155

    const v5, 0x7f0e002a

    const v6, 0x7f080069

    const v7, 0x7f0800cc

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lopenlight/co/camera/enums/CafMode;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v8, Lopenlight/co/camera/enums/CafMode;->AFS:Lopenlight/co/camera/enums/CafMode;

    .line 17
    new-instance v0, Lopenlight/co/camera/enums/CafMode;

    const-string v10, "AFD"

    const-string v12, "cam_caf_mode_afd"

    const/4 v11, 0x1

    const v13, 0x7f080154

    const v14, 0x7f0e002b

    const v15, 0x7f080068

    const v16, 0x7f0800cb

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lopenlight/co/camera/enums/CafMode;-><init>(Ljava/lang/String;ILjava/lang/String;IIII)V

    sput-object v0, Lopenlight/co/camera/enums/CafMode;->AFD:Lopenlight/co/camera/enums/CafMode;

    const/4 v0, 0x2

    .line 10
    new-array v0, v0, [Lopenlight/co/camera/enums/CafMode;

    sget-object v1, Lopenlight/co/camera/enums/CafMode;->AFS:Lopenlight/co/camera/enums/CafMode;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/enums/CafMode;->AFD:Lopenlight/co/camera/enums/CafMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lopenlight/co/camera/enums/CafMode;->$VALUES:[Lopenlight/co/camera/enums/CafMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIII)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lopenlight/co/camera/enums/CafMode;->mPrefsKey:Ljava/lang/String;

    .line 52
    iput p4, p0, Lopenlight/co/camera/enums/CafMode;->mFirstLevelResId:I

    .line 53
    iput p5, p0, Lopenlight/co/camera/enums/CafMode;->mSecondLevelResId:I

    .line 54
    iput p6, p0, Lopenlight/co/camera/enums/CafMode;->mStatusBarId:I

    .line 55
    iput p7, p0, Lopenlight/co/camera/enums/CafMode;->mConfirmationResId:I

    return-void
.end method

.method public static getModeByPrefsKey(Ljava/lang/String;)Lopenlight/co/camera/enums/CafMode;
    .registers 6

    .line 65
    invoke-static {}, Lopenlight/co/camera/enums/CafMode;->values()[Lopenlight/co/camera/enums/CafMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 66
    iget-object v4, v3, Lopenlight/co/camera/enums/CafMode;->mPrefsKey:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    return-object v3

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 70
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching Caf mode found for key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/enums/CafMode;
    .registers 2

    .line 10
    const-class v0, Lopenlight/co/camera/enums/CafMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/enums/CafMode;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/enums/CafMode;
    .registers 1

    .line 10
    sget-object v0, Lopenlight/co/camera/enums/CafMode;->$VALUES:[Lopenlight/co/camera/enums/CafMode;

    invoke-virtual {v0}, [Lopenlight/co/camera/enums/CafMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/enums/CafMode;

    return-object v0
.end method


# virtual methods
.method public getConfirmationResId()I
    .registers 1

    .line 110
    iget p0, p0, Lopenlight/co/camera/enums/CafMode;->mConfirmationResId:I

    return p0
.end method

.method public getFirstLevelResId()I
    .registers 1

    .line 86
    iget p0, p0, Lopenlight/co/camera/enums/CafMode;->mFirstLevelResId:I

    return p0
.end method

.method public getPrefsKey()Ljava/lang/String;
    .registers 1

    .line 78
    iget-object p0, p0, Lopenlight/co/camera/enums/CafMode;->mPrefsKey:Ljava/lang/String;

    return-object p0
.end method

.method public getSecondLevelResId()I
    .registers 1

    .line 94
    iget p0, p0, Lopenlight/co/camera/enums/CafMode;->mSecondLevelResId:I

    return p0
.end method

.method public getStatusBarId()I
    .registers 1

    .line 102
    iget p0, p0, Lopenlight/co/camera/enums/CafMode;->mStatusBarId:I

    return p0
.end method
