.class public Lopenlight/co/camera/utils/MediaFileManager;
.super Ljava/lang/Object;
.source "MediaFileManager.java"


# static fields
.field private static final DIR_DCIM:Ljava/lang/String; = "/DCIM/"

.field private static final DIR_GALLERY:Ljava/lang/String; = "/DCIM/Camera/"

.field private static final DIR_THUMBNAILS:Ljava/lang/String; = "thumbnails"

.field private static final DIR_TRASH:Ljava/lang/String; = "/Trash/"

.field private static final FILE_NAME_INDEX:Ljava/lang/String; = "00000"

.field private static final FILE_NAME_PREFIX:Ljava/lang/String; = "L16_"

.field private static final FILE_NAME_SUFFIX_LENGTH:I

.field private static final FILE_NAME_SUFFIX_MIN_INDEX:I = 0x2

.field private static final FILE_NAME_SUFFIX_PAD:Ljava/lang/String; = "00"

.field private static final JPEG_EXTENSION:Ljava/lang/String; = ".jpg"

.field private static final LRI_EXTENSION:Ljava/lang/String; = ".lri"

.field private static final MAX_FILE_NUMBER:I = 0x1869f

.field private static final MEDIA_STORE_VOLUME_NAME_EXTERNAL:Ljava/lang/String; = "external"

.field private static final MP4_EXTENSION:Ljava/lang/String; = ".mp4"

.field private static final MP4_TEMP_EXTENSION:Ljava/lang/String; = ".mp4.tmp"

.field private static final PROCESSED_FILE_MODIFIER:Ljava/lang/String; = "_1"

.field private static final PROCESSED_FILE_SUFFIX:Ljava/lang/String; = "_1.jpg"

.field private static final SDCARD_FOLDER:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MediaFileManager"

.field private static final TEMP_VIDEO_FILE_NAME:Ljava/lang/String; = "L16_temp_video.mp4.tmp"

.field static final TYPE_PICTURE:I = 0x1

.field static final TYPE_VIDEO:I = 0x2

.field private static final sInstance:Lopenlight/co/camera/utils/MediaFileManager;


# instance fields
.field private final mCameraPref:Lopenlight/co/lib/content/Prefs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lopenlight/co/camera/utils/MediaFileManager;

    invoke-direct {v0}, Lopenlight/co/camera/utils/MediaFileManager;-><init>()V

    sput-object v0, Lopenlight/co/camera/utils/MediaFileManager;->sInstance:Lopenlight/co/camera/utils/MediaFileManager;

    const-string v0, "00"

    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lopenlight/co/camera/utils/MediaFileManager;->FILE_NAME_SUFFIX_LENGTH:I

    .line 65
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/utils/MediaFileManager;->SDCARD_FOLDER:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/utils/MediaFileManager;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    return-void
.end method

.method private static convertToLri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 127
    invoke-static {p0}, Lopenlight/co/camera/utils/MediaFileManager;->isLriFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 130
    :cond_0
    invoke-static {p0}, Lopenlight/co/camera/utils/MediaFileManager;->getExtensionStartIndex(Ljava/lang/String;)I

    move-result v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".lri"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createFileFolder(Ljava/lang/String;)Z
    .locals 0

    .line 484
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private fileIndexFromNumber(I)Ljava/lang/String;
    .locals 2

    .line 455
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 456
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    const-string p1, "00000"

    .line 457
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 459
    :cond_0
    sget-object p1, Lopenlight/co/camera/utils/MediaFileManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFileName::Actual Number after process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static get()Lopenlight/co/camera/utils/MediaFileManager;
    .locals 1

    .line 79
    sget-object v0, Lopenlight/co/camera/utils/MediaFileManager;->sInstance:Lopenlight/co/camera/utils/MediaFileManager;

    return-object v0
.end method

.method private static getAvailableFiles(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 377
    invoke-static {p0}, Lopenlight/co/camera/utils/MediaFileManager;->getMediaItemCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    :try_start_0
    const-string v1, "_data"

    .line 380
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 381
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 383
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, "thumbnails"

    .line 384
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "/DCIM/"

    .line 385
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "/Trash/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 391
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 392
    throw v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static getExtensionStartIndex(Ljava/lang/String;)I
    .locals 2

    .line 160
    invoke-static {p0}, Lopenlight/co/camera/utils/MediaFileManager;->isProcessedOutput(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_1.jpg"

    .line 161
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2e

    .line 162
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    return v0
.end method

.method private getFileName(I)Ljava/lang/String;
    .locals 3

    .line 279
    sget-object v0, Lopenlight/co/camera/utils/MediaFileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileName::Numeric Value of last file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "L16_"

    .line 280
    invoke-direct {p0, p1}, Lopenlight/co/camera/utils/MediaFileManager;->fileIndexFromNumber(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 281
    sget-object p1, Lopenlight/co/camera/utils/MediaFileManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFileName::Complete File Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private getLastFileIndex()Ljava/lang/String;
    .locals 2

    .line 430
    invoke-direct {p0}, Lopenlight/co/camera/utils/MediaFileManager;->getLastFilePath()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "00000"

    return-object p0

    :cond_0
    const-string v0, "L16_"

    .line 434
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v1, v0, 0x4

    add-int/lit8 v0, v0, 0x9

    .line 437
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLastFileNumber()I
    .locals 4

    .line 291
    invoke-direct {p0}, Lopenlight/co/camera/utils/MediaFileManager;->getLastFileIndex()Ljava/lang/String;

    move-result-object v0

    .line 292
    sget-object v1, Lopenlight/co/camera/utils/MediaFileManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileName::Existing Last file name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-direct {p0, v0}, Lopenlight/co/camera/utils/MediaFileManager;->parseFileIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getLastFilePath()Ljava/lang/String;
    .locals 5

    const-string p0, "00000"

    .line 309
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    invoke-static {v0}, Lopenlight/co/camera/utils/MediaFileManager;->getAvailableFiles(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 312
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 313
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 314
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "L16_"

    .line 315
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    add-int/lit8 v4, v3, 0x4

    add-int/lit8 v3, v3, 0x9

    .line 319
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 320
    invoke-virtual {v3, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    move-object v2, v1

    move-object p0, v3

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getLastSavedFileNumber()I
    .locals 1

    .line 445
    iget-object p0, p0, Lopenlight/co/camera/utils/MediaFileManager;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "lastFileNumber"

    invoke-interface {p0, v0}, Lopenlight/co/lib/content/Prefs;->getIntValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static getMediaItemCursor(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7

    const-string v0, "external"

    .line 404
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v0, "_data"

    const-string v1, "datetaken"

    .line 405
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    .line 408
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "media_type in (?,?) and ifnull(datetaken, 0) > 0"

    const/4 p0, 0x2

    new-array v5, p0, [Ljava/lang/String;

    const/4 p0, 0x1

    .line 414
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x3

    .line 415
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, p0

    const-string v6, "datetaken DESC, _data DESC"

    .line 409
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private getNextFileNumber()I
    .locals 2

    .line 336
    iget-object v0, p0, Lopenlight/co/camera/utils/MediaFileManager;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "lastFileNumber"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const v1, 0x1869f

    rem-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 337
    invoke-direct {p0, v0}, Lopenlight/co/camera/utils/MediaFileManager;->setLastFileNumber(I)V

    return v0
.end method

.method private getNextFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 167
    invoke-virtual {p0}, Lopenlight/co/camera/utils/MediaFileManager;->getImagePath()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, ""

    return-object p0

    .line 174
    :cond_0
    invoke-direct {p0}, Lopenlight/co/camera/utils/MediaFileManager;->getNextFileNumber()I

    move-result v1

    invoke-direct {p0, v1}, Lopenlight/co/camera/utils/MediaFileManager;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    sget-object p0, Lopenlight/co/camera/utils/MediaFileManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "New file  path: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getVideoFileNextSuffixNumber()I
    .locals 2

    .line 355
    iget-object v0, p0, Lopenlight/co/camera/utils/MediaFileManager;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "lastFileSuffixNumber"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getIntValue(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 357
    invoke-direct {p0, v0}, Lopenlight/co/camera/utils/MediaFileManager;->setVideoSuffixNumber(I)V

    return v0
.end method

.method private static isLriFile(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".lri"

    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isProcessedOutput(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "_1.jpg"

    .line 150
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$checkLastFileName$0(Lopenlight/co/camera/utils/MediaFileManager;)V
    .locals 3

    .line 263
    sget-object v0, Lopenlight/co/camera/utils/MediaFileManager;->TAG:Ljava/lang/String;

    const-string v1, "checkLastFileName::start"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Lopenlight/co/camera/utils/MediaFileManager;->getLastFileNumber()I

    move-result v0

    .line 265
    invoke-direct {p0, v0}, Lopenlight/co/camera/utils/MediaFileManager;->setLastFileNumber(I)V

    .line 266
    sget-object p0, Lopenlight/co/camera/utils/MediaFileManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkLastFileName::Last File Number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private padWithZeroes(I)Ljava/lang/String;
    .locals 1

    .line 469
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "00"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 470
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sget v0, Lopenlight/co/camera/utils/MediaFileManager;->FILE_NAME_SUFFIX_LENGTH:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parseFileIndex(Ljava/lang/String;)I
    .locals 0

    .line 480
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private setLastFileNumber(I)V
    .locals 1

    .line 347
    iget-object p0, p0, Lopenlight/co/camera/utils/MediaFileManager;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "lastFileNumber"

    invoke-interface {p0, v0, p1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;I)V

    return-void
.end method

.method private setVideoSuffixNumber(I)V
    .locals 1

    .line 366
    iget-object p0, p0, Lopenlight/co/camera/utils/MediaFileManager;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "lastFileSuffixNumber"

    invoke-interface {p0, v0, p1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public checkLastFileName()V
    .locals 2

    .line 261
    iget-object v0, p0, Lopenlight/co/camera/utils/MediaFileManager;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "lastFileNumber"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 262
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lopenlight/co/camera/utils/-$$Lambda$MediaFileManager$h4jV-tDwDbnbqiZPeMzo-hPvdpc;

    invoke-direct {v1, p0}, Lopenlight/co/camera/utils/-$$Lambda$MediaFileManager$h4jV-tDwDbnbqiZPeMzo-hPvdpc;-><init>(Lopenlight/co/camera/utils/MediaFileManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 268
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public deleteTempVideoFile()V
    .locals 1

    .line 210
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lopenlight/co/camera/utils/MediaFileManager;->getVideoTempFilePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 213
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public getFirstMedia()Ljava/lang/String;
    .locals 3

    .line 88
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object p0

    .line 90
    invoke-static {p0}, Lopenlight/co/camera/utils/MediaFileManager;->getMediaItemCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    :try_start_0
    const-string v0, "_data"

    .line 94
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 95
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/DCIM/"

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "thumbnails"

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 106
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 107
    throw v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lopenlight/co/camera/utils/MediaFileManager;->SDCARD_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/Camera/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-direct {p0, v0}, Lopenlight/co/camera/utils/MediaFileManager;->createFileFolder(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getNextProcessedAndRawFileNames()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const-string v0, ".jpg"

    .line 184
    invoke-direct {p0, v0}, Lopenlight/co/camera/utils/MediaFileManager;->getNextFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 185
    invoke-static {}, Lopenlight/co/camera/utils/CipherManager;->get()Lopenlight/co/camera/utils/CipherManager;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lopenlight/co/camera/utils/CipherManager;->isEncrypting(I)Z

    move-result v0

    .line 186
    new-instance v1, Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lopenlight/co/camera/utils/CipherManager;->encryptedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    sget-object v0, Lopenlight/co/camera/utils/MediaFileManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JPEG File Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lopenlight/co/camera/utils/CipherManager;->get()Lopenlight/co/camera/utils/CipherManager;

    move-result-object v0

    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Lopenlight/co/camera/utils/CipherManager;->isEncrypting(I)Z

    move-result v0

    .line 191
    invoke-static {p0}, Lopenlight/co/camera/utils/MediaFileManager;->convertToLri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 192
    new-instance v2, Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lopenlight/co/camera/utils/CipherManager;->encryptedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    sget-object p0, Lopenlight/co/camera/utils/MediaFileManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Raw File Name: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getVideoDurationText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 218
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 222
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p2

    .line 223
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    .line 224
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    const p0, 0x7f0e0131

    const/4 p2, 0x2

    .line 225
    new-array p2, p2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 226
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, p2, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 227
    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p2, v4

    .line 225
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoFilePath()Ljava/lang/String;
    .locals 1

    const-string v0, ".mp4"

    .line 236
    invoke-direct {p0, v0}, Lopenlight/co/camera/utils/MediaFileManager;->getNextFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoFilePathWithSuffix()Ljava/lang/String;
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lopenlight/co/camera/utils/MediaFileManager;->SDCARD_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/Camera/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lopenlight/co/camera/utils/MediaFileManager;->getLastSavedFileNumber()I

    move-result v1

    invoke-direct {p0, v1}, Lopenlight/co/camera/utils/MediaFileManager;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-direct {p0}, Lopenlight/co/camera/utils/MediaFileManager;->getVideoFileNextSuffixNumber()I

    move-result v1

    invoke-direct {p0, v1}, Lopenlight/co/camera/utils/MediaFileManager;->padWithZeroes(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".mp4"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoTempFilePath()Ljava/lang/String;
    .locals 1

    .line 202
    invoke-virtual {p0}, Lopenlight/co/camera/utils/MediaFileManager;->getImagePath()Ljava/lang/String;

    move-result-object p0

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "L16_temp_video.mp4.tmp"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public resetVideoSuffixNumber()V
    .locals 1

    const/4 v0, 0x0

    .line 252
    invoke-direct {p0, v0}, Lopenlight/co/camera/utils/MediaFileManager;->setVideoSuffixNumber(I)V

    return-void
.end method
