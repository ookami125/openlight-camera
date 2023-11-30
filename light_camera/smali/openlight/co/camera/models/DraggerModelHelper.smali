.class public Lopenlight/co/camera/models/DraggerModelHelper;
.super Ljava/lang/Object;
.source "DraggerModelHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DraggerModelHelper"


# instance fields
.field private final mCamPref:Lopenlight/co/lib/content/Prefs;

.field public mExposureCompensationDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

.field public mModeDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

.field public mSensitivityDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

.field public mShutterSpeedDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/models/DraggerModelHelper;->mCamPref:Lopenlight/co/lib/content/Prefs;

    .line 34
    invoke-static {}, Lopenlight/co/camera/utils/Util;->isWheelInverseScroll()Z

    move-result v0

    .line 35
    iget-object v1, p0, Lopenlight/co/camera/models/DraggerModelHelper;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v2, "ex_index"

    invoke-interface {v1, v2}, Lopenlight/co/lib/content/Prefs;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 36
    invoke-static {}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->maxIndex()I

    move-result v2

    if-eqz v0, :cond_0

    sub-int v1, v2, v1

    .line 38
    :cond_0
    iget-object v2, p0, Lopenlight/co/camera/models/DraggerModelHelper;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v3, "iso_index"

    invoke-interface {v2, v3}, Lopenlight/co/lib/content/Prefs;->getIntValue(Ljava/lang/String;)I

    move-result v2

    .line 39
    invoke-static {}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->maxIndex()I

    move-result v3

    if-eqz v0, :cond_1

    sub-int v2, v3, v2

    .line 41
    :cond_1
    iget-object v3, p0, Lopenlight/co/camera/models/DraggerModelHelper;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v4, "shutter_index"

    invoke-interface {v3, v4}, Lopenlight/co/lib/content/Prefs;->getIntValue(Ljava/lang/String;)I

    move-result v3

    .line 42
    invoke-static {}, Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;->maxIndex()I

    move-result v4

    if-eqz v0, :cond_2

    sub-int v3, v4, v3

    .line 44
    :cond_2
    iget-object v0, p0, Lopenlight/co/camera/models/DraggerModelHelper;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v4, "camera_mode_setting"

    invoke-interface {v0, v4}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lopenlight/co/camera/CameraMode;->getMode(Ljava/lang/String;)Lopenlight/co/camera/CameraMode;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/CameraMode;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v4, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;

    invoke-direct {v4, v1, p1}, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;-><init>(ILandroid/content/Context;)V

    iput-object v4, p0, Lopenlight/co/camera/models/DraggerModelHelper;->mExposureCompensationDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    .line 49
    new-instance v1, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;

    .line 50
    invoke-static {v2}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->forIndex(I)Lopenlight/co/camera/utils/Constants$SensitivityValues;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;-><init>(Lopenlight/co/camera/utils/Constants$SensitivityValues;Landroid/content/Context;)V

    iput-object v1, p0, Lopenlight/co/camera/models/DraggerModelHelper;->mSensitivityDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    .line 52
    new-instance v1, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;

    .line 53
    invoke-static {v3}, Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;->forIndex(I)Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;-><init>(Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;Landroid/content/Context;)V

    iput-object v1, p0, Lopenlight/co/camera/models/DraggerModelHelper;->mShutterSpeedDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    .line 55
    new-instance v1, Lopenlight/co/camera/view/dragger/ModeDraggerModel;

    .line 56
    invoke-static {v0}, Lopenlight/co/camera/CameraMode;->getModeByLabel(Ljava/lang/String;)Lopenlight/co/camera/CameraMode;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lopenlight/co/camera/view/dragger/ModeDraggerModel;-><init>(Lopenlight/co/camera/CameraMode;Landroid/content/Context;)V

    iput-object v1, p0, Lopenlight/co/camera/models/DraggerModelHelper;->mModeDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    return-void
.end method


# virtual methods
.method public releaseModels()V
    .locals 1

    .line 60
    iget-object v0, p0, Lopenlight/co/camera/models/DraggerModelHelper;->mModeDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    if-eqz v0, :cond_0

    .line 61
    iget-object p0, p0, Lopenlight/co/camera/models/DraggerModelHelper;->mModeDraggerModel:Lopenlight/co/camera/view/dragger/DraggerModel;

    invoke-virtual {p0}, Lopenlight/co/camera/view/dragger/DraggerModel;->release()V

    :cond_0
    return-void
.end method

.method public resetValues()V
    .locals 3

    .line 69
    iget-object v0, p0, Lopenlight/co/camera/models/DraggerModelHelper;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "ex_index"

    sget-object v2, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->EXPOSURE_COMP_00:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    .line 70
    invoke-virtual {v2}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->getExposureCompensationIndex()I

    move-result v2

    .line 69
    invoke-interface {v0, v1, v2}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;I)V

    .line 71
    iget-object v0, p0, Lopenlight/co/camera/models/DraggerModelHelper;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "iso_index"

    sget-object v2, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ISO_100:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    .line 72
    invoke-virtual {v2}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->getSensitivityIndex()I

    move-result v2

    .line 71
    invoke-interface {v0, v1, v2}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;I)V

    .line 73
    iget-object v0, p0, Lopenlight/co/camera/models/DraggerModelHelper;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "shutter_index"

    sget-object v2, Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;->SHUTTER_SPEED_1_24:Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;

    .line 74
    invoke-virtual {v2}, Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;->getShutterSpeedIndex()I

    move-result v2

    .line 73
    invoke-interface {v0, v1, v2}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;I)V

    .line 75
    iget-object p0, p0, Lopenlight/co/camera/models/DraggerModelHelper;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "camera_mode_setting"

    sget-object v1, Lopenlight/co/camera/CameraMode;->AUTO:Lopenlight/co/camera/CameraMode;

    invoke-virtual {v1}, Lopenlight/co/camera/CameraMode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
