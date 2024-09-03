.class public Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;
.super Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;
.source "ImageAncillaryToolbar.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-class v0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/view/ViewGroup;Ljava/lang/String;Z)V
    .registers 6

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V

    .line 44
    iput-object p4, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    .line 45
    iput-boolean p5, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mFromFirstLevel:Z

    .line 46
    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->initView()V

    .line 47
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mBaseControlView:Landroid/view/View;

    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getBurstMode()Lopenlight/co/camera/models/AncillaryModel;
    .registers 3

    .line 140
    new-instance v0, Lopenlight/co/camera/models/AncillaryModel$Builder;

    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "burst_mode"

    .line 141
    invoke-interface {p0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 140
    invoke-static {p0}, Lopenlight/co/camera/enums/BurstMode;->getModeByPrefsKey(Ljava/lang/String;)Lopenlight/co/camera/enums/BurstMode;

    move-result-object p0

    .line 141
    invoke-virtual {p0}, Lopenlight/co/camera/enums/BurstMode;->getFirstLevelResId()I

    move-result p0

    const-string v1, "burst_mode"

    invoke-direct {v0, p0, v1}, Lopenlight/co/camera/models/AncillaryModel$Builder;-><init>(ILjava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Lopenlight/co/camera/models/AncillaryModel$Builder;->build()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    return-object p0
.end method

.method private getBurstModeOptions()[Lopenlight/co/camera/models/AncillaryModel;
    .registers 11

    .line 247
    invoke-static {}, Lopenlight/co/camera/enums/BurstMode;->values()[Lopenlight/co/camera/enums/BurstMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lopenlight/co/camera/models/AncillaryModel;

    .line 248
    iget-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    invoke-interface {v1, p0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 250
    invoke-static {}, Lopenlight/co/camera/enums/BurstMode;->values()[Lopenlight/co/camera/enums/BurstMode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_16
    if-ge v3, v2, :cond_43

    aget-object v5, v1, v3

    .line 252
    invoke-virtual {v5}, Lopenlight/co/camera/enums/BurstMode;->getPrefsKey()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    .line 253
    new-instance v8, Lopenlight/co/camera/models/AncillaryModel$Builder;

    invoke-virtual {v5}, Lopenlight/co/camera/enums/BurstMode;->getSecondLevelResId()I

    move-result v9

    invoke-direct {v8, v9, v6}, Lopenlight/co/camera/models/AncillaryModel$Builder;-><init>(ILjava/lang/String;)V

    .line 254
    invoke-virtual {v5}, Lopenlight/co/camera/enums/BurstMode;->getConfirmationResId()I

    move-result v5

    invoke-virtual {v8, v5}, Lopenlight/co/camera/models/AncillaryModel$Builder;->confirmationResId(I)Lopenlight/co/camera/models/AncillaryModel$Builder;

    move-result-object v5

    .line 255
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lopenlight/co/camera/models/AncillaryModel$Builder;->isSelected(Z)Lopenlight/co/camera/models/AncillaryModel$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lopenlight/co/camera/models/AncillaryModel$Builder;->build()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_16

    :cond_43
    return-object v0
.end method

.method private getFlash()Lopenlight/co/camera/models/AncillaryModel;
    .registers 3

    .line 159
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mCameraManager:Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/CameraMode;->isManual()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "flash_setting_manual"

    goto :goto_11

    :cond_f
    const-string v0, "flash_setting"

    .line 163
    :goto_11
    invoke-static {}, Lopenlight/co/TheaterMode/TheaterModeSettings;->get()Lopenlight/co/TheaterMode/TheaterModeSettings;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/TheaterMode/TheaterModeSettings;->isFlashLightDisabled()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string p0, "flash_off"

    goto :goto_24

    :cond_1e
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    .line 164
    invoke-interface {p0, v0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 165
    :goto_24
    invoke-static {p0}, Lopenlight/co/camera/enums/FlashMode;->getModeByPrefsKey(Ljava/lang/String;)Lopenlight/co/camera/enums/FlashMode;

    move-result-object p0

    .line 167
    new-instance v1, Lopenlight/co/camera/models/AncillaryModel$Builder;

    invoke-virtual {p0}, Lopenlight/co/camera/enums/FlashMode;->getFirstLevelResId()I

    move-result p0

    invoke-direct {v1, p0, v0}, Lopenlight/co/camera/models/AncillaryModel$Builder;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1}, Lopenlight/co/camera/models/AncillaryModel$Builder;->build()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    return-object p0
.end method

.method private getFlashOptions()[Lopenlight/co/camera/models/AncillaryModel;
    .registers 9

    .line 285
    invoke-static {}, Lopenlight/co/camera/enums/FlashMode;->getEnabledModes()Ljava/util/List;

    move-result-object v0

    .line 286
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lopenlight/co/camera/models/AncillaryModel;

    .line 287
    iget-object v2, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    invoke-interface {v2, p0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 289
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lopenlight/co/camera/enums/FlashMode;

    .line 290
    invoke-virtual {v3}, Lopenlight/co/camera/enums/FlashMode;->getPrefsKey()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    .line 291
    new-instance v6, Lopenlight/co/camera/models/AncillaryModel$Builder;

    invoke-virtual {v3}, Lopenlight/co/camera/enums/FlashMode;->getSecondLevelResId()I

    move-result v7

    invoke-direct {v6, v7, v4}, Lopenlight/co/camera/models/AncillaryModel$Builder;-><init>(ILjava/lang/String;)V

    .line 292
    invoke-virtual {v3}, Lopenlight/co/camera/enums/FlashMode;->getConfirmationResourceId()I

    move-result v3

    invoke-virtual {v6, v3}, Lopenlight/co/camera/models/AncillaryModel$Builder;->confirmationResId(I)Lopenlight/co/camera/models/AncillaryModel$Builder;

    move-result-object v3

    .line 293
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lopenlight/co/camera/models/AncillaryModel$Builder;->isSelected(Z)Lopenlight/co/camera/models/AncillaryModel$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lopenlight/co/camera/models/AncillaryModel$Builder;->build()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v3

    aput-object v3, v1, v2

    move v2, v5

    goto :goto_17

    :cond_4a
    return-object v1
.end method

.method private getGridOptions()[Lopenlight/co/camera/models/AncillaryModel;
    .registers 11

    .line 303
    invoke-static {}, Lopenlight/co/camera/enums/GridMode;->values()[Lopenlight/co/camera/enums/GridMode;

    move-result-object v0

    .line 304
    array-length v1, v0

    new-array v1, v1, [Lopenlight/co/camera/models/AncillaryModel;

    .line 305
    iget-object v2, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    invoke-interface {v2, p0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 307
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    if-ge v3, v2, :cond_3f

    aget-object v5, v0, v3

    .line 308
    invoke-virtual {v5}, Lopenlight/co/camera/enums/GridMode;->getPrefsKey()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    .line 309
    new-instance v8, Lopenlight/co/camera/models/AncillaryModel$Builder;

    invoke-virtual {v5}, Lopenlight/co/camera/enums/GridMode;->getSecondLevelResId()I

    move-result v9

    invoke-direct {v8, v9, v6}, Lopenlight/co/camera/models/AncillaryModel$Builder;-><init>(ILjava/lang/String;)V

    .line 310
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v8, v6}, Lopenlight/co/camera/models/AncillaryModel$Builder;->isSelected(Z)Lopenlight/co/camera/models/AncillaryModel$Builder;

    move-result-object v6

    .line 311
    invoke-virtual {v5}, Lopenlight/co/camera/enums/GridMode;->getSelectedResId()I

    move-result v5

    invoke-virtual {v6, v5}, Lopenlight/co/camera/models/AncillaryModel$Builder;->selectedResId(I)Lopenlight/co/camera/models/AncillaryModel$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lopenlight/co/camera/models/AncillaryModel$Builder;->build()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_12

    :cond_3f
    return-object v1
.end method

.method private getHdr()Lopenlight/co/camera/models/AncillaryModel;
    .registers 3

    .line 212
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "hdr_setting"

    invoke-interface {p0, v0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "hdr_off"

    .line 214
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const p0, 0x7f08009c

    goto :goto_21

    :cond_14
    const-string v0, "hdr_on"

    .line 216
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    const p0, 0x7f08009d

    goto :goto_21

    :cond_20
    const/4 p0, -0x1

    .line 219
    :goto_21
    new-instance v0, Lopenlight/co/camera/models/AncillaryModel$Builder;

    const-string v1, "hdr_setting"

    invoke-direct {v0, p0, v1}, Lopenlight/co/camera/models/AncillaryModel$Builder;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lopenlight/co/camera/models/AncillaryModel$Builder;->build()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    return-object p0
.end method

.method private getHistogram()Lopenlight/co/camera/models/AncillaryModel;
    .registers 3

    .line 175
    new-instance v0, Lopenlight/co/camera/models/AncillaryModel$Builder;

    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "histogram_setting"

    .line 176
    invoke-interface {p0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 175
    invoke-static {p0}, Lopenlight/co/camera/enums/HistogramMode;->getModeByPrefsKey(Ljava/lang/String;)Lopenlight/co/camera/enums/HistogramMode;

    move-result-object p0

    .line 176
    invoke-virtual {p0}, Lopenlight/co/camera/enums/HistogramMode;->getFirstLevelResId()I

    move-result p0

    const-string v1, "histogram_setting"

    invoke-direct {v0, p0, v1}, Lopenlight/co/camera/models/AncillaryModel$Builder;-><init>(ILjava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Lopenlight/co/camera/models/AncillaryModel$Builder;->build()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    return-object p0
.end method

.method private getHistogramOptions()[Lopenlight/co/camera/models/AncillaryModel;
    .registers 11

    .line 322
    invoke-static {}, Lopenlight/co/camera/enums/HistogramMode;->values()[Lopenlight/co/camera/enums/HistogramMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lopenlight/co/camera/models/AncillaryModel;

    .line 323
    iget-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    invoke-interface {v1, p0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 325
    invoke-static {}, Lopenlight/co/camera/enums/HistogramMode;->values()[Lopenlight/co/camera/enums/HistogramMode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_16
    if-ge v3, v2, :cond_43

    aget-object v5, v1, v3

    .line 327
    invoke-virtual {v5}, Lopenlight/co/camera/enums/HistogramMode;->getPrefsKey()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    .line 328
    new-instance v8, Lopenlight/co/camera/models/AncillaryModel$Builder;

    invoke-virtual {v5}, Lopenlight/co/camera/enums/HistogramMode;->getSecondLevelResId()I

    move-result v9

    invoke-direct {v8, v9, v6}, Lopenlight/co/camera/models/AncillaryModel$Builder;-><init>(ILjava/lang/String;)V

    .line 329
    invoke-virtual {v5}, Lopenlight/co/camera/enums/HistogramMode;->getSecondLevelResId()I

    move-result v5

    invoke-virtual {v8, v5}, Lopenlight/co/camera/models/AncillaryModel$Builder;->confirmationResId(I)Lopenlight/co/camera/models/AncillaryModel$Builder;

    move-result-object v5

    .line 330
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lopenlight/co/camera/models/AncillaryModel$Builder;->isSelected(Z)Lopenlight/co/camera/models/AncillaryModel$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lopenlight/co/camera/models/AncillaryModel$Builder;->build()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_16

    :cond_43
    return-object v0
.end method

.method private getLevel()Lopenlight/co/camera/models/AncillaryModel;
    .registers 3

    .line 197
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "level_setting"

    invoke-interface {p0, v0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "level_on"

    .line 199
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const p0, 0x7f0800a3

    goto :goto_21

    :cond_14
    const-string v0, "level_off"

    .line 201
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    const p0, 0x7f0800a2

    goto :goto_21

    :cond_20
    const/4 p0, -0x1

    .line 204
    :goto_21
    new-instance v0, Lopenlight/co/camera/models/AncillaryModel$Builder;

    const-string v1, "level_setting"

    invoke-direct {v0, p0, v1}, Lopenlight/co/camera/models/AncillaryModel$Builder;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lopenlight/co/camera/models/AncillaryModel$Builder;->build()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    return-object p0
.end method

.method private getSecondLevelListItems()[Lopenlight/co/camera/models/AncillaryModel;
    .registers 3

    .line 361
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_8e

    goto :goto_65

    :sswitch_a
    const-string v1, "white_balance_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    const/4 v0, 0x1

    goto :goto_66

    :sswitch_14
    const-string v1, "flash_setting_manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    const/4 v0, 0x4

    goto :goto_66

    :sswitch_1e
    const-string v1, "cam_manual_mode_caf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    const/4 v0, 0x6

    goto :goto_66

    :sswitch_28
    const-string v1, "burst_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    const/4 v0, 0x2

    goto :goto_66

    :sswitch_32
    const-string v1, "timer_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    const/4 v0, 0x0

    goto :goto_66

    :sswitch_3c
    const-string v1, "cam_auto_mode_caf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    const/4 v0, 0x5

    goto :goto_66

    :sswitch_46
    const-string v1, "flash_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    const/4 v0, 0x3

    goto :goto_66

    :sswitch_50
    const-string v1, "grid_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    const/16 v0, 0x8

    goto :goto_66

    :sswitch_5b
    const-string v1, "histogram_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    const/4 v0, 0x7

    goto :goto_66

    :cond_65
    :goto_65
    const/4 v0, -0x1

    :goto_66
    packed-switch v0, :pswitch_data_b4

    const/4 p0, 0x0

    return-object p0

    .line 377
    :pswitch_6b
    invoke-direct {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getGridOptions()[Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    return-object p0

    .line 375
    :pswitch_70
    invoke-direct {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getHistogramOptions()[Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    return-object p0

    .line 373
    :pswitch_75
    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getCafOptions()[Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    return-object p0

    .line 370
    :pswitch_7a
    invoke-direct {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getFlashOptions()[Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    return-object p0

    .line 367
    :pswitch_7f
    invoke-direct {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getBurstModeOptions()[Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    return-object p0

    .line 365
    :pswitch_84
    invoke-direct {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getWhiteBalanceOptions()[Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    return-object p0

    .line 363
    :pswitch_89
    invoke-direct {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getTimerOptions()[Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    return-object p0

    :sswitch_data_8e
    .sparse-switch
        -0x7b12ed8b -> :sswitch_5b
        -0x79e565a9 -> :sswitch_50
        -0x52784aff -> :sswitch_46
        -0x1a875cb4 -> :sswitch_3c
        0xafda756 -> :sswitch_32
        0x1876bd62 -> :sswitch_28
        0x43af5f15 -> :sswitch_1e
        0x5a2ebcc4 -> :sswitch_14
        0x633437d7 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_89
        :pswitch_84
        :pswitch_7f
        :pswitch_7a
        :pswitch_7a
        :pswitch_75
        :pswitch_75
        :pswitch_70
        :pswitch_6b
    .end packed-switch
.end method

.method private getTimer()Lopenlight/co/camera/models/AncillaryModel;
    .registers 3

    .line 150
    new-instance v0, Lopenlight/co/camera/models/AncillaryModel$Builder;

    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "timer_setting"

    .line 151
    invoke-interface {p0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 150
    invoke-static {p0}, Lopenlight/co/camera/enums/TimerMode;->getModeByPrefsKey(Ljava/lang/String;)Lopenlight/co/camera/enums/TimerMode;

    move-result-object p0

    .line 151
    invoke-virtual {p0}, Lopenlight/co/camera/enums/TimerMode;->getFirstLevelResId()I

    move-result p0

    const-string v1, "timer_setting"

    invoke-direct {v0, p0, v1}, Lopenlight/co/camera/models/AncillaryModel$Builder;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lopenlight/co/camera/models/AncillaryModel$Builder;->build()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    return-object p0
.end method

.method private getTimerOptions()[Lopenlight/co/camera/models/AncillaryModel;
    .registers 11

    .line 228
    invoke-static {}, Lopenlight/co/camera/enums/TimerMode;->values()[Lopenlight/co/camera/enums/TimerMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lopenlight/co/camera/models/AncillaryModel;

    .line 229
    iget-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    invoke-interface {v1, p0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 231
    invoke-static {}, Lopenlight/co/camera/enums/TimerMode;->values()[Lopenlight/co/camera/enums/TimerMode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_16
    if-ge v3, v2, :cond_43

    aget-object v5, v1, v3

    .line 233
    invoke-virtual {v5}, Lopenlight/co/camera/enums/TimerMode;->getPrefsKey()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    .line 234
    new-instance v8, Lopenlight/co/camera/models/AncillaryModel$Builder;

    invoke-virtual {v5}, Lopenlight/co/camera/enums/TimerMode;->getSecondLevelResId()I

    move-result v9

    invoke-direct {v8, v9, v6}, Lopenlight/co/camera/models/AncillaryModel$Builder;-><init>(ILjava/lang/String;)V

    .line 235
    invoke-virtual {v5}, Lopenlight/co/camera/enums/TimerMode;->getConfirmationResId()I

    move-result v5

    invoke-virtual {v8, v5}, Lopenlight/co/camera/models/AncillaryModel$Builder;->confirmationResId(I)Lopenlight/co/camera/models/AncillaryModel$Builder;

    move-result-object v5

    .line 236
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lopenlight/co/camera/models/AncillaryModel$Builder;->isSelected(Z)Lopenlight/co/camera/models/AncillaryModel$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lopenlight/co/camera/models/AncillaryModel$Builder;->build()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_16

    :cond_43
    return-object v0
.end method

.method private getWhiteBalance()Lopenlight/co/camera/models/AncillaryModel;
    .registers 3

    .line 186
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "white_balance_setting"

    invoke-interface {p0, v0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lopenlight/co/camera/enums/AwbMode;->getModeByPrefsKey(Ljava/lang/String;)Lopenlight/co/camera/enums/AwbMode;

    move-result-object p0

    .line 188
    new-instance v0, Lopenlight/co/camera/models/AncillaryModel$Builder;

    invoke-virtual {p0}, Lopenlight/co/camera/enums/AwbMode;->getResourceId()I

    move-result p0

    const-string v1, "white_balance_setting"

    invoke-direct {v0, p0, v1}, Lopenlight/co/camera/models/AncillaryModel$Builder;-><init>(ILjava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Lopenlight/co/camera/models/AncillaryModel$Builder;->build()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    return-object p0
.end method

.method private getWhiteBalanceOptions()[Lopenlight/co/camera/models/AncillaryModel;
    .registers 12

    .line 266
    invoke-static {}, Lopenlight/co/camera/enums/AwbMode;->values()[Lopenlight/co/camera/enums/AwbMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lopenlight/co/camera/models/AncillaryModel;

    .line 267
    iget-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    invoke-interface {v1, p0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 269
    invoke-static {}, Lopenlight/co/camera/enums/AwbMode;->values()[Lopenlight/co/camera/enums/AwbMode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_16
    if-ge v3, v2, :cond_4f

    aget-object v5, v1, v3

    .line 271
    invoke-virtual {v5}, Lopenlight/co/camera/enums/AwbMode;->getPrefsKey()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    .line 272
    new-instance v8, Lopenlight/co/camera/models/AncillaryModel$Builder;

    invoke-virtual {v5}, Lopenlight/co/camera/enums/AwbMode;->getResourceId()I

    move-result v9

    invoke-virtual {v5}, Lopenlight/co/camera/enums/AwbMode;->getPrefsKey()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lopenlight/co/camera/models/AncillaryModel$Builder;-><init>(ILjava/lang/String;)V

    .line 273
    invoke-virtual {v5}, Lopenlight/co/camera/enums/AwbMode;->getConfirmationResId()I

    move-result v9

    invoke-virtual {v8, v9}, Lopenlight/co/camera/models/AncillaryModel$Builder;->confirmationResId(I)Lopenlight/co/camera/models/AncillaryModel$Builder;

    move-result-object v8

    .line 274
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v8, v6}, Lopenlight/co/camera/models/AncillaryModel$Builder;->isSelected(Z)Lopenlight/co/camera/models/AncillaryModel$Builder;

    move-result-object v6

    .line 275
    invoke-virtual {v5}, Lopenlight/co/camera/enums/AwbMode;->getSelectedResId()I

    move-result v5

    invoke-virtual {v6, v5}, Lopenlight/co/camera/models/AncillaryModel$Builder;->selectedResId(I)Lopenlight/co/camera/models/AncillaryModel$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lopenlight/co/camera/models/AncillaryModel$Builder;->build()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_16

    :cond_4f
    return-object v0
.end method

.method private onClickAncillaryItem(Landroid/view/View;)V
    .registers 9

    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;

    .line 392
    iget-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mChoiceHintView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v0, :cond_187

    .line 394
    invoke-virtual {v0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    .line 395
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v4, :sswitch_data_188

    goto/16 :goto_138

    :sswitch_1f
    const-string v2, "white_balance_setting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    const/4 v2, 0x3

    goto/16 :goto_139

    :sswitch_2a
    const-string v2, "flash_on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    const/16 v2, 0xe

    goto/16 :goto_139

    :sswitch_36
    const-string v2, "flash_setting_manual"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    move v2, v5

    goto/16 :goto_139

    :sswitch_41
    const-string v2, "cam_manual_mode_caf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    const/4 v2, 0x6

    goto/16 :goto_139

    :sswitch_4c
    const-string v4, "wb_auto"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_138

    goto/16 :goto_139

    :sswitch_56
    const-string v2, "wb_daylight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    const/16 v2, 0xb

    goto/16 :goto_139

    :sswitch_62
    const-string v2, "burst_mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    const/4 v2, 0x4

    goto/16 :goto_139

    :sswitch_6d
    const-string v2, "burst_9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    const/16 v2, 0x18

    goto/16 :goto_139

    :sswitch_79
    const-string v2, "burst_6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    const/16 v2, 0x17

    goto/16 :goto_139

    :sswitch_85
    const-string v2, "burst_3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    const/16 v2, 0x16

    goto/16 :goto_139

    :sswitch_91
    const-string v2, "timer_setting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    const/4 v2, 0x2

    goto/16 :goto_139

    :sswitch_9c
    const-string v2, "timer_off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    const/16 v2, 0x10

    goto/16 :goto_139

    :sswitch_a8
    const-string v2, "wb_cloudy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    const/16 v2, 0x9

    goto/16 :goto_139

    :sswitch_b4
    const-string v2, "20s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    const/16 v2, 0x14

    goto/16 :goto_139

    :sswitch_c0
    const-string v2, "10s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    const/16 v2, 0x13

    goto/16 :goto_139

    :sswitch_cc
    const-string v2, "5s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    const/16 v2, 0x12

    goto/16 :goto_139

    :sswitch_d8
    const-string v2, "3s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    const/16 v2, 0x11

    goto :goto_139

    :sswitch_e3
    const-string v2, "cam_auto_mode_caf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    const/4 v2, 0x5

    goto :goto_139

    :sswitch_ed
    const-string v2, "flash_off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    const/16 v2, 0xf

    goto :goto_139

    :sswitch_f8
    const-string v2, "flash_auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    const/16 v2, 0xd

    goto :goto_139

    :sswitch_103
    const-string v2, "flash_setting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    move v2, v6

    goto :goto_139

    :sswitch_10d
    const-string v2, "wb_fluorescent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    const/16 v2, 0xa

    goto :goto_139

    :sswitch_118
    const-string v2, "burst_off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    const/16 v2, 0x15

    goto :goto_139

    :sswitch_123
    const-string v2, "wb_incandescent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    const/16 v2, 0xc

    goto :goto_139

    :sswitch_12e
    const-string v2, "grid_setting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    const/4 v2, 0x7

    goto :goto_139

    :cond_138
    :goto_138
    move v2, v3

    :goto_139
    packed-switch v2, :pswitch_data_1ee

    .line 441
    invoke-super {p0, p1}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->onClick(Landroid/view/View;)V

    goto :goto_170

    .line 426
    :pswitch_140
    invoke-static {v1}, Lopenlight/co/camera/enums/FlashMode;->getModeByPrefsKey(Ljava/lang/String;)Lopenlight/co/camera/enums/FlashMode;

    move-result-object v2

    invoke-direct {p0, v2}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->updateAeMode(Lopenlight/co/camera/enums/FlashMode;)V

    goto :goto_14f

    .line 418
    :pswitch_148
    invoke-static {v1}, Lopenlight/co/camera/enums/AwbMode;->getModeByPrefsKey(Ljava/lang/String;)Lopenlight/co/camera/enums/AwbMode;

    move-result-object v2

    invoke-direct {p0, v2}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->updateAwbItem(Lopenlight/co/camera/enums/AwbMode;)V

    :goto_14f
    :pswitch_14f
    move v6, v5

    goto :goto_170

    .line 398
    :pswitch_151
    invoke-static {}, Lopenlight/co/TheaterMode/TheaterModeSettings;->get()Lopenlight/co/TheaterMode/TheaterModeSettings;

    move-result-object v2

    invoke-virtual {v2}, Lopenlight/co/TheaterMode/TheaterModeSettings;->isFlashLightDisabled()Z

    move-result v2

    if-eqz v2, :cond_162

    const p1, 0x7f0e0056

    .line 399
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->showAndAnimateMessageView(I)V

    return-void

    .line 408
    :cond_162
    :pswitch_162
    iput-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    .line 409
    invoke-direct {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getSecondLevelListItems()[Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->updateListAdapter([Lopenlight/co/camera/models/AncillaryModel;)V

    .line 410
    iget-object v2, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_170
    if-eqz v6, :cond_187

    .line 446
    iget-object v2, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mAdapter:Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;

    invoke-virtual {v0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->getItemPosition()I

    move-result v0

    invoke-virtual {v2, v0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->updateSelectedItemAtPosition(I)V

    .line 447
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    iget-object v2, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_187
    return-void

    :sswitch_data_188
    .sparse-switch
        -0x79e565a9 -> :sswitch_12e
        -0x7977953d -> :sswitch_123
        -0x6a90ca30 -> :sswitch_118
        -0x676b570c -> :sswitch_10d
        -0x52784aff -> :sswitch_103
        -0x473ee362 -> :sswitch_f8
        -0x445cab60 -> :sswitch_ed
        -0x1a875cb4 -> :sswitch_e3
        0x6a0 -> :sswitch_d8
        0x6de -> :sswitch_cc
        0xbe34 -> :sswitch_c0
        0xc1f5 -> :sswitch_b4
        0x88acd8 -> :sswitch_a8
        0x331b975 -> :sswitch_9c
        0xafda756 -> :sswitch_91
        0xe462cd4 -> :sswitch_85
        0xe462cd7 -> :sswitch_79
        0xe462cda -> :sswitch_6d
        0x1876bd62 -> :sswitch_62
        0x33a129ee -> :sswitch_56
        0x43a90ea3 -> :sswitch_4c
        0x43af5f15 -> :sswitch_41
        0x5a2ebcc4 -> :sswitch_36
        0x60e43c8e -> :sswitch_2a
        0x633437d7 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_1ee
    .packed-switch 0x0
        :pswitch_151
        :pswitch_151
        :pswitch_162
        :pswitch_162
        :pswitch_162
        :pswitch_162
        :pswitch_162
        :pswitch_162
        :pswitch_148
        :pswitch_148
        :pswitch_148
        :pswitch_148
        :pswitch_148
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_14f
        :pswitch_14f
        :pswitch_14f
        :pswitch_14f
        :pswitch_14f
        :pswitch_14f
        :pswitch_14f
        :pswitch_14f
        :pswitch_14f
    .end packed-switch
.end method

.method private updateAeMode(Lopenlight/co/camera/enums/FlashMode;)V
    .registers 2

    .line 351
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mCameraManager:Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/CameraManager;->updateAeMode(Lopenlight/co/camera/enums/FlashMode;)V

    return-void
.end method

.method private updateAwbItem(Lopenlight/co/camera/enums/AwbMode;)V
    .registers 2

    .line 341
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mCameraManager:Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/CameraManager;->updateAwb(Lopenlight/co/camera/enums/AwbMode;)V

    return-void
.end method


# virtual methods
.method protected getListItems()[Lopenlight/co/camera/models/AncillaryModel;
    .registers 11

    .line 89
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_83

    .line 90
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mSecondLevelToolBarCloseView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mToolbarCloseView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-static {}, Lopenlight/co/camera/CameraApp;->isLight()Z

    move-result v0

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x7

    if-eqz v0, :cond_50

    .line 95
    new-array v0, v9, [Lopenlight/co/camera/models/AncillaryModel;

    invoke-direct {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getTimer()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getBurstMode()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-direct {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getWhiteBalance()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v1

    aput-object v1, v0, v7

    .line 96
    invoke-direct {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getFlash()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getGrid()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getCaf()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getSettings()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    aput-object p0, v0, v3

    return-object v0

    .line 98
    :cond_50
    new-array v0, v2, [Lopenlight/co/camera/models/AncillaryModel;

    invoke-direct {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getTimer()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getBurstMode()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-direct {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getWhiteBalance()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v1

    aput-object v1, v0, v7

    .line 99
    invoke-direct {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getFlash()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getGrid()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-direct {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getHistogram()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getCaf()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getSettings()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    aput-object p0, v0, v9

    return-object v0

    .line 102
    :cond_83
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mToolbarCloseView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mSecondLevelToolBarCloseView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->setSecondLevelTitle()V

    .line 105
    invoke-direct {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getSecondLevelListItems()[Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    return-object p0
.end method

.method public getListenerName()Ljava/lang/String;
    .registers 1

    .line 79
    sget-object p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method getSecondLevelTitleResId()I
    .registers 3

    .line 120
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_56

    goto :goto_3c

    :sswitch_a
    const-string v1, "white_balance_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x2

    goto :goto_3d

    :sswitch_14
    const-string v1, "flash_setting_manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x4

    goto :goto_3d

    :sswitch_1e
    const-string v1, "burst_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    goto :goto_3d

    :sswitch_28
    const-string v1, "timer_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x0

    goto :goto_3d

    :sswitch_32
    const-string v1, "flash_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x3

    goto :goto_3d

    :cond_3c
    :goto_3c
    const/4 v0, -0x1

    :goto_3d
    packed-switch v0, :pswitch_data_6c

    .line 131
    invoke-super {p0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->getSecondLevelTitleResId()I

    move-result p0

    return p0

    :pswitch_45
    const p0, 0x7f0e0057

    return p0

    :pswitch_49
    const p0, 0x7f0e013e

    return p0

    :pswitch_4d
    const p0, 0x7f0e003d

    return p0

    :pswitch_51
    const p0, 0x7f0e0128

    return p0

    nop

    :sswitch_data_56
    .sparse-switch
        -0x52784aff -> :sswitch_32
        0xafda756 -> :sswitch_28
        0x1876bd62 -> :sswitch_1e
        0x5a2ebcc4 -> :sswitch_14
        0x633437d7 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_45
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090022

    if-ne v0, v1, :cond_d

    .line 71
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->onClickAncillaryItem(Landroid/view/View;)V

    goto :goto_10

    .line 73
    :cond_d
    invoke-super {p0, p1}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->onClick(Landroid/view/View;)V

    :goto_10
    return-void
.end method

.method updateListAdapter([Lopenlight/co/camera/models/AncillaryModel;)V
    .registers 3

    .line 111
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mAdapter:Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;

    invoke-virtual {v0, p1}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->updateListItems([Lopenlight/co/camera/models/AncillaryModel;)V

    .line 112
    iget-object p1, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mToolbarCloseView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object p1, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mSecondLevelToolBarCloseView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 114
    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->setSecondLevelTitle()V

    return-void
.end method

.method public updateToolbar(Ljava/lang/String;Z)V
    .registers 3

    .line 56
    iput-object p1, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    .line 58
    iget-object p1, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    if-nez p1, :cond_a

    .line 59
    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->resetItems()V

    goto :goto_11

    .line 62
    :cond_a
    invoke-direct {p0}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->getSecondLevelListItems()[Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->updateListAdapter([Lopenlight/co/camera/models/AncillaryModel;)V

    .line 64
    :goto_11
    iput-boolean p2, p0, Lopenlight/co/camera/view/ancillarytoolbar/ImageAncillaryToolbar;->mFromFirstLevel:Z

    return-void
.end method
