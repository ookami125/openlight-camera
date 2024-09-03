.class public Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/utils/ImageUtil$ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageSaverBuilder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mExif:Lopenlight/co/lib/exif/ExifInformation;

.field private mFile:Ljava/io/File;

.field private mImage:Landroid/media/Image;

.field private mOnImageSavedListener:Lopenlight/co/camera/listener/OnImageSavedListener;

.field private mViewPrefs:Lltpb/ViewPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    iput-object p1, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isComplete()Z
    .registers 2

    .line 678
    iget-object v0, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->mFile:Ljava/io/File;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method


# virtual methods
.method public declared-synchronized buildIfComplete()Lopenlight/co/camera/utils/ImageUtil$ImageSaver;
    .registers 10

    monitor-enter p0

    .line 664
    :try_start_1
    invoke-direct {p0}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->isComplete()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1f

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 665
    monitor-exit p0

    return-object v0

    .line 667
    :cond_a
    :try_start_a
    new-instance v0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;

    iget-object v2, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->mImage:Landroid/media/Image;

    iget-object v3, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->mFile:Ljava/io/File;

    iget-object v4, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->mOnImageSavedListener:Lopenlight/co/camera/listener/OnImageSavedListener;

    iget-object v6, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->mViewPrefs:Lltpb/ViewPreferences;

    iget-object v7, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->mExif:Lopenlight/co/lib/exif/ExifInformation;

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;-><init>(Landroid/media/Image;Ljava/io/File;Landroid/content/Context;Lopenlight/co/camera/listener/OnImageSavedListener;Lltpb/ViewPreferences;Lopenlight/co/lib/exif/ExifInformation;Lopenlight/co/camera/utils/ImageUtil$1;)V
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-object v0

    :catchall_1f
    move-exception v0

    .line 663
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSaveLocation()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 673
    :try_start_1
    iget-object v0, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->mFile:Ljava/io/File;

    if-nez v0, :cond_8

    const-string v0, "Unknown"

    goto :goto_e

    :cond_8
    iget-object v0, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :goto_e
    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setExifInfo(Lopenlight/co/lib/exif/ExifInformation;)Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;
    .registers 2

    monitor-enter p0

    .line 640
    :try_start_1
    iput-object p1, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->mExif:Lopenlight/co/lib/exif/ExifInformation;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 641
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    .line 639
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFile(Ljava/io/File;)Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;
    .registers 2

    monitor-enter p0

    if-eqz p1, :cond_7

    .line 646
    :try_start_3
    iput-object p1, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->mFile:Ljava/io/File;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_d

    .line 647
    monitor-exit p0

    return-object p0

    .line 645
    :cond_7
    :try_start_7
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception p1

    .line 644
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setImage(Landroid/media/Image;)Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;
    .registers 2

    monitor-enter p0

    if-eqz p1, :cond_7

    .line 635
    :try_start_3
    iput-object p1, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->mImage:Landroid/media/Image;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_d

    .line 636
    monitor-exit p0

    return-object p0

    .line 634
    :cond_7
    :try_start_7
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception p1

    .line 633
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSaveImageListener(Lopenlight/co/camera/listener/OnImageSavedListener;)Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;
    .registers 2

    monitor-enter p0

    .line 659
    :try_start_1
    iput-object p1, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->mOnImageSavedListener:Lopenlight/co/camera/listener/OnImageSavedListener;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 660
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    .line 658
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setViewPrefs(Lltpb/ViewPreferences;)Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;
    .registers 2

    monitor-enter p0

    if-eqz p1, :cond_7

    .line 653
    :try_start_3
    iput-object p1, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;->mViewPrefs:Lltpb/ViewPreferences;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_d

    .line 654
    monitor-exit p0

    return-object p0

    .line 652
    :cond_7
    :try_start_7
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception p1

    .line 651
    monitor-exit p0

    throw p1
.end method
