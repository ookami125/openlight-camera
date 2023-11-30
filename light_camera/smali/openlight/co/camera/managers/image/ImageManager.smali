.class public Lopenlight/co/camera/managers/image/ImageManager;
.super Lopenlight/co/camera/managers/CameraManager;
.source "ImageManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageManager"

.field private static final WAIT_FOR_CAPTURE_SLEEP_MS:I = 0x64

.field private static final WAIT_FOR_CAPTURE_TOTAL_SLEEP_MS:I = 0x7d0

.field private static final sImageManager:Lopenlight/co/camera/managers/image/ImageManager;


# instance fields
.field private volatile mCapturesInFlight:I

.field private final mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lopenlight/co/camera/managers/image/ImageManager;

    invoke-direct {v0}, Lopenlight/co/camera/managers/image/ImageManager;-><init>()V

    sput-object v0, Lopenlight/co/camera/managers/image/ImageManager;->sImageManager:Lopenlight/co/camera/managers/image/ImageManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 235
    invoke-direct {p0}, Lopenlight/co/camera/managers/CameraManager;-><init>()V

    .line 48
    invoke-static {}, Lopenlight/co/camera/ImageReaderManager;->get()Lopenlight/co/camera/ImageReaderManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/image/ImageManager;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    return-void
.end method

.method private closeImageReadersAndCamera()Z
    .locals 1

    .line 229
    invoke-virtual {p0}, Lopenlight/co/camera/managers/image/ImageManager;->initCapturesInFlight()V

    .line 230
    iget-object v0, p0, Lopenlight/co/camera/managers/image/ImageManager;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    invoke-virtual {v0}, Lopenlight/co/camera/ImageReaderManager;->closeImageReaders()V

    .line 231
    invoke-super {p0}, Lopenlight/co/camera/managers/CameraManager;->closeCamera()Z

    move-result p0

    return p0
.end method

.method public static get()Lopenlight/co/camera/managers/image/ImageManager;
    .locals 1

    .line 51
    sget-object v0, Lopenlight/co/camera/managers/image/ImageManager;->sImageManager:Lopenlight/co/camera/managers/image/ImageManager;

    return-object v0
.end method

.method public static synthetic lambda$closeCamera$0(Lopenlight/co/camera/managers/image/ImageManager;)V
    .locals 2

    .line 89
    invoke-virtual {p0}, Lopenlight/co/camera/managers/image/ImageManager;->getPendingReaderReferences()I

    move-result v0

    if-gtz v0, :cond_0

    .line 90
    sget-object v0, Lopenlight/co/camera/managers/image/ImageManager;->TAG:Ljava/lang/String;

    const-string v1, "Pending captures are saved, close camera device"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0}, Lopenlight/co/camera/managers/image/ImageManager;->closeImageReadersAndCamera()Z

    .line 92
    invoke-virtual {p0}, Lopenlight/co/camera/managers/image/ImageManager;->stopBackgroundThread()V

    :cond_0
    return-void
.end method


# virtual methods
.method public canGotoGallery()Z
    .locals 3

    .line 148
    sget-object v0, Lopenlight/co/camera/managers/image/ImageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canGotoGallery() mCapturesInFlight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lopenlight/co/camera/managers/image/ImageManager;->mCapturesInFlight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget p0, p0, Lopenlight/co/camera/managers/image/ImageManager;->mCapturesInFlight:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkForQueuedState()V
    .locals 2

    .line 201
    invoke-static {}, Lopenlight/co/camera/managers/capture/CaptureManager;->get()Lopenlight/co/camera/managers/capture/CaptureManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/capture/CaptureManager;->isPendingCapturePostFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Lopenlight/co/camera/managers/image/ImageManager;->TAG:Ljava/lang/String;

    const-string v1, "Capture Queued during focus. Going for capture now"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lopenlight/co/camera/managers/image/ImageManager;->captureStart()V

    :cond_0
    return-void
.end method

.method public declared-synchronized closeCamera()Z
    .locals 3

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lopenlight/co/camera/managers/image/ImageManager;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 78
    invoke-virtual {p0}, Lopenlight/co/camera/managers/image/ImageManager;->getPendingReaderReferences()I

    move-result v0

    if-gtz v0, :cond_0

    .line 79
    sget-object v0, Lopenlight/co/camera/managers/image/ImageManager;->TAG:Ljava/lang/String;

    const-string v1, "No pending captures, close camera device"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lopenlight/co/camera/managers/image/ImageManager;->closeImageReadersAndCamera()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 83
    :cond_0
    :try_start_1
    sget-object v0, Lopenlight/co/camera/managers/image/ImageManager;->TAG:Ljava/lang/String;

    const-string v1, "captures save in progress, release surface and stop repeating"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lopenlight/co/camera/managers/image/ImageManager;->stopRepeating()V

    .line 86
    invoke-static {}, Lopenlight/co/camera/utils/CameraState;->get()Lopenlight/co/camera/utils/CameraState;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/utils/CameraState;->releaseSurface()V

    .line 87
    iget-object v0, p0, Lopenlight/co/camera/managers/image/ImageManager;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    new-instance v1, Lopenlight/co/camera/managers/image/-$$Lambda$ImageManager$ZvEKuMzyTFkZxPQtIYNLCQYTpRI;

    invoke-direct {v1, p0}, Lopenlight/co/camera/managers/image/-$$Lambda$ImageManager$ZvEKuMzyTFkZxPQtIYNLCQYTpRI;-><init>(Lopenlight/co/camera/managers/image/ImageManager;)V

    invoke-virtual {v0, v1}, Lopenlight/co/camera/ImageReaderManager;->setPendingCapturesCompleteListener(Lopenlight/co/camera/ImageReaderManager$PendingCapturesCompleteListener;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 97
    :try_start_2
    sget-object v1, Lopenlight/co/camera/managers/image/ImageManager;->TAG:Ljava/lang/String;

    const-string v2, "InterruptedException while acquiring lock during camera close."

    invoke-static {v1, v2, v0}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    const/4 v0, 0x0

    .line 99
    monitor-exit p0

    return v0

    .line 75
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public createCameraSession(Landroid/graphics/SurfaceTexture;Landroid/util/Size;)V
    .locals 6

    .line 107
    :try_start_0
    iget-object v0, p0, Lopenlight/co/camera/managers/image/ImageManager;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    invoke-virtual {v0}, Lopenlight/co/camera/ImageReaderManager;->getJpegImageReader()Landroid/media/ImageReader;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lopenlight/co/camera/managers/image/ImageManager;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    invoke-virtual {v1}, Lopenlight/co/camera/ImageReaderManager;->getRawImageReader()Landroid/media/ImageReader;

    move-result-object v1

    .line 109
    iget-object v2, p0, Lopenlight/co/camera/managers/image/ImageManager;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    invoke-virtual {v2}, Lopenlight/co/camera/ImageReaderManager;->getYuvImageReader()Landroid/media/ImageReader;

    move-result-object v2

    .line 111
    sget-object v3, Lopenlight/co/camera/managers/image/ImageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IMAGE_READER] Jpeg Reader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v3, Lopenlight/co/camera/managers/image/ImageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IMAGE_READER] Raw Reader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v3, Lopenlight/co/camera/managers/image/ImageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IMAGE_READER] Yuv Reader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lopenlight/co/camera/managers/image/ImageManager;->mSurfaceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 119
    iget-object v3, p0, Lopenlight/co/camera/managers/image/ImageManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x1

    .line 120
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    iput-object v3, p0, Lopenlight/co/camera/managers/image/ImageManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 122
    iget-object v3, p0, Lopenlight/co/camera/managers/image/ImageManager;->mSurfaceList:Ljava/util/List;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-static {}, Lopenlight/co/camera/CameraApp;->isLight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lopenlight/co/camera/managers/image/ImageManager;->mSurfaceList:Ljava/util/List;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    sget-boolean v0, Lopenlight/co/camera/CameraActivity;->HISTOGRAM_SUPPORTED:Z

    if-eqz v0, :cond_1

    .line 131
    invoke-static {}, Lopenlight/co/camera/utils/FaceDetector;->get()Lopenlight/co/camera/utils/FaceDetector;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/utils/FaceDetector;->isFaceDetectionFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lopenlight/co/camera/managers/image/ImageManager;->mSurfaceList:Ljava/util/List;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_1
    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/managers/image/ImageManager;->createCameraPreviewSessionLocked(Landroid/graphics/SurfaceTexture;Landroid/util/Size;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 137
    sget-object p1, Lopenlight/co/camera/managers/image/ImageManager;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public decrementCapturesInFlight()V
    .locals 1

    .line 172
    iget v0, p0, Lopenlight/co/camera/managers/image/ImageManager;->mCapturesInFlight:I

    if-lez v0, :cond_0

    .line 173
    iget v0, p0, Lopenlight/co/camera/managers/image/ImageManager;->mCapturesInFlight:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lopenlight/co/camera/managers/image/ImageManager;->mCapturesInFlight:I

    :cond_0
    return-void
.end method

.method public getBackgroundThreadName()Ljava/lang/String;
    .locals 0

    const-string p0, "PictureBackground"

    return-object p0
.end method

.method public getCapturesInFlight()I
    .locals 0

    .line 157
    iget p0, p0, Lopenlight/co/camera/managers/image/ImageManager;->mCapturesInFlight:I

    return p0
.end method

.method public getPendingReaderReferences()I
    .locals 3

    .line 188
    iget-object v0, p0, Lopenlight/co/camera/managers/image/ImageManager;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    invoke-virtual {v0}, Lopenlight/co/camera/ImageReaderManager;->getRawResultQueue()Ljava/util/TreeMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    .line 189
    iget-object v1, p0, Lopenlight/co/camera/managers/image/ImageManager;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    invoke-virtual {v1}, Lopenlight/co/camera/ImageReaderManager;->getJpegResultQueue()Ljava/util/TreeMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    .line 191
    iget-object v2, p0, Lopenlight/co/camera/managers/image/ImageManager;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    invoke-virtual {v2}, Lopenlight/co/camera/ImageReaderManager;->getRawRefCount()I

    move-result v2

    .line 192
    iget-object p0, p0, Lopenlight/co/camera/managers/image/ImageManager;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    invoke-virtual {p0}, Lopenlight/co/camera/ImageReaderManager;->getJpegRefCount()I

    move-result p0

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    add-int/2addr v0, p0

    return v0
.end method

.method protected handleOnCaptureFailed()V
    .locals 1

    .line 219
    iget-object v0, p0, Lopenlight/co/camera/managers/image/ImageManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    if-eqz v0, :cond_0

    .line 220
    iget-object p0, p0, Lopenlight/co/camera/managers/image/ImageManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    invoke-interface {p0}, Lopenlight/co/camera/managers/CameraManager$UpdatePreview;->cameraDeviceError()V

    :cond_0
    return-void
.end method

.method public incrementCapturesInFlight()V
    .locals 1

    .line 164
    iget v0, p0, Lopenlight/co/camera/managers/image/ImageManager;->mCapturesInFlight:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lopenlight/co/camera/managers/image/ImageManager;->mCapturesInFlight:I

    return-void
.end method

.method protected initCapturesInFlight()V
    .locals 1

    const/4 v0, 0x0

    .line 211
    iput v0, p0, Lopenlight/co/camera/managers/image/ImageManager;->mCapturesInFlight:I

    return-void
.end method

.method public declared-synchronized openCamera()Z
    .locals 2

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lopenlight/co/camera/managers/image/ImageManager;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lopenlight/co/camera/managers/image/ImageManager;->TAG:Ljava/lang/String;

    const-string v1, "Clear capture complete listener"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lopenlight/co/camera/managers/image/ImageManager;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lopenlight/co/camera/ImageReaderManager;->setPendingCapturesCompleteListener(Lopenlight/co/camera/ImageReaderManager$PendingCapturesCompleteListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lopenlight/co/camera/managers/image/ImageManager;->mCapturesInFlight:I

    .line 63
    iget-object v0, p0, Lopenlight/co/camera/managers/image/ImageManager;->mImageReaderManager:Lopenlight/co/camera/ImageReaderManager;

    invoke-virtual {v0}, Lopenlight/co/camera/ImageReaderManager;->setUpImageReaders()V

    .line 64
    invoke-super {p0}, Lopenlight/co/camera/managers/CameraManager;->openCamera()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 57
    monitor-exit p0

    throw v0
.end method
