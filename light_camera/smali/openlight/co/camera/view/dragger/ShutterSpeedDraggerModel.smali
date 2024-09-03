.class public Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;
.super Lopenlight/co/camera/view/dragger/DraggerModel;
.source "ShutterSpeedDraggerModel.java"


# static fields
.field private static final LAST_INDEX:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPositionFromDragging:D

.field private mSubject:Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-class v0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->TAG:Ljava/lang/String;

    .line 29
    invoke-static {}, Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;->values()[Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->LAST_INDEX:I

    return-void
.end method

.method public constructor <init>(Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;Landroid/content/Context;)V
    .registers 5

    .line 43
    invoke-direct {p0}, Lopenlight/co/camera/view/dragger/DraggerModel;-><init>()V

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mPositionFromDragging:D

    .line 44
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mItemsLabel:[Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mSubject:Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;

    .line 46
    invoke-static {}, Lopenlight/co/camera/utils/Util;->isWheelInverseScroll()Z

    move-result p1

    iput-boolean p1, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mIsWheelReverseScroll:Z

    .line 47
    iget-boolean p1, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mIsWheelReverseScroll:Z

    if-eqz p1, :cond_28

    .line 48
    iget-object p1, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mItemsLabel:[Ljava/lang/String;

    invoke-static {p1}, Lopenlight/co/camera/utils/Util;->reverseArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mItemsLabel:[Ljava/lang/String;

    :cond_28
    const p1, 0x7f0e0124

    .line 50
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mName:Ljava/lang/String;

    const p1, 0x7f080086

    .line 51
    iput p1, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mUpIcon:I

    const p1, 0x7f080088

    .line 52
    iput p1, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mDownIcon:I

    .line 53
    invoke-virtual {p0}, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->initialPositionFromSubject()F

    move-result p1

    iput p1, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mPositionFromSubject:F

    .line 54
    iget p1, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mPositionFromSubject:F

    iput p1, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mPositionFromDrag:F

    return-void
.end method


# virtual methods
.method public indexOfSelectedItem()I
    .registers 1

    .line 92
    iget-object p0, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mSubject:Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;

    invoke-virtual {p0}, Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;->ordinal()I

    move-result p0

    return p0
.end method

.method public initialPositionFromSubject()F
    .registers 3

    .line 64
    sget v0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->LAST_INDEX:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 65
    iget-object p0, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mSubject:Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;

    invoke-virtual {p0}, Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;->ordinal()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    return p0
.end method

.method public positionFromSubject()F
    .registers 3

    .line 59
    iget-wide v0, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mPositionFromDragging:D

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
    invoke-static {}, Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;->maxIndex()I

    move-result v0

    .line 101
    iget-boolean v1, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mIsWheelReverseScroll:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mSubject:Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;

    .line 102
    invoke-virtual {v1}, Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_16

    :cond_10
    iget-object v0, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mSubject:Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;

    invoke-virtual {v0}, Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;->ordinal()I

    move-result v0

    .line 103
    :goto_16
    sget-object v1, Lopenlight/co/camera/utils/Constants;->exposureTimes:[J

    aget-wide v0, v1, v0

    .line 104
    sget-object v2, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExposureTime Value info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v2, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v2}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lopenlight/co/camera/managers/CameraManager;

    .line 106
    invoke-virtual {v2}, Lopenlight/co/camera/managers/CameraManager;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 108
    invoke-static {v2, v0, v1}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;J)V

    .line 109
    invoke-static {v2, v0, v1, v0, v1}, Lopenlight/co/camera/managers/capturerequest/CaptureRequestBuilder;->setShutterPriority(Landroid/hardware/camera2/CaptureRequest$Builder;JJ)V

    .line 110
    iget-object p0, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {p0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->startRepeatingRequestInPreview()V

    :cond_4f
    return-void
.end method

.method public updateSubject(F)V
    .registers 6

    .line 75
    sget v0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->LAST_INDEX:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 76
    invoke-static {}, Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;->maxIndex()I

    move-result v1

    .line 77
    invoke-static {}, Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;->values()[Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;

    move-result-object v2

    aget-object v2, v2, v0

    iput-object v2, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mSubject:Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;

    .line 78
    iget-boolean v2, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mIsWheelReverseScroll:Z

    if-eqz v2, :cond_1a

    sub-int/2addr v1, v0

    goto :goto_1b

    :cond_1a
    move v1, v0

    :goto_1b
    float-to-double v2, p1

    .line 80
    iput-wide v2, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mPositionFromDragging:D

    .line 81
    invoke-virtual {p0}, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->updatePositionFromSubject()V

    .line 85
    iget p1, p0, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->mPreviousCalculatedIndex:I

    if-eq v0, p1, :cond_29

    const/4 p1, 0x2

    .line 86
    invoke-virtual {p0, v1, p1}, Lopenlight/co/camera/view/dragger/ShutterSpeedDraggerModel;->sendMessageDelayed(II)V

    :cond_29
    return-void
.end method
