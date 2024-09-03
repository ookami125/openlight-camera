.class public Lopenlight/co/camera/utils/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final APP_RESTART_ON_ERROR:Z

.field private static final BURST_CAPTURE_EXPOSURE_THRESHOLD:J = 0x3e8L

.field private static final EXTRA_TIME_TO_EXPOSURE:J = 0x64L

.field private static final EXTRA_TIME_TO_PLAY_CAPTURE_END_SOUND:J = 0xc8L

.field private static final SINGLE_CAPTURE_EXPOSURE_THRESHOLD:J = 0xfaL

.field private static final TAG:Ljava/lang/String; = "Util"

.field private static final sUnitNames:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 64
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v0

    const-string v1, "restart.on.error"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lopenlight/co/lib/utils/FeatureManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lopenlight/co/camera/utils/Util;->APP_RESTART_ON_ERROR:Z

    const/4 v0, 0x6

    .line 351
    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lopenlight/co/camera/utils/Util;->sUnitNames:[I

    return-void

    :array_16
    .array-data 4
        0x7f0e012a
        0x7f0e012c
        0x7f0e012d
        0x7f0e012b
        0x7f0e0130
        0x7f0e012e
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadcastCameraIntent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 542
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 543
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "openlight.co.lightcamera.CAMERA_EVENTS"

    .line 544
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 545
    sget-object p0, Lopenlight/co/camera/utils/Util;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send Broadcast Event called with action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static formatEvValue(Landroid/content/Context;F)Ljava/lang/String;
    .registers 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 370
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    .line 374
    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 375
    rem-int/lit8 v1, v0, 0x3

    const/4 v2, 0x0

    if-nez v1, :cond_24

    if-nez v0, :cond_18

    const v0, 0x7f0e0054

    goto :goto_2f

    :cond_18
    cmpg-float v0, p1, v2

    if-gez v0, :cond_20

    const v0, 0x7f0e0051

    goto :goto_2f

    :cond_20
    const v0, 0x7f0e0053

    goto :goto_2f

    :cond_24
    cmpg-float v0, p1, v2

    if-gez v0, :cond_2c

    const v0, 0x7f0e0050

    goto :goto_2f

    :cond_2c
    const v0, 0x7f0e0052

    :goto_2f
    const/4 v1, 0x1

    .line 383
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static generateTimestamp()Ljava/lang/String;
    .registers 3

    .line 161
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy_MM_dd_HH_mm_ss_SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 162
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCaptureAnimationDuration(Landroid/hardware/camera2/CaptureResult;)J
    .registers 6

    .line 469
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->getCameraMode()Lopenlight/co/camera/CameraMode;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/CameraMode;->isManual()Z

    move-result v0

    const-wide/16 v1, 0xc8

    if-eqz v0, :cond_26

    .line 470
    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Lopenlight/co/camera/utils/Constants;->exposureTimes:[J

    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v3

    const-string v4, "shutter_index"

    .line 471
    invoke-interface {v3, v4}, Lopenlight/co/lib/content/Prefs;->getIntValue(Ljava/lang/String;)I

    move-result v3

    aget-wide v3, v0, v3

    .line 470
    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    add-long/2addr v3, v1

    return-wide v3

    .line 473
    :cond_26
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    .line 474
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_33

    const-wide/16 v3, 0xa

    goto :goto_3d

    .line 476
    :cond_33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    :goto_3d
    const/4 p0, 0x0

    add-long/2addr v3, v1

    return-wide v3
.end method

.method public static getCoordinateDifference(FII)I
    .registers 3

    int-to-float p2, p2

    mul-float/2addr p2, p0

    .line 109
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p0

    sub-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public static getCurrentIso(I)I
    .registers 6

    .line 291
    invoke-static {}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->values()[Lopenlight/co/camera/utils/Constants$SensitivityValues;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 292
    invoke-static {v0}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->forIndex(I)Lopenlight/co/camera/utils/Constants$SensitivityValues;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->getSensitivityVal()I

    move-result v1

    const/4 v2, 0x0

    if-le p0, v1, :cond_47

    .line 293
    invoke-static {v2}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->forIndex(I)Lopenlight/co/camera/utils/Constants$SensitivityValues;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->getSensitivityVal()I

    move-result v1

    if-ge p0, v1, :cond_46

    :cond_1c
    :goto_1c
    add-int v1, v2, v0

    .line 298
    div-int/lit8 v1, v1, 0x2

    .line 299
    invoke-static {v1}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->forIndex(I)Lopenlight/co/camera/utils/Constants$SensitivityValues;

    move-result-object v3

    invoke-virtual {v3}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->getSensitivityVal()I

    move-result v3

    if-le p0, v3, :cond_3f

    add-int/lit8 v0, v1, -0x1

    .line 302
    invoke-static {v0}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->forIndex(I)Lopenlight/co/camera/utils/Constants$SensitivityValues;

    move-result-object v4

    invoke-virtual {v4}, Lopenlight/co/camera/utils/Constants$SensitivityValues;->getSensitivityVal()I

    move-result v4

    if-ge p0, v4, :cond_3c

    mul-int/2addr p0, p0

    mul-int/2addr v3, v4

    if-ge p0, v3, :cond_47

    :goto_3a
    move v0, v1

    goto :goto_47

    :cond_3c
    if-ne p0, v4, :cond_1c

    goto :goto_47

    :cond_3f
    if-ne p0, v3, :cond_42

    goto :goto_3a

    :cond_42
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    goto :goto_1c

    :cond_46
    move v0, v2

    :cond_47
    :goto_47
    return v0
.end method

.method public static getDimen(Landroid/content/Context;I)I
    .registers 2

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getGalleryIntent()Landroid/content/Intent;
    .registers 3

    .line 520
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/CameraApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_8
    const-string v1, "light.co.lightgallery"

    const/4 v2, 0x0

    .line 523
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 524
    sget-object v0, Lopenlight/co/camera/utils/Util;->TAG:Ljava/lang/String;

    const-string v1, "External gallery found so using it"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "light.co.lightgallery"

    const-string v2, "light.co.gallery.GalleryActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_22} :catch_23

    return-object v0

    :catch_23
    move-exception v0

    .line 529
    sget-object v1, Lopenlight/co/camera/utils/Util;->TAG:Ljava/lang/String;

    const-string v2, "No external gallery found so returning null"

    invoke-static {v1, v2, v0}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getHeightOfScreen(Landroid/content/Context;)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, -0x1

    return p0

    .line 145
    :cond_4
    invoke-static {p0}, Lopenlight/co/camera/utils/Util;->getScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    return p0
.end method

.method public static getMaxVideoSize()J
    .registers 7

    .line 185
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x40000000

    sub-long v3, v1, v3

    .line 188
    sget-object v0, Lopenlight/co/camera/utils/Util;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[VIDEO] Available Free Space: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " max file size: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v3
.end method

.method public static getMeteringIcon(Ljava/lang/String;)I
    .registers 1

    .line 464
    invoke-static {p0}, Lopenlight/co/camera/enums/MeteringMode;->forTag(Ljava/lang/String;)Lopenlight/co/camera/enums/MeteringMode;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 465
    invoke-virtual {p0}, Lopenlight/co/camera/enums/MeteringMode;->getMeteringIcon()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static getOrientation(Landroid/content/Context;)I
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_20

    .line 114
    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 115
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 116
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 117
    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 118
    iget p0, v1, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-le p0, v1, :cond_1e

    return v0

    :cond_1e
    const/4 p0, 0x2

    return p0

    :cond_20
    return v0
.end method

.method public static getScreenSize(Landroid/content/Context;)Landroid/util/Size;
    .registers 3

    .line 134
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 135
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 136
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 137
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 138
    new-instance p0, Landroid/util/Size;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method public static getWidthOfScreen(Landroid/content/Context;)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, -0x1

    return p0

    .line 152
    :cond_4
    invoke-static {p0}, Lopenlight/co/camera/utils/Util;->getScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    return p0
.end method

.method public static hideSystemUI(Landroid/view/View;)V
    .registers 2

    const/16 v0, 0xf06

    .line 79
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static hideSystemUIImmersiveSticky(Landroid/view/View;)V
    .registers 2

    const/16 v0, 0x1706

    .line 93
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static isAvailableSpace()Z
    .registers 5

    .line 171
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    mul-long/2addr v1, v3

    long-to-float v0, v1

    const/high16 v1, 0x4e800000

    div-float/2addr v0, v1

    .line 174
    sget-object v1, Lopenlight/co/camera/utils/Util;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableSpace:: Available Free Space: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_38

    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :goto_39
    return v0
.end method

.method public static isIndexOutOfRange(II)Z
    .registers 2

    if-le p0, p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public static isRtl(Landroid/content/res/Resources;)Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 215
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static isWheelInverseScroll()Z
    .registers 2

    .line 503
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    const-string v1, "wheel_inverse_scroll_setting"

    .line 504
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 505
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static resetCameraPreference()V
    .registers 6

    .line 422
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    .line 425
    :try_start_4
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/camera/CameraApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 426
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v2

    invoke-virtual {v2}, Lopenlight/co/camera/CameraApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 427
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v2, 0x7

    if-gt v1, v2, :cond_3e

    .line 429
    sget-object v1, Lopenlight/co/camera/utils/Util;->TAG:Ljava/lang/String;

    const-string v2, "Shared Preference change. Clean up!"

    invoke-static {v1, v2}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ex_index"

    .line 430
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->removeValue(Ljava/lang/String;)V

    const-string v1, "iso_index"

    .line 431
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->removeValue(Ljava/lang/String;)V

    const-string v1, "shutter_index"

    .line 432
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->removeValue(Ljava/lang/String;)V

    const-string v1, "zoom_value"

    .line 433
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->removeValue(Ljava/lang/String;)V

    const-string v1, "metering_setting"

    .line 434
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->removeValue(Ljava/lang/String;)V

    :cond_3e
    const-string v1, "shared_pref_update"

    .line 436
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getIntValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4a

    if-ge v1, v3, :cond_74

    .line 439
    :cond_4a
    sget-object v2, Lopenlight/co/camera/utils/Util;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading Settings based on version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "flash_setting"

    .line 440
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->removeValue(Ljava/lang/String;)V

    const-string v1, "flash_value"

    .line 441
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->removeValue(Ljava/lang/String;)V

    const-string v1, "flash_setting_manual"

    .line 442
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->removeValue(Ljava/lang/String;)V

    const-string v1, "shared_pref_update"

    .line 443
    invoke-interface {v0, v1, v3}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;I)V

    :cond_74
    const-string v1, "burst_mode"

    .line 447
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->removeValue(Ljava/lang/String;)V

    const-string v1, "focal_length"

    .line 448
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->removeValue(Ljava/lang/String;)V

    const-string v1, "zoom_value"

    .line 449
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->removeValue(Ljava/lang/String;)V

    const-string v1, "device_touchstrip_setting"

    .line 450
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->removeValue(Ljava/lang/String;)V

    const-string v1, "white_balance_setting"

    .line 451
    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->removeValue(Ljava/lang/String;)V
    :try_end_8d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_8d} :catch_8e

    goto :goto_96

    :catch_8e
    move-exception v0

    .line 453
    sget-object v1, Lopenlight/co/camera/utils/Util;->TAG:Ljava/lang/String;

    const-string v2, "Exception in resettingCameraPreference"

    invoke-static {v1, v2, v0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_96
    return-void
.end method

.method public static restartAppWithDelay(Landroid/app/Activity;)V
    .registers 8

    .line 397
    sget-boolean v0, Lopenlight/co/camera/utils/Util;->APP_RESTART_ON_ERROR:Z

    if-eqz v0, :cond_46

    .line 398
    sget-object v0, Lopenlight/co/camera/utils/Util;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forced restart of the app and activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x87a74

    const/high16 v2, 0x10000000

    .line 400
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 403
    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    const/4 v2, 0x1

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 405
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x0

    .line 406
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :cond_46
    return-void
.end method

.method public static reverseArray([Ljava/lang/String;)[Ljava/lang/String;
    .registers 1

    .line 509
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 510
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 511
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static setAlpha(Landroid/view/View;ZF)V
    .registers 3

    if-eqz p0, :cond_9

    if-eqz p1, :cond_6

    const/high16 p2, 0x3f800000    # 1.0f

    .line 388
    :cond_6
    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    return-void
.end method

.method public static shouldTriggerManualFlash()Z
    .registers 7

    .line 489
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Lopenlight/co/camera/utils/Constants;->exposureTimes:[J

    .line 490
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v2

    const-string v3, "shutter_index"

    invoke-interface {v2, v3}, Lopenlight/co/lib/content/Prefs;->getIntValue(Ljava/lang/String;)I

    move-result v2

    aget-wide v2, v1, v2

    .line 489
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 491
    invoke-static {}, Lopenlight/co/camera/utils/CameraState;->get()Lopenlight/co/camera/utils/CameraState;

    move-result-object v2

    invoke-virtual {v2}, Lopenlight/co/camera/utils/CameraState;->getStillCaptureMode()Lopenlight/co/camera/utils/CameraState$StillCaptureMode;

    move-result-object v2

    sget-object v3, Lopenlight/co/camera/utils/CameraState$StillCaptureMode;->SINGLE:Lopenlight/co/camera/utils/CameraState$StillCaptureMode;

    invoke-virtual {v2, v3}, Lopenlight/co/camera/utils/CameraState$StillCaptureMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2e

    const-wide/16 v5, 0xfa

    cmp-long v0, v0, v5

    if-gtz v0, :cond_52

    :goto_2c
    move v4, v3

    goto :goto_52

    .line 493
    :cond_2e
    invoke-static {}, Lopenlight/co/camera/utils/CameraState;->get()Lopenlight/co/camera/utils/CameraState;

    move-result-object v2

    invoke-virtual {v2}, Lopenlight/co/camera/utils/CameraState;->getStillCaptureMode()Lopenlight/co/camera/utils/CameraState$StillCaptureMode;

    move-result-object v2

    sget-object v5, Lopenlight/co/camera/utils/CameraState$StillCaptureMode;->BURST:Lopenlight/co/camera/utils/CameraState$StillCaptureMode;

    .line 494
    invoke-virtual {v2, v5}, Lopenlight/co/camera/utils/CameraState$StillCaptureMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 495
    invoke-static {}, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->get()Lopenlight/co/camera/managers/capture/CaptureBurstManager;

    move-result-object v2

    .line 496
    invoke-virtual {v2}, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->getPendingUserCaptureCount()I

    move-result v2

    int-to-long v5, v2

    mul-long/2addr v0, v5

    const-wide/16 v5, 0x64

    add-long/2addr v0, v5

    const-wide/16 v5, 0x3e8

    cmp-long v0, v0, v5

    if-gtz v0, :cond_52

    goto :goto_2c

    :cond_52
    :goto_52
    return v4
.end method

.method public static showToastForLowMemory(Landroid/content/Context;)V
    .registers 3

    const-string v0, "Available Memory less than 1GB. Please free up some space to Capture."

    const/4 v1, 0x0

    .line 197
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 199
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static shutterSpeedIndex(J)I
    .registers 10

    .line 232
    sget-object v0, Lopenlight/co/camera/utils/Constants;->exposureTimes:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 233
    sget-object v1, Lopenlight/co/camera/utils/Constants;->exposureTimes:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    cmp-long v1, p0, v3

    if-gez v1, :cond_46

    .line 234
    sget-object v1, Lopenlight/co/camera/utils/Constants;->exposureTimes:[J

    aget-wide v3, v1, v0

    cmp-long v1, p0, v3

    if-lez v1, :cond_47

    :goto_16
    add-int v1, v2, v0

    .line 239
    div-int/lit8 v1, v1, 0x2

    .line 240
    sget-object v3, Lopenlight/co/camera/utils/Constants;->exposureTimes:[J

    aget-wide v4, v3, v1

    cmp-long v3, p0, v4

    if-gez v3, :cond_3e

    .line 242
    sget-object v2, Lopenlight/co/camera/utils/Constants;->exposureTimes:[J

    add-int/lit8 v3, v1, 0x1

    aget-wide v6, v2, v3

    cmp-long v2, p0, v6

    if-lez v2, :cond_38

    long-to-float v0, v4

    long-to-float v2, v6

    mul-float/2addr v0, v2

    long-to-float p0, p0

    mul-float/2addr p0, p0

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_36

    goto :goto_40

    :cond_36
    move v1, v3

    goto :goto_40

    :cond_38
    if-nez v2, :cond_3c

    move v0, v3

    goto :goto_47

    :cond_3c
    move v2, v3

    goto :goto_16

    :cond_3e
    if-nez v3, :cond_42

    :goto_40
    move v0, v1

    goto :goto_47

    :cond_42
    add-int/lit8 v1, v1, -0x1

    move v0, v1

    goto :goto_16

    :cond_46
    move v0, v2

    :cond_47
    :goto_47
    return v0
.end method

.method public static toPixels(Landroid/content/res/Resources;F)I
    .registers 2

    .line 210
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static valueOf(Ljava/lang/Integer;)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 339
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_8
    return p0
.end method

.method public static valueOf(Ljava/lang/Long;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    goto :goto_9

    .line 344
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_9
    return-wide v0
.end method

.method public static valueOf(Ljava/lang/Boolean;)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 348
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_8
    return p0
.end method
