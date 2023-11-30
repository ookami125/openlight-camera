.class public Lopenlight/co/camera/managers/video/VideoManager;
.super Lopenlight/co/camera/managers/CameraManager;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/managers/video/VideoManager$OnStatusListener;,
        Lopenlight/co/camera/managers/video/VideoManager$State;,
        Lopenlight/co/camera/managers/video/VideoManager$ErrorType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoManager"

.field private static final sVideoManager:Lopenlight/co/camera/managers/video/VideoManager;


# instance fields
.field private final mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;

.field private volatile mCurrentState:Lopenlight/co/camera/managers/video/VideoManager$State;

.field private mCurrentVideoAbsolutePath:Ljava/lang/String;

.field private final mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private final mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private final mMediaFileMgr:Lopenlight/co/camera/utils/MediaFileManager;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mRecordingSurface:Landroid/view/Surface;

.field private mStatusListener:Lopenlight/co/camera/managers/video/VideoManager$OnStatusListener;

.field private final mThumbnailsDir:Ljava/io/File;

.field private volatile mUseSuffixFileName:Z

.field private mVideoQualityProfile:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Lopenlight/co/camera/managers/video/VideoManager;

    invoke-direct {v0}, Lopenlight/co/camera/managers/video/VideoManager;-><init>()V

    sput-object v0, Lopenlight/co/camera/managers/video/VideoManager;->sVideoManager:Lopenlight/co/camera/managers/video/VideoManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 471
    invoke-direct {p0}, Lopenlight/co/camera/managers/CameraManager;-><init>()V

    .line 86
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v0

    const-string v1, "video.quality"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lopenlight/co/lib/utils/FeatureManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mVideoQualityProfile:I

    .line 92
    invoke-static {}, Lopenlight/co/camera/metrics/Metrics;->get()Lopenlight/co/camera/metrics/Metrics;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;

    .line 93
    invoke-static {}, Lopenlight/co/camera/utils/MediaFileManager;->get()Lopenlight/co/camera/utils/MediaFileManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaFileMgr:Lopenlight/co/camera/utils/MediaFileManager;

    .line 98
    sget-object v0, Lopenlight/co/camera/managers/video/VideoManager$State;->NOT_INITIALIZED:Lopenlight/co/camera/managers/video/VideoManager$State;

    iput-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mCurrentState:Lopenlight/co/camera/managers/video/VideoManager$State;

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mUseSuffixFileName:Z

    .line 102
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->videoThumbnailsDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mThumbnailsDir:Ljava/io/File;

    .line 104
    new-instance v0, Lopenlight/co/camera/managers/video/-$$Lambda$VideoManager$XBoP-L7mnQc1H1xbdEP1wbXCVak;

    invoke-direct {v0, p0}, Lopenlight/co/camera/managers/video/-$$Lambda$VideoManager$XBoP-L7mnQc1H1xbdEP1wbXCVak;-><init>(Lopenlight/co/camera/managers/video/VideoManager;)V

    iput-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 112
    new-instance v0, Lopenlight/co/camera/managers/video/-$$Lambda$VideoManager$aEN6OQ-GnecmnC2wa5YJuQA2cB8;

    invoke-direct {v0, p0}, Lopenlight/co/camera/managers/video/-$$Lambda$VideoManager$aEN6OQ-GnecmnC2wa5YJuQA2cB8;-><init>(Lopenlight/co/camera/managers/video/VideoManager;)V

    iput-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    return-void
.end method

.method private createVideoThumbnail(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 10

    .line 407
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    .line 409
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 413
    invoke-static {p1}, Lopenlight/co/lib/utils/Utils;->thumbnailNameFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 414
    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mThumbnailsDir:Ljava/io/File;

    invoke-direct {v2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 415
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 416
    sget-object p0, Lopenlight/co/camera/managers/video/VideoManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found existing thumbnail file for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", deleting it."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 420
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 421
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 423
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, v3, v4, v1, p2}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 428
    sget-object p2, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id"

    const-string v6, "_data"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "video_id=?"

    new-array v7, v1, [Ljava/lang/String;

    .line 431
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    aput-object v3, v7, v9

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p2

    .line 428
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 434
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 435
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 436
    new-instance v5, Ljava/io/File;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 440
    sget-object p1, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 442
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "_data"

    .line 443
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 446
    invoke-virtual {p0, p1, v3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 449
    new-array p0, v1, [Ljava/lang/String;

    .line 450
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v9

    const-string p1, "image/jpeg"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lopenlight/co/camera/managers/video/-$$Lambda$VideoManager$NO1NuT0rZMHqp-X-YQBNgLdSYbQ;->INSTANCE:Lopenlight/co/camera/managers/video/-$$Lambda$VideoManager$NO1NuT0rZMHqp-X-YQBNgLdSYbQ;

    .line 449
    invoke-static {v0, p0, p1, v1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0

    .line 455
    :cond_1
    sget-object p0, Lopenlight/co/camera/managers/video/VideoManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thumbnail file not found or failed to rename "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_2
    sget-object p0, Lopenlight/co/camera/managers/video/VideoManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not thumbnail media store row "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 463
    throw p0

    .line 466
    :cond_3
    sget-object p0, Lopenlight/co/camera/managers/video/VideoManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No thumbnail for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static get()Lopenlight/co/camera/managers/video/VideoManager;
    .locals 1

    .line 132
    sget-object v0, Lopenlight/co/camera/managers/video/VideoManager;->sVideoManager:Lopenlight/co/camera/managers/video/VideoManager;

    return-object v0
.end method

.method private getVideoFileAbsolutePath()Ljava/lang/String;
    .locals 2

    .line 341
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mCurrentState:Lopenlight/co/camera/managers/video/VideoManager$State;

    sget-object v1, Lopenlight/co/camera/managers/video/VideoManager$State;->RECORDING:Lopenlight/co/camera/managers/video/VideoManager$State;

    if-ne v0, v1, :cond_1

    .line 344
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaFileMgr:Lopenlight/co/camera/utils/MediaFileManager;

    invoke-virtual {v0}, Lopenlight/co/camera/utils/MediaFileManager;->deleteTempVideoFile()V

    .line 345
    iget-boolean v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mUseSuffixFileName:Z

    if-eqz v0, :cond_0

    .line 346
    iget-object p0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaFileMgr:Lopenlight/co/camera/utils/MediaFileManager;

    invoke-virtual {p0}, Lopenlight/co/camera/utils/MediaFileManager;->getVideoFilePathWithSuffix()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 348
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaFileMgr:Lopenlight/co/camera/utils/MediaFileManager;

    invoke-virtual {v0}, Lopenlight/co/camera/utils/MediaFileManager;->resetVideoSuffixNumber()V

    .line 349
    iget-object p0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaFileMgr:Lopenlight/co/camera/utils/MediaFileManager;

    invoke-virtual {p0}, Lopenlight/co/camera/utils/MediaFileManager;->getVideoFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 352
    :cond_1
    iget-object p0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaFileMgr:Lopenlight/co/camera/utils/MediaFileManager;

    invoke-virtual {p0}, Lopenlight/co/camera/utils/MediaFileManager;->getVideoTempFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$cgDNzZMOkluBaZDozvoiYEQNpEM(Lopenlight/co/camera/managers/video/VideoManager;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/managers/video/VideoManager;->createVideoThumbnail(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic lambda$createVideoThumbnail$2(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    .line 452
    sget-object p1, Lopenlight/co/camera/managers/video/VideoManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scanned video thumbnail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lopenlight/co/camera/managers/video/VideoManager;Landroid/media/MediaRecorder;II)V
    .locals 2

    .line 105
    sget-object p1, Lopenlight/co/camera/managers/video/VideoManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media recorder onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lopenlight/co/camera/managers/video/VideoManager;->restartCamera()V

    .line 108
    iget-object p0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;

    const-string p1, "event_media_recorder_error"

    .line 109
    invoke-static {p2, p3}, Lopenlight/co/camera/metrics/CameraMetrics;->createPropertiesForMediaRecorderError(II)Ljava/util/HashMap;

    move-result-object p2

    .line 108
    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lopenlight/co/camera/managers/video/VideoManager;Landroid/media/MediaRecorder;II)V
    .locals 2

    .line 113
    sget-object p1, Lopenlight/co/camera/managers/video/VideoManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media recorder onInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x320

    if-eq p2, p1, :cond_0

    const/16 p1, 0x321

    if-ne p2, p1, :cond_1

    .line 116
    :cond_0
    sget-object p1, Lopenlight/co/camera/managers/video/VideoManager$State;->PREVIEW:Lopenlight/co/camera/managers/video/VideoManager$State;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/managers/video/VideoManager;->setCurrentState(Lopenlight/co/camera/managers/video/VideoManager$State;)V

    .line 117
    invoke-virtual {p0}, Lopenlight/co/camera/managers/video/VideoManager;->stopRecording()V

    .line 118
    iget-object p1, p0, Lopenlight/co/camera/managers/video/VideoManager;->mStatusListener:Lopenlight/co/camera/managers/video/VideoManager$OnStatusListener;

    sget-object v0, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;->MAX_FILE_SIZE_REACHED:Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    invoke-interface {p1, v0}, Lopenlight/co/camera/managers/video/VideoManager$OnStatusListener;->onError(Lopenlight/co/camera/managers/video/VideoManager$ErrorType;)V

    .line 120
    :cond_1
    iget-object p0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;

    const-string p1, "event_media_recorder_info"

    .line 121
    invoke-static {p2, p3}, Lopenlight/co/camera/metrics/CameraMetrics;->createPropertiesForMediaRecorderInfo(II)Ljava/util/HashMap;

    move-result-object p2

    .line 120
    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private prepareMediaRecorder()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    sget-object v0, Lopenlight/co/camera/managers/video/VideoManager;->TAG:Ljava/lang/String;

    const-string v1, "prepareMediaRecorder"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lopenlight/co/camera/managers/video/VideoManager;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 298
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lopenlight/co/camera/managers/video/VideoManager;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 299
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 300
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 301
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lopenlight/co/camera/managers/video/VideoManager;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    .line 304
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "quality_profile"

    .line 305
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-static {v0}, Lopenlight/co/camera/enums/VideoQualityMode;->valueOf(Ljava/lang/String;)Lopenlight/co/camera/enums/VideoQualityMode;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Lopenlight/co/camera/enums/VideoQualityMode;->getQualityProfile()I

    move-result v0

    iput v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mVideoQualityProfile:I

    .line 306
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p0, Lopenlight/co/camera/managers/video/VideoManager;->mVideoQualityProfile:I

    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 308
    invoke-direct {p0}, Lopenlight/co/camera/managers/video/VideoManager;->getVideoFileAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mCurrentVideoAbsolutePath:Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lopenlight/co/camera/managers/video/VideoManager;->mCurrentVideoAbsolutePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {}, Lopenlight/co/camera/view/rotate/OrientationsController;->get()Lopenlight/co/camera/view/rotate/OrientationsController;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/camera/view/rotate/OrientationsController;->getConfig()Lopenlight/co/camera/enums/OrientationConfig;

    move-result-object v1

    .line 311
    invoke-virtual {v1}, Lopenlight/co/camera/enums/OrientationConfig;->getOrientationHint()I

    move-result v1

    .line 310
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 312
    iget-object p0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->prepare()V

    .line 313
    sget-object p0, Lopenlight/co/camera/managers/video/VideoManager;->TAG:Ljava/lang/String;

    const-string v0, "media recorder prepared"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 1

    .line 389
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 391
    invoke-direct {p0}, Lopenlight/co/camera/managers/video/VideoManager;->resetMediaRecorder()V

    .line 392
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 393
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 394
    iput-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mRecordingSurface:Landroid/view/Surface;

    .line 395
    iput-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    :cond_0
    return-void
.end method

.method private resetMediaRecorder()V
    .locals 2

    .line 376
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 380
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 381
    iget-object p0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->reset()V

    :cond_0
    return-void
.end method

.method private restartCamera()V
    .locals 2

    .line 360
    sget-object v0, Lopenlight/co/camera/managers/video/VideoManager;->TAG:Ljava/lang/String;

    const-string v1, "restartCamera"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lopenlight/co/camera/managers/video/VideoManager;->isCameraInOpenState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lopenlight/co/camera/managers/video/VideoManager;->closeCamera()Z

    .line 364
    invoke-virtual {p0}, Lopenlight/co/camera/managers/video/VideoManager;->openCamera()Z

    .line 366
    invoke-static {}, Lopenlight/co/camera/managers/focus/FocusManager;->get()Lopenlight/co/camera/managers/focus/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/focus/FocusManager;->resetFocusStateToIdle()V

    .line 368
    iget-object p0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mUpdatePreviewListener:Lopenlight/co/camera/managers/CameraManager$UpdatePreview;

    invoke-interface {p0}, Lopenlight/co/camera/managers/CameraManager$UpdatePreview;->updateVideoPreview()V

    :cond_0
    return-void
.end method

.method private setupMediaRecorderAndSurface()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    sget-object v0, Lopenlight/co/camera/managers/video/VideoManager;->TAG:Ljava/lang/String;

    const-string v1, "Create media recorder and persistent input surface"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 327
    :cond_0
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mRecordingSurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 330
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mRecordingSurface:Landroid/view/Surface;

    .line 332
    :cond_1
    invoke-direct {p0}, Lopenlight/co/camera/managers/video/VideoManager;->prepareMediaRecorder()V

    return-void
.end method


# virtual methods
.method public canGotoGallery()Z
    .locals 1

    .line 141
    iget-object p0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mCurrentState:Lopenlight/co/camera/managers/video/VideoManager$State;

    sget-object v0, Lopenlight/co/camera/managers/video/VideoManager$State;->PREVIEW:Lopenlight/co/camera/managers/video/VideoManager$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public closeCamera()Z
    .locals 2

    .line 146
    sget-object v0, Lopenlight/co/camera/managers/video/VideoManager;->TAG:Ljava/lang/String;

    const-string v1, "in close camera"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lopenlight/co/camera/managers/video/VideoManager;->releaseMediaRecorder()V

    .line 148
    invoke-super {p0}, Lopenlight/co/camera/managers/CameraManager;->closeCamera()Z

    move-result p0

    return p0
.end method

.method public continueRecording()V
    .locals 3

    const/4 v0, 0x1

    .line 211
    :try_start_0
    invoke-virtual {p0, v0}, Lopenlight/co/camera/managers/video/VideoManager;->setUseSuffixFileName(Z)V

    .line 213
    invoke-virtual {p0}, Lopenlight/co/camera/managers/video/VideoManager;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 215
    sget-object v1, Lopenlight/co/camera/managers/video/VideoManager;->TAG:Ljava/lang/String;

    const-string v2, "Fail to continue recording."

    invoke-static {v1, v2, v0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 216
    invoke-static {}, Lopenlight/co/camera/metrics/Metrics;->get()Lopenlight/co/camera/metrics/Metrics;

    move-result-object v0

    const-string v1, "event_media_recorder_start_failed"

    invoke-virtual {v0, v1}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mStatusListener:Lopenlight/co/camera/managers/video/VideoManager$OnStatusListener;

    sget-object v1, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;->VIDEO_RECORD_START_FAILED:Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    invoke-interface {v0, v1}, Lopenlight/co/camera/managers/video/VideoManager$OnStatusListener;->onError(Lopenlight/co/camera/managers/video/VideoManager$ErrorType;)V

    .line 218
    invoke-direct {p0}, Lopenlight/co/camera/managers/video/VideoManager;->restartCamera()V

    :goto_0
    return-void
.end method

.method public createCameraSession(Landroid/graphics/SurfaceTexture;Landroid/util/Size;)V
    .locals 2

    .line 160
    :try_start_0
    sget-object v0, Lopenlight/co/camera/managers/video/VideoManager$State;->PREVIEW:Lopenlight/co/camera/managers/video/VideoManager$State;

    invoke-virtual {p0, v0}, Lopenlight/co/camera/managers/video/VideoManager;->setCurrentState(Lopenlight/co/camera/managers/video/VideoManager$State;)V

    .line 162
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mSurfaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 164
    invoke-direct {p0}, Lopenlight/co/camera/managers/video/VideoManager;->setupMediaRecorderAndSurface()V

    .line 167
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x3

    .line 168
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 171
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lopenlight/co/camera/managers/video/VideoManager;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 172
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mSurfaceList:Ljava/util/List;

    iget-object v1, p0, Lopenlight/co/camera/managers/video/VideoManager;->mRecordingSurface:Landroid/view/Surface;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {p0, p1, p2}, Lopenlight/co/camera/managers/video/VideoManager;->createCameraPreviewSessionLocked(Landroid/graphics/SurfaceTexture;Landroid/util/Size;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 176
    sget-object p2, Lopenlight/co/camera/managers/video/VideoManager;->TAG:Ljava/lang/String;

    const-string v0, "Exception when creating preview session using TEMPLATE_RECORD"

    invoke-static {p2, v0, p1}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 177
    invoke-static {}, Lopenlight/co/camera/metrics/Metrics;->get()Lopenlight/co/camera/metrics/Metrics;

    move-result-object p1

    const-string p2, "event_camera_session_error"

    invoke-virtual {p1, p2}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;)V

    .line 178
    invoke-direct {p0}, Lopenlight/co/camera/managers/video/VideoManager;->restartCamera()V

    :goto_0
    return-void
.end method

.method public getBackgroundThreadName()Ljava/lang/String;
    .locals 0

    const-string p0, "VideoBackground"

    return-object p0
.end method

.method public isRecording()Z
    .locals 0

    .line 260
    iget-object p0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mCurrentState:Lopenlight/co/camera/managers/video/VideoManager$State;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/video/VideoManager$State;->isRecording()Z

    move-result p0

    return p0
.end method

.method public setCurrentState(Lopenlight/co/camera/managers/video/VideoManager$State;)V
    .locals 1

    .line 282
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mCurrentState:Lopenlight/co/camera/managers/video/VideoManager$State;

    if-eq p1, v0, :cond_1

    .line 283
    iput-object p1, p0, Lopenlight/co/camera/managers/video/VideoManager;->mCurrentState:Lopenlight/co/camera/managers/video/VideoManager$State;

    .line 284
    sget-object v0, Lopenlight/co/camera/managers/video/VideoManager$State;->PREVIEW:Lopenlight/co/camera/managers/video/VideoManager$State;

    if-eq p1, v0, :cond_0

    sget-object v0, Lopenlight/co/camera/managers/video/VideoManager$State;->RECORDING:Lopenlight/co/camera/managers/video/VideoManager$State;

    if-ne p1, v0, :cond_1

    .line 285
    :cond_0
    iget-object p0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mStatusListener:Lopenlight/co/camera/managers/video/VideoManager$OnStatusListener;

    invoke-interface {p0, p1}, Lopenlight/co/camera/managers/video/VideoManager$OnStatusListener;->onRecordStatusChange(Lopenlight/co/camera/managers/video/VideoManager$State;)V

    :cond_1
    return-void
.end method

.method public setStatusListener(Lopenlight/co/camera/managers/video/VideoManager$OnStatusListener;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lopenlight/co/camera/managers/video/VideoManager;->mStatusListener:Lopenlight/co/camera/managers/video/VideoManager$OnStatusListener;

    return-void
.end method

.method public setUseSuffixFileName(Z)V
    .locals 0

    .line 273
    iput-boolean p1, p0, Lopenlight/co/camera/managers/video/VideoManager;->mUseSuffixFileName:Z

    return-void
.end method

.method public startRecording()V
    .locals 3

    .line 186
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 188
    :try_start_0
    sget-object v0, Lopenlight/co/camera/managers/video/VideoManager;->TAG:Ljava/lang/String;

    const-string v1, "Start recording"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lopenlight/co/camera/managers/video/VideoManager$State;->RECORDING:Lopenlight/co/camera/managers/video/VideoManager$State;

    invoke-virtual {p0, v0}, Lopenlight/co/camera/managers/video/VideoManager;->setCurrentState(Lopenlight/co/camera/managers/video/VideoManager$State;)V

    .line 191
    invoke-direct {p0}, Lopenlight/co/camera/managers/video/VideoManager;->resetMediaRecorder()V

    .line 193
    invoke-direct {p0}, Lopenlight/co/camera/managers/video/VideoManager;->prepareMediaRecorder()V

    .line 194
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 196
    sget-object v1, Lopenlight/co/camera/managers/video/VideoManager;->TAG:Ljava/lang/String;

    const-string v2, "Fail to start recording."

    invoke-static {v1, v2, v0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 197
    invoke-static {}, Lopenlight/co/camera/metrics/Metrics;->get()Lopenlight/co/camera/metrics/Metrics;

    move-result-object v0

    const-string v1, "event_media_recorder_start_failed"

    invoke-virtual {v0, v1}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mStatusListener:Lopenlight/co/camera/managers/video/VideoManager$OnStatusListener;

    sget-object v1, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;->VIDEO_RECORD_START_FAILED:Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    invoke-interface {v0, v1}, Lopenlight/co/camera/managers/video/VideoManager$OnStatusListener;->onError(Lopenlight/co/camera/managers/video/VideoManager$ErrorType;)V

    .line 199
    invoke-direct {p0}, Lopenlight/co/camera/managers/video/VideoManager;->restartCamera()V

    :cond_0
    :goto_0
    return-void
.end method

.method public stopRecording()V
    .locals 5

    .line 227
    sget-object v0, Lopenlight/co/camera/managers/video/VideoManager;->TAG:Ljava/lang/String;

    const-string v1, "Stop Recording"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :try_start_0
    sget-object v0, Lopenlight/co/camera/managers/video/VideoManager$State;->PREVIEW:Lopenlight/co/camera/managers/video/VideoManager$State;

    invoke-virtual {p0, v0}, Lopenlight/co/camera/managers/video/VideoManager;->setCurrentState(Lopenlight/co/camera/managers/video/VideoManager$State;)V

    .line 230
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mStatusListener:Lopenlight/co/camera/managers/video/VideoManager$OnStatusListener;

    invoke-interface {v0}, Lopenlight/co/camera/managers/video/VideoManager$OnStatusListener;->onStopRecording()V

    .line 231
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 232
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mStatusListener:Lopenlight/co/camera/managers/video/VideoManager$OnStatusListener;

    iget-object v1, p0, Lopenlight/co/camera/managers/video/VideoManager;->mCurrentVideoAbsolutePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lopenlight/co/camera/managers/video/VideoManager$OnStatusListener;->onMediaSaveComplete(Ljava/lang/String;)V

    .line 235
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lopenlight/co/camera/managers/video/VideoManager;->mCurrentVideoAbsolutePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v3, 0x2800

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    .line 237
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v3, p0, Lopenlight/co/camera/managers/video/VideoManager;->mCurrentVideoAbsolutePath:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "video/mp4"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lopenlight/co/camera/managers/video/-$$Lambda$VideoManager$cgDNzZMOkluBaZDozvoiYEQNpEM;

    invoke-direct {v4, p0}, Lopenlight/co/camera/managers/video/-$$Lambda$VideoManager$cgDNzZMOkluBaZDozvoiYEQNpEM;-><init>(Lopenlight/co/camera/managers/video/VideoManager;)V

    invoke-static {v0, v1, v3, v4}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0

    .line 242
    :cond_0
    sget-object v0, Lopenlight/co/camera/managers/video/VideoManager;->TAG:Ljava/lang/String;

    const-string v1, "Invalid MP4, file not found or size less than minimum"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lopenlight/co/camera/metrics/Metrics;->get()Lopenlight/co/camera/metrics/Metrics;

    move-result-object v0

    const-string v1, "event_media_recorder_invalid_size"

    invoke-virtual {v0, v1}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;)V

    .line 246
    :goto_0
    invoke-virtual {p0, v2}, Lopenlight/co/camera/managers/video/VideoManager;->setUseSuffixFileName(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 248
    sget-object v1, Lopenlight/co/camera/managers/video/VideoManager;->TAG:Ljava/lang/String;

    const-string v2, "Fail to stop recording."

    invoke-static {v1, v2, v0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 249
    invoke-static {}, Lopenlight/co/camera/metrics/Metrics;->get()Lopenlight/co/camera/metrics/Metrics;

    move-result-object v0

    const-string v1, "event_media_recorder_stop_failed"

    invoke-virtual {v0, v1}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lopenlight/co/camera/managers/video/VideoManager;->mStatusListener:Lopenlight/co/camera/managers/video/VideoManager$OnStatusListener;

    sget-object v1, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;->VIDEO_RECORD_STOP_FAILED:Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    invoke-interface {v0, v1}, Lopenlight/co/camera/managers/video/VideoManager$OnStatusListener;->onError(Lopenlight/co/camera/managers/video/VideoManager$ErrorType;)V

    .line 251
    invoke-direct {p0}, Lopenlight/co/camera/managers/video/VideoManager;->restartCamera()V

    :goto_1
    return-void
.end method
