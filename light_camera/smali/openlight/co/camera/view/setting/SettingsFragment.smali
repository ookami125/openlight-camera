.class public Lopenlight/co/camera/view/setting/SettingsFragment;
.super Lopenlight/co/lib/view/LightFragment;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/view/setting/SettingsFragment$GestureListener;
    }
.end annotation


# static fields
.field public static final ARG_SETTINGS_INDEX_KEY:Ljava/lang/String; = "settings_index"

.field public static final ARG_SETTINGS_SCROLL_TO_KEY:Ljava/lang/String; = "settings_scroll_to_index_key"

.field private static final DOF_INIT_VALUE:F = 0.5f

.field private static final SETTING_DISABLED_MSG_HIDE_MS:I = 0x1388

.field public static final TAG:Ljava/lang/String; = "SettingsFragment"


# instance fields
.field private final KEY_IN_SECOND_LEVEL_SETTINGS:Ljava/lang/String;

.field private final KEY_SELECTED_ITEM_POSITION:Ljava/lang/String;

.field private final KEY_SELECTED_MODEL:Ljava/lang/String;

.field private final mCamPref:Lopenlight/co/lib/content/Prefs;

.field private mConfirmPopup:Lopenlight/co/camera/view/setting/ConfirmPopup;

.field private mCurrentDofValue:F

.field private mCurrentModel:Lopenlight/co/camera/view/setting/SettingModel;

.field private mCurrentSelectedIndex:I

.field private mDofContainer:Landroid/widget/LinearLayout;

.field private mDofGuildText:Landroid/widget/TextView;

.field private mDofHelpIcon:Landroid/widget/ImageView;

.field private mDofWheel:Lopenlight/co/camera/view/setting/SettingDofWheel;

.field private mFirstItem:I

.field private mFtuBackdrop:Landroid/view/View;

.field private mFtuContainer:Landroid/view/ViewGroup;

.field private mFtuDimmer:Landroid/view/View;

.field private final mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

.field private mHandler:Landroid/os/Handler;

.field private final mHaptics:Lopenlight/co/camera/haptic/PlayHaptic;

.field private mHideMsgViewRunnable:Ljava/lang/Runnable;

.field private mInSecondLevelSettings:Z

.field private mLastLength:F

.field private mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mListener:Landroid/view/GestureDetector;

.field private mOffset:I

.field private mParentView:Landroid/view/View;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSecondLevelSettingsAdapter:Lopenlight/co/camera/view/setting/SettingOptionAdapter;

.field private mSelectedString:Ljava/lang/String;

.field private mSettingDisabledMsgView:Landroid/widget/TextView;

.field private mSettingsAdapter:Lopenlight/co/camera/view/setting/SettingAdapter;

.field private mTheaterModeListener:Lopenlight/co/TheaterMode/TheaterModeListener;

.field private final mTheaterModeSettings:Lopenlight/co/TheaterMode/TheaterModeSettings;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Lopenlight/co/lib/view/LightFragment;-><init>()V

    const-string v0, "selected_model"

    .line 65
    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->KEY_SELECTED_MODEL:Ljava/lang/String;

    const-string v0, "selected_item_position"

    .line 66
    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->KEY_SELECTED_ITEM_POSITION:Ljava/lang/String;

    const-string v0, "in_second_level"

    .line 67
    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->KEY_IN_SECOND_LEVEL_SETTINGS:Ljava/lang/String;

    .line 73
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCamPref:Lopenlight/co/lib/content/Prefs;

    .line 74
    invoke-static {}, Lopenlight/co/camera/haptic/PlayHaptic;->get()Lopenlight/co/camera/haptic/PlayHaptic;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mHaptics:Lopenlight/co/camera/haptic/PlayHaptic;

    .line 75
    invoke-static {}, Lopenlight/co/camera/view/ftu/FtuHelper;->get()Lopenlight/co/camera/view/ftu/FtuHelper;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    .line 77
    invoke-static {}, Lopenlight/co/TheaterMode/TheaterModeSettings;->get()Lopenlight/co/TheaterMode/TheaterModeSettings;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mTheaterModeSettings:Lopenlight/co/TheaterMode/TheaterModeSettings;

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mInSecondLevelSettings:Z

    const/4 v1, -0x1

    .line 93
    iput v1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentSelectedIndex:I

    .line 96
    iput v1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mFirstItem:I

    .line 97
    iput v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mOffset:I

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingsFragment$wXdr8YEiunuRcQNaqSAy2DWVwjw;

    invoke-direct {v0, p0}, Lopenlight/co/camera/view/setting/-$$Lambda$SettingsFragment$wXdr8YEiunuRcQNaqSAy2DWVwjw;-><init>(Lopenlight/co/camera/view/setting/SettingsFragment;)V

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mHideMsgViewRunnable:Ljava/lang/Runnable;

    .line 114
    new-instance v0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingsFragment$OAAtyvu_T-XwfF_Ih648jUmHw-M;

    invoke-direct {v0, p0}, Lopenlight/co/camera/view/setting/-$$Lambda$SettingsFragment$OAAtyvu_T-XwfF_Ih648jUmHw-M;-><init>(Lopenlight/co/camera/view/setting/SettingsFragment;)V

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mTheaterModeListener:Lopenlight/co/TheaterMode/TheaterModeListener;

    return-void
.end method

.method static synthetic access$1002(Lopenlight/co/camera/view/setting/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSelectedString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lopenlight/co/camera/view/setting/SettingsFragment;I)I
    .locals 0

    .line 59
    iput p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mFirstItem:I

    return p1
.end method

.method static synthetic access$1100(Lopenlight/co/camera/view/setting/SettingsFragment;Lopenlight/co/camera/view/setting/SettingModel;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/setting/SettingsFragment;->handleConfirmUpdated(Lopenlight/co/camera/view/setting/SettingModel;)V

    return-void
.end method

.method static synthetic access$1200(Lopenlight/co/camera/view/setting/SettingsFragment;Lopenlight/co/camera/view/setting/SettingModel;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/setting/SettingsFragment;->addConfirmPopup(Lopenlight/co/camera/view/setting/SettingModel;)V

    return-void
.end method

.method static synthetic access$1300(Lopenlight/co/camera/view/setting/SettingsFragment;Lopenlight/co/camera/view/setting/SettingModel;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/setting/SettingsFragment;->handleConfirmPopupCancelAction(Lopenlight/co/camera/view/setting/SettingModel;)V

    return-void
.end method

.method static synthetic access$1400(Lopenlight/co/camera/view/setting/SettingsFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 59
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1500(Lopenlight/co/camera/view/setting/SettingsFragment;)F
    .locals 0

    .line 59
    iget p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mLastLength:F

    return p0
.end method

.method static synthetic access$1502(Lopenlight/co/camera/view/setting/SettingsFragment;F)F
    .locals 0

    .line 59
    iput p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mLastLength:F

    return p1
.end method

.method static synthetic access$1600(Lopenlight/co/camera/view/setting/SettingsFragment;F)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/setting/SettingsFragment;->calculateScaleValue(F)V

    return-void
.end method

.method static synthetic access$1700(Lopenlight/co/camera/view/setting/SettingsFragment;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/setting/SettingsFragment;->setGuildTextVisibility(Z)V

    return-void
.end method

.method static synthetic access$1800(Lopenlight/co/camera/view/setting/SettingsFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 59
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofHelpIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lopenlight/co/camera/view/setting/SettingsFragment;)Landroid/support/v7/widget/LinearLayoutManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$302(Lopenlight/co/camera/view/setting/SettingsFragment;I)I
    .locals 0

    .line 59
    iput p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mOffset:I

    return p1
.end method

.method static synthetic access$400(Lopenlight/co/camera/view/setting/SettingsFragment;Lopenlight/co/camera/view/setting/SettingModel;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/setting/SettingsFragment;->initDofWheelLayout(Lopenlight/co/camera/view/setting/SettingModel;)V

    return-void
.end method

.method static synthetic access$500(Lopenlight/co/camera/view/setting/SettingsFragment;)Lopenlight/co/TheaterMode/TheaterModeSettings;
    .locals 0

    .line 59
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mTheaterModeSettings:Lopenlight/co/TheaterMode/TheaterModeSettings;

    return-object p0
.end method

.method static synthetic access$600(Lopenlight/co/camera/view/setting/SettingsFragment;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/setting/SettingsFragment;->showAndAnimateMessageView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lopenlight/co/camera/view/setting/SettingsFragment;)Landroid/widget/TextView;
    .locals 0

    .line 59
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingDisabledMsgView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lopenlight/co/camera/view/setting/SettingsFragment;Lopenlight/co/camera/view/setting/SettingModel;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/view/setting/SettingsFragment;->initSecondLevelSettingsAdapter(Lopenlight/co/camera/view/setting/SettingModel;I)V

    return-void
.end method

.method static synthetic access$902(Lopenlight/co/camera/view/setting/SettingsFragment;I)I
    .locals 0

    .line 59
    iput p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentSelectedIndex:I

    return p1
.end method

.method private addConfirmPopup(Lopenlight/co/camera/view/setting/SettingModel;)V
    .locals 3

    .line 504
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mParentView:Landroid/view/View;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 505
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->removeConfirmPopup()V

    .line 506
    new-instance v0, Lopenlight/co/camera/view/setting/ConfirmPopup;

    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mParentView:Landroid/view/View;

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p1}, Lopenlight/co/camera/view/setting/ConfirmPopup;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lopenlight/co/camera/view/setting/SettingModel;)V

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mConfirmPopup:Lopenlight/co/camera/view/setting/ConfirmPopup;

    .line 507
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mConfirmPopup:Lopenlight/co/camera/view/setting/ConfirmPopup;

    new-instance v0, Lopenlight/co/camera/view/setting/SettingsFragment$2;

    invoke-direct {v0, p0}, Lopenlight/co/camera/view/setting/SettingsFragment$2;-><init>(Lopenlight/co/camera/view/setting/SettingsFragment;)V

    invoke-virtual {p1, v0}, Lopenlight/co/camera/view/setting/ConfirmPopup;->setSettingsActionListener(Lopenlight/co/camera/view/setting/ConfirmPopup$SettingsConfirmListener;)V

    .line 518
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mConfirmPopup:Lopenlight/co/camera/view/setting/ConfirmPopup;

    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/ConfirmPopup;->addViewToFragment()V

    return-void
.end method

.method private addDofWheelView(Lopenlight/co/camera/view/setting/SettingModel;)V
    .locals 4

    .line 457
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 458
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofWheel:Lopenlight/co/camera/view/setting/SettingDofWheel;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 459
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofWheel:Lopenlight/co/camera/view/setting/SettingDofWheel;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Lopenlight/co/camera/view/setting/SettingDofWheel;->setZoomFinish(FF)V

    .line 460
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofWheel:Lopenlight/co/camera/view/setting/SettingDofWheel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/setting/SettingDofWheel;->setVisibility(I)V

    const/4 v0, 0x1

    .line 461
    iput-boolean v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mInSecondLevelSettings:Z

    .line 462
    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingModel;->getSettingsValue()Ljava/lang/String;

    move-result-object p1

    .line 464
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    iput p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentDofValue:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 466
    sget-object v2, Lopenlight/co/camera/view/setting/SettingsFragment;->TAG:Ljava/lang/String;

    const-string v3, "Cast number format"

    invoke-static {v2, v3, p1}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 468
    iput p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentDofValue:F

    .line 470
    :goto_0
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofWheel:Lopenlight/co/camera/view/setting/SettingDofWheel;

    iget v2, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentDofValue:F

    invoke-virtual {p1, v2}, Lopenlight/co/camera/view/setting/SettingDofWheel;->setScaleValue(F)V

    .line 471
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 473
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mParentView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 474
    invoke-direct {p0, v0}, Lopenlight/co/camera/view/setting/SettingsFragment;->setGuildTextVisibility(Z)V

    return-void
.end method

.method private calculateScaleValue(F)V
    .locals 1

    .line 492
    iget v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentDofValue:F

    add-float/2addr v0, p1

    iput v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentDofValue:F

    .line 493
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofWheel:Lopenlight/co/camera/view/setting/SettingDofWheel;

    if-eqz p1, :cond_0

    .line 494
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofWheel:Lopenlight/co/camera/view/setting/SettingDofWheel;

    iget p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentDofValue:F

    invoke-virtual {p1, p0}, Lopenlight/co/camera/view/setting/SettingDofWheel;->setScaleValue(F)V

    :cond_0
    return-void
.end method

.method private getMarginDimensWithOrientation()I
    .locals 2

    .line 386
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 388
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f070148

    invoke-static {p0, v0}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 390
    :cond_0
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f07014c

    invoke-static {p0, v0}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method private getSelectedFtuView(Ljava/lang/String;Lopenlight/co/camera/view/setting/SettingModel;)Lopenlight/co/camera/enums/FtuView;
    .locals 2

    .line 722
    invoke-virtual {p2}, Lopenlight/co/camera/view/setting/SettingModel;->getResourceList()Ljava/util/List;

    move-result-object p2

    .line 723
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    invoke-static {v0}, Lopenlight/co/camera/enums/FtuView;->getFtuViewFromResId(I)Lopenlight/co/camera/enums/FtuView;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleConfirmPopupCancelAction(Lopenlight/co/camera/view/setting/SettingModel;)V
    .locals 2

    if-nez p1, :cond_0

    .line 527
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->resetCurrentSelectedItemData()V

    .line 528
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->removeConfirmPopup()V

    return-void

    .line 531
    :cond_0
    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingModel;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 536
    :cond_1
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->initSettingsAdapter()V

    goto :goto_0

    .line 533
    :cond_2
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingsAdapter:Lopenlight/co/camera/view/setting/SettingAdapter;

    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingModel;->getSettingsValue()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentSelectedIndex:I

    invoke-virtual {v0, p1, v1}, Lopenlight/co/camera/view/setting/SettingAdapter;->updateItemSelected(Ljava/lang/String;I)V

    .line 540
    :goto_0
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->removeConfirmPopup()V

    return-void
.end method

.method private handleConfirmUpdated(Lopenlight/co/camera/view/setting/SettingModel;)V
    .locals 2

    if-nez p1, :cond_0

    .line 549
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->resetCurrentSelectedItemData()V

    .line 550
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->removeConfirmPopup()V

    return-void

    .line 553
    :cond_0
    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingModel;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 559
    :pswitch_0
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/setting/SettingsFragment;->updateSharedPreferences(Lopenlight/co/camera/view/setting/SettingModel;)V

    .line 560
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->initSettingsAdapter()V

    goto :goto_0

    .line 563
    :pswitch_1
    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingModel;->getSettingsId()Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    move-result-object p1

    sget-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->FTU_RESET:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    if-ne p1, v0, :cond_1

    .line 564
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->resetTutorials()V

    goto :goto_0

    .line 555
    :pswitch_2
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/setting/SettingsFragment;->updateSharedPreferences(Lopenlight/co/camera/view/setting/SettingModel;)V

    .line 556
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingsAdapter:Lopenlight/co/camera/view/setting/SettingAdapter;

    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSelectedString:Ljava/lang/String;

    iget v1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentSelectedIndex:I

    invoke-virtual {p1, v0, v1}, Lopenlight/co/camera/view/setting/SettingAdapter;->updateItemSelected(Ljava/lang/String;I)V

    .line 568
    :cond_1
    :goto_0
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->resetCurrentSelectedItemData()V

    .line 569
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->removeConfirmPopup()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initDofViews()V
    .locals 4

    .line 421
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->getMarginDimensWithOrientation()I

    move-result v0

    .line 422
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f070141

    invoke-static {v1, v2}, Lopenlight/co/camera/utils/Util;->getDimen(Landroid/content/Context;I)I

    move-result v1

    .line 424
    iget-object v2, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mParentView:Landroid/view/View;

    const v3, 0x7f090063

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofHelpIcon:Landroid/widget/ImageView;

    .line 425
    iget-object v2, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mParentView:Landroid/view/View;

    const v3, 0x7f090062

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofGuildText:Landroid/widget/TextView;

    .line 426
    iget-object v2, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofGuildText:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 428
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofHelpIcon:Landroid/widget/ImageView;

    new-instance v1, Lopenlight/co/camera/view/setting/-$$Lambda$SettingsFragment$EFzjq8pFXw_ooN4dk7eC0DMrox0;

    invoke-direct {v1, p0}, Lopenlight/co/camera/view/setting/-$$Lambda$SettingsFragment$EFzjq8pFXw_ooN4dk7eC0DMrox0;-><init>(Lopenlight/co/camera/view/setting/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initDofWheelLayout(Lopenlight/co/camera/view/setting/SettingModel;)V
    .locals 2

    .line 440
    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentModel:Lopenlight/co/camera/view/setting/SettingModel;

    .line 441
    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingModel;->getSettingsValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSelectedString:Ljava/lang/String;

    .line 442
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 445
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofWheel:Lopenlight/co/camera/view/setting/SettingDofWheel;

    if-nez v0, :cond_1

    .line 446
    new-instance v0, Lopenlight/co/camera/view/setting/SettingDofWheel;

    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lopenlight/co/camera/view/setting/SettingDofWheel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofWheel:Lopenlight/co/camera/view/setting/SettingDofWheel;

    .line 448
    :cond_1
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/setting/SettingsFragment;->addDofWheelView(Lopenlight/co/camera/view/setting/SettingModel;)V

    return-void
.end method

.method private initSecondLevelSettingsAdapter(Lopenlight/co/camera/view/setting/SettingModel;I)V
    .locals 4

    .line 352
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSecondLevelSettingsAdapter:Lopenlight/co/camera/view/setting/SettingOptionAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 353
    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSecondLevelSettingsAdapter:Lopenlight/co/camera/view/setting/SettingOptionAdapter;

    .line 355
    :cond_0
    iput p2, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentSelectedIndex:I

    .line 356
    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentModel:Lopenlight/co/camera/view/setting/SettingModel;

    .line 357
    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingModel;->getSettingsValue()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSelectedString:Ljava/lang/String;

    .line 358
    sget-object p2, Lopenlight/co/camera/view/setting/SettingsFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Model Title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 359
    iput-boolean p2, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mInSecondLevelSettings:Z

    .line 360
    iget-object p2, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    new-instance p2, Lopenlight/co/camera/view/setting/SettingOptionAdapter;

    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 362
    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingModel;->getRelatedListId()I

    move-result v1

    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingModel;->getSettingsValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingModel;->isSelectionHighlighted()Z

    move-result v3

    invoke-direct {p2, v0, v1, v2, v3}, Lopenlight/co/camera/view/setting/SettingOptionAdapter;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object p2, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSecondLevelSettingsAdapter:Lopenlight/co/camera/view/setting/SettingOptionAdapter;

    .line 363
    iget-object p2, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSecondLevelSettingsAdapter:Lopenlight/co/camera/view/setting/SettingOptionAdapter;

    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->getMarginDimensWithOrientation()I

    move-result v0

    invoke-virtual {p2, v0}, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->setMarginValue(I)V

    .line 364
    iget-object p2, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSecondLevelSettingsAdapter:Lopenlight/co/camera/view/setting/SettingOptionAdapter;

    new-instance v0, Lopenlight/co/camera/view/setting/-$$Lambda$SettingsFragment$RAWhPjyB_3Niqxojczr5YZvhqek;

    invoke-direct {v0, p0, p1}, Lopenlight/co/camera/view/setting/-$$Lambda$SettingsFragment$RAWhPjyB_3Niqxojczr5YZvhqek;-><init>(Lopenlight/co/camera/view/setting/SettingsFragment;Lopenlight/co/camera/view/setting/SettingModel;)V

    invoke-virtual {p2, v0}, Lopenlight/co/camera/view/setting/SettingOptionAdapter;->setSelectedListener(Lopenlight/co/camera/view/setting/SettingOptionAdapter$OnOptionItemSelectedListener;)V

    .line 377
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSecondLevelSettingsAdapter:Lopenlight/co/camera/view/setting/SettingOptionAdapter;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initSettingsAdapter()V
    .locals 4

    .line 272
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->removeDofWheelView()V

    .line 273
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingsAdapter:Lopenlight/co/camera/view/setting/SettingAdapter;

    if-nez v0, :cond_0

    .line 274
    new-instance v0, Lopenlight/co/camera/view/setting/SettingAdapter;

    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lopenlight/co/camera/view/setting/SettingAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingsAdapter:Lopenlight/co/camera/view/setting/SettingAdapter;

    .line 275
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingsAdapter:Lopenlight/co/camera/view/setting/SettingAdapter;

    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->getMarginDimensWithOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/setting/SettingAdapter;->setMarginValue(I)V

    .line 276
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingsAdapter:Lopenlight/co/camera/view/setting/SettingAdapter;

    new-instance v1, Lopenlight/co/camera/view/setting/SettingsFragment$1;

    invoke-direct {v1, p0}, Lopenlight/co/camera/view/setting/SettingsFragment$1;-><init>(Lopenlight/co/camera/view/setting/SettingsFragment;)V

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/setting/SettingAdapter;->setOnSettingAdapterListener(Lopenlight/co/camera/view/setting/SettingAdapter$OnSettingAdapterListener;)V

    .line 330
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingsAdapter:Lopenlight/co/camera/view/setting/SettingAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 332
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingsAdapter:Lopenlight/co/camera/view/setting/SettingAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 333
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0e0110

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 334
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingsAdapter:Lopenlight/co/camera/view/setting/SettingAdapter;

    invoke-virtual {v0}, Lopenlight/co/camera/view/setting/SettingAdapter;->updateData()V

    .line 335
    iget v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mFirstItem:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 336
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget v2, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mFirstItem:I

    iget v3, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mOffset:I

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 337
    iput v1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mFirstItem:I

    .line 339
    :cond_1
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->isShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 340
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic lambda$initDofViews$5(Lopenlight/co/camera/view/setting/SettingsFragment;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 429
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/setting/SettingsFragment;->setGuildTextVisibility(Z)V

    .line 430
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofHelpIcon:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$initSecondLevelSettingsAdapter$4(Lopenlight/co/camera/view/setting/SettingsFragment;Lopenlight/co/camera/view/setting/SettingModel;Ljava/lang/String;)V
    .locals 2

    .line 365
    iput-object p2, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSelectedString:Ljava/lang/String;

    .line 366
    sget-object p2, Lopenlight/co/camera/view/setting/SettingsFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item Selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSelectedString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingModel;->getTitle()Ljava/lang/String;

    move-result-object p2

    .line 370
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 371
    iget-object p2, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSelectedString:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lopenlight/co/camera/view/setting/SettingsFragment;->getSelectedFtuView(Ljava/lang/String;Lopenlight/co/camera/view/setting/SettingModel;)Lopenlight/co/camera/enums/FtuView;

    move-result-object p1

    invoke-direct {p0, p1}, Lopenlight/co/camera/view/setting/SettingsFragment;->playTutorial(Lopenlight/co/camera/enums/FtuView;)V

    goto :goto_0

    .line 374
    :cond_0
    invoke-direct {p0, p1}, Lopenlight/co/camera/view/setting/SettingsFragment;->updateSharedPreferences(Lopenlight/co/camera/view/setting/SettingModel;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lopenlight/co/camera/view/setting/SettingsFragment;)V
    .locals 1

    .line 112
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingDisabledMsgView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lopenlight/co/camera/view/setting/SettingsFragment;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingsAdapter:Lopenlight/co/camera/view/setting/SettingAdapter;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingsAdapter:Lopenlight/co/camera/view/setting/SettingAdapter;

    invoke-virtual {v0}, Lopenlight/co/camera/view/setting/SettingAdapter;->notifyDataSetChanged()V

    .line 118
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingDisabledMsgView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 119
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingDisabledMsgView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$onCreateView$2(Lopenlight/co/camera/view/setting/SettingsFragment;Landroid/view/View;)V
    .locals 0

    .line 179
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingDisabledMsgView:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$onCreateView$3(Lopenlight/co/camera/view/setting/SettingsFragment;Landroid/view/View;)V
    .locals 0

    .line 181
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->onBackPressed()V

    return-void
.end method

.method public static synthetic lambda$updateSharedPreferences$6(Lopenlight/co/camera/view/setting/SettingsFragment;Ljava/lang/String;)V
    .locals 1

    .line 588
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCamPref:Lopenlight/co/lib/content/Prefs;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSelectedString:Ljava/lang/String;

    invoke-interface {v0, p1, p0}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lopenlight/co/camera/view/setting/SettingsFragment;
    .locals 3

    .line 148
    new-instance v0, Lopenlight/co/camera/view/setting/SettingsFragment;

    invoke-direct {v0}, Lopenlight/co/camera/view/setting/SettingsFragment;-><init>()V

    .line 149
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "settings_index"

    .line 150
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "settings_scroll_to_index_key"

    .line 151
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/setting/SettingsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private playTutorial(Lopenlight/co/camera/enums/FtuView;)V
    .locals 7

    .line 698
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    if-nez v0, :cond_0

    .line 699
    sget-object p0, Lopenlight/co/camera/view/setting/SettingsFragment;->TAG:Ljava/lang/String;

    const-string p1, "Failed to play tutorial"

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 702
    :cond_0
    sget-object v0, Lopenlight/co/camera/enums/FtuView;->IMAGE_QUALITY:Lopenlight/co/camera/enums/FtuView;

    if-ne p1, v0, :cond_1

    .line 703
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mFtuContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mFtuDimmer:Landroid/view/View;

    invoke-virtual {p1, v0, p0}, Lopenlight/co/camera/view/ftu/FtuHelper;->showQualityFtu(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_0

    .line 704
    :cond_1
    sget-object v0, Lopenlight/co/camera/enums/FtuView;->EDIT_IMAGE:Lopenlight/co/camera/enums/FtuView;

    if-ne p1, v0, :cond_2

    .line 705
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mFtuContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0800eb

    invoke-virtual {p1, p0, v0}, Lopenlight/co/camera/view/ftu/FtuHelper;->showEditFtu(Landroid/view/ViewGroup;I)V

    goto :goto_0

    .line 707
    :cond_2
    iget-object v1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    iget-object v2, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mFtuContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mFtuBackdrop:Landroid/view/View;

    iget-object v4, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mFtuDimmer:Landroid/view/View;

    sget-object v6, Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;->SINGLE_RUN:Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lopenlight/co/camera/view/ftu/FtuHelper;->showImageFtu(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Lopenlight/co/camera/enums/FtuView;Lopenlight/co/camera/view/ftu/ImageFtuBaseController$FtuType;)V

    :goto_0
    return-void
.end method

.method private removeConfirmPopup()V
    .locals 2

    .line 655
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mParentView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 656
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mConfirmPopup:Lopenlight/co/camera/view/setting/ConfirmPopup;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mConfirmPopup:Lopenlight/co/camera/view/setting/ConfirmPopup;

    invoke-virtual {v0}, Lopenlight/co/camera/view/setting/ConfirmPopup;->closeAll()V

    const/4 v0, 0x0

    .line 658
    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mConfirmPopup:Lopenlight/co/camera/view/setting/ConfirmPopup;

    :cond_0
    return-void
.end method

.method private removeDofWheelView()V
    .locals 2

    .line 479
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofWheel:Lopenlight/co/camera/view/setting/SettingDofWheel;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofWheel:Lopenlight/co/camera/view/setting/SettingDofWheel;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 481
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 484
    invoke-direct {p0, v0}, Lopenlight/co/camera/view/setting/SettingsFragment;->setGuildTextVisibility(Z)V

    return-void
.end method

.method private resetCurrentSelectedItemData()V
    .locals 2

    const/4 v0, 0x0

    .line 576
    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentModel:Lopenlight/co/camera/view/setting/SettingModel;

    const/4 v1, -0x1

    .line 577
    iput v1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentSelectedIndex:I

    .line 578
    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSelectedString:Ljava/lang/String;

    const/4 v0, 0x0

    .line 579
    iput-boolean v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mInSecondLevelSettings:Z

    return-void
.end method

.method private resetTutorials()V
    .locals 3

    .line 645
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "ftu_user"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Z)V

    .line 646
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "ftu_edit_user"

    invoke-interface {v0, v1, v2}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Z)V

    .line 647
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "gallery_show_tutorial"

    invoke-interface {v0, v1, v2}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Z)V

    .line 648
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "qualityFtuState"

    const-string v1, "start"

    invoke-interface {p0, v0, v1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setGuildTextVisibility(Z)V
    .locals 0

    .line 663
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofGuildText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private showAndAnimateMessageView(Ljava/lang/String;)V
    .locals 2

    .line 737
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingDisabledMsgView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingDisabledMsgView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 740
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingDisabledMsgView:Landroid/widget/TextView;

    invoke-static {p1}, Lopenlight/co/lib/utils/AnimationUtils;->alphaAppear(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 741
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 743
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mHideMsgViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 745
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mHideMsgViewRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateHud(Lopenlight/co/camera/view/setting/SettingModel;Ljava/lang/String;)V
    .locals 1

    const-string v0, "device_exp_info_setting"

    .line 630
    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingModel;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 631
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0e010a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 632
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 633
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string p1, "hud_setting"

    const-string p2, "on"

    invoke-interface {p0, p1, p2}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 634
    :cond_0
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f0e0109

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 635
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 636
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string p1, "hud_setting"

    const-string p2, "off"

    invoke-interface {p0, p1, p2}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSharedPreferences(Lopenlight/co/camera/view/setting/SettingModel;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 587
    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingModel;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    .line 588
    iget-object v1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCamPref:Lopenlight/co/lib/content/Prefs;

    new-instance v2, Lopenlight/co/camera/view/setting/-$$Lambda$SettingsFragment$8zMmWLG2HagQv2aMPUJBOQ8XcIM;

    invoke-direct {v2, p0, v0}, Lopenlight/co/camera/view/setting/-$$Lambda$SettingsFragment$8zMmWLG2HagQv2aMPUJBOQ8XcIM;-><init>(Lopenlight/co/camera/view/setting/SettingsFragment;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lopenlight/co/lib/content/Prefs;->withBroadcast(Ljava/lang/Runnable;)V

    const/4 v1, -0x1

    .line 590
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "device_microphone_setting"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v2, "device_audio_setting"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "dream_processing_setting"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "lens_blocked_detector_setting"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "device_haptic_setting"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_5
    const-string v2, "inpocket_detection_setting"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 613
    :pswitch_0
    invoke-static {}, Lopenlight/co/camera/utils/MicManager;->get()Lopenlight/co/camera/utils/MicManager;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/utils/MicManager;->updateMicFromPrefs()Z

    goto :goto_1

    .line 610
    :pswitch_1
    invoke-static {}, Lopenlight/co/camera/utils/LensObstructionDetector;->get()Lopenlight/co/camera/utils/LensObstructionDetector;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/utils/LensObstructionDetector;->onSettingsUpdate()V

    goto :goto_1

    .line 601
    :pswitch_2
    invoke-static {}, Lopenlight/co/camera/metrics/Metrics;->get()Lopenlight/co/camera/metrics/Metrics;

    move-result-object p0

    .line 602
    invoke-virtual {p1}, Lopenlight/co/camera/view/setting/SettingModel;->getSettingsValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "event_background_processing_turned_on"

    .line 603
    invoke-virtual {p0, p1}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p1, "event_background_processing_turned_off"

    .line 605
    invoke-virtual {p0, p1}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;)V

    goto :goto_1

    .line 596
    :pswitch_3
    invoke-static {}, Lopenlight/co/camera/utils/SoundManager;->get()Lopenlight/co/camera/utils/SoundManager;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/utils/SoundManager;->checkAndEnableSound()V

    goto :goto_1

    .line 592
    :pswitch_4
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mHaptics:Lopenlight/co/camera/haptic/PlayHaptic;

    invoke-virtual {p0}, Lopenlight/co/camera/haptic/PlayHaptic;->checkAndUpdateHapticsStatus()V

    :cond_2
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x711b21ae -> :sswitch_5
        -0x39c0264f -> :sswitch_4
        0x26a28eb -> :sswitch_3
        0x291a62e0 -> :sswitch_2
        0x5c883cbe -> :sswitch_1
        0x7ba2f0c4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public initSecondLevelSettings(Ljava/lang/String;)V
    .locals 2

    .line 402
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingsAdapter:Lopenlight/co/camera/view/setting/SettingAdapter;

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Lopenlight/co/camera/view/setting/SettingAdapter;

    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lopenlight/co/camera/view/setting/SettingAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingsAdapter:Lopenlight/co/camera/view/setting/SettingAdapter;

    .line 406
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingsAdapter:Lopenlight/co/camera/view/setting/SettingAdapter;

    invoke-virtual {v0, p1}, Lopenlight/co/camera/view/setting/SettingAdapter;->indexForKey(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 408
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingsAdapter:Lopenlight/co/camera/view/setting/SettingAdapter;

    iget-object v1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingsAdapter:Lopenlight/co/camera/view/setting/SettingAdapter;

    .line 409
    invoke-virtual {v1, p1}, Lopenlight/co/camera/view/setting/SettingAdapter;->getSettingsIdFromIndex(I)Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    move-result-object v1

    .line 408
    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/setting/SettingAdapter;->createModel(Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;)Lopenlight/co/camera/view/setting/SettingModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 411
    invoke-direct {p0, v0, p1}, Lopenlight/co/camera/view/setting/SettingsFragment;->initSecondLevelSettingsAdapter(Lopenlight/co/camera/view/setting/SettingModel;I)V

    :cond_1
    const/4 p1, 0x0

    .line 414
    iput-boolean p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mInSecondLevelSettings:Z

    :cond_2
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 250
    iget-boolean v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mInSecondLevelSettings:Z

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentModel:Lopenlight/co/camera/view/setting/SettingModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentModel:Lopenlight/co/camera/view/setting/SettingModel;

    .line 252
    invoke-virtual {v0}, Lopenlight/co/camera/view/setting/SettingModel;->getSettingsValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSelectedString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentModel:Lopenlight/co/camera/view/setting/SettingModel;

    invoke-direct {p0, v0}, Lopenlight/co/camera/view/setting/SettingsFragment;->handleConfirmUpdated(Lopenlight/co/camera/view/setting/SettingModel;)V

    goto :goto_0

    .line 255
    :cond_0
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->initSettingsAdapter()V

    .line 258
    :goto_0
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->resetCurrentSelectedItemData()V

    goto :goto_1

    .line 260
    :cond_1
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    invoke-virtual {v0}, Lopenlight/co/camera/view/ftu/FtuHelper;->isFtuPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mFtuHelper:Lopenlight/co/camera/view/ftu/FtuHelper;

    invoke-virtual {p0}, Lopenlight/co/camera/view/ftu/FtuHelper;->closeFtu()V

    goto :goto_1

    .line 263
    :cond_2
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0b0064

    const/4 v1, 0x0

    .line 160
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mParentView:Landroid/view/View;

    .line 162
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mParentView:Landroid/view/View;

    const p2, 0x7f090138

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mTitleView:Landroid/widget/TextView;

    .line 163
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mParentView:Landroid/view/View;

    const p2, 0x7f090065

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofContainer:Landroid/widget/LinearLayout;

    .line 164
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    new-instance v0, Lopenlight/co/camera/view/setting/SettingsFragment$GestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lopenlight/co/camera/view/setting/SettingsFragment$GestureListener;-><init>(Lopenlight/co/camera/view/setting/SettingsFragment;Lopenlight/co/camera/view/setting/SettingsFragment$1;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mListener:Landroid/view/GestureDetector;

    .line 167
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mParentView:Landroid/view/View;

    const p2, 0x7f090137

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 169
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 170
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 172
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mParentView:Landroid/view/View;

    const p2, 0x7f090081

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mFtuContainer:Landroid/view/ViewGroup;

    .line 173
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mParentView:Landroid/view/View;

    const p2, 0x7f090080

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mFtuBackdrop:Landroid/view/View;

    .line 174
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mParentView:Landroid/view/View;

    const p2, 0x7f090082

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mFtuDimmer:Landroid/view/View;

    .line 176
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->initDofViews()V

    .line 177
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mParentView:Landroid/view/View;

    const p2, 0x7f090133

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingDisabledMsgView:Landroid/widget/TextView;

    .line 178
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingDisabledMsgView:Landroid/widget/TextView;

    new-instance p2, Lopenlight/co/camera/view/setting/-$$Lambda$SettingsFragment$G-5LGFshIAslXTp4m1aWTgzBwxE;

    invoke-direct {p2, p0}, Lopenlight/co/camera/view/setting/-$$Lambda$SettingsFragment$G-5LGFshIAslXTp4m1aWTgzBwxE;-><init>(Lopenlight/co/camera/view/setting/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mParentView:Landroid/view/View;

    const p2, 0x7f090134

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lopenlight/co/camera/view/setting/-$$Lambda$SettingsFragment$BNNzEtX46sfUMO7tKn-uUD9kpGk;

    invoke-direct {p2, p0}, Lopenlight/co/camera/view/setting/-$$Lambda$SettingsFragment$BNNzEtX46sfUMO7tKn-uUD9kpGk;-><init>(Lopenlight/co/camera/view/setting/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    invoke-virtual {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "settings_index"

    .line 184
    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 186
    invoke-virtual {p0, p2}, Lopenlight/co/camera/view/setting/SettingsFragment;->initSecondLevelSettings(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 191
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mParentView:Landroid/view/View;

    return-object p0

    :cond_0
    const/4 p2, -0x1

    if-eqz p3, :cond_1

    const-string v0, "selected_item_position"

    .line 196
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentSelectedIndex:I

    const-string v0, "selected_model"

    .line 197
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/view/setting/SettingModel;

    iput-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentModel:Lopenlight/co/camera/view/setting/SettingModel;

    .line 198
    iget v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentSelectedIndex:I

    if-le v0, p2, :cond_1

    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentModel:Lopenlight/co/camera/view/setting/SettingModel;

    if-eqz v0, :cond_1

    .line 199
    iget-object p2, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentModel:Lopenlight/co/camera/view/setting/SettingModel;

    iget v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentSelectedIndex:I

    invoke-direct {p0, p2, v0}, Lopenlight/co/camera/view/setting/SettingsFragment;->initSecondLevelSettingsAdapter(Lopenlight/co/camera/view/setting/SettingModel;I)V

    const-string p2, "in_second_level"

    .line 201
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mInSecondLevelSettings:Z

    .line 202
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 203
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mParentView:Landroid/view/View;

    return-object p0

    .line 207
    :cond_1
    invoke-direct {p0}, Lopenlight/co/camera/view/setting/SettingsFragment;->initSettingsAdapter()V

    const-string p3, "settings_scroll_to_index_key"

    .line 208
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 210
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSettingsAdapter:Lopenlight/co/camera/view/setting/SettingAdapter;

    invoke-virtual {v0, p3}, Lopenlight/co/camera/view/setting/SettingAdapter;->getKeyPosition(Ljava/lang/String;)I

    move-result p3

    if-eq p3, p2, :cond_2

    .line 212
    iget-object p2, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 215
    :cond_2
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 216
    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mParentView:Landroid/view/View;

    return-object p0
.end method

.method public onPause()V
    .locals 1

    .line 241
    invoke-super {p0}, Lopenlight/co/lib/view/LightFragment;->onPause()V

    .line 242
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mTheaterModeSettings:Lopenlight/co/TheaterMode/TheaterModeSettings;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mTheaterModeListener:Lopenlight/co/TheaterMode/TheaterModeListener;

    invoke-virtual {v0, p0}, Lopenlight/co/TheaterMode/TheaterModeSettings;->removeListener(Lopenlight/co/TheaterMode/TheaterModeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 235
    invoke-super {p0}, Lopenlight/co/lib/view/LightFragment;->onResume()V

    .line 236
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mTheaterModeSettings:Lopenlight/co/TheaterMode/TheaterModeSettings;

    iget-object p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mTheaterModeListener:Lopenlight/co/TheaterMode/TheaterModeListener;

    invoke-virtual {v0, p0}, Lopenlight/co/TheaterMode/TheaterModeSettings;->addListener(Lopenlight/co/TheaterMode/TheaterModeListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 221
    invoke-super {p0, p1}, Lopenlight/co/lib/view/LightFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 224
    iget-object v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentModel:Lopenlight/co/camera/view/setting/SettingModel;

    if-eqz v0, :cond_0

    iget v0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentSelectedIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const-string v0, "selected_model"

    .line 225
    iget-object v1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentModel:Lopenlight/co/camera/view/setting/SettingModel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "selected_item_position"

    .line 226
    iget v1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentSelectedIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "in_second_level"

    .line 229
    iget-boolean p0, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mInSecondLevelSettings:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 125
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mListener:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 126
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 127
    iput p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mLastLength:F

    .line 128
    iget-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mDofContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    iget p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mCurrentDofValue:F

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/setting/SettingsFragment;->mSelectedString:Ljava/lang/String;

    :cond_0
    return p2
.end method
