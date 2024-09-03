.class public Lopenlight/co/camera/CameraInfo;
.super Ljava/lang/Object;
.source "CameraInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/CameraInfo$CompareSizesByArea;,
        Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;
    }
.end annotation


# static fields
.field public static final DIGITAL_ZOOM_LEVELS_PER_PRIME_LENS:I = 0x1a

.field public static final IMAGE_RESOLUTION_DISPLAYED_MAX:I = 0x34

.field private static final IMAGE_RESOLUTION_MIN:I = 0xd

.field private static final LIGHT_RAW10:I = 0x30

.field public static final MINIMUM_FOCAL_LENGTH:F = 2.8f

.field public static final NO_ZOOM:F = 1.0f

.field private static final NUMBER_OF_PRIME_LENSES_SUPPORTED:I = 0x2

.field public static final PRIME_LENS_28:F = 28.0f

.field public static final PRIME_LENS_35:F = 35.0f

.field private static final TAG:Ljava/lang/String; = "CameraInfo"

.field public static final TOTAL_ZOOM_LEVELS:I = 0x35

.field private static final ZOOM_TO_LENS_INFO_FOCAL_LENGTH_FACTOR:I = 0xa

.field private static sInstance:Lopenlight/co/camera/CameraInfo;


# instance fields
.field private mABZoomStepSize:F

.field private mBAFocalLengthRatio:F

.field private mBCZoomStepSize:F

.field private mCAFocalLengthRatio:F

.field private mCBFocalLengthRatio:F

.field private mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mCameraId:Ljava/lang/String;

.field private final mCapableCameraAvailable:Z

.field private mDefaultToMinFocalLengthRatio:F

.field private mImageResolutionABFactor:I

.field private mImageResolutionBCFactor:I

.field private mIsAutoFocusSupported:Z

.field private mLargestJpegOutputSize:Landroid/util/Size;

.field private mLargestRawOutputSize:Landroid/util/Size;

.field private mLargestYuvOutputSize:Landroid/util/Size;

.field private mLensesFocalLengths:[F

.field private mMaxDigitalZoom:F

.field private mMaxFocalLengthLens:F

.field private mMaxNumOfFaces:I

.field private mMaxToDefaultFocalLengthRatio:F

.field private mMaxToMinZoomRatio:F

.field private mMinFocalLengthLens:F

.field private mNumberOfLenses:I

.field private mRawFormat:I

.field private mSensorActiveArraySize:Landroid/graphics/Rect;

.field private mSimulatedPrimeFocalLengthRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

.field private mSupportedAERange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedAeStep:Landroid/util/Rational;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 178
    iput v0, p0, Lopenlight/co/camera/CameraInfo;->mMaxDigitalZoom:F

    .line 179
    iput v0, p0, Lopenlight/co/camera/CameraInfo;->mMaxToMinZoomRatio:F

    .line 180
    iput v0, p0, Lopenlight/co/camera/CameraInfo;->mMaxToDefaultFocalLengthRatio:F

    .line 192
    iput v0, p0, Lopenlight/co/camera/CameraInfo;->mDefaultToMinFocalLengthRatio:F

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lopenlight/co/camera/CameraInfo;->mSimulatedPrimeFocalLengthRatios:Ljava/util/List;

    .line 201
    iput v0, p0, Lopenlight/co/camera/CameraInfo;->mBAFocalLengthRatio:F

    .line 202
    iput v0, p0, Lopenlight/co/camera/CameraInfo;->mCAFocalLengthRatio:F

    .line 203
    iput v0, p0, Lopenlight/co/camera/CameraInfo;->mCBFocalLengthRatio:F

    .line 218
    invoke-direct {p0}, Lopenlight/co/camera/CameraInfo;->loadCameraCapabilities()Z

    move-result v0

    iput-boolean v0, p0, Lopenlight/co/camera/CameraInfo;->mCapableCameraAvailable:Z

    return-void
.end method

.method private checkAutoFocusSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 399
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 400
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_16

    .line 402
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-nez p0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p0, 0x1

    :goto_17
    return p0
.end method

.method private static doesCameraSupportRaw(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 8

    .line 456
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 v0, 0x0

    if-eqz p0, :cond_2f

    .line 458
    array-length v1, p0

    move v2, v0

    :goto_d
    if-ge v2, v1, :cond_2f

    aget v3, p0, v2

    .line 459
    sget-object v4, Lopenlight/co/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Capability "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2c

    const/4 p0, 0x1

    return p0

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2f
    return v0
.end method

.method public static declared-synchronized get()Lopenlight/co/camera/CameraInfo;
    .registers 2

    const-class v0, Lopenlight/co/camera/CameraInfo;

    monitor-enter v0

    .line 211
    :try_start_3
    sget-object v1, Lopenlight/co/camera/CameraInfo;->sInstance:Lopenlight/co/camera/CameraInfo;

    if-nez v1, :cond_e

    .line 212
    new-instance v1, Lopenlight/co/camera/CameraInfo;

    invoke-direct {v1}, Lopenlight/co/camera/CameraInfo;-><init>()V

    sput-object v1, Lopenlight/co/camera/CameraInfo;->sInstance:Lopenlight/co/camera/CameraInfo;

    .line 214
    :cond_e
    sget-object v1, Lopenlight/co/camera/CameraInfo;->sInstance:Lopenlight/co/camera/CameraInfo;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    .line 210
    monitor-exit v0

    throw v1
.end method

.method private static getRawSensorFormatType()I
    .registers 6

    const-string v0, ""

    const/4 v1, 0x0

    .line 423
    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/sys/firmware/devicetree/base/model"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_2e
    .catchall {:try_start_3 .. :try_end_f} :catchall_2c

    .line 426
    :goto_f
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_19} :catch_27
    .catchall {:try_start_f .. :try_end_19} :catchall_24

    move-object v0, v1

    goto :goto_f

    .line 434
    :cond_1b
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_37

    :catch_1f
    move-exception v1

    .line 436
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37

    :catchall_24
    move-exception v0

    move-object v1, v2

    goto :goto_45

    :catch_27
    move-exception v1

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_2f

    :catchall_2c
    move-exception v0

    goto :goto_45

    :catch_2e
    move-exception v2

    .line 430
    :goto_2f
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_2c

    if-eqz v1, :cond_37

    .line 434
    :try_start_34
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_1f

    :cond_37
    :goto_37
    const-string v1, "LFC"

    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    const/16 v0, 0x30

    return v0

    :cond_42
    const/16 v0, 0x20

    return v0

    :goto_45
    if-eqz v1, :cond_4f

    .line 434
    :try_start_47
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_4f

    :catch_4b
    move-exception v1

    .line 436
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 438
    :cond_4f
    :goto_4f
    throw v0
.end method

.method private loadCameraCapabilities()Z
    .registers 17

    move-object/from16 v0, p0

    .line 223
    sget-object v1, Lopenlight/co/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External Storage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 226
    :try_start_1d
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v2

    const-class v3, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v2, v3}, Lopenlight/co/camera/CameraApp;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    if-nez v2, :cond_33

    .line 228
    sget-object v0, Lopenlight/co/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string v2, "This device doesn\'t support Camera2 API"

    invoke-static {v0, v2}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 232
    :cond_33
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_39
    if-ge v5, v4, :cond_352

    aget-object v6, v3, v5

    .line 233
    sget-object v7, Lopenlight/co/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Camera ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v2, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v7

    .line 239
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 240
    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    const/4 v9, 0x2

    if-eqz v8, :cond_86

    .line 241
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eqz v10, :cond_6e

    .line 243
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v9, :cond_86

    .line 244
    :cond_6e
    sget-object v7, Lopenlight/co/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping camera since not rear facing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_257

    .line 249
    :cond_86
    invoke-static {v7}, Lopenlight/co/camera/CameraInfo;->doesCameraSupportRaw(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v8

    if-nez v8, :cond_a4

    .line 250
    sget-object v7, Lopenlight/co/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping camera, does not support raw "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_257

    .line 254
    :cond_a4
    invoke-direct {v0, v7}, Lopenlight/co/camera/CameraInfo;->checkAutoFocusSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v8

    iput-boolean v8, v0, Lopenlight/co/camera/CameraInfo;->mIsAutoFocusSupported:Z

    .line 256
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    iput-object v8, v0, Lopenlight/co/camera/CameraInfo;->mSensorActiveArraySize:Landroid/graphics/Rect;

    .line 257
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 258
    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    if-eqz v8, :cond_c4

    .line 260
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v0, Lopenlight/co/camera/CameraInfo;->mMaxDigitalZoom:F

    .line 262
    :cond_c4
    sget-object v8, Lopenlight/co/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Max Digital Zoom: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lopenlight/co/camera/CameraInfo;->mMaxDigitalZoom:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 264
    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Range;

    iput-object v8, v0, Lopenlight/co/camera/CameraInfo;->mSupportedAERange:Landroid/util/Range;

    .line 266
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Rational;

    iput-object v8, v0, Lopenlight/co/camera/CameraInfo;->mSupportedAeStep:Landroid/util/Rational;

    .line 268
    invoke-virtual {v2, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v8

    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 269
    invoke-virtual {v8, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    iput-object v8, v0, Lopenlight/co/camera/CameraInfo;->mLensesFocalLengths:[F

    .line 271
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_10e

    .line 274
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v0, Lopenlight/co/camera/CameraInfo;->mMaxNumOfFaces:I

    .line 277
    :cond_10e
    iget-object v8, v0, Lopenlight/co/camera/CameraInfo;->mLensesFocalLengths:[F

    aget v8, v8, v1

    iput v8, v0, Lopenlight/co/camera/CameraInfo;->mMaxFocalLengthLens:F

    iput v8, v0, Lopenlight/co/camera/CameraInfo;->mMinFocalLengthLens:F

    .line 278
    iget-object v8, v0, Lopenlight/co/camera/CameraInfo;->mLensesFocalLengths:[F

    array-length v8, v8

    iput v8, v0, Lopenlight/co/camera/CameraInfo;->mNumberOfLenses:I

    .line 279
    iget v8, v0, Lopenlight/co/camera/CameraInfo;->mNumberOfLenses:I

    const/4 v10, 0x1

    if-le v8, v10, :cond_13b

    .line 280
    iget-object v8, v0, Lopenlight/co/camera/CameraInfo;->mLensesFocalLengths:[F

    invoke-static {v8}, Ljava/util/Arrays;->sort([F)V

    .line 281
    iget-object v8, v0, Lopenlight/co/camera/CameraInfo;->mLensesFocalLengths:[F

    aget v8, v8, v1

    iput v8, v0, Lopenlight/co/camera/CameraInfo;->mMinFocalLengthLens:F

    .line 282
    iget-object v8, v0, Lopenlight/co/camera/CameraInfo;->mLensesFocalLengths:[F

    iget v11, v0, Lopenlight/co/camera/CameraInfo;->mNumberOfLenses:I

    sub-int/2addr v11, v10

    aget v8, v8, v11

    iput v8, v0, Lopenlight/co/camera/CameraInfo;->mMaxFocalLengthLens:F

    .line 283
    iget v8, v0, Lopenlight/co/camera/CameraInfo;->mMaxFocalLengthLens:F

    iget v11, v0, Lopenlight/co/camera/CameraInfo;->mMinFocalLengthLens:F

    div-float/2addr v8, v11

    iput v8, v0, Lopenlight/co/camera/CameraInfo;->mMaxToMinZoomRatio:F

    .line 286
    :cond_13b
    sget-object v8, Lopenlight/co/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMaxFocalLengthLens:  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lopenlight/co/camera/CameraInfo;->mMaxFocalLengthLens:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sget-object v8, Lopenlight/co/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMinFocalLengthLens:  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lopenlight/co/camera/CameraInfo;->mMinFocalLengthLens:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    sget-object v8, Lopenlight/co/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "maxToMinFocalLengthRatio:  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lopenlight/co/camera/CameraInfo;->mMaxToMinZoomRatio:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iput-object v8, v0, Lopenlight/co/camera/CameraInfo;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 299
    iget-object v8, v0, Lopenlight/co/camera/CameraInfo;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/4 v11, 0x0

    if-eqz v8, :cond_1ab

    .line 300
    iget-object v8, v0, Lopenlight/co/camera/CameraInfo;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v12, 0x100

    .line 301
    invoke-virtual {v8, v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    new-instance v12, Lopenlight/co/camera/CameraInfo$CompareSizesByArea;

    invoke-direct {v12, v11}, Lopenlight/co/camera/CameraInfo$CompareSizesByArea;-><init>(Lopenlight/co/camera/CameraInfo$1;)V

    .line 300
    invoke-static {v8, v12}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    iput-object v8, v0, Lopenlight/co/camera/CameraInfo;->mLargestJpegOutputSize:Landroid/util/Size;

    .line 306
    :cond_1ab
    invoke-static {}, Lopenlight/co/camera/CameraInfo;->getRawSensorFormatType()I

    move-result v8

    iput v8, v0, Lopenlight/co/camera/CameraInfo;->mRawFormat:I

    .line 307
    iget-object v8, v0, Lopenlight/co/camera/CameraInfo;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    iget v12, v0, Lopenlight/co/camera/CameraInfo;->mRawFormat:I

    .line 308
    invoke-virtual {v8, v12}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    new-instance v12, Lopenlight/co/camera/CameraInfo$CompareSizesByArea;

    invoke-direct {v12, v11}, Lopenlight/co/camera/CameraInfo$CompareSizesByArea;-><init>(Lopenlight/co/camera/CameraInfo$1;)V

    .line 307
    invoke-static {v8, v12}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Size;

    iput-object v8, v0, Lopenlight/co/camera/CameraInfo;->mLargestRawOutputSize:Landroid/util/Size;

    .line 311
    sget-object v8, Lopenlight/co/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " RAW_SENSOR: largest raw captured size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lopenlight/co/camera/CameraInfo;->mLargestRawOutputSize:Landroid/util/Size;

    .line 312
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lopenlight/co/camera/CameraInfo;->mLargestRawOutputSize:Landroid/util/Size;

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 311
    invoke-static {v8, v11}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v8, v0, Lopenlight/co/camera/CameraInfo;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v11, 0x23

    invoke-virtual {v8, v11}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v8

    .line 318
    array-length v11, v8

    move v12, v1

    :goto_1fe
    if-ge v12, v11, :cond_24c

    aget-object v13, v8, v12

    .line 319
    sget-object v14, Lopenlight/co/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Looping through size: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-static {v14, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v1

    const/16 v14, 0x500

    if-gt v1, v14, :cond_248

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/16 v14, 0x2d0

    if-gt v1, v14, :cond_248

    .line 322
    new-instance v1, Landroid/util/Size;

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v11

    invoke-direct {v1, v8, v11}, Landroid/util/Size;-><init>(II)V

    iput-object v1, v0, Lopenlight/co/camera/CameraInfo;->mLargestYuvOutputSize:Landroid/util/Size;

    goto :goto_24c

    :cond_248
    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x0

    goto :goto_1fe

    .line 327
    :cond_24c
    :goto_24c
    iget-object v1, v0, Lopenlight/co/camera/CameraInfo;->mLargestYuvOutputSize:Landroid/util/Size;

    if-nez v1, :cond_25c

    .line 328
    sget-object v1, Lopenlight/co/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string v6, "This camera does not support the desired YUV size"

    invoke-static {v1, v6}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_257
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x0

    goto/16 :goto_39

    .line 332
    :cond_25c
    sget-object v1, Lopenlight/co/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " largestYUV size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lopenlight/co/camera/CameraInfo;->mLargestYuvOutputSize:Landroid/util/Size;

    .line 333
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lopenlight/co/camera/CameraInfo;->mLargestYuvOutputSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 332
    invoke-static {v1, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget v1, v0, Lopenlight/co/camera/CameraInfo;->mNumberOfLenses:I

    const/high16 v2, 0x41500000    # 13.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x41200000    # 10.0f

    if-le v1, v10, :cond_2b9

    .line 336
    iget-object v1, v0, Lopenlight/co/camera/CameraInfo;->mLensesFocalLengths:[F

    aget v1, v1, v10

    iget v5, v0, Lopenlight/co/camera/CameraInfo;->mMinFocalLengthLens:F

    div-float/2addr v1, v5

    iput v1, v0, Lopenlight/co/camera/CameraInfo;->mBAFocalLengthRatio:F

    .line 337
    iget v1, v0, Lopenlight/co/camera/CameraInfo;->mBAFocalLengthRatio:F

    sub-float/2addr v1, v3

    iget-object v5, v0, Lopenlight/co/camera/CameraInfo;->mLensesFocalLengths:[F

    aget v5, v5, v10

    iget v8, v0, Lopenlight/co/camera/CameraInfo;->mMinFocalLengthLens:F

    sub-float/2addr v5, v8

    mul-float/2addr v5, v4

    div-float/2addr v1, v5

    iput v1, v0, Lopenlight/co/camera/CameraInfo;->mABZoomStepSize:F

    .line 341
    iget-object v1, v0, Lopenlight/co/camera/CameraInfo;->mLensesFocalLengths:[F

    aget v1, v1, v10

    mul-float/2addr v1, v4

    iget-object v5, v0, Lopenlight/co/camera/CameraInfo;->mLensesFocalLengths:[F

    aget v5, v5, v10

    mul-float/2addr v1, v5

    mul-float/2addr v1, v4

    mul-float/2addr v1, v2

    .line 342
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lopenlight/co/camera/CameraInfo;->mImageResolutionABFactor:I

    .line 348
    :cond_2b9
    iget v1, v0, Lopenlight/co/camera/CameraInfo;->mNumberOfLenses:I

    if-le v1, v9, :cond_2f3

    .line 349
    iget-object v1, v0, Lopenlight/co/camera/CameraInfo;->mLensesFocalLengths:[F

    aget v1, v1, v9

    iget v5, v0, Lopenlight/co/camera/CameraInfo;->mMinFocalLengthLens:F

    div-float/2addr v1, v5

    iput v1, v0, Lopenlight/co/camera/CameraInfo;->mCAFocalLengthRatio:F

    .line 350
    iget-object v1, v0, Lopenlight/co/camera/CameraInfo;->mLensesFocalLengths:[F

    aget v1, v1, v9

    iget-object v5, v0, Lopenlight/co/camera/CameraInfo;->mLensesFocalLengths:[F

    aget v5, v5, v10

    div-float/2addr v1, v5

    iput v1, v0, Lopenlight/co/camera/CameraInfo;->mCBFocalLengthRatio:F

    .line 351
    iget v1, v0, Lopenlight/co/camera/CameraInfo;->mCBFocalLengthRatio:F

    sub-float/2addr v1, v3

    iget-object v3, v0, Lopenlight/co/camera/CameraInfo;->mLensesFocalLengths:[F

    aget v3, v3, v9

    iget-object v5, v0, Lopenlight/co/camera/CameraInfo;->mLensesFocalLengths:[F

    aget v5, v5, v10

    sub-float/2addr v3, v5

    mul-float/2addr v3, v4

    div-float/2addr v1, v3

    iput v1, v0, Lopenlight/co/camera/CameraInfo;->mBCZoomStepSize:F

    .line 355
    iget-object v1, v0, Lopenlight/co/camera/CameraInfo;->mLensesFocalLengths:[F

    aget v1, v1, v9

    mul-float/2addr v1, v4

    iget-object v3, v0, Lopenlight/co/camera/CameraInfo;->mLensesFocalLengths:[F

    aget v3, v3, v9

    mul-float/2addr v1, v3

    mul-float/2addr v1, v4

    mul-float/2addr v1, v2

    .line 356
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lopenlight/co/camera/CameraInfo;->mImageResolutionBCFactor:I

    .line 362
    :cond_2f3
    sget-object v1, Lopenlight/co/camera/CameraInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lens Ratios BA "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lopenlight/co/camera/CameraInfo;->mBAFocalLengthRatio:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " CA "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lopenlight/co/camera/CameraInfo;->mCAFocalLengthRatio:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " CB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lopenlight/co/camera/CameraInfo;->mCBFocalLengthRatio:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v1

    const-string v2, "camera_mode_setting"

    invoke-interface {v1, v2}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lopenlight/co/camera/CameraMode;->getMode(Ljava/lang/String;)Lopenlight/co/camera/CameraMode;

    move-result-object v1

    .line 367
    iget v2, v0, Lopenlight/co/camera/CameraInfo;->mMinFocalLengthLens:F

    .line 368
    invoke-static {v2, v1}, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;->getDefaultRelativeMin(FLopenlight/co/camera/CameraMode;)F

    move-result v2

    iput v2, v0, Lopenlight/co/camera/CameraInfo;->mDefaultToMinFocalLengthRatio:F

    .line 371
    iget v2, v0, Lopenlight/co/camera/CameraInfo;->mMinFocalLengthLens:F

    .line 372
    invoke-static {v2}, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;->getAllPrimeFocalLength(F)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lopenlight/co/camera/CameraInfo;->mSimulatedPrimeFocalLengthRatios:Ljava/util/List;

    .line 374
    iget v2, v0, Lopenlight/co/camera/CameraInfo;->mMaxFocalLengthLens:F

    .line 375
    invoke-static {v2, v1}, Lopenlight/co/camera/CameraInfo$SimulatedPrimeFocalLengths;->getMaxDefaultLengthRatio(FLopenlight/co/camera/CameraMode;)F

    move-result v1

    iput v1, v0, Lopenlight/co/camera/CameraInfo;->mMaxToDefaultFocalLengthRatio:F

    .line 377
    iput-object v7, v0, Lopenlight/co/camera/CameraInfo;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 378
    iput-object v6, v0, Lopenlight/co/camera/CameraInfo;->mCameraId:Ljava/lang/String;
    :try_end_349
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1d .. :try_end_349} :catch_34a
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_349} :catch_34a

    return v10

    :catch_34a
    move-exception v0

    .line 382
    sget-object v1, Lopenlight/co/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string v2, "Exception getting camera details"

    invoke-static {v1, v2, v0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 385
    :cond_352
    sget-object v0, Lopenlight/co/camera/CameraInfo;->TAG:Ljava/lang/String;

    const-string v1, "This device doesn\'t support the configurations we need."

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public getABZoomStepSize()F
    .registers 1

    .line 561
    iget p0, p0, Lopenlight/co/camera/CameraInfo;->mABZoomStepSize:F

    return p0
.end method

.method public getBACamerasFocalLengthRatio()F
    .registers 1

    .line 537
    iget p0, p0, Lopenlight/co/camera/CameraInfo;->mBAFocalLengthRatio:F

    return p0
.end method

.method public getBCZoomStepSize()F
    .registers 1

    .line 565
    iget p0, p0, Lopenlight/co/camera/CameraInfo;->mBCZoomStepSize:F

    return p0
.end method

.method public getCACamerasFocalLengthRatio()F
    .registers 1

    .line 541
    iget p0, p0, Lopenlight/co/camera/CameraInfo;->mCAFocalLengthRatio:F

    return p0
.end method

.method public getCBCamerasFocalLengthRatio()F
    .registers 1

    .line 545
    iget p0, p0, Lopenlight/co/camera/CameraInfo;->mCBFocalLengthRatio:F

    return p0
.end method

.method public getCameraCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .registers 1

    .line 529
    iget-object p0, p0, Lopenlight/co/camera/CameraInfo;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object p0
.end method

.method public getCameraId()Ljava/lang/String;
    .registers 1

    .line 525
    iget-object p0, p0, Lopenlight/co/camera/CameraInfo;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultToMinFocalLengthRatio()F
    .registers 1

    .line 549
    iget p0, p0, Lopenlight/co/camera/CameraInfo;->mDefaultToMinFocalLengthRatio:F

    return p0
.end method

.method public getFinalCaptureResolution(F)I
    .registers 5

    const/high16 v0, 0x41200000    # 10.0f

    div-float v0, p1, v0

    .line 595
    iget-object v1, p0, Lopenlight/co/camera/CameraInfo;->mLensesFocalLengths:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_17

    .line 596
    iget p0, p0, Lopenlight/co/camera/CameraInfo;->mImageResolutionBCFactor:I

    int-to-float p0, p0

    mul-float/2addr p1, p1

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    .line 598
    :cond_17
    iget p0, p0, Lopenlight/co/camera/CameraInfo;->mImageResolutionABFactor:I

    int-to-float p0, p0

    mul-float/2addr p1, p1

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getLargestJpegOutputSize()Landroid/util/Size;
    .registers 1

    .line 493
    iget-object p0, p0, Lopenlight/co/camera/CameraInfo;->mLargestJpegOutputSize:Landroid/util/Size;

    return-object p0
.end method

.method public getLargestRawOutputSize()Landroid/util/Size;
    .registers 1

    .line 497
    iget-object p0, p0, Lopenlight/co/camera/CameraInfo;->mLargestRawOutputSize:Landroid/util/Size;

    return-object p0
.end method

.method public getLargestYuvOutputSize()Landroid/util/Size;
    .registers 1

    .line 501
    iget-object p0, p0, Lopenlight/co/camera/CameraInfo;->mLargestYuvOutputSize:Landroid/util/Size;

    return-object p0
.end method

.method public getLensesFocalLengths()[F
    .registers 1

    .line 513
    iget-object p0, p0, Lopenlight/co/camera/CameraInfo;->mLensesFocalLengths:[F

    return-object p0
.end method

.method public getMaxDigitalZoom()F
    .registers 1

    .line 485
    iget p0, p0, Lopenlight/co/camera/CameraInfo;->mMaxDigitalZoom:F

    return p0
.end method

.method public getMaxFocalLengthLens()F
    .registers 1

    .line 521
    iget p0, p0, Lopenlight/co/camera/CameraInfo;->mMaxFocalLengthLens:F

    return p0
.end method

.method public getMaxNumOfFaces()I
    .registers 1

    .line 579
    iget p0, p0, Lopenlight/co/camera/CameraInfo;->mMaxNumOfFaces:I

    return p0
.end method

.method public getMaxToDefaultFocalLengthRatio()F
    .registers 1

    .line 569
    iget p0, p0, Lopenlight/co/camera/CameraInfo;->mMaxToDefaultFocalLengthRatio:F

    return p0
.end method

.method public getMaxToMinZoomRatio()F
    .registers 1

    .line 489
    iget p0, p0, Lopenlight/co/camera/CameraInfo;->mMaxToMinZoomRatio:F

    return p0
.end method

.method public getMinFocalLengthLens()F
    .registers 1

    .line 517
    iget p0, p0, Lopenlight/co/camera/CameraInfo;->mMinFocalLengthLens:F

    return p0
.end method

.method public getNumberOfLenses()I
    .registers 1

    .line 509
    iget p0, p0, Lopenlight/co/camera/CameraInfo;->mNumberOfLenses:I

    return p0
.end method

.method public getRawFormat()I
    .registers 1

    .line 505
    iget p0, p0, Lopenlight/co/camera/CameraInfo;->mRawFormat:I

    return p0
.end method

.method public getSensorActiveArraySize()Landroid/graphics/Rect;
    .registers 1

    .line 473
    iget-object p0, p0, Lopenlight/co/camera/CameraInfo;->mSensorActiveArraySize:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSimulatedPrimeFocalLengthRatios()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 553
    iget-object p0, p0, Lopenlight/co/camera/CameraInfo;->mSimulatedPrimeFocalLengthRatios:Ljava/util/List;

    return-object p0
.end method

.method public getStreamConfigurationMap()Landroid/hardware/camera2/params/StreamConfigurationMap;
    .registers 1

    .line 533
    iget-object p0, p0, Lopenlight/co/camera/CameraInfo;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    return-object p0
.end method

.method public getSupportedAERange()Landroid/util/Range;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 477
    iget-object p0, p0, Lopenlight/co/camera/CameraInfo;->mSupportedAERange:Landroid/util/Range;

    return-object p0
.end method

.method public getSupportedAeStep()Landroid/util/Rational;
    .registers 1

    .line 481
    iget-object p0, p0, Lopenlight/co/camera/CameraInfo;->mSupportedAeStep:Landroid/util/Rational;

    return-object p0
.end method

.method public isAutoFocusSupported()Z
    .registers 1

    .line 411
    iget-boolean p0, p0, Lopenlight/co/camera/CameraInfo;->mIsAutoFocusSupported:Z

    return p0
.end method

.method public isCapableCameraAvailable()Z
    .registers 1

    .line 469
    iget-boolean p0, p0, Lopenlight/co/camera/CameraInfo;->mCapableCameraAvailable:Z

    return p0
.end method

.method public isOpticalZoomCapable()Z
    .registers 2

    .line 557
    iget p0, p0, Lopenlight/co/camera/CameraInfo;->mMaxToMinZoomRatio:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method
