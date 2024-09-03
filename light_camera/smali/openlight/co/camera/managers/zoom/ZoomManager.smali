.class public Lopenlight/co/camera/managers/zoom/ZoomManager;
.super Ljava/lang/Object;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomUpdateOnUi;,
        Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;,
        Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;
    }
.end annotation


# static fields
.field private static final LENS_TO_FOCAL_LENGTH_FACTOR:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ZoomManager"

.field private static sInstance:Lopenlight/co/camera/managers/zoom/ZoomManager;


# instance fields
.field private final mABZoomStepSize:F

.field private final mBAFocalLengthRatio:F

.field private final mBCZoomStepSize:F

.field private final mCamPref:Lopenlight/co/lib/content/Prefs;

.field private final mCameraInfo:Lopenlight/co/camera/CameraInfo;

.field private mFocalLength:F

.field private final mLensRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevFocalLength:F

.field private mPrevZoomLevel:F

.field private mRelativeToPrimeZoomLevel:F

.field private mZoomCroppedView:Landroid/graphics/Rect;

.field private mZoomLevel:F

.field private mZoomState:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;

.field private mZoomType:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

.field private mZoomUpdateOnUiListener:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomUpdateOnUi;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lopenlight/co/camera/CameraInfo;->get()Lopenlight/co/camera/CameraInfo;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    .line 62
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const/high16 v0, -0x40800000    # -1.0f

    .line 71
    iput v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mPrevZoomLevel:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 80
    iput v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mRelativeToPrimeZoomLevel:F

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomCroppedView:Landroid/graphics/Rect;

    .line 95
    sget-object v0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;->IDLE:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;

    iput-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomState:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;

    .line 100
    sget-object v0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;->SCROLL:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    iput-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomType:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    .line 110
    invoke-static {}, Lopenlight/co/camera/CameraInfo;->get()Lopenlight/co/camera/CameraInfo;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/CameraInfo;->getSimulatedPrimeFocalLengthRatios()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mLensRatios:Ljava/util/List;

    .line 506
    iget-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v0}, Lopenlight/co/camera/CameraInfo;->getMinFocalLengthLens()F

    move-result v0

    iput v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mFocalLength:F

    .line 507
    iget v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mFocalLength:F

    iput v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mPrevFocalLength:F

    .line 508
    iget-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v0}, Lopenlight/co/camera/CameraInfo;->getABZoomStepSize()F

    move-result v0

    iput v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mABZoomStepSize:F

    .line 509
    iget-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v0}, Lopenlight/co/camera/CameraInfo;->getBCZoomStepSize()F

    move-result v0

    iput v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mBCZoomStepSize:F

    .line 510
    iget-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v0}, Lopenlight/co/camera/CameraInfo;->getBACamerasFocalLengthRatio()F

    move-result v0

    iput v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mBAFocalLengthRatio:F

    .line 511
    invoke-virtual {p0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->resetZoomAtStart()V

    return-void
.end method

.method private calculateDigitalLevelBasedOnZoomLevel()V
    .registers 7

    .line 443
    iget-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v0}, Lopenlight/co/camera/CameraInfo;->isOpticalZoomCapable()Z

    move-result v0

    if-nez v0, :cond_c

    .line 444
    iget v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    iput v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mRelativeToPrimeZoomLevel:F

    .line 446
    :cond_c
    iget-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v0}, Lopenlight/co/camera/CameraInfo;->getLensesFocalLengths()[F

    move-result-object v0

    .line 447
    iget-object v1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v1}, Lopenlight/co/camera/CameraInfo;->getNumberOfLenses()I

    move-result v1

    .line 448
    sget-object v2, Lopenlight/co/camera/managers/zoom/ZoomManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ZOOM] calculated zoom level for lens with focal length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_31
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_4b

    .line 452
    aget v4, v0, v3

    aget v5, v0, v2

    div-float/2addr v4, v5

    .line 453
    iget v5, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    cmpl-float v5, v5, v4

    if-ltz v5, :cond_44

    iget v5, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    div-float/2addr v5, v4

    goto :goto_46

    :cond_44
    iget v5, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    :goto_46
    iput v5, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mRelativeToPrimeZoomLevel:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 457
    :cond_4b
    sget-object v0, Lopenlight/co/camera/managers/zoom/ZoomManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ZOOM] calculated zoom level for lens with focal length latest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mFocalLength:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mRelativeToPrimeZoomLevel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " Absolute zoom level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private calculateFocalLength()F
    .registers 10

    .line 467
    iget-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v0}, Lopenlight/co/camera/CameraInfo;->getLensesFocalLengths()[F

    move-result-object v0

    .line 468
    iget-object v1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v1}, Lopenlight/co/camera/CameraInfo;->getNumberOfLenses()I

    move-result v1

    const/4 v2, 0x0

    .line 470
    aget v3, v0, v2

    .line 471
    iget-object v4, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v4}, Lopenlight/co/camera/CameraInfo;->isOpticalZoomCapable()Z

    move-result v4

    if-eqz v4, :cond_30

    move v4, v3

    move v3, v2

    :goto_19
    add-int/lit8 v5, v1, -0x1

    if-gt v3, v5, :cond_2f

    .line 475
    iget v6, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    aget v7, v0, v3

    aget v8, v0, v2

    div-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2c

    if-ge v3, v5, :cond_2c

    aget v4, v0, v3

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2f
    move v3, v4

    .line 480
    :cond_30
    sget-object v0, Lopenlight/co/camera/managers/zoom/ZoomManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ZOOM] calculated focal Length at zoom level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " is: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public static declared-synchronized get()Lopenlight/co/camera/managers/zoom/ZoomManager;
    .registers 2

    const-class v0, Lopenlight/co/camera/managers/zoom/ZoomManager;

    monitor-enter v0

    .line 121
    :try_start_3
    sget-object v1, Lopenlight/co/camera/managers/zoom/ZoomManager;->sInstance:Lopenlight/co/camera/managers/zoom/ZoomManager;

    if-nez v1, :cond_e

    .line 122
    new-instance v1, Lopenlight/co/camera/managers/zoom/ZoomManager;

    invoke-direct {v1}, Lopenlight/co/camera/managers/zoom/ZoomManager;-><init>()V

    sput-object v1, Lopenlight/co/camera/managers/zoom/ZoomManager;->sInstance:Lopenlight/co/camera/managers/zoom/ZoomManager;

    .line 124
    :cond_e
    sget-object v1, Lopenlight/co/camera/managers/zoom/ZoomManager;->sInstance:Lopenlight/co/camera/managers/zoom/ZoomManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    .line 120
    monitor-exit v0

    throw v1
.end method

.method private getPrevZoomLevel()F
    .registers 1

    .line 502
    iget p0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mPrevZoomLevel:F

    return p0
.end method

.method private getZoomRect(F)Landroid/graphics/Rect;
    .registers 7

    .line 428
    invoke-static {}, Lopenlight/co/camera/CameraInfo;->get()Lopenlight/co/camera/CameraInfo;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/CameraInfo;->getSensorActiveArraySize()Landroid/graphics/Rect;

    move-result-object p0

    .line 429
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 430
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 432
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    div-float/2addr v2, p1

    float-to-int v2, v2

    .line 433
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v3

    div-float/2addr p0, p1

    float-to-int p0, p0

    .line 434
    new-instance p1, Landroid/graphics/Rect;

    sub-int v3, v0, v2

    sub-int v4, v1, p0

    add-int/2addr v0, v2

    add-int/2addr v1, p0

    invoke-direct {p1, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method private storeZoomValue(Lopenlight/co/camera/view/zoom/ZoomWheel;)V
    .registers 4

    .line 491
    iget-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "zoom_value"

    .line 492
    invoke-virtual {p1}, Lopenlight/co/camera/view/zoom/ZoomWheel;->getZoomValue()F

    move-result p1

    .line 491
    invoke-interface {v0, v1, p1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;F)V

    .line 493
    iget-object p1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "focal_length"

    iget p0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mFocalLength:F

    invoke-interface {p1, v0, p0}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method public calculatePrimeLevel(Z)F
    .registers 7

    .line 223
    iget-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mLensRatios:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 224
    invoke-direct {p0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->getPrevZoomLevel()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_27

    const/4 v3, 0x0

    :goto_11
    if-gt v3, v0, :cond_3d

    .line 228
    iget-object v2, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mLensRatios:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v4, v2, v1

    if-lez v4, :cond_24

    goto :goto_3d

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_27
    :goto_27
    if-ltz v0, :cond_3d

    .line 235
    iget-object v2, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mLensRatios:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v3, v2, v1

    if-gez v3, :cond_3a

    goto :goto_3d

    :cond_3a
    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    .line 241
    :cond_3d
    :goto_3d
    sget-object v0, Lopenlight/co/camera/managers/zoom/ZoomManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ZOOM] prevZoomLevel "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mPrevZoomLevel:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "  calculatedLevel: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " isIncreased: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public calculateZoomLevelFromPreference()V
    .registers 4

    .line 396
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    const-string v1, "camera_mode_setting"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lopenlight/co/camera/CameraMode;->getMode(Ljava/lang/String;)Lopenlight/co/camera/CameraMode;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/CameraMode;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_17

    const/high16 v0, 0x41e00000    # 28.0f

    goto :goto_1f

    .line 397
    :cond_17
    iget-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "zoom_value"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getFloatValue(Ljava/lang/String;)F

    move-result v0

    .line 398
    :goto_1f
    iget-object v1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v1}, Lopenlight/co/camera/CameraInfo;->getMinFocalLengthLens()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    .line 399
    invoke-direct {p0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->calculateDigitalLevelBasedOnZoomLevel()V

    return-void
.end method

.method public enumContains(F)Z
    .registers 6

    .line 286
    invoke-static {}, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;->values()[Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;

    move-result-object p0

    .line 285
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_18

    aget-object v3, p0, v2

    .line 287
    invoke-virtual {v3}, Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;->getFocalLength()F

    move-result v3

    cmpl-float v3, v3, p1

    if-nez v3, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_18
    return v1
.end method

.method public getFocalLength()F
    .registers 1

    .line 336
    iget p0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mFocalLength:F

    return p0
.end method

.method public getTempZoomLevel()F
    .registers 1

    .line 327
    iget p0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mRelativeToPrimeZoomLevel:F

    return p0
.end method

.method public getZoomCroppedView()Landroid/graphics/Rect;
    .registers 2

    .line 354
    iget-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomCroppedView:Landroid/graphics/Rect;

    if-nez v0, :cond_c

    .line 355
    iget v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mRelativeToPrimeZoomLevel:F

    invoke-direct {p0, v0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->getZoomRect(F)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomCroppedView:Landroid/graphics/Rect;

    .line 357
    :cond_c
    iget-object p0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomCroppedView:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getZoomLevel()F
    .registers 1

    .line 317
    iget p0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    return p0
.end method

.method public getZoomType()Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;
    .registers 1

    .line 345
    iget-object p0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomType:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    return-object p0
.end method

.method public initZoomValue(Lopenlight/co/camera/view/zoom/ZoomWheel;)V
    .registers 4

    .line 267
    iget-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomUpdateOnUiListener:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomUpdateOnUi;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomUpdateOnUi;->updateZoomWheelLayout(I)V

    .line 270
    iget v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_15

    .line 271
    invoke-virtual {p0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->calculateZoomLevelFromPreference()V

    .line 272
    invoke-virtual {p1}, Lopenlight/co/camera/view/zoom/ZoomWheel;->setZoomLevel()V

    :cond_15
    return-void
.end method

.method public isCurrentlyZooming()Z
    .registers 2

    .line 366
    iget-object p0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomState:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;

    sget-object v0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;->ZOOMING:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;

    invoke-virtual {p0, v0}, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isInBCFocalLength()Z
    .registers 2

    .line 416
    iget v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    iget p0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mBAFocalLengthRatio:F

    cmpl-float p0, v0, p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public performZoom(Lopenlight/co/camera/view/zoom/ZoomWheel;)V
    .registers 6

    .line 182
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomUpdateOnUiListener:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomUpdateOnUi;

    invoke-interface {v1}, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomUpdateOnUi;->removePendingPostZoomCallbacks()V

    .line 184
    iget v1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mPrevZoomLevel:F

    iget v2, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_a5

    .line 185
    sget-object v1, Lopenlight/co/camera/managers/zoom/ZoomManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ZOOM] Previous zoom level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mPrevZoomLevel:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " current zoom level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_9a

    .line 188
    invoke-direct {p0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->calculateFocalLength()F

    move-result v1

    iput v1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mFocalLength:F

    .line 189
    sget-object v1, Lopenlight/co/camera/managers/zoom/ZoomManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ZOOM] Previous focal length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mPrevFocalLength:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " current focal length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mFocalLength:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget v1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mPrevFocalLength:F

    iget v2, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mFocalLength:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6a

    .line 192
    iget-object v1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomUpdateOnUiListener:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomUpdateOnUi;

    invoke-interface {v1}, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomUpdateOnUi;->triggerFocusPostZoom()V

    .line 194
    :cond_6a
    invoke-direct {p0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->calculateDigitalLevelBasedOnZoomLevel()V

    .line 195
    invoke-virtual {p1}, Lopenlight/co/camera/view/zoom/ZoomWheel;->setZoomLevel()V

    .line 196
    iget v1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mRelativeToPrimeZoomLevel:F

    invoke-direct {p0, v1}, Lopenlight/co/camera/managers/zoom/ZoomManager;->getZoomRect(F)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomCroppedView:Landroid/graphics/Rect;

    .line 198
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 199
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v3, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mFocalLength:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 200
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomCroppedView:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 201
    invoke-static {v1}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Builder;)Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;

    move-result-object v1

    iget v2, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    .line 202
    invoke-virtual {v1, v2}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->setZoomFactor(F)V

    .line 205
    invoke-direct {p0, p1}, Lopenlight/co/camera/managers/zoom/ZoomManager;->storeZoomValue(Lopenlight/co/camera/view/zoom/ZoomWheel;)V

    .line 207
    :cond_9a
    iget p1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mFocalLength:F

    iput p1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mPrevFocalLength:F

    .line 208
    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->startRepeatingRequestInPreview()V

    .line 209
    iget p1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    iput p1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mPrevZoomLevel:F

    :cond_a5
    return-void
.end method

.method public resetTempZoomLevel()V
    .registers 3

    .line 383
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    const-string v1, "camera_mode_setting"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lopenlight/co/camera/CameraMode;->getMode(Ljava/lang/String;)Lopenlight/co/camera/CameraMode;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/CameraMode;->isVideo()Z

    move-result v0

    const/high16 v1, 0x41e00000    # 28.0f

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_1a

    :cond_18
    const/high16 v0, 0x420c0000    # 35.0f

    :goto_1a
    div-float/2addr v0, v1

    .line 385
    iput v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mRelativeToPrimeZoomLevel:F

    .line 386
    iget v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mRelativeToPrimeZoomLevel:F

    iput v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    const/4 v0, 0x0

    .line 387
    iput-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomCroppedView:Landroid/graphics/Rect;

    return-void
.end method

.method public resetZoom()V
    .registers 2

    .line 140
    sget-object v0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;->IDLE:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;

    iput-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomState:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;

    .line 141
    sget-object v0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;->SCROLL:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    iput-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomType:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    return-void
.end method

.method public resetZoomAtStart()V
    .registers 3

    .line 371
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    const-string v1, "camera_mode_setting"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lopenlight/co/camera/CameraMode;->getMode(Ljava/lang/String;)Lopenlight/co/camera/CameraMode;

    move-result-object v0

    invoke-static {v0}, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;->getDefaultFocalLength(Lopenlight/co/camera/CameraMode;)I

    move-result v0

    int-to-float v0, v0

    .line 373
    iget-object p0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "zoom_value"

    invoke-interface {p0, v1, v0}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;F)V

    return-void
.end method

.method public setPinchZoomType()V
    .registers 2

    .line 299
    sget-object v0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;->PINCH:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    iput-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomType:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    return-void
.end method

.method public setZoom(F)V
    .registers 6

    .line 151
    iget-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v0}, Lopenlight/co/camera/CameraInfo;->getMaxToMinZoomRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    const/4 v1, 0x1

    if-lez p1, :cond_e

    move p1, v1

    goto :goto_f

    :cond_e
    const/4 p1, -0x1

    .line 156
    :goto_f
    iget v2, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    iget v3, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mBAFocalLengthRatio:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1a

    .line 157
    iget v1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mBCZoomStepSize:F

    goto :goto_2c

    .line 158
    :cond_1a
    iget v2, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    iget v3, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mBAFocalLengthRatio:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2a

    if-ne p1, v1, :cond_27

    .line 159
    iget v1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mBCZoomStepSize:F

    goto :goto_2c

    :cond_27
    iget v1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mABZoomStepSize:F

    goto :goto_2c

    .line 161
    :cond_2a
    iget v1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mABZoomStepSize:F

    .line 164
    :goto_2c
    iget v2, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    int-to-float p1, p1

    mul-float/2addr v1, p1

    add-float/2addr v2, v1

    iput v2, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    .line 165
    iget p1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3d

    .line 166
    iput v1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    .line 168
    :cond_3d
    iget p1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_45

    .line 169
    iput v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    :cond_45
    return-void
.end method

.method public setZoomForTest(F)V
    .registers 2

    .line 391
    iput p1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    return-void
.end method

.method public setZoomToDefault()V
    .registers 2

    .line 406
    invoke-virtual {p0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->resetZoomAtStart()V

    .line 407
    iget-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v0}, Lopenlight/co/camera/CameraInfo;->getMinFocalLengthLens()F

    move-result v0

    iput v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mFocalLength:F

    .line 408
    invoke-virtual {p0}, Lopenlight/co/camera/managers/zoom/ZoomManager;->calculateZoomLevelFromPreference()V

    return-void
.end method

.method public setZoomUpdateOnUi(Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomUpdateOnUi;)V
    .registers 2

    .line 308
    iput-object p1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomUpdateOnUiListener:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomUpdateOnUi;

    return-void
.end method

.method public startZoom()V
    .registers 2

    .line 132
    sget-object v0, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;->ZOOMING:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;

    iput-object v0, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomState:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomState;

    return-void
.end method

.method public zoomToNextPrime(FLopenlight/co/camera/view/zoom/ZoomWheel;)V
    .registers 3

    .line 255
    iput p1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomLevel:F

    .line 256
    sget-object p1, Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;->FLING:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    iput-object p1, p0, Lopenlight/co/camera/managers/zoom/ZoomManager;->mZoomType:Lopenlight/co/camera/managers/zoom/ZoomManager$ZoomType;

    .line 257
    invoke-virtual {p0, p2}, Lopenlight/co/camera/managers/zoom/ZoomManager;->performZoom(Lopenlight/co/camera/view/zoom/ZoomWheel;)V

    return-void
.end method
