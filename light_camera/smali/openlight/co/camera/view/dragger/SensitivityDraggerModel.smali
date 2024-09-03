.class public Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;
.super Lopenlight/co/camera/view/dragger/DraggerModel;
.source "SensitivityDraggerModel.java"


# static fields
.field private static final LAST_INDEX:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPositionFromDragging:D

.field private mSubject:Lopenlight/co/camera/utils/Constants$SensitivityValues;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-class v0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->TAG:Ljava/lang/String;

    .line 29
    invoke-static {}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->values()[Lopenlight/co/camera/utils/Constants$SensitivityValues;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->LAST_INDEX:I

    return-void
.end method

.method public constructor <init>(Lopenlight/co/camera/utils/Constants$SensitivityValues;Landroid/content/Context;)V
    .registers 5

    .line 43
    invoke-direct {p0}, Lopenlight/co/camera/view/dragger/DraggerModel;-><init>()V

    .line 44
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->mItemsLabel:[Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->mSubject:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    .line 46
    invoke-static {}, Lopenlight/co/camera/utils/Util;->isWheelInverseScroll()Z

    move-result p1

    iput-boolean p1, p0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->mIsWheelReverseScroll:Z

    .line 47
    iget-boolean p1, p0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->mIsWheelReverseScroll:Z

    if-eqz p1, :cond_24

    .line 48
    iget-object p1, p0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->mItemsLabel:[Ljava/lang/String;

    invoke-static {p1}, Lopenlight/co/camera/utils/Util;->reverseArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->mItemsLabel:[Ljava/lang/String;

    :cond_24
    const p1, 0x7f0e00da

    .line 50
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->mName:Ljava/lang/String;

    const p1, 0x7f08007f

    .line 51
    iput p1, p0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->mUpIcon:I

    const p1, 0x7f080081

    .line 52
    iput p1, p0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->mDownIcon:I

    .line 53
    invoke-virtual {p0}, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->initialPositionFromSubject()F

    move-result p1

    iput p1, p0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->mPositionFromSubject:F

    .line 54
    iget p1, p0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->mPositionFromSubject:F

    iput p1, p0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->mPositionFromDrag:F

    return-void
.end method


# virtual methods
.method public indexOfSelectedItem()I
    .registers 1

    .line 92
    iget-object p0, p0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->mSubject:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    invoke-virtual {p0}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ordinal()I

    move-result p0

    return p0
.end method

.method public initialPositionFromSubject()F
    .registers 3

    .line 64
    sget v0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->LAST_INDEX:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 65
    iget-object p0, p0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->mSubject:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    invoke-virtual {p0}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->ordinal()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    return p0
.end method

.method public positionFromSubject()F
    .registers 3

    .line 59
    iget-wide v0, p0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->mPositionFromDragging:D

    double-to-float p0, v0

    return p0
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method public updateHudInfoInPreview()V
    .registers 6

    .line 100
    invoke-static {}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->maxIndex()I

    move-result v0

    .line 101
    iget-boolean v1, p0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->mIsWheelReverseScroll:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->mSubject:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    .line 102
    invoke-virtual {v1}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->getSensitivityIndex()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_16

    :cond_10
    iget-object v0, p0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->mSubject:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    .line 103
    invoke-virtual {v0}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->getSensitivityIndex()I

    move-result v0

    .line 105
    :goto_16
    iget-object v1, p0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lopenlight/co/camera/managers/CameraManager;

    .line 106
    invoke-virtual {v1}, Lopenlight/co/camera/managers/CameraManager;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 108
    invoke-static {v0}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->forIndex(I)Lopenlight/co/camera/utils/Constants$SensitivityValues;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->getSensitivityVal()I

    move-result v0

    .line 110
    sget-object v2, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISO Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {v1, v0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setSensitivity(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 112
    invoke-static {v1, v0, v0}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setIsoPriority(Landroid/hardware/camera2/CaptureRequest$Builder;II)V

    .line 113
    iget-object p0, p0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {p0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->startRepeatingRequestInPreview()V

    :cond_53
    return-void
.end method

.method public updateSubject(F)V
    .registers 6

    .line 75
    invoke-static {}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->maxIndex()I

    move-result v0

    .line 76
    sget v1, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->LAST_INDEX:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 77
    invoke-static {}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->values()[Lopenlight/co/camera/utils/Constants$SensitivityValues;

    move-result-object v2

    aget-object v2, v2, v1

    iput-object v2, p0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->mSubject:Lopenlight/co/camera/utils/Constants$SensitivityValues;

    .line 78
    iget-boolean v2, p0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->mIsWheelReverseScroll:Z

    if-eqz v2, :cond_1a

    sub-int/2addr v0, v1

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    float-to-double v2, p1

    .line 80
    iput-wide v2, p0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->mPositionFromDragging:D

    .line 81
    invoke-virtual {p0}, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->updatePositionFromSubject()V

    .line 85
    iget p1, p0, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->mPreviousCalculatedIndex:I

    if-eq v1, p1, :cond_29

    const/4 p1, 0x1

    .line 86
    invoke-virtual {p0, v0, p1}, Lopenlight/co/camera/view/dragger/SensitivityDraggerModel;->sendMessageDelayed(II)V

    :cond_29
    return-void
.end method
