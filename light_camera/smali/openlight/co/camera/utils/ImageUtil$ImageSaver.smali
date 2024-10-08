.class public Lopenlight/co/camera/utils/ImageUtil$ImageSaver;
.super Ljava/lang/Object;
.source "ImageUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/utils/ImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageSaver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/utils/ImageUtil$ImageSaver$ImageSaverBuilder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFile:Ljava/io/File;

.field private final mImage:Landroid/media/Image;

.field private final mInfo:Lopenlight/co/lib/exif/ExifInformation;

.field private final mListener:Lopenlight/co/camera/listener/OnImageSavedListener;

.field private final mTmpFile:Ljava/io/File;

.field private final mViewPrefs:Lltpb/ViewPreferences;


# direct methods
.method private constructor <init>(Landroid/media/Image;Ljava/io/File;Landroid/content/Context;Lopenlight/co/camera/listener/OnImageSavedListener;Lltpb/ViewPreferences;Lopenlight/co/lib/exif/ExifInformation;)V
    .registers 9

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mImage:Landroid/media/Image;

    .line 176
    iput-object p2, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mFile:Ljava/io/File;

    :try_start_7
    const-string p1, "temp"

    const-string v0, ".tmp"

    .line 179
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_13} :catch_14

    goto :goto_2f

    :catch_14
    move-exception p1

    .line 181
    # getter for: Lopenlight/co/camera/utils/ImageUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/utils/ImageUtil;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Couldn\'t use File.createTempFile(). Making our own"

    invoke-static {v0, v1, p1}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 182
    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    :goto_2f
    iput-object p1, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mTmpFile:Ljava/io/File;

    .line 185
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mContext:Landroid/content/Context;

    .line 186
    iput-object p4, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mListener:Lopenlight/co/camera/listener/OnImageSavedListener;

    .line 187
    iput-object p5, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mViewPrefs:Lltpb/ViewPreferences;

    .line 188
    iput-object p6, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mInfo:Lopenlight/co/lib/exif/ExifInformation;

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/Image;Ljava/io/File;Landroid/content/Context;Lopenlight/co/camera/listener/OnImageSavedListener;Lltpb/ViewPreferences;Lopenlight/co/lib/exif/ExifInformation;Lopenlight/co/camera/utils/ImageUtil$1;)V
    .registers 8

    .line 141
    invoke-direct/range {p0 .. p6}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;-><init>(Landroid/media/Image;Ljava/io/File;Landroid/content/Context;Lopenlight/co/camera/listener/OnImageSavedListener;Lltpb/ViewPreferences;Lopenlight/co/lib/exif/ExifInformation;)V

    return-void
.end method

.method static synthetic access$100(Lopenlight/co/camera/utils/ImageUtil$ImageSaver;)Lopenlight/co/camera/listener/OnImageSavedListener;
    .registers 1

    .line 141
    iget-object p0, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mListener:Lopenlight/co/camera/listener/OnImageSavedListener;

    return-object p0
.end method

.method static synthetic access$202(Lopenlight/co/camera/utils/ImageUtil$ImageSaver;Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    .line 141
    iput-object p1, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$300(Lopenlight/co/camera/utils/ImageUtil$ImageSaver;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method private appendProtoBuf(Lopenlight/co/camera/utils/ByteBufferWriter;Lcom/squareup/wire/Message;B)Z
    .registers 4

    .line 509
    :try_start_0
    new-instance p0, Lopenlight/co/camera/proto/LightHeader;

    invoke-direct {p0, p2, p3}, Lopenlight/co/camera/proto/LightHeader;-><init>(Lcom/squareup/wire/Message;B)V

    invoke-virtual {p0}, Lopenlight/co/camera/proto/LightHeader;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 510
    invoke-interface {p1, p0}, Lopenlight/co/camera/utils/ByteBufferWriter;->write(Ljava/nio/ByteBuffer;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_e

    const/4 p0, 0x1

    goto :goto_19

    :catch_e
    move-exception p0

    .line 513
    # getter for: Lopenlight/co/camera/utils/ImageUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/utils/ImageUtil;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Error appending view header"

    invoke-static {p1, p2, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private appendProtoBuffs(Lopenlight/co/camera/utils/ByteBufferWriter;Lltpb/ViewPreferences;Lltpb/GPSData;)Z
    .registers 5

    const/4 v0, 0x1

    .line 493
    invoke-direct {p0, p1, p2, v0}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->appendProtoBuf(Lopenlight/co/camera/utils/ByteBufferWriter;Lcom/squareup/wire/Message;B)Z

    move-result p2

    if-eqz p2, :cond_f

    const/4 p2, 0x2

    .line 494
    invoke-direct {p0, p1, p3, p2}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->appendProtoBuf(Lopenlight/co/camera/utils/ByteBufferWriter;Lcom/squareup/wire/Message;B)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private saveImage(Landroid/media/Image;Ljava/security/PublicKey;)Lopenlight/co/camera/utils/ByteBufferWriter;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 448
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-nez p2, :cond_28

    .line 452
    :try_start_10
    new-instance p2, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mTmpFile:Ljava/io/File;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    const-wide/16 v1, 0x0

    .line 453
    invoke-virtual {p2, v0, v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    .line 455
    new-instance v1, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$2;

    invoke-direct {v1, p0, p2, v0}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$2;-><init>(Lopenlight/co/camera/utils/ImageUtil$ImageSaver;Ljava/nio/channels/FileChannel;Ljava/nio/ByteBuffer;)V
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_26

    goto :goto_3f

    :catchall_26
    move-exception p0

    goto :goto_55

    .line 468
    :cond_28
    :try_start_28
    iget-object v1, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lopenlight/co/camera/utils/CipherManager;->unencryptedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 469
    new-instance v2, Lopenlight/co/camera/utils/ImageEncipher;

    const-string v3, "RSA/ECB/PKCS1Padding"

    invoke-direct {v2, p2, v3}, Lopenlight/co/camera/utils/ImageEncipher;-><init>(Ljava/security/PublicKey;Ljava/lang/String;)V

    iget-object p0, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mTmpFile:Ljava/io/File;

    .line 470
    invoke-virtual {v2, v0, v1, p0}, Lopenlight/co/camera/utils/ImageEncipher;->encrypt(Ljava/nio/ByteBuffer;Ljava/lang/String;Ljava/io/File;)Lopenlight/co/camera/utils/ByteBufferWriter;

    move-result-object v1
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3f} :catch_4c
    .catchall {:try_start_28 .. :try_end_3f} :catchall_26

    .line 476
    :goto_3f
    # getter for: Lopenlight/co/camera/utils/ImageUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/utils/ImageUtil;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Closing image"

    invoke-static {p0, p2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-object v1

    :catch_4c
    move-exception p0

    .line 472
    :try_start_4d
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Couldn\'t write encrypted file"

    invoke-direct {p2, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_26

    .line 476
    :goto_55
    # getter for: Lopenlight/co/camera/utils/ImageUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/utils/ImageUtil;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Closing image"

    invoke-static {p2, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 478
    throw p0
.end method

.method static setGpsLocationTags(Lopenlight/co/lib/exif/ExifInterface;Lltpb/GPSData$Builder;Landroid/location/Location;)V
    .registers 11
    .param p0    # Lopenlight/co/lib/exif/ExifInterface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lltpb/GPSData$Builder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 323
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 324
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    if-eqz p1, :cond_18

    .line 327
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p1, v4}, Lltpb/GPSData$Builder;->latitude(Ljava/lang/Double;)Lltpb/GPSData$Builder;

    .line 328
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p1, v4}, Lltpb/GPSData$Builder;->longitude(Ljava/lang/Double;)Lltpb/GPSData$Builder;

    :cond_18
    const-wide/16 v4, 0x0

    if-eqz p0, :cond_4a

    const-string v6, "GPSLatitude"

    .line 333
    invoke-static {v0, v1}, Lopenlight/co/lib/exif/ExifInformation;->toExifSexagesimal(D)Ljava/lang/String;

    move-result-object v7

    .line 332
    invoke-virtual {p0, v6, v7}, Lopenlight/co/lib/exif/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "GPSLatitudeRef"

    cmpg-double v0, v0, v4

    if-gez v0, :cond_2e

    const-string v0, "S"

    goto :goto_30

    :cond_2e
    const-string v0, "N"

    .line 334
    :goto_30
    invoke-virtual {p0, v6, v0}, Lopenlight/co/lib/exif/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSLongitude"

    .line 336
    invoke-static {v2, v3}, Lopenlight/co/lib/exif/ExifInformation;->toExifSexagesimal(D)Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-virtual {p0, v0, v1}, Lopenlight/co/lib/exif/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSLongitudeRef"

    cmpg-double v1, v2, v4

    if-gez v1, :cond_45

    const-string v1, "W"

    goto :goto_47

    :cond_45
    const-string v1, "E"

    .line 337
    :goto_47
    invoke-virtual {p0, v0, v1}, Lopenlight/co/lib/exif/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_4a
    invoke-virtual {p2}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_a1

    .line 342
    invoke-static {}, Lopenlight/co/camera/utils/LocationManager;->get()Lopenlight/co/camera/utils/LocationManager;

    move-result-object v0

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v0, v2, v3, v6, v7}, Lopenlight/co/camera/utils/LocationManager;->correctionForLatLng(DD)F

    move-result v0

    .line 343
    invoke-virtual {p2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    float-to-double v6, v0

    sub-double/2addr v2, v6

    .line 345
    new-instance v0, Lltpb/GPSData$Altitude$Builder;

    invoke-direct {v0}, Lltpb/GPSData$Altitude$Builder;-><init>()V

    .line 346
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v0, v6}, Lltpb/GPSData$Altitude$Builder;->value(Ljava/lang/Double;)Lltpb/GPSData$Altitude$Builder;

    move-result-object v0

    sget-object v6, Lltpb/GPSData$ReferenceAltitude;->REFERENCE_ALTITUDE_SEA_LEVEL:Lltpb/GPSData$ReferenceAltitude;

    .line 347
    invoke-virtual {v0, v6}, Lltpb/GPSData$Altitude$Builder;->ref(Lltpb/GPSData$ReferenceAltitude;)Lltpb/GPSData$Altitude$Builder;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lltpb/GPSData$Altitude$Builder;->build()Lltpb/GPSData$Altitude;

    move-result-object v0

    if-eqz p1, :cond_84

    .line 351
    invoke-virtual {p1, v0}, Lltpb/GPSData$Builder;->altitude(Lltpb/GPSData$Altitude;)Lltpb/GPSData$Builder;

    :cond_84
    if-eqz p0, :cond_a1

    const-string v0, "GPSAltitude"

    .line 356
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7, v1}, Lopenlight/co/lib/exif/ExifInformation;->asRational(DI)Ljava/lang/String;

    move-result-object v6

    .line 355
    invoke-virtual {p0, v0, v6}, Lopenlight/co/lib/exif/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSAltitudeRef"

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_9c

    const-string v2, "0"

    goto :goto_9e

    :cond_9c
    const-string v2, "1"

    .line 357
    :goto_9e
    invoke-virtual {p0, v0, v2}, Lopenlight/co/lib/exif/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_a1
    invoke-virtual {p2}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_de

    .line 361
    invoke-virtual {p2}, Landroid/location/Location;->getBearing()F

    move-result v0

    float-to-double v2, v0

    .line 363
    new-instance v0, Lltpb/GPSData$Track$Builder;

    invoke-direct {v0}, Lltpb/GPSData$Track$Builder;-><init>()V

    .line 364
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v4}, Lltpb/GPSData$Track$Builder;->value(Ljava/lang/Double;)Lltpb/GPSData$Track$Builder;

    move-result-object v0

    sget-object v4, Lltpb/GPSData$ReferenceNorth;->REFERENCE_NORTH_MAGNETIC:Lltpb/GPSData$ReferenceNorth;

    .line 365
    invoke-virtual {v0, v4}, Lltpb/GPSData$Track$Builder;->ref(Lltpb/GPSData$ReferenceNorth;)Lltpb/GPSData$Track$Builder;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Lltpb/GPSData$Track$Builder;->build()Lltpb/GPSData$Track;

    move-result-object v0

    if-eqz p1, :cond_c8

    .line 369
    invoke-virtual {p1, v0}, Lltpb/GPSData$Builder;->track(Lltpb/GPSData$Track;)Lltpb/GPSData$Builder;

    :cond_c8
    if-eqz p0, :cond_de

    const-string v0, "GPSTrack"

    .line 374
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lopenlight/co/lib/exif/ExifInformation;->asRational(DI)Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-virtual {p0, v0, v2}, Lopenlight/co/lib/exif/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSTrackRef"

    const-string v2, "T"

    .line 375
    invoke-virtual {p0, v0, v2}, Lopenlight/co/lib/exif/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_de
    invoke-virtual {p2}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_110

    .line 379
    invoke-static {}, Lopenlight/co/lib/utils/Utils;->get()Lopenlight/co/lib/utils/Utils;

    move-result-object v0

    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-virtual {v0, v2}, Lopenlight/co/lib/utils/Utils;->metersPerSecToKmh(F)F

    move-result v0

    float-to-double v2, v0

    if-eqz p1, :cond_fa

    .line 382
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lltpb/GPSData$Builder;->speed(Ljava/lang/Double;)Lltpb/GPSData$Builder;

    :cond_fa
    if-eqz p0, :cond_110

    const-string v0, "GPSSpeed"

    .line 387
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lopenlight/co/lib/exif/ExifInformation;->asRational(DI)Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-virtual {p0, v0, v1}, Lopenlight/co/lib/exif/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GPSSpeedRef"

    const-string v1, "K"

    .line 388
    invoke-virtual {p0, v0, v1}, Lopenlight/co/lib/exif/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_110
    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_12e

    if-eqz p1, :cond_121

    .line 394
    # invokes: Lopenlight/co/camera/utils/ImageUtil;->providerToGpsProcessingMethod(Ljava/lang/String;)Lltpb/GPSData$ProcessingMethod;
    invoke-static {p2}, Lopenlight/co/camera/utils/ImageUtil;->access$400(Ljava/lang/String;)Lltpb/GPSData$ProcessingMethod;

    move-result-object v0

    if-eqz v0, :cond_121

    .line 396
    invoke-virtual {p1, v0}, Lltpb/GPSData$Builder;->processing_method(Lltpb/GPSData$ProcessingMethod;)Lltpb/GPSData$Builder;

    :cond_121
    if-eqz p0, :cond_12e

    .line 401
    # invokes: Lopenlight/co/camera/utils/ImageUtil;->providerToProcessingMethod(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p2}, Lopenlight/co/camera/utils/ImageUtil;->access$500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12e

    const-string p2, "GPSProcessingMethod"

    .line 403
    invoke-virtual {p0, p2, p1}, Lopenlight/co/lib/exif/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12e
    return-void
.end method

.method static setGpsTimeTags(Lopenlight/co/lib/exif/ExifInterface;Lltpb/GPSData$Builder;)V
    .registers 6
    .param p0    # Lopenlight/co/lib/exif/ExifInterface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lltpb/GPSData$Builder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_7

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_b

    .line 417
    :cond_7
    invoke-virtual {p0}, Lopenlight/co/lib/exif/ExifInterface;->getUtcDateTime()J

    move-result-wide v0

    :goto_b
    if-eqz p1, :cond_1a

    .line 420
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lltpb/GPSData$Builder;->timestamp(Ljava/lang/Long;)Lltpb/GPSData$Builder;

    :cond_1a
    if-eqz p0, :cond_3b

    .line 424
    # invokes: Lopenlight/co/camera/utils/ImageUtil;->toExifDateTime(J)Ljava/lang/String;
    invoke-static {v0, v1}, Lopenlight/co/camera/utils/ImageUtil;->access$600(J)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x20

    .line 425
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v1, "GPSDateStamp"

    const/4 v2, 0x0

    .line 426
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lopenlight/co/lib/exif/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "GPSTimeStamp"

    add-int/lit8 v0, v0, 0x1

    .line 427
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lopenlight/co/lib/exif/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method


# virtual methods
.method addGpsTags(Lopenlight/co/lib/exif/ExifInterface;Lltpb/GPSData$Builder;)V
    .registers 3
    .param p1    # Lopenlight/co/lib/exif/ExifInterface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lltpb/GPSData$Builder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 300
    invoke-static {}, Lopenlight/co/camera/utils/LocationManager;->get()Lopenlight/co/camera/utils/LocationManager;

    move-result-object p0

    .line 303
    invoke-virtual {p0}, Lopenlight/co/camera/utils/LocationManager;->requestLocationUpdate()V

    .line 305
    invoke-virtual {p0}, Lopenlight/co/camera/utils/LocationManager;->getLocation()Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 308
    invoke-static {p1, p2, p0}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->setGpsLocationTags(Lopenlight/co/lib/exif/ExifInterface;Lltpb/GPSData$Builder;Landroid/location/Location;)V

    .line 310
    :cond_10
    invoke-static {p1, p2}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->setGpsTimeTags(Lopenlight/co/lib/exif/ExifInterface;Lltpb/GPSData$Builder;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 437
    iget-object v0, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mFile:Ljava/io/File;

    if-nez v0, :cond_42

    iget-object v0, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mImage:Landroid/media/Image;

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageSaver-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_59

    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageSaver-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-format "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mImage:Landroid/media/Image;

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_59

    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageSaver-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mFile:Ljava/io/File;

    .line 441
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_59
    return-object p0
.end method

.method public run()V
    .registers 10

    const/16 v0, 0xa

    .line 193
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 198
    :try_start_7
    iget-object v2, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mImage:Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->getFormat()I

    move-result v2

    const/16 v3, 0x100

    if-ne v2, v3, :cond_13

    move v3, v0

    goto :goto_14

    :cond_13
    move v3, v1

    .line 202
    :goto_14
    invoke-static {}, Lopenlight/co/camera/utils/CipherManager;->get()Lopenlight/co/camera/utils/CipherManager;

    move-result-object v4

    .line 203
    invoke-virtual {v4, v2}, Lopenlight/co/camera/utils/CipherManager;->isEncrypting(I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_24

    .line 204
    invoke-virtual {v4}, Lopenlight/co/camera/utils/CipherManager;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_132

    goto :goto_25

    :cond_24
    move-object v4, v6

    .line 210
    :goto_25
    :try_start_25
    iget-object v7, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mImage:Landroid/media/Image;

    invoke-direct {p0, v7, v4}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->saveImage(Landroid/media/Image;Ljava/security/PublicKey;)Lopenlight/co/camera/utils/ByteBufferWriter;

    move-result-object v4
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2b} :catch_50
    .catchall {:try_start_25 .. :try_end_2b} :catchall_4c

    const/16 v7, 0x23

    if-ne v2, v7, :cond_44

    .line 213
    :try_start_2f
    new-instance v2, Lltpb/GPSData$Builder;

    invoke-direct {v2}, Lltpb/GPSData$Builder;-><init>()V

    .line 214
    invoke-virtual {p0, v6, v2}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->addGpsTags(Lopenlight/co/lib/exif/ExifInterface;Lltpb/GPSData$Builder;)V

    .line 215
    iget-object v7, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mViewPrefs:Lltpb/ViewPreferences;

    invoke-virtual {v2}, Lltpb/GPSData$Builder;->build()Lltpb/GPSData;

    move-result-object v2

    invoke-direct {p0, v4, v7, v2}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->appendProtoBuffs(Lopenlight/co/camera/utils/ByteBufferWriter;Lltpb/ViewPreferences;Lltpb/GPSData;)Z

    move-result v2
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_41} :catch_42
    .catchall {:try_start_2f .. :try_end_41} :catchall_12d

    goto :goto_45

    :catch_42
    move-exception v2

    goto :goto_52

    :cond_44
    move v2, v0

    .line 222
    :goto_45
    :try_start_45
    invoke-static {v4}, Lopenlight/co/lib/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_5f

    :catchall_49
    move-exception v1

    goto/16 :goto_134

    :catchall_4c
    move-exception v1

    move-object v4, v6

    goto/16 :goto_12e

    :catch_50
    move-exception v2

    move-object v4, v6

    .line 218
    :goto_52
    :try_start_52
    # getter for: Lopenlight/co/camera/utils/ImageUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/utils/ImageUtil;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Problem writing image"

    invoke-static {v7, v8, v2}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_12d

    .line 222
    :try_start_5b
    invoke-static {v4}, Lopenlight/co/lib/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_129

    move v2, v1

    :goto_5f
    if-eqz v2, :cond_cb

    if-eqz v3, :cond_cb

    if-nez v5, :cond_cb

    .line 229
    :try_start_65
    new-instance v3, Lopenlight/co/lib/exif/ExifInterface;

    iget-object v4, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mTmpFile:Ljava/io/File;

    .line 230
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lopenlight/co/lib/exif/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 232
    iget-object v4, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mInfo:Lopenlight/co/lib/exif/ExifInformation;

    invoke-virtual {v4}, Lopenlight/co/lib/exif/ExifInformation;->getExifEv()Ljava/lang/String;

    move-result-object v4

    .line 233
    # getter for: Lopenlight/co/camera/utils/ImageUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/utils/ImageUtil;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[EXIF] saving ev: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ExposureBiasValue"

    .line 234
    invoke-virtual {v3, v5, v4}, Lopenlight/co/lib/exif/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v4, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mInfo:Lopenlight/co/lib/exif/ExifInformation;

    invoke-virtual {v4}, Lopenlight/co/lib/exif/ExifInformation;->getFocalLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 237
    # getter for: Lopenlight/co/camera/utils/ImageUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/utils/ImageUtil;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[EXIF] saving focal length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "FocalLengthIn35mmFilm"

    .line 238
    invoke-virtual {v3, v5, v4}, Lopenlight/co/lib/exif/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0, v3, v6}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->addGpsTags(Lopenlight/co/lib/exif/ExifInterface;Lltpb/GPSData$Builder;)V

    .line 242
    invoke-virtual {v3}, Lopenlight/co/lib/exif/ExifInterface;->saveAttributes()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_c0} :catch_c1
    .catchall {:try_start_65 .. :try_end_c0} :catchall_49

    goto :goto_cb

    :catch_c1
    move-exception v3

    .line 245
    :try_start_c2
    # getter for: Lopenlight/co/camera/utils/ImageUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/utils/ImageUtil;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Problem reading EXIF"

    invoke-static {v4, v5, v3}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 250
    :cond_cb
    :goto_cb
    iget-object v3, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mFile:Ljava/io/File;

    iget-object v4, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mTmpFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_109

    .line 251
    iget-object v3, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mTmpFile:Ljava/io/File;

    iget-object v4, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_109

    .line 252
    # getter for: Lopenlight/co/camera/utils/ImageUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/utils/ImageUtil;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t rename "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mTmpFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v3, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mTmpFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move v2, v1

    :cond_109
    if-eqz v2, :cond_11f

    .line 260
    iget-object v3, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mContext:Landroid/content/Context;

    new-array v0, v0, [Ljava/lang/String;

    iget-object v4, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    new-instance v1, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$1;

    invoke-direct {v1, p0}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$1;-><init>(Lopenlight/co/camera/utils/ImageUtil$ImageSaver;)V

    invoke-static {v3, v0, v6, v1}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_11f
    .catchall {:try_start_c2 .. :try_end_11f} :catchall_49

    .line 286
    :cond_11f
    iget-object v0, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mListener:Lopenlight/co/camera/listener/OnImageSavedListener;

    if-eqz v0, :cond_128

    .line 287
    iget-object p0, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mListener:Lopenlight/co/camera/listener/OnImageSavedListener;

    invoke-interface {p0, v2}, Lopenlight/co/camera/listener/OnImageSavedListener;->onComplete(Z)V

    :cond_128
    return-void

    :catchall_129
    move-exception v0

    move v2, v1

    move-object v1, v0

    goto :goto_134

    :catchall_12d
    move-exception v1

    .line 222
    :goto_12e
    :try_start_12e
    invoke-static {v4}, Lopenlight/co/lib/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 223
    throw v1
    :try_end_132
    .catchall {:try_start_12e .. :try_end_132} :catchall_132

    :catchall_132
    move-exception v1

    move v2, v0

    .line 286
    :goto_134
    iget-object v0, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mListener:Lopenlight/co/camera/listener/OnImageSavedListener;

    if-eqz v0, :cond_13d

    .line 287
    iget-object p0, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->mListener:Lopenlight/co/camera/listener/OnImageSavedListener;

    invoke-interface {p0, v2}, Lopenlight/co/camera/listener/OnImageSavedListener;->onComplete(Z)V

    .line 289
    :cond_13d
    throw v1
.end method
