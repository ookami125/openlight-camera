.class public abstract Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;
.super Lopenlight/co/camera/view/primarycontrol/BaseControl;
.source "AncillaryToolbar.java"

# interfaces
.implements Lopenlight/co/camera/listener/OrientationListener;


# static fields
.field private static final OPEN_CLOSE_ANIMATION_DURATION_MS:I = 0xc8

.field private static final ORIENTATION_CHANGE_DURATION_MS:I = 0xa


# instance fields
.field mAdapter:Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;

.field protected final mCamPref:Lopenlight/co/lib/content/Prefs;

.field protected final mCameraManager:Lopenlight/co/camera/managers/CameraManager;

.field protected mChoiceHintView:Landroid/widget/TextView;

.field mFromFirstLevel:Z

.field private mListLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field mSecondLevelToolBarCloseView:Landroid/view/View;

.field mSelectedSettingKey:Ljava/lang/String;

.field mTitleView:Landroid/widget/TextView;

.field mToolbarCloseView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lopenlight/co/camera/view/primarycontrol/BaseControl;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V

    .line 45
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    .line 46
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mCameraManager:Lopenlight/co/camera/managers/CameraManager;

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->updateListRotation(I)V

    return-void
.end method

.method private animateAndRotateObject(Landroid/animation/ObjectAnimator;J)V
    .locals 0

    .line 345
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 346
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 347
    new-instance p2, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar$2;

    invoke-direct {p2, p0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar$2;-><init>(Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private getGridOptions()[Lopenlight/co/camera/models/AncillaryModel;
    .locals 10

    .line 375
    invoke-static {}, Lopenlight/co/camera/enums/GridMode;->values()[Lopenlight/co/camera/enums/GridMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lopenlight/co/camera/models/AncillaryModel;

    .line 376
    iget-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    invoke-interface {v1, p0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 378
    invoke-static {}, Lopenlight/co/camera/enums/GridMode;->values()[Lopenlight/co/camera/enums/GridMode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    .line 380
    invoke-virtual {v5}, Lopenlight/co/camera/enums/GridMode;->getPrefsKey()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    .line 381
    new-instance v8, Lopenlight/co/camera/models/AncillaryModel$Builder;

    invoke-virtual {v5}, Lopenlight/co/camera/enums/GridMode;->getSecondLevelResId()I

    move-result v9

    invoke-direct {v8, v9, v6}, Lopenlight/co/camera/models/AncillaryModel$Builder;-><init>(ILjava/lang/String;)V

    .line 382
    invoke-virtual {v5}, Lopenlight/co/camera/enums/GridMode;->getSelectedResId()I

    move-result v5

    invoke-virtual {v8, v5}, Lopenlight/co/camera/models/AncillaryModel$Builder;->selectedResId(I)Lopenlight/co/camera/models/AncillaryModel$Builder;

    move-result-object v5

    .line 383
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lopenlight/co/camera/models/AncillaryModel$Builder;->isSelected(Z)Lopenlight/co/camera/models/AncillaryModel$Builder;

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

.method private hideChoiceHintView()V
    .locals 2

    .line 392
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mChoiceHintView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mChoiceHintView:Landroid/widget/TextView;

    invoke-static {p0}, Lopenlight/co/lib/utils/AnimationUtils;->alphaDisappear(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 394
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private updateListRotation(I)V
    .locals 4

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 362
    iget-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mListLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 364
    iget-object v3, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mListLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 p0, 0xa

    .line 366
    invoke-static {v0, p1, p0}, Lopenlight/co/lib/utils/AnimationUtils;->rotateOnOrientationChange(Ljava/util/List;II)V

    return-void
.end method


# virtual methods
.method protected getCaf()Lopenlight/co/camera/models/AncillaryModel;
    .locals 2

    .line 210
    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->getCafPrefsKeyByMode()Ljava/lang/String;

    move-result-object v0

    .line 211
    new-instance v1, Lopenlight/co/camera/models/AncillaryModel$Builder;

    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    invoke-interface {p0, v0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lopenlight/co/camera/enums/CafMode;->getModeByPrefsKey(Ljava/lang/String;)Lopenlight/co/camera/enums/CafMode;

    move-result-object p0

    .line 212
    invoke-virtual {p0}, Lopenlight/co/camera/enums/CafMode;->getFirstLevelResId()I

    move-result p0

    invoke-direct {v1, p0, v0}, Lopenlight/co/camera/models/AncillaryModel$Builder;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1}, Lopenlight/co/camera/models/AncillaryModel$Builder;->build()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    return-object p0
.end method

.method getCafOptions()[Lopenlight/co/camera/models/AncillaryModel;
    .locals 10

    .line 256
    invoke-static {}, Lopenlight/co/camera/enums/CafMode;->values()[Lopenlight/co/camera/enums/CafMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lopenlight/co/camera/models/AncillaryModel;

    .line 257
    iget-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    invoke-interface {v1, p0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 259
    invoke-static {}, Lopenlight/co/camera/enums/CafMode;->values()[Lopenlight/co/camera/enums/CafMode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    .line 261
    invoke-virtual {v5}, Lopenlight/co/camera/enums/CafMode;->getPrefsKey()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    .line 262
    new-instance v8, Lopenlight/co/camera/models/AncillaryModel$Builder;

    invoke-virtual {v5}, Lopenlight/co/camera/enums/CafMode;->getSecondLevelResId()I

    move-result v9

    invoke-direct {v8, v9, v6}, Lopenlight/co/camera/models/AncillaryModel$Builder;-><init>(ILjava/lang/String;)V

    .line 263
    invoke-virtual {v5}, Lopenlight/co/camera/enums/CafMode;->getConfirmationResId()I

    move-result v5

    invoke-virtual {v8, v5}, Lopenlight/co/camera/models/AncillaryModel$Builder;->confirmationResId(I)Lopenlight/co/camera/models/AncillaryModel$Builder;

    move-result-object v5

    .line 264
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lopenlight/co/camera/models/AncillaryModel$Builder;->isSelected(Z)Lopenlight/co/camera/models/AncillaryModel$Builder;

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

.method getCafPrefsKeyByMode()Ljava/lang/String;
    .locals 1

    .line 334
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object p0

    .line 335
    sget-object v0, Lopenlight/co/camera/CameraMode;->VIDEO:Lopenlight/co/camera/CameraMode;

    if-ne p0, v0, :cond_0

    const-string p0, "cam_video_mode_caf"

    return-object p0

    .line 337
    :cond_0
    sget-object v0, Lopenlight/co/camera/CameraMode;->MANUAL:Lopenlight/co/camera/CameraMode;

    if-ne p0, v0, :cond_1

    const-string p0, "cam_manual_mode_caf"

    return-object p0

    :cond_1
    const-string p0, "cam_auto_mode_caf"

    return-object p0
.end method

.method protected getGrid()Lopenlight/co/camera/models/AncillaryModel;
    .locals 2

    .line 191
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "grid_setting"

    invoke-interface {p0, v0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 192
    new-instance v0, Lopenlight/co/camera/models/AncillaryModel$Builder;

    invoke-static {p0}, Lopenlight/co/camera/enums/GridMode;->getModeByPrefsKey(Ljava/lang/String;)Lopenlight/co/camera/enums/GridMode;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/enums/GridMode;->getFirstLevelResId()I

    move-result p0

    const-string v1, "grid_setting"

    invoke-direct {v0, p0, v1}, Lopenlight/co/camera/models/AncillaryModel$Builder;-><init>(ILjava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Lopenlight/co/camera/models/AncillaryModel$Builder;->build()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getListItems()[Lopenlight/co/camera/models/AncillaryModel;
.end method

.method getSecondLevelTitleResId()I
    .locals 2

    .line 295
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "cam_video_mode_caf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "cam_manual_mode_caf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "cam_auto_mode_caf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "quality_profile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "grid_setting"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    move p0, v1

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v1

    :pswitch_0
    const p0, 0x7f0e0133

    return p0

    :pswitch_1
    const p0, 0x7f0e003e

    return p0

    :pswitch_2
    const p0, 0x7f0e0088

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x79e565a9 -> :sswitch_4
        -0x2ba67d97 -> :sswitch_3
        -0x1a875cb4 -> :sswitch_2
        0x43af5f15 -> :sswitch_1
        0x7438cce0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getSettings()Lopenlight/co/camera/models/AncillaryModel;
    .locals 2

    .line 201
    new-instance p0, Lopenlight/co/camera/models/AncillaryModel$Builder;

    const-string v0, "camera_settings"

    const v1, 0x7f080102

    invoke-direct {p0, v1, v0}, Lopenlight/co/camera/models/AncillaryModel$Builder;-><init>(ILjava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lopenlight/co/camera/models/AncillaryModel$Builder;->build()Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    return-object p0
.end method

.method initView()V
    .locals 4

    .line 220
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mBaseControlView:Landroid/view/View;

    const v1, 0x7f090189

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 222
    new-instance v1, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar$1;

    iget-object v2, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v3}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar$1;-><init>(Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;Landroid/content/Context;IZ)V

    iput-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mListLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 234
    iget-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mListLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 236
    iget-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mBaseControlView:Landroid/view/View;

    const v2, 0x7f090172

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mToolbarCloseView:Landroid/view/View;

    .line 237
    iget-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mToolbarCloseView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mBaseControlView:Landroid/view/View;

    const v2, 0x7f09004b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mSecondLevelToolBarCloseView:Landroid/view/View;

    .line 240
    iget-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mSecondLevelToolBarCloseView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mBaseControlView:Landroid/view/View;

    const v2, 0x7f090171

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mTitleView:Landroid/widget/TextView;

    .line 242
    iget-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mBaseControlView:Landroid/view/View;

    const v2, 0x7f090021

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mChoiceHintView:Landroid/widget/TextView;

    .line 243
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lopenlight/co/camera/view/rotate/OrientationsController;->registerOrientationListener(Lopenlight/co/camera/listener/OrientationListener;)V

    .line 245
    new-instance v1, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;

    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->getListItems()[Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;-><init>([Lopenlight/co/camera/models/AncillaryModel;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mAdapter:Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;

    .line 246
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mAdapter:Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public isFromFirstLevel()Z
    .locals 0

    .line 112
    iget-boolean p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mFromFirstLevel:Z

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 118
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mChoiceHintView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f090022

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    const v2, 0x7f09004b

    if-eq v0, v2, :cond_0

    .line 173
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mSecondLevelToolBarCloseView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mToolbarCloseView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-boolean v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mFromFirstLevel:Z

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mAdapter:Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;

    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->getListItems()[Lopenlight/co/camera/models/AncillaryModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->updateListItems([Lopenlight/co/camera/models/AncillaryModel;)V

    .line 170
    :cond_1
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_2

    .line 122
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;

    if-eqz v0, :cond_4

    .line 124
    invoke-virtual {v0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    .line 125
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "cam_video_mode_caf"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "cam_manual_mode_caf"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "camera_settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "grid_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_4
    const-string v1, "golden_ratio"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_5
    const-string v3, "3x3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :sswitch_6
    const-string v1, "cam_auto_mode_caf"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_7
    const-string v1, "cam_caf_mode_afs"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_8
    const-string v1, "cam_caf_mode_afd"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_9
    const-string v1, "grid_setting"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v4

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 154
    :pswitch_0
    iget-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mAdapter:Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;

    invoke-virtual {v0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->getItemPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->updateSelectedItemAtPosition(I)V

    .line 155
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    iget-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_2

    .line 146
    :pswitch_1
    iget-object p1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mAdapter:Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;

    invoke-virtual {v0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->getItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->updateSelectedItemAtPosition(I)V

    .line 147
    iget-object p1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->get()Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->init()V

    const p1, 0x7f0e0046

    .line 149
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->showAndAnimateMessageView(I)V

    goto :goto_2

    .line 140
    :pswitch_2
    iget-object p1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mAdapter:Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;

    invoke-virtual {v0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter$ViewHolder;->getItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->updateSelectedItemAtPosition(I)V

    .line 141
    iget-object p1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mCamPref:Lopenlight/co/lib/content/Prefs;

    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->get()Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->updateAndRelease()V

    const p1, 0x7f0e0047

    .line 143
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->showAndAnimateMessageView(I)V

    goto :goto_2

    .line 137
    :pswitch_3
    iget-object p1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mContext:Landroid/content/Context;

    const-class v1, Lopenlight/co/camera/view/setting/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 133
    :pswitch_4
    iput-object v2, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    .line 134
    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->getCafOptions()[Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->updateListAdapter([Lopenlight/co/camera/models/AncillaryModel;)V

    goto :goto_2

    .line 127
    :pswitch_5
    iput-object v2, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mSelectedSettingKey:Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->getGridOptions()[Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->updateListAdapter([Lopenlight/co/camera/models/AncillaryModel;)V

    :cond_4
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x79e565a9 -> :sswitch_9
        -0x704e62b6 -> :sswitch_8
        -0x704e62a7 -> :sswitch_7
        -0x1a875cb4 -> :sswitch_6
        0xce2e -> :sswitch_5
        0xaefd55 -> :sswitch_4
        0x12fa54f6 -> :sswitch_3
        0x2456e3fd -> :sswitch_2
        0x43af5f15 -> :sswitch_1
        0x7438cce0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V
    .locals 3

    .line 79
    invoke-virtual {p1}, Lopenlight/co/camera/enums/OrientationConfig;->getViewRotationAngle()I

    move-result v0

    .line 80
    invoke-direct {p0, v0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->updateListRotation(I)V

    .line 81
    iget-object v1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mTitleView:Landroid/widget/TextView;

    const/16 v2, 0xa

    invoke-static {v1, v0, v2}, Lopenlight/co/lib/utils/AnimationUtils;->rotateOnOrientationChange(Landroid/view/View;II)V

    .line 84
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mChoiceHintView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lopenlight/co/camera/enums/OrientationConfig;->PORTRAIT:Lopenlight/co/camera/enums/OrientationConfig;

    if-eq p1, v0, :cond_0

    sget-object v0, Lopenlight/co/camera/enums/OrientationConfig;->PORTRAIT_REVERSE:Lopenlight/co/camera/enums/OrientationConfig;

    if-ne p1, v0, :cond_1

    .line 87
    :cond_0
    invoke-direct {p0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->hideChoiceHintView()V

    :cond_1
    return-void
.end method

.method public resetItems()V
    .locals 1

    .line 182
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mAdapter:Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;

    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->getListItems()[Lopenlight/co/camera/models/AncillaryModel;

    move-result-object p0

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->updateListItems([Lopenlight/co/camera/models/AncillaryModel;)V

    return-void
.end method

.method setSecondLevelTitle()V
    .locals 2

    .line 285
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->getSecondLevelTitleResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 286
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mTitleView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setVisibility(Z)V
    .locals 7

    .line 97
    invoke-super {p0, p1}, Lopenlight/co/camera/view/primarycontrol/BaseControl;->setVisibility(Z)V

    .line 98
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mBaseControlView:Landroid/view/View;

    const-string v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const v4, 0x451c4000    # 2500.0f

    if-eqz p1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const/4 v6, 0x0

    aput v5, v2, v6

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 100
    invoke-direct {p0, v0, v1, v2}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->animateAndRotateObject(Landroid/animation/ObjectAnimator;J)V

    if-nez p1, :cond_2

    .line 103
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mChoiceHintView:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method showAndAnimateMessageView(I)V
    .locals 2

    .line 314
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/view/rotate/OrientationsController;->getConfig()Lopenlight/co/camera/enums/OrientationConfig;

    move-result-object v0

    .line 316
    sget-object v1, Lopenlight/co/camera/enums/OrientationConfig;->LANDSCAPE:Lopenlight/co/camera/enums/OrientationConfig;

    if-eq v0, v1, :cond_0

    sget-object v1, Lopenlight/co/camera/enums/OrientationConfig;->LANDSCAPE_REVERSE:Lopenlight/co/camera/enums/OrientationConfig;

    if-ne v0, v1, :cond_1

    .line 319
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mChoiceHintView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 322
    iget-object p1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mChoiceHintView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mChoiceHintView:Landroid/widget/TextView;

    invoke-static {p0}, Lopenlight/co/lib/utils/AnimationUtils;->alphaAppear(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 324
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void
.end method

.method updateListAdapter([Lopenlight/co/camera/models/AncillaryModel;)V
    .locals 1

    .line 275
    iget-object v0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mAdapter:Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;

    invoke-virtual {v0, p1}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbarAdapter;->updateListItems([Lopenlight/co/camera/models/AncillaryModel;)V

    .line 276
    invoke-virtual {p0}, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->setSecondLevelTitle()V

    .line 277
    iget-object p1, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mToolbarCloseView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object p0, p0, Lopenlight/co/camera/view/ancillarytoolbar/AncillaryToolbar;->mSecondLevelToolBarCloseView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
