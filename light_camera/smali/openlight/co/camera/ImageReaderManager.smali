.class public Lopenlight/co/camera/ImageReaderManager;
.super Ljava/lang/Object;
.source "ImageReaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/ImageReaderManager$PendingCapturesCompleteListener;,
        Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;,
        Lopenlight/co/camera/ImageReaderManager$OnImageStatusListener;
    }
.end annotation


# static fields
.field private static final IMAGE_READER_BUFFER_COUNT:I = 0x5

.field private static final IMAGE_READER_BUFFER_COUNT_HISTOGRAM:I = 0x1e

.field private static final MAX_PREVIEW_HEIGHT:I = 0x438

.field private static final MAX_PREVIEW_WIDTH:I = 0x780

.field private static final MAX_PREVIEW_WIDTH_4_3:I = 0x5a0

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lopenlight/co/camera/ImageReaderManager;


# instance fields
.field private final mCameraInfo:Lopenlight/co/camera/CameraInfo;

.field private final mCameraPref:Lopenlight/co/lib/content/Prefs;

.field private mJpegImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable<",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field

.field private final mJpegResultQueue:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mOnImageStatusListener:Lopenlight/co/camera/ImageReaderManager$OnImageStatusListener;

.field private final mOnJpegImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final mOnRawImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final mOnYuvImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mPendingCapturesCompleteListener:Lopenlight/co/camera/ImageReaderManager$PendingCapturesCompleteListener;

.field private mRawImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable<",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field

.field private final mRawResultQueue:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

.field private mYuvImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable<",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 35
    const-class v0, Lopenlight/co/camera/ImageReaderManager;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/ImageReaderManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lopenlight/co/camera/CameraInfo;->get()Lopenlight/co/camera/CameraInfo;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/ImageReaderManager;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    .line 64
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/ImageReaderManager;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    .line 66
    invoke-static {}, Lopenlight/co/camera/utils/TimingLoggerUtil;->get()Lopenlight/co/camera/utils/TimingLoggerUtil;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/ImageReaderManager;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

    .line 95
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/ImageReaderManager;->mJpegResultQueue:Ljava/util/TreeMap;

    .line 102
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/ImageReaderManager;->mRawResultQueue:Ljava/util/TreeMap;

    .line 125
    new-instance v0, Lopenlight/co/camera/ImageReaderManager$1;

    invoke-direct {v0, p0}, Lopenlight/co/camera/ImageReaderManager$1;-><init>(Lopenlight/co/camera/ImageReaderManager;)V

    iput-object v0, p0, Lopenlight/co/camera/ImageReaderManager;->mOnJpegImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 137
    new-instance v0, Lopenlight/co/camera/ImageReaderManager$2;

    invoke-direct {v0, p0}, Lopenlight/co/camera/ImageReaderManager$2;-><init>(Lopenlight/co/camera/ImageReaderManager;)V

    iput-object v0, p0, Lopenlight/co/camera/ImageReaderManager;->mOnYuvImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 152
    new-instance v0, Lopenlight/co/camera/ImageReaderManager$3;

    invoke-direct {v0, p0}, Lopenlight/co/camera/ImageReaderManager$3;-><init>(Lopenlight/co/camera/ImageReaderManager;)V

    iput-object v0, p0, Lopenlight/co/camera/ImageReaderManager;->mOnRawImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 33
    sget-object v0, Lopenlight/co/camera/ImageReaderManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lopenlight/co/camera/ImageReaderManager;)Lopenlight/co/camera/utils/TimingLoggerUtil;
    .registers 1

    .line 33
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager;->mTimingLoggerUtil:Lopenlight/co/camera/utils/TimingLoggerUtil;

    return-object p0
.end method

.method static synthetic access$200(Lopenlight/co/camera/ImageReaderManager;)Ljava/util/TreeMap;
    .registers 1

    .line 33
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager;->mJpegResultQueue:Ljava/util/TreeMap;

    return-object p0
.end method

.method static synthetic access$300(Lopenlight/co/camera/ImageReaderManager;)Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;
    .registers 1

    .line 33
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager;->mJpegImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    return-object p0
.end method

.method static synthetic access$400(Lopenlight/co/camera/ImageReaderManager;Ljava/util/TreeMap;Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Lopenlight/co/camera/ImageReaderManager;->dequeueAndSaveImage(Ljava/util/TreeMap;Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;)V

    return-void
.end method

.method static synthetic access$500(Lopenlight/co/camera/ImageReaderManager;)Lopenlight/co/camera/ImageReaderManager$OnImageStatusListener;
    .registers 1

    .line 33
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager;->mOnImageStatusListener:Lopenlight/co/camera/ImageReaderManager$OnImageStatusListener;

    return-object p0
.end method

.method static synthetic access$600(Lopenlight/co/camera/ImageReaderManager;)Ljava/util/TreeMap;
    .registers 1

    .line 33
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager;->mRawResultQueue:Ljava/util/TreeMap;

    return-object p0
.end method

.method static synthetic access$700(Lopenlight/co/camera/ImageReaderManager;)Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;
    .registers 1

    .line 33
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager;->mRawImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    return-object p0
.end method

.method static synthetic access$800(Lopenlight/co/camera/ImageReaderManager;)Lopenlight/co/camera/ImageReaderManager$PendingCapturesCompleteListener;
    .registers 1

    .line 33
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager;->mPendingCapturesCompleteListener:Lopenlight/co/camera/ImageReaderManager$PendingCapturesCompleteListener;

    return-object p0
.end method

.method private dequeueAndSaveImage(Ljava/util/TreeMap;Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;",
            ">;",
            "Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable<",
            "Landroid/media/ImageReader;",
            ">;)V"
        }
    .end annotation

    .line 447
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraStateLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 449
    :try_start_9
    invoke-virtual {p1}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    .line 450
    sget-object v2, Lopenlight/co/camera/ImageReaderManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IMAGE] ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->getSequence()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;

    .line 455
    invoke-virtual {p2}, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->getAndRetain()Ljava/lang/AutoCloseable;

    move-result-object v3

    if-nez v3, :cond_46

    .line 456
    sget-object p0, Lopenlight/co/camera/ImageReaderManager;->TAG:Ljava/lang/String;

    const-string v2, "[IMAGE] Paused the activity before we could save the image, ImageReader already closed."

    invoke-static {p0, v2}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-virtual {p2}, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->close()V

    .line 459
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_9 .. :try_end_45} :catchall_b2

    return-void

    .line 468
    :cond_46
    :try_start_46
    invoke-virtual {p2}, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->get()Ljava/lang/AutoCloseable;

    move-result-object v3

    check-cast v3, Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v3

    .line 469
    invoke-virtual {v3}, Landroid/media/Image;->getFormat()I

    move-result v4

    .line 470
    sget-object v5, Lopenlight/co/camera/ImageReaderManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[IMAGE] Light Image format in acquireNextImage reader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/IllegalStateException; {:try_start_46 .. :try_end_6a} :catch_84
    .catchall {:try_start_46 .. :try_end_6a} :catchall_b2

    .line 481
    :try_start_6a
    invoke-virtual {v2, v3}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->setImage(Landroid/media/Image;)Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;

    .line 483
    new-instance v3, Lopenlight/co/camera/ImageReaderManager$4;

    invoke-direct {v3, p0, v4, p2}, Lopenlight/co/camera/ImageReaderManager$4;-><init>(Lopenlight/co/camera/ImageReaderManager;ILopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;)V

    .line 519
    invoke-virtual {v2, v3}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->setSaveImageListener(Lopenlight/co/camera/listener/OnImageSavedListener;)Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;

    .line 520
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, v2, p1}, Lopenlight/co/camera/ImageReaderManager;->handleCompletionLocked(ILopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;Ljava/util/TreeMap;)V

    .line 521
    monitor-exit v0

    return-void

    :catch_84
    move-exception p0

    .line 474
    sget-object v2, Lopenlight/co/camera/ImageReaderManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many images queued for saving, dropping image for request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 474
    invoke-static {v2, v3, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 476
    invoke-virtual {p2}, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->close()V

    .line 477
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->decrementCapturesInFlight()V

    .line 479
    monitor-exit v0

    return-void

    :catchall_b2
    move-exception p0

    .line 521
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_6a .. :try_end_b4} :catchall_b2

    throw p0
.end method

.method public static declared-synchronized get()Lopenlight/co/camera/ImageReaderManager;
    .registers 2

    const-class v0, Lopenlight/co/camera/ImageReaderManager;

    monitor-enter v0

    .line 115
    :try_start_3
    sget-object v1, Lopenlight/co/camera/ImageReaderManager;->sInstance:Lopenlight/co/camera/ImageReaderManager;

    if-nez v1, :cond_e

    .line 116
    new-instance v1, Lopenlight/co/camera/ImageReaderManager;

    invoke-direct {v1}, Lopenlight/co/camera/ImageReaderManager;-><init>()V

    sput-object v1, Lopenlight/co/camera/ImageReaderManager;->sInstance:Lopenlight/co/camera/ImageReaderManager;

    .line 118
    :cond_e
    sget-object v1, Lopenlight/co/camera/ImageReaderManager;->sInstance:Lopenlight/co/camera/ImageReaderManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    .line 114
    monitor-exit v0

    throw v1
.end method

.method private getJpegAndYuvSize()Landroid/util/Size;
    .registers 5

    .line 531
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "aspect_ratio_setting"

    invoke-interface {p0, v0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 532
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x438

    const/16 v2, 0x5a0

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    .line 533
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0xbf28

    if-eq v2, v3, :cond_39

    const v3, 0xca6d

    if-eq v2, v3, :cond_2f

    const v3, 0x171824

    if-eq v2, v3, :cond_25

    goto :goto_43

    :cond_25
    const-string v2, "16:9"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    const/4 p0, 0x2

    goto :goto_44

    :cond_2f
    const-string v2, "4:3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    const/4 p0, 0x0

    goto :goto_44

    :cond_39
    const-string v2, "1:1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    const/4 p0, 0x1

    goto :goto_44

    :cond_43
    :goto_43
    const/4 p0, -0x1

    :goto_44
    packed-switch p0, :pswitch_data_58

    return-object v0

    .line 539
    :pswitch_48
    new-instance p0, Landroid/util/Size;

    const/16 v0, 0x780

    invoke-direct {p0, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    .line 537
    :pswitch_50
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v1, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :pswitch_56
    return-object v0

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_56
        :pswitch_50
        :pswitch_48
    .end packed-switch
.end method


# virtual methods
.method public addJpegResultQueue(ILopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;)V
    .registers 3

    .line 233
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager;->mJpegResultQueue:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addRawResultQueue(ILopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;)V
    .registers 3

    .line 238
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager;->mRawResultQueue:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public closeImageReaders()V
    .registers 3

    .line 217
    iget-object v0, p0, Lopenlight/co/camera/ImageReaderManager;->mRawImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 218
    iget-object v0, p0, Lopenlight/co/camera/ImageReaderManager;->mRawImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    invoke-virtual {v0}, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->close()V

    .line 219
    iput-object v1, p0, Lopenlight/co/camera/ImageReaderManager;->mRawImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    .line 221
    :cond_c
    iget-object v0, p0, Lopenlight/co/camera/ImageReaderManager;->mJpegImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    if-eqz v0, :cond_17

    .line 222
    iget-object v0, p0, Lopenlight/co/camera/ImageReaderManager;->mJpegImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    invoke-virtual {v0}, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->close()V

    .line 223
    iput-object v1, p0, Lopenlight/co/camera/ImageReaderManager;->mJpegImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    .line 225
    :cond_17
    iget-object v0, p0, Lopenlight/co/camera/ImageReaderManager;->mYuvImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    if-eqz v0, :cond_22

    .line 226
    iget-object v0, p0, Lopenlight/co/camera/ImageReaderManager;->mYuvImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    invoke-virtual {v0}, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->close()V

    .line 227
    iput-object v1, p0, Lopenlight/co/camera/ImageReaderManager;->mYuvImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    :cond_22
    return-void
.end method

.method public getJpegImageBuilder(I)Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;
    .registers 2

    .line 400
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager;->mJpegResultQueue:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;

    return-object p0
.end method

.method public getJpegImageReader()Landroid/media/ImageReader;
    .registers 1

    .line 372
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager;->mJpegImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    invoke-virtual {p0}, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->get()Ljava/lang/AutoCloseable;

    move-result-object p0

    check-cast p0, Landroid/media/ImageReader;

    return-object p0
.end method

.method public getJpegRefCount()I
    .registers 1

    .line 384
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager;->mJpegImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    iget p0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mRefCount:I

    return p0
.end method

.method public getJpegResultQueue()Ljava/util/TreeMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;",
            ">;"
        }
    .end annotation

    .line 392
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager;->mJpegResultQueue:Ljava/util/TreeMap;

    return-object p0
.end method

.method public getRawImageBuilder(I)Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;
    .registers 2

    .line 404
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager;->mRawResultQueue:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;

    return-object p0
.end method

.method public getRawImageReader()Landroid/media/ImageReader;
    .registers 2

    .line 376
    iget-object v0, p0, Lopenlight/co/camera/ImageReaderManager;->mRawImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_e

    :cond_6
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager;->mRawImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    invoke-virtual {p0}, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->get()Ljava/lang/AutoCloseable;

    move-result-object p0

    check-cast p0, Landroid/media/ImageReader;

    :goto_e
    return-object p0
.end method

.method public getRawRefCount()I
    .registers 2

    .line 388
    iget-object v0, p0, Lopenlight/co/camera/ImageReaderManager;->mRawImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager;->mRawImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    iget p0, p0, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->mRefCount:I

    :goto_a
    return p0
.end method

.method public getRawResultQueue()Ljava/util/TreeMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;",
            ">;"
        }
    .end annotation

    .line 396
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager;->mRawResultQueue:Ljava/util/TreeMap;

    return-object p0
.end method

.method public getYuvImageReader()Landroid/media/ImageReader;
    .registers 2

    .line 380
    iget-object v0, p0, Lopenlight/co/camera/ImageReaderManager;->mYuvImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_e

    :cond_6
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager;->mYuvImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    invoke-virtual {p0}, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->get()Ljava/lang/AutoCloseable;

    move-result-object p0

    check-cast p0, Landroid/media/ImageReader;

    :goto_e
    return-object p0
.end method

.method public handleCompletionLocked(ILopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;Ljava/util/TreeMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 270
    :cond_3
    invoke-virtual {p2}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->buildIfComplete()Lopenlight/co/camera/utils/ImageUtil$ImageSaver;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 272
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-virtual {p0}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lopenlight/co/camera/utils/ExecutorUtil;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public removeJpegRequestQueue(I)V
    .registers 2

    .line 242
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager;->mJpegResultQueue:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeRawRequestQueue(I)V
    .registers 2

    .line 246
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager;->mRawResultQueue:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOnImageStatusListener(Lopenlight/co/camera/ImageReaderManager$OnImageStatusListener;)V
    .registers 2

    .line 250
    iput-object p1, p0, Lopenlight/co/camera/ImageReaderManager;->mOnImageStatusListener:Lopenlight/co/camera/ImageReaderManager$OnImageStatusListener;

    return-void
.end method

.method public setPendingCapturesCompleteListener(Lopenlight/co/camera/ImageReaderManager$PendingCapturesCompleteListener;)V
    .registers 2

    .line 429
    iput-object p1, p0, Lopenlight/co/camera/ImageReaderManager;->mPendingCapturesCompleteListener:Lopenlight/co/camera/ImageReaderManager$PendingCapturesCompleteListener;

    return-void
.end method

.method public setUpImageReaders()V
    .registers 11

    .line 165
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraStateLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 169
    :try_start_9
    iget-object v1, p0, Lopenlight/co/camera/ImageReaderManager;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v1}, Lopenlight/co/camera/CameraInfo;->getLargestRawOutputSize()Landroid/util/Size;

    move-result-object v1

    .line 170
    invoke-direct {p0}, Lopenlight/co/camera/ImageReaderManager;->getJpegAndYuvSize()Landroid/util/Size;

    move-result-object v2

    .line 171
    invoke-direct {p0}, Lopenlight/co/camera/ImageReaderManager;->getJpegAndYuvSize()Landroid/util/Size;

    move-result-object v3

    .line 172
    iget-object v4, p0, Lopenlight/co/camera/ImageReaderManager;->mCameraInfo:Lopenlight/co/camera/CameraInfo;

    invoke-virtual {v4}, Lopenlight/co/camera/CameraInfo;->getRawFormat()I

    move-result v4

    .line 174
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v5

    invoke-virtual {v5}, Lopenlight/co/camera/managers/CameraManager;->getCameraBackgroundHandler()Landroid/os/Handler;

    move-result-object v5

    .line 176
    iget-object v6, p0, Lopenlight/co/camera/ImageReaderManager;->mJpegImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    const/4 v7, 0x5

    if-eqz v6, :cond_32

    iget-object v6, p0, Lopenlight/co/camera/ImageReaderManager;->mJpegImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    invoke-virtual {v6}, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->get()Ljava/lang/AutoCloseable;

    move-result-object v6

    if-nez v6, :cond_47

    .line 177
    :cond_32
    new-instance v6, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    .line 178
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v8

    .line 179
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/16 v9, 0x100

    .line 178
    invoke-static {v8, v3, v9, v7}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v3

    invoke-direct {v6, v3}, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;-><init>(Ljava/lang/AutoCloseable;)V

    iput-object v6, p0, Lopenlight/co/camera/ImageReaderManager;->mJpegImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    .line 182
    :cond_47
    iget-object v3, p0, Lopenlight/co/camera/ImageReaderManager;->mJpegImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    invoke-virtual {v3}, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->get()Ljava/lang/AutoCloseable;

    move-result-object v3

    check-cast v3, Landroid/media/ImageReader;

    iget-object v6, p0, Lopenlight/co/camera/ImageReaderManager;->mOnJpegImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-virtual {v3, v6, v5}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 184
    sget-object v3, Lopenlight/co/camera/ImageReaderManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "JPEG Image Reader: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lopenlight/co/camera/ImageReaderManager;->mJpegImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lopenlight/co/camera/CameraApp;->isLight()Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 187
    iget-object v3, p0, Lopenlight/co/camera/ImageReaderManager;->mRawImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    if-eqz v3, :cond_7e

    iget-object v3, p0, Lopenlight/co/camera/ImageReaderManager;->mRawImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    invoke-virtual {v3}, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->get()Ljava/lang/AutoCloseable;

    move-result-object v3

    if-nez v3, :cond_91

    .line 188
    :cond_7e
    new-instance v3, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    .line 190
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    .line 191
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 189
    invoke-static {v6, v1, v4, v7}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    invoke-direct {v3, v1}, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;-><init>(Ljava/lang/AutoCloseable;)V

    iput-object v3, p0, Lopenlight/co/camera/ImageReaderManager;->mRawImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    .line 194
    :cond_91
    iget-object v1, p0, Lopenlight/co/camera/ImageReaderManager;->mRawImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    invoke-virtual {v1}, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->get()Ljava/lang/AutoCloseable;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    iget-object v3, p0, Lopenlight/co/camera/ImageReaderManager;->mOnRawImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-virtual {v1, v3, v5}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 196
    sget-object v1, Lopenlight/co/camera/ImageReaderManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raw Image Reader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lopenlight/co/camera/ImageReaderManager;->mRawImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_b6
    sget-boolean v1, Lopenlight/co/camera/CameraActivity;->HISTOGRAM_SUPPORTED:Z

    if-eqz v1, :cond_f4

    .line 200
    invoke-static {}, Lopenlight/co/camera/utils/FaceDetector;->get()Lopenlight/co/camera/utils/FaceDetector;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/camera/utils/FaceDetector;->isFaceDetectionFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_f4

    .line 201
    iget-object v1, p0, Lopenlight/co/camera/ImageReaderManager;->mYuvImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    if-eqz v1, :cond_d0

    iget-object v1, p0, Lopenlight/co/camera/ImageReaderManager;->mYuvImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    invoke-virtual {v1}, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->get()Ljava/lang/AutoCloseable;

    move-result-object v1

    if-nez v1, :cond_e7

    .line 202
    :cond_d0
    new-instance v1, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    .line 203
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    .line 204
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    const/16 v4, 0x23

    const/16 v6, 0x1e

    .line 203
    invoke-static {v3, v2, v4, v6}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v2

    invoke-direct {v1, v2}, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;-><init>(Ljava/lang/AutoCloseable;)V

    iput-object v1, p0, Lopenlight/co/camera/ImageReaderManager;->mYuvImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    .line 207
    :cond_e7
    iget-object v1, p0, Lopenlight/co/camera/ImageReaderManager;->mYuvImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    invoke-virtual {v1}, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->get()Ljava/lang/AutoCloseable;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    iget-object v2, p0, Lopenlight/co/camera/ImageReaderManager;->mOnYuvImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    invoke-virtual {v1, v2, v5}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 211
    :cond_f4
    sget-object v1, Lopenlight/co/camera/ImageReaderManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "YUV Image Reader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager;->mYuvImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    monitor-exit v0

    return-void

    :catchall_10e
    move-exception p0

    monitor-exit v0
    :try_end_110
    .catchall {:try_start_9 .. :try_end_110} :catchall_10e

    throw p0
.end method

.method public setYuvListenerForHistogram(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 4

    .line 410
    sget-boolean v0, Lopenlight/co/camera/CameraActivity;->HISTOGRAM_SUPPORTED:Z

    if-eqz v0, :cond_44

    invoke-static {}, Lopenlight/co/camera/utils/FaceDetector;->get()Lopenlight/co/camera/utils/FaceDetector;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/utils/FaceDetector;->isFaceDetectionFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_44

    .line 411
    iget-object v0, p0, Lopenlight/co/camera/ImageReaderManager;->mYuvImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    invoke-virtual {v0}, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->get()Ljava/lang/AutoCloseable;

    move-result-object v0

    check-cast v0, Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz p1, :cond_35

    .line 413
    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 414
    iget-object p1, p0, Lopenlight/co/camera/ImageReaderManager;->mYuvImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    invoke-virtual {p1}, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->get()Ljava/lang/AutoCloseable;

    move-result-object p1

    check-cast p1, Landroid/media/ImageReader;

    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager;->mOnYuvImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 415
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object p2

    invoke-virtual {p2}, Lopenlight/co/camera/managers/CameraManager;->getCameraBackgroundHandler()Landroid/os/Handler;

    move-result-object p2

    .line 414
    invoke-virtual {p1, p0, p2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    goto :goto_44

    .line 418
    :cond_35
    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 419
    iget-object p0, p0, Lopenlight/co/camera/ImageReaderManager;->mYuvImageReader:Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;

    invoke-virtual {p0}, Lopenlight/co/camera/ImageReaderManager$RefCountedAutoCloseable;->get()Ljava/lang/AutoCloseable;

    move-result-object p0

    check-cast p0, Landroid/media/ImageReader;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_44
    :goto_44
    return-void
.end method
