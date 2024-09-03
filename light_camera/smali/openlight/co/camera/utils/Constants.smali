.class public interface abstract Lopenlight/co/camera/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/utils/Constants$ZoomPrimeFocalLengths;,
        Lopenlight/co/camera/utils/Constants$ExposureCompValues;,
        Lopenlight/co/camera/utils/Constants$SensitivityValues;,
        Lopenlight/co/camera/utils/Constants$ShutterSpeedValues;
    }
.end annotation


# static fields
.field public static final FOUR_BY_THREE_WIDTH_DIFF:I = 0xf0

.field public static final IMAGE_FORMAT_JPEG:I = 0x100

.field public static final IMAGE_FORMAT_LIGHT_RAW:I = 0x23

.field public static final KEEP_OUT_FOCUS_HEIGHT:I = 0x21c

.field public static final KEEP_OUT_FOCUS_WIDTH:I = 0x2d0

.field public static final KEEP_OUT_TOP_FOR_NAV_BAR:I = 0x82

.field public static final MILLI_SECOND:J = 0x3e8L

.field public static final PI_REQUEST_CODE_RESTART_ACTIVITY:I = 0x87a74

.field public static final PI_REQUEST_LOCATION_ALARM:I = 0x87a75

.field public static final PI_REQUEST_LOCATION_UPDATE:I = 0x87a76

.field public static final SECOND:J = 0x3b9aca00L

.field public static final exposureTimes:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x35

    .line 22
    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lopenlight/co/camera/utils/Constants;->exposureTimes:[J

    return-void

    :array_a
    .array-data 8
        0x37e11d600L
        0x2cb417800L
        0x2540be400L
        0x1dcd65000L
        0x165a0bc00L
        0x12a05f200L
        0xee6b2800L
        0xbebc2000L
        0x9502f900L
        0x77359400
        0x62f19700
        0x4a817c80
        0x3b9aca00
        0x2faf0800
        0x23c34600
        0x1dcd6500
        0x17d78400
        0x11e1a300
        0xee6b280
        0xbebc200
        0x9ef21aa
        0x7735940
        0x5f5e100
        0x4f790d5
        0x3f940aa
        0x2faf080
        0x27bc86a
        0x1fca055
        0x17d7840
        0x1312d00
        0xfe502a
        0xbebc20
        0x989680
        0x7f2815
        0x65b9aa
        0x5f5e10
        0x4c4b40
        0x3f940a
        0x2faf08
        0x2625a0
        0x1e8480
        0x17d784
        0x1312d0
        0xf4240
        0xc3500
        0x98968
        0x7a120
        0x61a80
        0x4c4b4
        0x3d090
        0x30d40
        0x2625a
        0x1e848
    .end array-data
.end method
