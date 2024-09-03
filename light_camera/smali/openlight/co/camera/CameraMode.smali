.class public enum Lopenlight/co/camera/CameraMode;
.super Ljava/lang/Enum;
.source "CameraMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/CameraMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/CameraMode;

.field public static final enum AUTO:Lopenlight/co/camera/CameraMode;

.field public static final enum ISO:Lopenlight/co/camera/CameraMode;

.field public static final enum MANUAL:Lopenlight/co/camera/CameraMode;

.field public static final enum SHUTTER:Lopenlight/co/camera/CameraMode;

.field public static final enum VIDEO:Lopenlight/co/camera/CameraMode;

.field private static mEnabledModes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lopenlight/co/camera/CameraMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEvAdjustable:Z

.field private final mIsEnabled:Z

.field private final mIsoAdjustable:Z

.field private final mResId:I

.field private final mShortResId:I

.field private final mSsAdjustable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 19

    .line 14
    new-instance v9, Lopenlight/co/camera/CameraMode$1;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f0e00e1

    const v5, 0x7f0e00e1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lopenlight/co/camera/CameraMode$1;-><init>(Ljava/lang/String;IZIIZZZ)V

    sput-object v9, Lopenlight/co/camera/CameraMode;->AUTO:Lopenlight/co/camera/CameraMode;

    .line 20
    new-instance v0, Lopenlight/co/camera/CameraMode$2;

    const-string v11, "ISO"

    const/4 v12, 0x1

    const/4 v13, 0x1

    const v14, 0x7f0e00e2

    const v15, 0x7f0e00e4

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lopenlight/co/camera/CameraMode$2;-><init>(Ljava/lang/String;IZIIZZZ)V

    sput-object v0, Lopenlight/co/camera/CameraMode;->ISO:Lopenlight/co/camera/CameraMode;

    .line 26
    new-instance v0, Lopenlight/co/camera/CameraMode$3;

    const-string v2, "SHUTTER"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const v5, 0x7f0e00e6

    const v6, 0x7f0e00e5

    const/4 v9, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lopenlight/co/camera/CameraMode$3;-><init>(Ljava/lang/String;IZIIZZZ)V

    sput-object v0, Lopenlight/co/camera/CameraMode;->SHUTTER:Lopenlight/co/camera/CameraMode;

    .line 32
    new-instance v0, Lopenlight/co/camera/CameraMode$4;

    const-string v11, "MANUAL"

    const/4 v12, 0x3

    const v14, 0x7f0e00e3

    const v15, 0x7f0e00e3

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lopenlight/co/camera/CameraMode$4;-><init>(Ljava/lang/String;IZIIZZZ)V

    sput-object v0, Lopenlight/co/camera/CameraMode;->MANUAL:Lopenlight/co/camera/CameraMode;

    .line 38
    new-instance v0, Lopenlight/co/camera/CameraMode$5;

    const-string v2, "VIDEO"

    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v1

    const-string v3, "video.feature"

    const/4 v10, 0x1

    invoke-virtual {v1, v3, v10}, Lopenlight/co/lib/utils/FeatureManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v3, 0x4

    const v5, 0x7f0e00e9

    const v6, 0x7f0e00e8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lopenlight/co/camera/CameraMode$5;-><init>(Ljava/lang/String;IZIIZZZ)V

    sput-object v0, Lopenlight/co/camera/CameraMode;->VIDEO:Lopenlight/co/camera/CameraMode;

    const/4 v0, 0x5

    .line 11
    new-array v0, v0, [Lopenlight/co/camera/CameraMode;

    sget-object v1, Lopenlight/co/camera/CameraMode;->AUTO:Lopenlight/co/camera/CameraMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/CameraMode;->ISO:Lopenlight/co/camera/CameraMode;

    aput-object v1, v0, v10

    sget-object v1, Lopenlight/co/camera/CameraMode;->SHUTTER:Lopenlight/co/camera/CameraMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/CameraMode;->MANUAL:Lopenlight/co/camera/CameraMode;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/CameraMode;->VIDEO:Lopenlight/co/camera/CameraMode;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lopenlight/co/camera/CameraMode;->$VALUES:[Lopenlight/co/camera/CameraMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZIIZZZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIIZZZ)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-boolean p3, p0, Lopenlight/co/camera/CameraMode;->mIsEnabled:Z

    .line 59
    iput p4, p0, Lopenlight/co/camera/CameraMode;->mResId:I

    .line 60
    iput p5, p0, Lopenlight/co/camera/CameraMode;->mShortResId:I

    .line 61
    iput-boolean p6, p0, Lopenlight/co/camera/CameraMode;->mIsoAdjustable:Z

    .line 62
    iput-boolean p7, p0, Lopenlight/co/camera/CameraMode;->mSsAdjustable:Z

    .line 63
    iput-boolean p8, p0, Lopenlight/co/camera/CameraMode;->mEvAdjustable:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IZIIZZZLopenlight/co/camera/CameraMode$1;)V
    .registers 10

    .line 11
    invoke-direct/range {p0 .. p8}, Lopenlight/co/camera/CameraMode;-><init>(Ljava/lang/String;IZIIZZZ)V

    return-void
.end method

.method public static forIndex(I)Lopenlight/co/camera/CameraMode;
    .registers 2

    .line 184
    invoke-static {}, Lopenlight/co/camera/CameraMode;->getEnabledModes()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/CameraMode;

    return-object p0
.end method

.method public static getEnabledModes()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lopenlight/co/camera/CameraMode;",
            ">;"
        }
    .end annotation

    .line 170
    sget-object v0, Lopenlight/co/camera/CameraMode;->mEnabledModes:Ljava/util/Map;

    if-nez v0, :cond_2a

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lopenlight/co/camera/CameraMode;->mEnabledModes:Ljava/util/Map;

    .line 173
    invoke-static {}, Lopenlight/co/camera/CameraMode;->values()[Lopenlight/co/camera/CameraMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v2, v1, :cond_2a

    aget-object v4, v0, v2

    .line 174
    invoke-virtual {v4}, Lopenlight/co/camera/CameraMode;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 175
    sget-object v5, Lopenlight/co/camera/CameraMode;->mEnabledModes:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 180
    :cond_2a
    sget-object v0, Lopenlight/co/camera/CameraMode;->mEnabledModes:Ljava/util/Map;

    return-object v0
.end method

.method public static getLabels()[Ljava/lang/String;
    .registers 4

    .line 198
    invoke-static {}, Lopenlight/co/camera/CameraMode;->getEnabledModes()Ljava/util/Map;

    move-result-object v0

    .line 199
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 200
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 201
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lopenlight/co/camera/CameraMode;

    invoke-virtual {v2}, Lopenlight/co/camera/CameraMode;->getLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    goto :goto_12

    :cond_35
    return-object v1
.end method

.method public static getMaxIndex()I
    .registers 1

    .line 216
    invoke-static {}, Lopenlight/co/camera/CameraMode;->getEnabledModes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static getMode(Ljava/lang/String;)Lopenlight/co/camera/CameraMode;
    .registers 2

    if-eqz p0, :cond_c

    .line 158
    :try_start_2
    invoke-static {p0}, Lopenlight/co/camera/CameraMode;->valueOf(Ljava/lang/String;)Lopenlight/co/camera/CameraMode;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_6} :catch_7

    return-object v0

    .line 162
    :catch_7
    invoke-static {p0}, Lopenlight/co/camera/CameraMode;->getModeByLabel(Ljava/lang/String;)Lopenlight/co/camera/CameraMode;

    move-result-object p0

    return-object p0

    .line 165
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "mode string is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getModeByLabel(Ljava/lang/String;)Lopenlight/co/camera/CameraMode;
    .registers 6

    if-eqz p0, :cond_1e

    .line 134
    invoke-static {}, Lopenlight/co/camera/CameraMode;->values()[Lopenlight/co/camera/CameraMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1e

    aget-object v3, v0, v2

    .line 139
    invoke-virtual {v3}, Lopenlight/co/camera/CameraMode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1b

    return-object v3

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 144
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching mode found for label "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getShortLabels()[Ljava/lang/String;
    .registers 4

    .line 207
    invoke-static {}, Lopenlight/co/camera/CameraMode;->getEnabledModes()Ljava/util/Map;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 209
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 210
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lopenlight/co/camera/CameraMode;

    invoke-virtual {v2}, Lopenlight/co/camera/CameraMode;->getShortLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    goto :goto_12

    :cond_35
    return-object v1
.end method

.method public static indexForMode(Lopenlight/co/camera/CameraMode;)I
    .registers 4

    .line 188
    invoke-static {}, Lopenlight/co/camera/CameraMode;->getEnabledModes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 189
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lopenlight/co/camera/CameraMode;

    invoke-virtual {v2, p0}, Lopenlight/co/camera/CameraMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 190
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 193
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No matching index found for mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isPictureMode(Lopenlight/co/camera/CameraMode;)Z
    .registers 2

    .line 227
    sget-object v0, Lopenlight/co/camera/CameraMode;->AUTO:Lopenlight/co/camera/CameraMode;

    if-eq p0, v0, :cond_13

    sget-object v0, Lopenlight/co/camera/CameraMode;->ISO:Lopenlight/co/camera/CameraMode;

    if-eq p0, v0, :cond_13

    sget-object v0, Lopenlight/co/camera/CameraMode;->SHUTTER:Lopenlight/co/camera/CameraMode;

    if-eq p0, v0, :cond_13

    sget-object v0, Lopenlight/co/camera/CameraMode;->MANUAL:Lopenlight/co/camera/CameraMode;

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public static isVideoMode(Lopenlight/co/camera/CameraMode;)Z
    .registers 2

    .line 238
    sget-object v0, Lopenlight/co/camera/CameraMode;->VIDEO:Lopenlight/co/camera/CameraMode;

    if-ne p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/CameraMode;
    .registers 2

    .line 11
    const-class v0, Lopenlight/co/camera/CameraMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/CameraMode;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/CameraMode;
    .registers 1

    .line 11
    sget-object v0, Lopenlight/co/camera/CameraMode;->$VALUES:[Lopenlight/co/camera/CameraMode;

    invoke-virtual {v0}, [Lopenlight/co/camera/CameraMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/CameraMode;

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .registers 2

    .line 73
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/CameraApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lopenlight/co/camera/CameraMode;->mResId:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShortLabel()Ljava/lang/String;
    .registers 2

    .line 77
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/CameraApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lopenlight/co/camera/CameraMode;->mShortResId:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAuto()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 93
    iget-boolean p0, p0, Lopenlight/co/camera/CameraMode;->mIsEnabled:Z

    return p0
.end method

.method public isEvAdjustable()Z
    .registers 1

    .line 81
    iget-boolean p0, p0, Lopenlight/co/camera/CameraMode;->mEvAdjustable:Z

    return p0
.end method

.method public isIso()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isIsoAdjustable()Z
    .registers 1

    .line 85
    iget-boolean p0, p0, Lopenlight/co/camera/CameraMode;->mIsoAdjustable:Z

    return p0
.end method

.method public isManual()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isShutter()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isSsAdjustable()Z
    .registers 1

    .line 89
    iget-boolean p0, p0, Lopenlight/co/camera/CameraMode;->mSsAdjustable:Z

    return p0
.end method

.method public isVideo()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
