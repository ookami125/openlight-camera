.class public Lopenlight/co/camera/view/dragger/ModeDraggerModel;
.super Lopenlight/co/camera/view/dragger/DraggerModel;
.source "ModeDraggerModel.java"

# interfaces
.implements Lopenlight/co/camera/listener/OrientationListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ModeDraggerModel"


# instance fields
.field private mCameraModeIndex:I

.field private mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

.field private mPositionFromDragging:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lopenlight/co/camera/CameraMode;Landroid/content/Context;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Lopenlight/co/camera/view/dragger/DraggerModel;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->mPositionFromDragging:D

    .line 31
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    .line 32
    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/rotate/OrientationsController;->registerOrientationListener(Lopenlight/co/camera/listener/OrientationListener;)V

    .line 33
    invoke-virtual {v0}, Lopenlight/co/camera/view/rotate/OrientationsController;->getConfig()Lopenlight/co/camera/enums/OrientationConfig;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    .line 34
    invoke-direct {p0}, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->getItemLabels()V

    .line 35
    invoke-static {p1}, Lopenlight/co/camera/CameraMode;->indexForMode(Lopenlight/co/camera/CameraMode;)I

    move-result p1

    iput p1, p0, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->mCameraModeIndex:I

    const p1, 0x7f0e00e7

    .line 36
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->mName:Ljava/lang/String;

    const p1, 0x7f08007c

    .line 37
    iput p1, p0, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->mUpIcon:I

    const/4 p1, 0x6

    .line 38
    iput p1, p0, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->mAngleBetweenItemsInDegrees:I

    const p1, 0x7f08007e

    .line 39
    iput p1, p0, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->mDownIcon:I

    .line 40
    invoke-virtual {p0}, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->initialPositionFromSubject()F

    move-result p1

    iput p1, p0, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->mPositionFromSubject:F

    .line 41
    iget p1, p0, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->mPositionFromSubject:F

    iput p1, p0, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->mPositionFromDrag:F

    return-void
.end method

.method private getItemLabels()V
    .locals 2

    .line 122
    iget-object v0, p0, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    sget-object v1, Lopenlight/co/camera/enums/OrientationConfig;->PORTRAIT:Lopenlight/co/camera/enums/OrientationConfig;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    sget-object v1, Lopenlight/co/camera/enums/OrientationConfig;->PORTRAIT_REVERSE:Lopenlight/co/camera/enums/OrientationConfig;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {}, Lopenlight/co/camera/CameraMode;->getLabels()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->mItemsLabel:[Ljava/lang/String;

    goto :goto_1

    .line 124
    :cond_1
    :goto_0
    invoke-static {}, Lopenlight/co/camera/CameraMode;->getShortLabels()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->mItemsLabel:[Ljava/lang/String;

    :goto_1
    return-void
.end method


# virtual methods
.method public getListenerName()Ljava/lang/String;
    .locals 0

    .line 113
    sget-object p0, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public indexOfSelectedItem()I
    .locals 2

    .line 82
    invoke-virtual {p0}, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->initialPositionFromSubject()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->mPositionFromDragging:D

    .line 83
    invoke-virtual {p0}, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->updatePositionFromSubject()V

    .line 84
    iget p0, p0, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->mCameraModeIndex:I

    return p0
.end method

.method public initialPositionFromSubject()F
    .locals 1

    .line 94
    iget p0, p0, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->mCameraModeIndex:I

    int-to-float p0, p0

    invoke-static {}, Lopenlight/co/camera/CameraMode;->getMaxIndex()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0
.end method

.method public onOrientationChange(Lopenlight/co/camera/enums/OrientationConfig;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->mCurrentOrientationConfig:Lopenlight/co/camera/enums/OrientationConfig;

    .line 108
    invoke-direct {p0}, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->getItemLabels()V

    return-void
.end method

.method public positionFromSubject()F
    .locals 2

    .line 49
    iget-wide v0, p0, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->mPositionFromDragging:D

    double-to-float p0, v0

    return p0
.end method

.method public release()V
    .locals 1

    .line 118
    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v0

    invoke-virtual {p0}, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->getListenerName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/rotate/OrientationsController;->unregisterOrientationListenerWithTag(Ljava/lang/String;)V

    return-void
.end method

.method public updateHudInfoInPreview()V
    .locals 0

    return-void
.end method

.method public updateSubject(F)V
    .locals 4

    .line 59
    invoke-static {}, Lopenlight/co/camera/CameraMode;->getMaxIndex()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 60
    invoke-static {v0}, Lopenlight/co/camera/CameraMode;->forIndex(I)Lopenlight/co/camera/CameraMode;

    move-result-object v1

    .line 61
    iput v0, p0, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->mCameraModeIndex:I

    float-to-double v2, p1

    .line 62
    iput-wide v2, p0, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->mPositionFromDragging:D

    .line 63
    invoke-virtual {p0}, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->updatePositionFromSubject()V

    .line 67
    iget p1, p0, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->mPreviousCalculatedIndex:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x3

    .line 68
    invoke-virtual {p0, v0, p1}, Lopenlight/co/camera/view/dragger/ModeDraggerModel;->sendMessageDelayed(II)V

    .line 69
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lopenlight/co/camera/managers/CameraManager;->setCameraMode(Lopenlight/co/camera/CameraMode;)V

    :cond_0
    return-void
.end method
