.class public Lopenlight/co/lib/exif/ExifInformation;
.super Ljava/lang/Object;
.source "ExifInformation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final EV_SCALE_FACTOR:I = 0x6

.field private static final LOG2:D

.field public static final NO_COORD:D = 1000.0

.field public static final NO_EV:F = 1000.0f

.field public static final NO_EXPOSURE:D

.field public static final NO_FOCAL_LENGTH:I

.field public static final NO_ISO:I

.field public static final NO_SHUTTER:F

.field private static final TAG:Ljava/lang/String;

.field private static final s2dpFormat:Ljava/text/DecimalFormat;


# instance fields
.field private mBokeh:Ljava/lang/String;

.field private mCreationDate:J

.field private mDenoise:Ljava/lang/String;

.field private mDimension:Ljava/lang/String;

.field private mEv:F

.field private mExposureTime:D

.field private mFileSize:J

.field private mFlash:Ljava/lang/String;

.field private mFocalLength:I

.field private mHdr:Ljava/lang/String;

.field private mImagePath:Ljava/lang/String;

.field private mIso:I

.field private mLatitude:D

.field private mLongitude:D

.field private mName:Ljava/lang/String;

.field private mShutterSpeedValue:F

.field private mWb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    const-class v0, Lopenlight/co/lib/exif/ExifInformation;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/lib/exif/ExifInformation;->TAG:Ljava/lang/String;

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lopenlight/co/lib/exif/ExifInformation;->LOG2:D

    .line 33
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    sput-object v0, Lopenlight/co/lib/exif/ExifInformation;->s2dpFormat:Ljava/text/DecimalFormat;

    .line 35
    sget-object v0, Lopenlight/co/lib/exif/ExifInformation;->s2dpFormat:Ljava/text/DecimalFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 36
    sget-object v0, Lopenlight/co/lib/exif/ExifInformation;->s2dpFormat:Ljava/text/DecimalFormat;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    return-void
.end method

.method public constructor <init>(FI)V
    .registers 6

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x447a0000    # 1000.0f

    .line 43
    iput v0, p0, Lopenlight/co/lib/exif/ExifInformation;->mEv:F

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lopenlight/co/lib/exif/ExifInformation;->mIso:I

    const/4 v1, 0x0

    .line 45
    iput v1, p0, Lopenlight/co/lib/exif/ExifInformation;->mShutterSpeedValue:F

    const-wide/16 v1, 0x0

    .line 48
    iput-wide v1, p0, Lopenlight/co/lib/exif/ExifInformation;->mExposureTime:D

    .line 50
    iput v0, p0, Lopenlight/co/lib/exif/ExifInformation;->mFocalLength:I

    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 51
    iput-wide v0, p0, Lopenlight/co/lib/exif/ExifInformation;->mLatitude:D

    .line 52
    iput-wide v0, p0, Lopenlight/co/lib/exif/ExifInformation;->mLongitude:D

    .line 111
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInformation;->setEv(F)V

    .line 112
    invoke-direct {p0, p2}, Lopenlight/co/lib/exif/ExifInformation;->setFocalLength(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x447a0000    # 1000.0f

    .line 43
    iput v0, p0, Lopenlight/co/lib/exif/ExifInformation;->mEv:F

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lopenlight/co/lib/exif/ExifInformation;->mIso:I

    const/4 v1, 0x0

    .line 45
    iput v1, p0, Lopenlight/co/lib/exif/ExifInformation;->mShutterSpeedValue:F

    const-wide/16 v1, 0x0

    .line 48
    iput-wide v1, p0, Lopenlight/co/lib/exif/ExifInformation;->mExposureTime:D

    .line 50
    iput v0, p0, Lopenlight/co/lib/exif/ExifInformation;->mFocalLength:I

    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 51
    iput-wide v3, p0, Lopenlight/co/lib/exif/ExifInformation;->mLatitude:D

    .line 52
    iput-wide v3, p0, Lopenlight/co/lib/exif/ExifInformation;->mLongitude:D

    .line 116
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lopenlight/co/lib/exif/ExifInformation;->setName(Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInformation;->setImagePath(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lopenlight/co/lib/exif/ExifInformation;->setFileSize(J)V

    .line 121
    invoke-static {p1}, Lopenlight/co/lib/utils/Utils;->isJpeg(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_191

    .line 122
    new-instance v3, Lopenlight/co/lib/exif/ExifInterface;

    invoke-direct {v3, p1}, Lopenlight/co/lib/exif/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v3}, Lopenlight/co/lib/exif/ExifInterface;->getDateTime()J

    move-result-wide v4

    .line 125
    sget-object p1, Lopenlight/co/lib/exif/ExifInformation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[EXIF] read dateTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, v4, v5}, Lopenlight/co/lib/exif/ExifInformation;->setCreationDate(J)V

    const-string p1, "ISOSpeedRatings"

    .line 128
    invoke-virtual {v3, p1}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 129
    sget-object v4, Lopenlight/co/lib/exif/ExifInformation;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EXIF] read ISO: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x64

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9f

    .line 133
    :try_start_83
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_87
    .catch Ljava/lang/NumberFormatException; {:try_start_83 .. :try_end_87} :catch_89

    move v4, v5

    goto :goto_9f

    .line 135
    :catch_89
    sget-object v5, Lopenlight/co/lib/exif/ExifInformation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t parse ISO: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_9f
    :goto_9f
    invoke-direct {p0, v4}, Lopenlight/co/lib/exif/ExifInformation;->setIso(I)V

    const-string p1, "Flash"

    .line 140
    invoke-virtual {v3, p1}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 141
    sget-object v4, Lopenlight/co/lib/exif/ExifInformation;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EXIF] read flash: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInformation;->setFlash(Ljava/lang/String;)V

    const-string p1, "WhiteBalance"

    .line 144
    invoke-virtual {v3, p1}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 145
    sget-object v4, Lopenlight/co/lib/exif/ExifInformation;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[EXIF] read wb: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInformation;->setWb(Ljava/lang/String;)V

    const-string p1, "hdr +2"

    .line 148
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInformation;->setHdr(Ljava/lang/String;)V

    const-string p1, "ExposureTime"

    .line 152
    invoke-virtual {v3, p1, v1, v2}, Lopenlight/co/lib/exif/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v4

    cmpl-double p1, v4, v1

    if-eqz p1, :cond_108

    .line 154
    sget-object p1, Lopenlight/co/lib/exif/ExifInformation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[EXIF] read exposure time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, v4, v5}, Lopenlight/co/lib/exif/ExifInformation;->setExposureTime(D)V

    :cond_108
    const-string p1, "ExposureBiasValue"

    .line 158
    invoke-virtual {v3, p1}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_134

    const-string p1, "SubSecTimeDigitized"

    .line 161
    invoke-virtual {v3, p1}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_11a

    move p1, v0

    goto :goto_11f

    .line 162
    :cond_11a
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    .line 163
    :goto_11f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x6

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 165
    :cond_134
    sget-object v1, Lopenlight/co/lib/exif/ExifInformation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EXIF] read ev: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInformation;->setEvFromExif(Ljava/lang/String;)V

    const-string p1, "FocalLengthIn35mmFilm"

    const-string v1, "28"

    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 168
    invoke-virtual {v3, p1, v1}, Lopenlight/co/lib/exif/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    .line 170
    sget-object v1, Lopenlight/co/lib/exif/ExifInformation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[EXIF] read focal length: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInformation;->setFocalLength(I)V

    const-string p1, "bokeh +10"

    .line 173
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInformation;->setBokeh(Ljava/lang/String;)V

    const-string p1, "denoise +5"

    .line 174
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInformation;->setDenoise(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 176
    new-array p1, p1, [D

    .line 177
    invoke-virtual {v3, p1}, Lopenlight/co/lib/exif/ExifInterface;->getLatLong([D)Z

    move-result v1

    if-eqz v1, :cond_1a7

    .line 178
    aget-wide v0, p1, v0

    invoke-direct {p0, v0, v1}, Lopenlight/co/lib/exif/ExifInformation;->setLatitude(D)V

    const/4 v0, 0x1

    .line 179
    aget-wide v0, p1, v0

    invoke-direct {p0, v0, v1}, Lopenlight/co/lib/exif/ExifInformation;->setLongitude(D)V

    goto :goto_1a7

    .line 187
    :cond_191
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 188
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lopenlight/co/lib/exif/ExifInformation;->setCreationDate(J)V

    :cond_1a7
    :goto_1a7
    return-void
.end method

.method public static asRational(DI)Ljava/lang/String;
    .registers 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v1, p2

    mul-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static displayableExposureTime(D)Ljava/lang/String;
    .registers 5

    const-wide v0, 0x3fd3333333333333L    # 0.3

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_17

    .line 306
    sget-object v0, Lopenlight/co/lib/exif/ExifInformation;->s2dpFormat:Ljava/text/DecimalFormat;

    monitor-enter v0

    .line 307
    :try_start_c
    sget-object v1, Lopenlight/co/lib/exif/ExifInformation;->s2dpFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v1, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    .line 308
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw p0

    .line 310
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    div-double/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parseRational(Ljava/lang/String;)F
    .registers 5

    const-string v0, "/"

    .line 388
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 389
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_24

    const-string v0, "1"

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_24

    .line 392
    :cond_16
    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    div-float/2addr v0, p0

    return v0

    .line 390
    :cond_24
    :goto_24
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method private setBokeh(Ljava/lang/String;)V
    .registers 2

    .line 347
    iput-object p1, p0, Lopenlight/co/lib/exif/ExifInformation;->mBokeh:Ljava/lang/String;

    return-void
.end method

.method private setCreationDate(J)V
    .registers 3

    .line 314
    iput-wide p1, p0, Lopenlight/co/lib/exif/ExifInformation;->mCreationDate:J

    return-void
.end method

.method private setDenoise(Ljava/lang/String;)V
    .registers 2

    .line 351
    iput-object p1, p0, Lopenlight/co/lib/exif/ExifInformation;->mDenoise:Ljava/lang/String;

    return-void
.end method

.method private setEv(F)V
    .registers 2

    .line 322
    iput p1, p0, Lopenlight/co/lib/exif/ExifInformation;->mEv:F

    return-void
.end method

.method private setEvFromExif(Ljava/lang/String;)V
    .registers 2

    .line 331
    invoke-static {p1}, Lopenlight/co/lib/exif/ExifInformation;->parseRational(Ljava/lang/String;)F

    move-result p1

    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInformation;->setEv(F)V

    return-void
.end method

.method private setExposureTime(D)V
    .registers 3

    .line 371
    iput-wide p1, p0, Lopenlight/co/lib/exif/ExifInformation;->mExposureTime:D

    return-void
.end method

.method private setFileSize(J)V
    .registers 3

    .line 318
    iput-wide p1, p0, Lopenlight/co/lib/exif/ExifInformation;->mFileSize:J

    return-void
.end method

.method private setFlash(Ljava/lang/String;)V
    .registers 2

    .line 355
    iput-object p1, p0, Lopenlight/co/lib/exif/ExifInformation;->mFlash:Ljava/lang/String;

    return-void
.end method

.method private setFocalLength(I)V
    .registers 2

    .line 363
    iput p1, p0, Lopenlight/co/lib/exif/ExifInformation;->mFocalLength:I

    return-void
.end method

.method private setHdr(Ljava/lang/String;)V
    .registers 2

    .line 343
    iput-object p1, p0, Lopenlight/co/lib/exif/ExifInformation;->mHdr:Ljava/lang/String;

    return-void
.end method

.method private setImagePath(Ljava/lang/String;)V
    .registers 2

    .line 367
    iput-object p1, p0, Lopenlight/co/lib/exif/ExifInformation;->mImagePath:Ljava/lang/String;

    return-void
.end method

.method private setIso(I)V
    .registers 2

    .line 335
    iput p1, p0, Lopenlight/co/lib/exif/ExifInformation;->mIso:I

    return-void
.end method

.method private setLatitude(D)V
    .registers 3

    .line 375
    iput-wide p1, p0, Lopenlight/co/lib/exif/ExifInformation;->mLatitude:D

    return-void
.end method

.method private setLongitude(D)V
    .registers 3

    .line 379
    iput-wide p1, p0, Lopenlight/co/lib/exif/ExifInformation;->mLongitude:D

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .registers 2

    .line 359
    iput-object p1, p0, Lopenlight/co/lib/exif/ExifInformation;->mName:Ljava/lang/String;

    return-void
.end method

.method private setWb(Ljava/lang/String;)V
    .registers 2

    .line 339
    iput-object p1, p0, Lopenlight/co/lib/exif/ExifInformation;->mWb:Ljava/lang/String;

    return-void
.end method

.method public static toDMS(D)[F
    .registers 9

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-ltz v2, :cond_8

    move-wide v2, p0

    goto :goto_9

    :cond_8
    neg-double v2, p0

    :goto_9
    double-to-int v4, v2

    int-to-double v5, v4

    sub-double/2addr v2, v5

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v5

    cmpg-double p0, p0, v0

    if-gez p0, :cond_14

    neg-int v4, v4

    :cond_14
    double-to-int p0, v2

    int-to-double v0, p0

    sub-double/2addr v2, v0

    double-to-float p1, v2

    const/high16 v0, 0x42700000    # 60.0f

    mul-float/2addr p1, v0

    const/4 v0, 0x3

    .line 102
    new-array v0, v0, [F

    const/4 v1, 0x0

    int-to-float v2, v4

    aput v2, v0, v1

    const/4 v1, 0x1

    int-to-float p0, p0

    aput p0, v0, v1

    const/4 p0, 0x2

    aput p1, v0, p0

    return-object v0
.end method

.method public static toExifSexagesimal(D)Ljava/lang/String;
    .registers 3

    .line 70
    invoke-static {p0, p1}, Lopenlight/co/lib/exif/ExifInformation;->toDMS(D)[F

    move-result-object p0

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    aget v0, p0, v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/1,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget v0, p0, v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/1,"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    aget p0, p0, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/100"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBokeh()Ljava/lang/String;
    .registers 1

    .line 256
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInformation;->mBokeh:Ljava/lang/String;

    return-object p0
.end method

.method public getCreationDate()J
    .registers 3

    .line 199
    iget-wide v0, p0, Lopenlight/co/lib/exif/ExifInformation;->mCreationDate:J

    return-wide v0
.end method

.method public getDenoise()Ljava/lang/String;
    .registers 1

    .line 260
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInformation;->mDenoise:Ljava/lang/String;

    return-object p0
.end method

.method public getDimension()Ljava/lang/String;
    .registers 1

    .line 244
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInformation;->mDimension:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayableExposureTime()Ljava/lang/String;
    .registers 3

    .line 297
    iget-wide v0, p0, Lopenlight/co/lib/exif/ExifInformation;->mExposureTime:D

    invoke-static {v0, v1}, Lopenlight/co/lib/exif/ExifInformation;->displayableExposureTime(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEv()F
    .registers 1

    .line 207
    iget p0, p0, Lopenlight/co/lib/exif/ExifInformation;->mEv:F

    return p0
.end method

.method public getExifEv()Ljava/lang/String;
    .registers 3

    .line 216
    iget p0, p0, Lopenlight/co/lib/exif/ExifInformation;->mEv:F

    float-to-double v0, p0

    const/4 p0, 0x6

    invoke-static {v0, v1, p0}, Lopenlight/co/lib/exif/ExifInformation;->asRational(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExifShutterSpeedValue()Ljava/lang/String;
    .registers 5

    .line 224
    iget v0, p0, Lopenlight/co/lib/exif/ExifInformation;->mShutterSpeedValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    const/4 p0, 0x0

    return-object p0

    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    .line 227
    iget p0, p0, Lopenlight/co/lib/exif/ExifInformation;->mShutterSpeedValue:F

    div-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lopenlight/co/lib/exif/ExifInformation;->LOG2:D

    div-double/2addr v0, v2

    const/16 p0, 0x3e8

    .line 228
    invoke-static {v0, v1, p0}, Lopenlight/co/lib/exif/ExifInformation;->asRational(DI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExposureTime()D
    .registers 3

    .line 280
    iget-wide v0, p0, Lopenlight/co/lib/exif/ExifInformation;->mExposureTime:D

    return-wide v0
.end method

.method public getFileSize()J
    .registers 3

    .line 203
    iget-wide v0, p0, Lopenlight/co/lib/exif/ExifInformation;->mFileSize:J

    return-wide v0
.end method

.method public getFlash()Ljava/lang/String;
    .registers 1

    .line 264
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInformation;->mFlash:Ljava/lang/String;

    return-object p0
.end method

.method public getFocalLength()I
    .registers 1

    .line 272
    iget p0, p0, Lopenlight/co/lib/exif/ExifInformation;->mFocalLength:I

    return p0
.end method

.method public getHdr()Ljava/lang/String;
    .registers 1

    .line 252
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInformation;->mHdr:Ljava/lang/String;

    return-object p0
.end method

.method public getImagePath()Ljava/lang/String;
    .registers 1

    .line 276
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInformation;->mImagePath:Ljava/lang/String;

    return-object p0
.end method

.method public getIso()I
    .registers 1

    .line 220
    iget p0, p0, Lopenlight/co/lib/exif/ExifInformation;->mIso:I

    return p0
.end method

.method public getLatitude()D
    .registers 3

    .line 284
    iget-wide v0, p0, Lopenlight/co/lib/exif/ExifInformation;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .line 288
    iget-wide v0, p0, Lopenlight/co/lib/exif/ExifInformation;->mLongitude:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 268
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInformation;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getWb()Ljava/lang/String;
    .registers 1

    .line 240
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInformation;->mWb:Ljava/lang/String;

    return-object p0
.end method

.method public setDimension(Ljava/lang/String;)V
    .registers 2

    .line 248
    iput-object p1, p0, Lopenlight/co/lib/exif/ExifInformation;->mDimension:Ljava/lang/String;

    return-void
.end method

.method public setShutterSpeedValue(F)V
    .registers 2

    .line 236
    iput p1, p0, Lopenlight/co/lib/exif/ExifInformation;->mShutterSpeedValue:F

    return-void
.end method
