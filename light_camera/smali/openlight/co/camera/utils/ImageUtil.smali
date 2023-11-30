.class public Lopenlight/co/camera/utils/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/utils/ImageUtil$ImageSaver;
    }
.end annotation


# static fields
.field private static final EXIF_DATE_TIME_FORMAT:Ljava/text/DateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ImageUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd H/1,m/1,sSSS/1000"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lopenlight/co/camera/utils/ImageUtil;->EXIF_DATE_TIME_FORMAT:Ljava/text/DateFormat;

    .line 46
    sget-object v0, Lopenlight/co/camera/utils/ImageUtil;->EXIF_DATE_TIME_FORMAT:Ljava/text/DateFormat;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lopenlight/co/camera/utils/ImageUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Lltpb/GPSData$ProcessingMethod;
    .locals 0

    .line 37
    invoke-static {p0}, Lopenlight/co/camera/utils/ImageUtil;->providerToGpsProcessingMethod(Ljava/lang/String;)Lltpb/GPSData$ProcessingMethod;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-static {p0}, Lopenlight/co/camera/utils/ImageUtil;->providerToProcessingMethod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(J)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-static {p0, p1}, Lopenlight/co/camera/utils/ImageUtil;->toExifDateTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAspectRatioValue(Z)Lltpb/ViewPreferences$AspectRatio;
    .locals 0

    if-nez p0, :cond_0

    .line 127
    sget-object p0, Lltpb/ViewPreferences$AspectRatio;->ASPECT_RATIO_16_9:Lltpb/ViewPreferences$AspectRatio;

    return-object p0

    .line 129
    :cond_0
    sget-object p0, Lltpb/ViewPreferences$AspectRatio;->ASPECT_RATIO_4_3:Lltpb/ViewPreferences$AspectRatio;

    return-object p0
.end method

.method private static getAwbModeFromValue(I)Lltpb/ViewPreferences$AWBMode;
    .locals 1

    .line 74
    sget-object v0, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_AUTO:Lltpb/ViewPreferences$AWBMode;

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 86
    :pswitch_1
    sget-object v0, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_CLOUDY:Lltpb/ViewPreferences$AWBMode;

    goto :goto_0

    .line 82
    :pswitch_2
    sget-object v0, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_DAYLIGHT:Lltpb/ViewPreferences$AWBMode;

    goto :goto_0

    .line 90
    :pswitch_3
    sget-object v0, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_FLUORESCENT:Lltpb/ViewPreferences$AWBMode;

    goto :goto_0

    .line 94
    :pswitch_4
    sget-object v0, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_TUNGSTEN:Lltpb/ViewPreferences$AWBMode;

    goto :goto_0

    .line 78
    :pswitch_5
    sget-object v0, Lltpb/ViewPreferences$AWBMode;->AWB_MODE_AUTO:Lltpb/ViewPreferences$AWBMode;

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getOrientationValue(I)Lltpb/ViewPreferences$Orientation;
    .locals 1

    const/16 v0, 0x5a

    if-ne p0, v0, :cond_0

    .line 111
    sget-object p0, Lltpb/ViewPreferences$Orientation;->ORIENTATION_ROT90_CW:Lltpb/ViewPreferences$Orientation;

    return-object p0

    :cond_0
    const/16 v0, -0x5a

    if-ne p0, v0, :cond_1

    .line 113
    sget-object p0, Lltpb/ViewPreferences$Orientation;->ORIENTATION_ROT90_CCW:Lltpb/ViewPreferences$Orientation;

    return-object p0

    .line 115
    :cond_1
    sget-object p0, Lltpb/ViewPreferences$Orientation;->ORIENTATION_NORMAL:Lltpb/ViewPreferences$Orientation;

    return-object p0
.end method

.method public static getViewPrefs(Lopenlight/co/camera/proto/CameraCaptureRequestInfo;)Lltpb/ViewPreferences;
    .locals 4

    .line 57
    invoke-virtual {p0}, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->getAwbMode()I

    move-result v0

    .line 59
    invoke-virtual {p0}, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->getEvOffset()F

    move-result v1

    .line 60
    invoke-virtual {p0}, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->getAspectRatio()Z

    move-result v2

    .line 61
    new-instance v3, Lltpb/ViewPreferences$Builder;

    invoke-direct {v3}, Lltpb/ViewPreferences$Builder;-><init>()V

    .line 63
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v3, v1}, Lltpb/ViewPreferences$Builder;->ev_offset(Ljava/lang/Float;)Lltpb/ViewPreferences$Builder;

    .line 64
    invoke-static {v2}, Lopenlight/co/camera/utils/ImageUtil;->getAspectRatioValue(Z)Lltpb/ViewPreferences$AspectRatio;

    move-result-object v1

    invoke-virtual {v3, v1}, Lltpb/ViewPreferences$Builder;->aspect_ratio(Lltpb/ViewPreferences$AspectRatio;)Lltpb/ViewPreferences$Builder;

    .line 65
    invoke-static {v0}, Lopenlight/co/camera/utils/ImageUtil;->getAwbModeFromValue(I)Lltpb/ViewPreferences$AWBMode;

    move-result-object v0

    invoke-virtual {v3, v0}, Lltpb/ViewPreferences$Builder;->awb_mode(Lltpb/ViewPreferences$AWBMode;)Lltpb/ViewPreferences$Builder;

    .line 67
    invoke-virtual {p0}, Lopenlight/co/camera/proto/CameraCaptureRequestInfo;->getOrientationAngle()I

    move-result p0

    invoke-static {p0}, Lopenlight/co/camera/utils/ImageUtil;->getOrientationValue(I)Lltpb/ViewPreferences$Orientation;

    move-result-object p0

    .line 66
    invoke-virtual {v3, p0}, Lltpb/ViewPreferences$Builder;->orientation(Lltpb/ViewPreferences$Orientation;)Lltpb/ViewPreferences$Builder;

    .line 68
    invoke-virtual {v3}, Lltpb/ViewPreferences$Builder;->build()Lltpb/ViewPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static providerToGpsProcessingMethod(Ljava/lang/String;)Lltpb/GPSData$ProcessingMethod;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 712
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x190aa

    if-eq v0, v1, :cond_2

    const v1, 0x5d44923

    if-eq v0, v1, :cond_1

    const v1, 0x6de15a2e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "network"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "fused"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 719
    :pswitch_0
    sget-object p0, Lltpb/GPSData$ProcessingMethod;->PROCESSING_METHOD_WLAN:Lltpb/GPSData$ProcessingMethod;

    return-object p0

    .line 717
    :pswitch_1
    sget-object p0, Lltpb/GPSData$ProcessingMethod;->PROCESSING_METHOD_GPS:Lltpb/GPSData$ProcessingMethod;

    return-object p0

    .line 715
    :pswitch_2
    sget-object p0, Lltpb/GPSData$ProcessingMethod;->PROCESSING_METHOD_FUSED:Lltpb/GPSData$ProcessingMethod;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static providerToProcessingMethod(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 696
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x190aa

    if-eq v0, v1, :cond_2

    const v1, 0x5d44923

    if-eq v0, v1, :cond_1

    const v1, 0x6de15a2e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "network"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "fused"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "WLAN"

    return-object p0

    :pswitch_1
    const-string p0, "GPS"

    return-object p0

    :pswitch_2
    const-string p0, "FUSED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toExifDateTime(J)Ljava/lang/String;
    .locals 2

    .line 684
    sget-object v0, Lopenlight/co/camera/utils/ImageUtil;->EXIF_DATE_TIME_FORMAT:Ljava/text/DateFormat;

    monitor-enter v0

    .line 685
    :try_start_0
    sget-object v1, Lopenlight/co/camera/utils/ImageUtil;->EXIF_DATE_TIME_FORMAT:Ljava/text/DateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 686
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
