.class public Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;
.super Lopenlight/co/camera/view/dragger/DraggerModel;
.source "ExposureCompensationDraggerModel.java"


# static fields
.field private static final LAST_INDEX:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPositionFromDragging:D

.field private mSubject:Lopenlight/co/camera/utils/Constants$ExposureCompValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->TAG:Ljava/lang/String;

    .line 30
    invoke-static {}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->values()[Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->LAST_INDEX:I

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Lopenlight/co/camera/view/dragger/DraggerModel;-><init>()V

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->mPositionFromDragging:D

    .line 44
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->mItemsLabel:[Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->forIndex(I)Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->mSubject:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    .line 46
    invoke-static {}, Lopenlight/co/camera/utils/Util;->isWheelInverseScroll()Z

    move-result p1

    iput-boolean p1, p0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->mIsWheelReverseScroll:Z

    .line 47
    iget-boolean p1, p0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->mIsWheelReverseScroll:Z

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->mItemsLabel:[Ljava/lang/String;

    invoke-static {p1}, Lopenlight/co/camera/utils/Util;->reverseArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->mItemsLabel:[Ljava/lang/String;

    :cond_0
    const p1, 0x7f0e0055

    .line 50
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->mName:Ljava/lang/String;

    const p1, 0x7f08007c

    .line 51
    iput p1, p0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->mUpIcon:I

    const p1, 0x7f08007e

    .line 52
    iput p1, p0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->mDownIcon:I

    .line 53
    invoke-virtual {p0}, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->initialPositionFromSubject()F

    move-result p1

    iput p1, p0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->mPositionFromSubject:F

    .line 54
    iget p1, p0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->mPositionFromSubject:F

    iput p1, p0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->mPositionFromDrag:F

    return-void
.end method


# virtual methods
.method public indexOfSelectedItem()I
    .locals 0

    .line 80
    iget-object p0, p0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->mSubject:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    invoke-virtual {p0}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->ordinal()I

    move-result p0

    return p0
.end method

.method public initialPositionFromSubject()F
    .locals 2

    .line 85
    sget v0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->LAST_INDEX:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 86
    iget-object p0, p0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->mSubject:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    invoke-virtual {p0}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->ordinal()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    return p0
.end method

.method public positionFromSubject()F
    .locals 2

    .line 59
    iget-wide v0, p0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->mPositionFromDragging:D

    double-to-float p0, v0

    return p0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public updateHudInfoInPreview()V
    .locals 5

    .line 99
    iget-object v0, p0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    .line 100
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->mSubject:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    invoke-virtual {v1}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->ordinal()I

    move-result v1

    invoke-static {v1}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->forIndex(I)Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->getExposureCompensationVal()I

    move-result v1

    .line 104
    sget-object v2, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AE Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 106
    iget-object p0, p0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {p0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->startRepeatingRequestInPreview()V

    :cond_0
    return-void
.end method

.method public updateSubject(F)V
    .locals 3

    .line 64
    invoke-static {}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->maxIndex()I

    move-result v0

    .line 65
    iget-boolean v1, p0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->mIsWheelReverseScroll:Z

    if-eqz v1, :cond_0

    sget v1, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->LAST_INDEX:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    .line 66
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    sget v0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->LAST_INDEX:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    .line 67
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 68
    :goto_0
    invoke-static {}, Lopenlight/co/camera/utils/Constants$ExposureCompValues;->values()[Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    move-result-object v1

    aget-object v1, v1, v0

    iput-object v1, p0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->mSubject:Lopenlight/co/camera/utils/Constants$ExposureCompValues;

    float-to-double v1, p1

    .line 69
    iput-wide v1, p0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->mPositionFromDragging:D

    .line 70
    invoke-virtual {p0}, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->updatePositionFromSubject()V

    .line 73
    iget p1, p0, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->mPreviousCalculatedIndex:I

    if-eq v0, p1, :cond_1

    const/4 p1, 0x0

    .line 74
    invoke-virtual {p0, v0, p1}, Lopenlight/co/camera/view/dragger/ExposureCompensationDraggerModel;->sendMessageDelayed(II)V

    :cond_1
    return-void
.end method
