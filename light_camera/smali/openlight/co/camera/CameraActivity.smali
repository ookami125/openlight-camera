.class public Lopenlight/co/camera/CameraActivity;
.super Lopenlight/co/camera/BaseActivity;
.source "CameraActivity.java"


# static fields
.field public static final HISTOGRAM_SUPPORTED:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mLockStateHelper:Lopenlight/co/lib/utils/LockStateHelper;

.field private final mMutePreviewStatusOnClickListener:Landroid/view/View$OnClickListener;

.field private mOrientationListener:Landroid/view/OrientationEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v0

    const-string v1, "histogram.enable"

    invoke-virtual {v0, v1}, Lopenlight/co/lib/utils/FeatureManager;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lopenlight/co/camera/CameraActivity;->HISTOGRAM_SUPPORTED:Z

    .line 32
    const-class v0, Lopenlight/co/camera/CameraActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/CameraActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lopenlight/co/camera/BaseActivity;-><init>()V

    .line 35
    new-instance v0, Lopenlight/co/lib/utils/LockStateHelper;

    invoke-direct {v0}, Lopenlight/co/lib/utils/LockStateHelper;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/CameraActivity;->mLockStateHelper:Lopenlight/co/lib/utils/LockStateHelper;

    .line 39
    new-instance v0, Lopenlight/co/camera/-$$Lambda$CameraActivity$2u6X9EbxHFbmEEGjOEs7jifBMfQ;

    invoke-direct {v0, p0}, Lopenlight/co/camera/-$$Lambda$CameraActivity$2u6X9EbxHFbmEEGjOEs7jifBMfQ;-><init>(Lopenlight/co/camera/CameraActivity;)V

    iput-object v0, p0, Lopenlight/co/camera/CameraActivity;->mMutePreviewStatusOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private addFragment()V
    .locals 2

    .line 147
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    const-string v1, "camera_mode_setting"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lopenlight/co/camera/CameraMode;->getMode(Ljava/lang/String;)Lopenlight/co/camera/CameraMode;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/CameraMode;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Lopenlight/co/camera/VideoFragment;

    invoke-direct {v0}, Lopenlight/co/camera/VideoFragment;-><init>()V

    .line 151
    iget-object v1, p0, Lopenlight/co/camera/CameraActivity;->mMutePreviewStatusOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/VideoFragment;->setMutePreviewStatusListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Lopenlight/co/camera/ImagePreviewFragment;

    invoke-direct {v0}, Lopenlight/co/camera/ImagePreviewFragment;-><init>()V

    .line 157
    :goto_0
    invoke-virtual {p0}, Lopenlight/co/camera/CameraActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const v1, 0x1020002

    invoke-virtual {p0, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static synthetic lambda$new$0(Lopenlight/co/camera/CameraActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "device_microphone_setting"

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0, p1}, Lopenlight/co/camera/CameraActivity;->launchSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 110
    invoke-virtual {p0}, Lopenlight/co/camera/CameraActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x1020002

    .line 111
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lopenlight/co/camera/CameraActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public launchSettingsActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lopenlight/co/camera/view/setting/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    const-string v1, "settings_index"

    .line 91
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "settings_scroll_to_index_key"

    .line 94
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    :cond_1
    invoke-virtual {p0, v0}, Lopenlight/co/camera/CameraActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 139
    invoke-static {}, Lopenlight/co/lib/utils/LifecycleLogger;->get()Lopenlight/co/lib/utils/LifecycleLogger;

    move-result-object v0

    const-string v1, "onBackPressed()"

    invoke-virtual {v0, p0, v1}, Lopenlight/co/lib/utils/LifecycleLogger;->log(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Lopenlight/co/camera/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    .line 102
    invoke-virtual {p0, p1}, Lopenlight/co/camera/CameraActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Lopenlight/co/camera/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lopenlight/co/camera/CameraActivity;->mLockStateHelper:Lopenlight/co/lib/utils/LockStateHelper;

    invoke-virtual {v0, p0}, Lopenlight/co/lib/utils/LockStateHelper;->register(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0}, Lopenlight/co/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 51
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {p0, v0}, Lopenlight/co/camera/CameraActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-nez p1, :cond_0

    .line 54
    invoke-direct {p0}, Lopenlight/co/camera/CameraActivity;->addFragment()V

    .line 56
    :cond_0
    new-instance p1, Lopenlight/co/camera/CameraActivity$1;

    invoke-direct {p1, p0, p0}, Lopenlight/co/camera/CameraActivity$1;-><init>(Lopenlight/co/camera/CameraActivity;Landroid/content/Context;)V

    iput-object p1, p0, Lopenlight/co/camera/CameraActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 132
    invoke-super {p0}, Lopenlight/co/camera/BaseActivity;->onDestroy()V

    .line 133
    iget-object v0, p0, Lopenlight/co/camera/CameraActivity;->mLockStateHelper:Lopenlight/co/lib/utils/LockStateHelper;

    invoke-virtual {v0, p0}, Lopenlight/co/lib/utils/LockStateHelper;->unregister(Landroid/content/Context;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 120
    invoke-super {p0}, Lopenlight/co/camera/BaseActivity;->onPause()V

    .line 121
    iget-object p0, p0, Lopenlight/co/camera/CameraActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 72
    invoke-super {p0}, Lopenlight/co/camera/BaseActivity;->onResume()V

    .line 73
    iget-object p0, p0, Lopenlight/co/camera/CameraActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    .line 75
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->get()Lopenlight/co/lib/utils/Utils;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/lib/utils/Utils;->updateLockedState()Z

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 66
    invoke-super {p0}, Lopenlight/co/camera/BaseActivity;->onStart()V

    const-string v0, "openlight.co.lightcamera.broadcast.ACTION_CAMERA_ACTIVITY_STARTED"

    .line 67
    invoke-static {p0, v0}, Lopenlight/co/camera/utils/Util;->broadcastCameraIntent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 126
    invoke-super {p0}, Lopenlight/co/camera/BaseActivity;->onStop()V

    const-string v0, "openlight.co.lightcamera.broadcast.ACTION_CAMERA_ACTIVITY_STOPPED"

    .line 127
    invoke-static {p0, v0}, Lopenlight/co/camera/utils/Util;->broadcastCameraIntent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
