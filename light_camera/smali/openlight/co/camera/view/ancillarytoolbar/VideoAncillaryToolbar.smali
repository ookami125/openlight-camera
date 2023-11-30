.class public Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;
.super Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;
.source "VideoAncillaryToolbar.java"

# interfaces
.implements Lopenlight/co/camera/listener/OrientationListener;


# static fields
.field private static final QUALITY_PROFILES_SUPPORTED:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mVideoMgr:Lopenlight/co/camera/managers/video/VideoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    const-class v0, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->TAG:Ljava/lang/String;

    .line 27
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v0

    const-string v1, "video.quality.selector.beta"

    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v1, v2}, Lopenlight/co/lib/utils/FeatureManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->QUALITY_PROFILES_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V

    .line 30
    invoke-static {}, Lopenlight/co/camera/managers/video/VideoManager;->get()Lopenlight/co/camera/managers/video/VideoManager;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->mVideoMgr:Lopenlight/co/camera/managers/video/VideoManager;

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->mFromFirstLevel:Z

    .line 44
    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->initView()V

    .line 45
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->mBaseControlView:Landroid/view/View;

    invoke-virtual {p3, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getQualityProfile()Lopenlight/co/camera/models/AncillaryModel;
    .locals 3

    .line 115
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "quality_profile"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 117
    new-instance v1, Lopenlight/co/camera/models/AncillaryModel$Builder;

    invoke-static {v0}, Lopenlight/co/camera/enums/VideoQualityMode;->valueOf(Ljava/lang/String;)Lopenlight/co/camera/enums/VideoQualityMode;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/enums/VideoQualityMode;->getResId()I

    move-result v0

    const-string v2, "quality_profile"

    invoke-direct {v1, v0, v2}, Lopenlight/co/camera/models/AncillaryModel$Builder;-><init>(ILjava/lang/String;)V

    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->mVideoMgr:Lopenlight/co/camera/managers/video/VideoManager;

    .line 118
    invoke-virtual {p0}, Lopenlight/co/camera/managers/video/VideoManager;->isRecording()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v1, p0}, Lopenlight/co/camera/models/AncillaryModel$Builder;->enabled(Z)Lopenlight/co/camera/models/AncillaryModel$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/models/AncillaryModel$Builder;->build()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    return-object p0
.end method

.method private getQualityProfileOptions()[Lopenlight/co/camera/models/AncillaryModel;
    .locals 9

    .line 127
    invoke-static {}, Lopenlight/co/camera/enums/VideoQualityMode;->values()[Lopenlight/co/camera/enums/VideoQualityMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lopenlight/co/camera/models/AncillaryModel;

    .line 128
    iget-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    invoke-interface {v1, p0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 130
    invoke-static {}, Lopenlight/co/camera/enums/VideoQualityMode;->values()[Lopenlight/co/camera/enums/VideoQualityMode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    .line 132
    invoke-virtual {v5}, Lopenlight/co/camera/enums/VideoQualityMode;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    .line 133
    new-instance v8, Lopenlight/co/camera/models/AncillaryModel$Builder;

    invoke-virtual {v5}, Lopenlight/co/camera/enums/VideoQualityMode;->getResId()I

    move-result v5

    invoke-direct {v8, v5, v6}, Lopenlight/co/camera/models/AncillaryModel$Builder;-><init>(ILjava/lang/String;)V

    .line 134
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v8, v5}, Lopenlight/co/camera/models/AncillaryModel$Builder;->isSelected(Z)Lopenlight/co/camera/models/AncillaryModel$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lopenlight/co/camera/models/AncillaryModel$Builder;->build()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v5

    aput-object v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected getListItems()[Lopenlight/co/camera/models/AncillaryModel;
    .locals 5

    .line 99
    sget-boolean v0, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->QUALITY_PROFILES_SUPPORTED:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Lopenlight/co/camera/models/AncillaryModel;

    .line 100
    invoke-direct {p0}, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->getQualityProfile()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->getGrid()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->getSettings()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    new-array v0, v1, [Lopenlight/co/camera/models/AncillaryModel;

    .line 101
    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->getGrid()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->getSettings()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    aput-object p0, v0, v2

    :goto_0
    return-object v0
.end method

.method public getListenerName()Ljava/lang/String;
    .locals 0

    .line 50
    sget-object p0, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method protected getSettings()Lopenlight/co/camera/models/AncillaryModel;
    .locals 3

    .line 106
    new-instance v0, Lopenlight/co/camera/models/AncillaryModel$Builder;

    const-string v1, "camera_settings"

    const v2, 0x7f080102

    invoke-direct {v0, v2, v1}, Lopenlight/co/camera/models/AncillaryModel$Builder;-><init>(ILjava/lang/String;)V

    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->mVideoMgr:Lopenlight/co/camera/managers/video/VideoManager;

    .line 107
    invoke-virtual {p0}, Lopenlight/co/camera/managers/video/VideoManager;->isRecording()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lopenlight/co/camera/models/AncillaryModel$Builder;->enabled(Z)Lopenlight/co/camera/models/AncillaryModel$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/models/AncillaryModel$Builder;->build()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090022

    if-ne v0, v1, :cond_2

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;

    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {v0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "quality_profile"

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    iput-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->getQualityProfileOptions()[Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->updateListAdapter([Lopenlight/co/camera/models/AncillaryModel;)V

    return-void

    .line 65
    :cond_0
    sget-object v2, Lopenlight/co/camera/enums/VideoQualityMode;->QUALITY_480P:Lopenlight/co/camera/enums/VideoQualityMode;

    invoke-virtual {v2}, Lopenlight/co/camera/enums/VideoQualityMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lopenlight/co/camera/enums/VideoQualityMode;->QUALITY_720P:Lopenlight/co/camera/enums/VideoQualityMode;

    .line 66
    invoke-virtual {v2}, Lopenlight/co/camera/enums/VideoQualityMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lopenlight/co/camera/enums/VideoQualityMode;->QUALITY_1080P:Lopenlight/co/camera/enums/VideoQualityMode;

    .line 67
    invoke-virtual {v2}, Lopenlight/co/camera/enums/VideoQualityMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lopenlight/co/camera/enums/VideoQualityMode;->QUALITY_2160P:Lopenlight/co/camera/enums/VideoQualityMode;

    .line 68
    invoke-virtual {v2}, Lopenlight/co/camera/enums/VideoQualityMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lopenlight/co/camera/enums/VideoQualityMode;->QUALITY_HIGH:Lopenlight/co/camera/enums/VideoQualityMode;

    .line 69
    invoke-virtual {v2}, Lopenlight/co/camera/enums/VideoQualityMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    :cond_1
    iget-object p1, p0, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->mAdapter:Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;

    invoke-virtual {v0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->getItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->updateSelectedItemAtPosition(I)V

    .line 71
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string p1, "quality_profile"

    invoke-interface {p0, p1, v1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_2
    invoke-super {p0, p1}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public resetItemsToFirstLevel()V
    .locals 2

    .line 84
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->mTitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->mSecondLevelToolBarCloseView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->mToolbarCloseView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :cond_1
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->mAdapter:Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;

    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/VideoAncillaryToolbar;->getListItems()[Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->updateListItems([Lopenlight/co/camera/models/AncillaryModel;)V

    return-void
.end method
