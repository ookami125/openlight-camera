.class public Lopenlight/co/lib/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# static fields
.field public static final DISABLED_ALPHA:F = 0.3f

.field public static final ENABLED_ALPHA:F = 1.0f

.field private static final GALLERY_FOLDER:Ljava/lang/String; = "/DCIM/Camera/"

.field private static final LIGHT_CAL_FOLDER:Ljava/lang/String; = "/DCIM/Camera/lightcal"

.field private static final M_PER_SEC_TO_KM_PER_HOUR:F = 3.6f

.field private static final PRESETS_FOLDER:Ljava/lang/String; = "/DCIM/Camera/presets"

.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static final TRASH_FOLDER:Ljava/lang/String; = "/Trash/"

.field private static final UUID_FILENAME:Ljava/lang/String; = "uuid.txt"

.field private static final VIDEO_THUMBNAILS_FOLDER:Ljava/lang/String; = "/DCIM/Camera/thumbnails"

.field public static final VIDEO_THUMBNAIL_SUFFIX:Ljava/lang/String; = "_thumbnail.jpg"

.field private static sGalleryDir:Ljava/io/File;

.field private static sInstance:Lopenlight/co/lib/utils/Utils;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static sLightCalDir:Ljava/io/File;

.field private static sPresetsDir:Ljava/io/File;

.field private static sTrashDir:Ljava/io/File;

.field private static sVideoThumbnailsDir:Ljava/io/File;


# instance fields
.field private final mClassToTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDateFormats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceId:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mScreenSize:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lopenlight/co/lib/utils/Utils;->mClassToTag:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lopenlight/co/lib/utils/Utils;->mDateFormats:Ljava/util/HashMap;

    .line 720
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/lib/utils/Utils;->mContext:Landroid/content/Context;

    .line 721
    iget-object p1, p0, Lopenlight/co/lib/utils/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 722
    new-instance p1, Lopenlight/co/lib/utils/Utils$2;

    invoke-direct {p1, p0}, Lopenlight/co/lib/utils/Utils$2;-><init>(Lopenlight/co/lib/utils/Utils;)V

    .line 737
    invoke-virtual {p1}, Lopenlight/co/lib/utils/Utils$2;->start()V

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/lib/utils/Utils;)Ljava/lang/String;
    .registers 1

    .line 51
    iget-object p0, p0, Lopenlight/co/lib/utils/Utils;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lopenlight/co/lib/utils/Utils;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 51
    iput-object p1, p0, Lopenlight/co/lib/utils/Utils;->mDeviceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 51
    sget-object v0, Lopenlight/co/lib/utils/Utils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_8

    .line 237
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    goto :goto_8

    :catch_6
    move-exception p0

    .line 239
    throw p0

    :catch_8
    :cond_8
    :goto_8
    return-void
.end method

.method private static createFileFolder(Ljava/lang/String;)Z
    .registers 2

    .line 715
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 716
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method

.method private dateFormatForPattern(Ljava/lang/String;)Ljava/text/DateFormat;
    .registers 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 683
    iget-object v0, p0, Lopenlight/co/lib/utils/Utils;->mDateFormats:Ljava/util/HashMap;

    monitor-enter v0

    .line 684
    :try_start_3
    iget-object v1, p0, Lopenlight/co/lib/utils/Utils;->mDateFormats:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormat;

    if-nez v1, :cond_24

    .line 686
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "GMT"

    .line 690
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 691
    iget-object p0, p0, Lopenlight/co/lib/utils/Utils;->mDateFormats:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    :cond_24
    monitor-exit v0

    return-object v1

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public static decode(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 8

    .line 653
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_50

    .line 656
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_4a

    add-int/lit8 v3, v2, 0x1

    .line 658
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v4, :cond_35

    add-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v2, 0x6

    .line 659
    invoke-interface {p0, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x5

    goto :goto_4d

    :cond_35
    add-int/lit8 v4, v2, 0x3

    .line 662
    invoke-interface {p0, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2

    goto :goto_4d

    .line 666
    :cond_4a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_50
    return-object v1
.end method

.method public static deleteThumbnailForVideo(Ljava/lang/String;)V
    .registers 5

    .line 127
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->thumbnailNameFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lopenlight/co/lib/utils/Utils;->videoThumbnailsDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 133
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 134
    sget-object v1, Lopenlight/co/lib/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted thumbnail for video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_34

    const-string p0, ""

    goto :goto_36

    :cond_34
    const-string p0, " (failed)"

    :goto_36
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    return-void
.end method

.method public static encode(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 7

    .line 624
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_6d

    .line 627
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-lt v3, v4, :cond_18

    const/16 v4, 0x7a

    if-le v3, v4, :cond_28

    :cond_18
    const/16 v4, 0x41

    if-lt v3, v4, :cond_20

    const/16 v4, 0x5a

    if-le v3, v4, :cond_28

    :cond_20
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2c

    const/16 v4, 0x39

    if-gt v3, v4, :cond_2c

    .line 631
    :cond_28
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6a

    .line 633
    :cond_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x100

    if-lt v3, v5, :cond_58

    const-string v3, "%%"

    .line 635
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    :cond_58
    const-string v3, "%"

    .line 638
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_6d
    return-object v1
.end method

.method public static galleryDir()Ljava/io/File;
    .registers 1

    .line 188
    sget-object v0, Lopenlight/co/lib/utils/Utils;->sGalleryDir:Ljava/io/File;

    if-nez v0, :cond_c

    const-string v0, "/DCIM/Camera/"

    .line 189
    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lopenlight/co/lib/utils/Utils;->sGalleryDir:Ljava/io/File;

    .line 191
    :cond_c
    sget-object v0, Lopenlight/co/lib/utils/Utils;->sGalleryDir:Ljava/io/File;

    return-object v0
.end method

.method public static galleryPath()Ljava/lang/String;
    .registers 1

    .line 173
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->galleryDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    goto :goto_d

    .line 174
    :cond_9
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public static get()Lopenlight/co/lib/utils/Utils;
    .registers 1

    .line 94
    sget-object v0, Lopenlight/co/lib/utils/Utils;->sInstance:Lopenlight/co/lib/utils/Utils;

    return-object v0
.end method

.method public static getApp()Landroid/content/Context;
    .registers 1

    .line 228
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->get()Lopenlight/co/lib/utils/Utils;

    move-result-object v0

    iget-object v0, v0, Lopenlight/co/lib/utils/Utils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getDir(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 706
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 707
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 708
    invoke-static {p0}, Lopenlight/co/lib/utils/Utils;->createFileFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 p0, 0x0

    return-object p0

    .line 711
    :cond_1f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getResources()Landroid/content/res/Resources;
    .registers 2

    .line 674
    iget-object v0, p0, Lopenlight/co/lib/utils/Utils;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_c

    .line 675
    iget-object v0, p0, Lopenlight/co/lib/utils/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/lib/utils/Utils;->mResources:Landroid/content/res/Resources;

    .line 677
    :cond_c
    iget-object p0, p0, Lopenlight/co/lib/utils/Utils;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method public static init(Landroid/app/Application;)V
    .registers 2

    .line 698
    sget-object v0, Lopenlight/co/lib/utils/Utils;->sInstance:Lopenlight/co/lib/utils/Utils;

    if-nez v0, :cond_11

    .line 699
    new-instance v0, Lopenlight/co/lib/utils/Utils;

    invoke-direct {v0, p0}, Lopenlight/co/lib/utils/Utils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lopenlight/co/lib/utils/Utils;->sInstance:Lopenlight/co/lib/utils/Utils;

    .line 700
    invoke-static {p0}, Lopenlight/co/lib/view/cache/FontCache;->init(Landroid/content/Context;)V

    .line 701
    invoke-static {p0}, Lopenlight/co/lib/utils/LifecycleLogger;->init(Landroid/app/Application;)V

    :cond_11
    return-void
.end method

.method public static isInTrash(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "/Trash/"

    .line 298
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isJpeg(Ljava/lang/String;)Z
    .registers 2

    const-string v0, ".jpg"

    .line 307
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isVideo(Ljava/lang/String;)Z
    .registers 2

    const-string v0, ".mp4"

    .line 316
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isVideoThumbnail(Ljava/lang/String;)Z
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "_thumbnail.jpg"

    .line 103
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$updateLockedState$0(Lopenlight/co/lib/content/Prefs;Ljava/lang/String;)V
    .registers 3

    const-string v0, "locked_names"

    .line 515
    invoke-interface {p0, v0, p1}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static lightCalDir()Ljava/io/File;
    .registers 1

    .line 202
    sget-object v0, Lopenlight/co/lib/utils/Utils;->sLightCalDir:Ljava/io/File;

    if-nez v0, :cond_c

    const-string v0, "/DCIM/Camera/lightcal"

    .line 203
    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lopenlight/co/lib/utils/Utils;->sLightCalDir:Ljava/io/File;

    .line 205
    :cond_c
    sget-object v0, Lopenlight/co/lib/utils/Utils;->sLightCalDir:Ljava/io/File;

    return-object v0
.end method

.method public static lightCalPath()Ljava/lang/String;
    .registers 1

    .line 183
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->lightCalDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    goto :goto_d

    .line 184
    :cond_9
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public static mutableSingletonList(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 146
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static presetsDir()Ljava/io/File;
    .registers 1

    .line 210
    sget-object v0, Lopenlight/co/lib/utils/Utils;->sPresetsDir:Ljava/io/File;

    if-nez v0, :cond_c

    const-string v0, "/DCIM/Camera/presets"

    .line 211
    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lopenlight/co/lib/utils/Utils;->sPresetsDir:Ljava/io/File;

    .line 213
    :cond_c
    sget-object v0, Lopenlight/co/lib/utils/Utils;->sPresetsDir:Ljava/io/File;

    return-object v0
.end method

.method public static round(JJ)J
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 254
    :goto_9
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    const-wide/16 v1, 0x2

    .line 255
    div-long v1, p2, v1

    add-long/2addr p0, v1

    div-long/2addr p0, p2

    mul-long/2addr p0, p2

    if-eqz v0, :cond_17

    neg-long p0, p0

    :cond_17
    return-wide p0
.end method

.method public static safeTag(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3

    .line 267
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 268
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setEnabled(Landroid/view/View;Z)V
    .registers 2

    .line 157
    invoke-static {p0, p1, p1}, Lopenlight/co/lib/utils/Utils;->setEnabled(Landroid/view/View;ZZ)V

    return-void
.end method

.method public static setEnabled(Landroid/view/View;ZZ)V
    .registers 3

    .line 168
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_a
    const p1, 0x3e99999a    # 0.3f

    .line 169
    :goto_d
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public static showSoftKeyboard(Landroid/view/View;)V
    .registers 3

    .line 276
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 277
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_18

    const/4 v1, 0x0

    .line 279
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_18
    return-void
.end method

.method public static thumbnailNameFor(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/16 v0, 0x2e

    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_1a

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_thumbnail.jpg"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 119
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_thumbnail.jpg"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static trashDir()Ljava/io/File;
    .registers 1

    .line 195
    sget-object v0, Lopenlight/co/lib/utils/Utils;->sTrashDir:Ljava/io/File;

    if-nez v0, :cond_c

    const-string v0, "/Trash/"

    .line 196
    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lopenlight/co/lib/utils/Utils;->sTrashDir:Ljava/io/File;

    .line 198
    :cond_c
    sget-object v0, Lopenlight/co/lib/utils/Utils;->sTrashDir:Ljava/io/File;

    return-object v0
.end method

.method public static trashPath()Ljava/lang/String;
    .registers 1

    .line 178
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->trashDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    goto :goto_d

    .line 179
    :cond_9
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public static videoThumbnailsDir()Ljava/io/File;
    .registers 1

    .line 217
    sget-object v0, Lopenlight/co/lib/utils/Utils;->sVideoThumbnailsDir:Ljava/io/File;

    if-nez v0, :cond_c

    const-string v0, "/DCIM/Camera/thumbnails"

    .line 218
    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    sput-object v0, Lopenlight/co/lib/utils/Utils;->sVideoThumbnailsDir:Ljava/io/File;

    .line 220
    :cond_c
    sget-object v0, Lopenlight/co/lib/utils/Utils;->sVideoThumbnailsDir:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public adjustMarginEnd(Landroid/view/View;)V
    .registers 4

    .line 326
    invoke-virtual {p0}, Lopenlight/co/lib/utils/Utils;->getNavBarWidth()I

    move-result p0

    if-ltz p0, :cond_18

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 329
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    if-le p0, v1, :cond_18

    .line 330
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 331
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_18
    return-void
.end method

.method public getColor(I)I
    .registers 3

    .line 367
    invoke-direct {p0}, Lopenlight/co/lib/utils/Utils;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_d

    :cond_8
    const/4 v0, 0x0

    .line 368
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    :goto_d
    return p0
.end method

.method public getDateString(JLjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 291
    invoke-direct {p0, p3}, Lopenlight/co/lib/utils/Utils;->dateFormatForPattern(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object p0

    .line 292
    monitor-enter p0

    .line 293
    :try_start_5
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_10
    move-exception p1

    .line 294
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 1

    .line 452
    iget-object p0, p0, Lopenlight/co/lib/utils/Utils;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getDimen(I)I
    .registers 2

    .line 357
    invoke-direct {p0}, Lopenlight/co/lib/utils/Utils;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_c

    .line 358
    :cond_8
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_c
    return p0
.end method

.method public getHeightOfScreen()I
    .registers 1

    .line 426
    invoke-virtual {p0}, Lopenlight/co/lib/utils/Utils;->getScreenSize()Landroid/util/Size;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    goto :goto_c

    .line 427
    :cond_8
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    :goto_c
    return p0
.end method

.method public getNavBarWidth()I
    .registers 5

    .line 341
    invoke-direct {p0}, Lopenlight/co/lib/utils/Utils;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_15

    .line 342
    invoke-virtual {p0, v0}, Lopenlight/co/lib/utils/Utils;->getDimen(I)I

    move-result p0

    goto :goto_16

    :cond_15
    const/4 p0, -0x1

    :goto_16
    return p0
.end method

.method public getOrientation()I
    .registers 2

    .line 436
    iget-object p0, p0, Lopenlight/co/lib/utils/Utils;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 437
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 438
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 439
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 440
    iget p0, v0, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-le p0, v0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x2

    return p0
.end method

.method public getScreenSize()Landroid/util/Size;
    .registers 4

    .line 415
    iget-object v0, p0, Lopenlight/co/lib/utils/Utils;->mScreenSize:Landroid/util/Size;

    if-nez v0, :cond_25

    .line 416
    iget-object v0, p0, Lopenlight/co/lib/utils/Utils;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 417
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 418
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 419
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 420
    new-instance v0, Landroid/util/Size;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lopenlight/co/lib/utils/Utils;->mScreenSize:Landroid/util/Size;

    .line 422
    :cond_25
    iget-object p0, p0, Lopenlight/co/lib/utils/Utils;->mScreenSize:Landroid/util/Size;

    return-object p0
.end method

.method public getWidthOfScreen()I
    .registers 1

    .line 431
    invoke-virtual {p0}, Lopenlight/co/lib/utils/Utils;->getScreenSize()Landroid/util/Size;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    goto :goto_c

    .line 432
    :cond_8
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    :goto_c
    return p0
.end method

.method public hasPermission(Ljava/lang/String;)Z
    .registers 2

    .line 612
    iget-object p0, p0, Lopenlight/co/lib/utils/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isLocked()Z
    .registers 2

    .line 526
    iget-object p0, p0, Lopenlight/co/lib/utils/Utils;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 527
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result p0

    return p0
.end method

.method public isStringResource(I)Z
    .registers 2

    .line 378
    invoke-direct {p0}, Lopenlight/co/lib/utils/Utils;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 379
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "string"

    .line 380
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public metersPerSecToKmh(F)F
    .registers 2

    const p0, 0x40666666    # 3.6f

    mul-float/2addr p1, p0

    return p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 481
    iget-object p1, p0, Lopenlight/co/lib/utils/Utils;->mDateFormats:Ljava/util/HashMap;

    monitor-enter p1

    .line 482
    :try_start_3
    iget-object v0, p0, Lopenlight/co/lib/utils/Utils;->mDateFormats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 483
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 484
    invoke-virtual {p0}, Lopenlight/co/lib/utils/Utils;->orientationChanged()V

    return-void

    :catchall_d
    move-exception p0

    .line 483
    :try_start_e
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p0
.end method

.method public onLowMemory()V
    .registers 1

    return-void
.end method

.method public orientationChanged()V
    .registers 2

    const/4 v0, 0x0

    .line 472
    iput-object v0, p0, Lopenlight/co/lib/utils/Utils;->mScreenSize:Landroid/util/Size;

    .line 473
    iput-object v0, p0, Lopenlight/co/lib/utils/Utils;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public runWithLockedState(Lopenlight/co/lib/utils/VoidCallback1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lopenlight/co/lib/utils/VoidCallback1<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 537
    invoke-virtual {p0, p1, v0}, Lopenlight/co/lib/utils/Utils;->runWithLockedState(Lopenlight/co/lib/utils/VoidCallback1;Z)V

    return-void
.end method

.method public runWithLockedState(Lopenlight/co/lib/utils/VoidCallback1;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lopenlight/co/lib/utils/VoidCallback1<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 555
    invoke-virtual {p0}, Lopenlight/co/lib/utils/Utils;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_24

    if-eqz p2, :cond_10

    const/4 v0, 0x1

    .line 557
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lopenlight/co/lib/utils/VoidCallback1;->call(Ljava/lang/Object;)V

    .line 559
    :cond_10
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lopenlight/co/lib/utils/Utils$1;

    invoke-direct {v1, p0, p2, p1}, Lopenlight/co/lib/utils/Utils$1;-><init>(Lopenlight/co/lib/utils/Utils;ZLopenlight/co/lib/utils/VoidCallback1;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2c

    :cond_24
    const/4 p0, 0x0

    .line 569
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Lopenlight/co/lib/utils/VoidCallback1;->call(Ljava/lang/Object;)V

    :goto_2c
    return-void
.end method

.method public setMargins(Landroid/view/View;IIII)V
    .registers 7

    .line 393
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_13

    .line 395
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->get()Lopenlight/co/lib/utils/Utils;

    move-result-object v0

    invoke-virtual {v0, p2}, Lopenlight/co/lib/utils/Utils;->getDimen(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_13
    if-eqz p3, :cond_1f

    .line 398
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->get()Lopenlight/co/lib/utils/Utils;

    move-result-object p2

    invoke-virtual {p2, p3}, Lopenlight/co/lib/utils/Utils;->getDimen(I)I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_1f
    if-eqz p4, :cond_2c

    .line 401
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->get()Lopenlight/co/lib/utils/Utils;

    move-result-object p2

    invoke-virtual {p2, p4}, Lopenlight/co/lib/utils/Utils;->getDimen(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_2c
    if-eqz p5, :cond_38

    .line 404
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->get()Lopenlight/co/lib/utils/Utils;

    move-result-object p2

    invoke-virtual {p2, p5}, Lopenlight/co/lib/utils/Utils;->getDimen(I)I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 406
    :cond_38
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public tagFor(Ljava/lang/Class;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lopenlight/co/lib/utils/Utils;->mClassToTag:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3e

    :try_start_a
    const-string v1, "TAG"

    .line 592
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 593
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 594
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_1b} :catch_1d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_1b} :catch_1d

    move-object v0, v1

    goto :goto_33

    .line 596
    :catch_1d
    sget-object v1, Lopenlight/co/lib/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t read TAG field from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_33
    if-nez v0, :cond_39

    .line 599
    invoke-static {p1}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 601
    :cond_39
    iget-object p0, p0, Lopenlight/co/lib/utils/Utils;->mClassToTag:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    return-object v0
.end method

.method public toPixels(F)I
    .registers 2

    .line 352
    invoke-direct {p0}, Lopenlight/co/lib/utils/Utils;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-nez p0, :cond_8

    :goto_6
    float-to-int p0, p1

    goto :goto_10

    .line 353
    :cond_8
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    goto :goto_6

    :goto_10
    return p0
.end method

.method public updateLockedState()Z
    .registers 3

    .line 500
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    const-string v1, "locked_names"

    .line 501
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 503
    invoke-virtual {p0}, Lopenlight/co/lib/utils/Utils;->isLocked()Z

    move-result p0

    if-eqz p0, :cond_17

    if-nez v1, :cond_15

    const-string p0, ""

    goto :goto_18

    :cond_15
    move-object p0, v1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    .line 513
    :goto_18
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 515
    new-instance v1, Lopenlight/co/lib/utils/-$$Lambda$Utils$0AADH8bJ5MWxZydd9DRTGMCJbqU;

    invoke-direct {v1, v0, p0}, Lopenlight/co/lib/utils/-$$Lambda$Utils$0AADH8bJ5MWxZydd9DRTGMCJbqU;-><init>(Lopenlight/co/lib/content/Prefs;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->withBroadcast(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public updateMediaStoreDateTaken(Ljava/lang/String;J)Z
    .registers 8

    .line 462
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "datetaken"

    .line 463
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 464
    iget-object p0, p0, Lopenlight/co/lib/utils/Utils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string p3, "_data=?"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, p2, v0, p3, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_25

    goto :goto_26

    :cond_25
    move v1, v3

    :goto_26
    return v1
.end method
