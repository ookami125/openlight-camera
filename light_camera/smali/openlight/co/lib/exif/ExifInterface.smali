.class public Lopenlight/co/lib/exif/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;,
        Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;,
        Lopenlight/co/lib/exif/ExifInterface$IfdType;,
        Lopenlight/co/lib/exif/ExifInterface$ExifTag;,
        Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;,
        Lopenlight/co/lib/exif/ExifInterface$Rational;
    }
.end annotation


# static fields
.field private static final ASCII:Ljava/nio/charset/Charset;

.field private static final BITS_PER_SAMPLE_GREYSCALE_1:[I

.field private static final BITS_PER_SAMPLE_GREYSCALE_2:[I

.field private static final BITS_PER_SAMPLE_RGB:[I

.field private static final BYTE_ALIGN_II:S = 0x4949s

.field private static final BYTE_ALIGN_MM:S = 0x4d4ds

.field private static final DATA_DEFLATE_ZIP:I = 0x8

.field private static final DATA_HUFFMAN_COMPRESSED:I = 0x2

.field private static final DATA_JPEG:I = 0x6

.field private static final DATA_JPEG_COMPRESSED:I = 0x7

.field private static final DATA_LOSSY_JPEG:I = 0x884c

.field private static final DATA_PACK_BITS_COMPRESSED:I = 0x8005

.field private static final DATA_UNCOMPRESSED:I = 0x1

.field private static final DEBUG:Z = false

.field private static final EXIF_ASCII_PREFIX:[B

.field private static final EXIF_POINTER_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

.field private static final EXIF_TAGS:[[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

.field private static final IDENTIFIER_EXIF_APP1:[B

.field private static final IFD_EXIF_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

.field private static final IFD_FORMAT_BYTE:I = 0x1

.field private static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field private static final IFD_FORMAT_DOUBLE:I = 0xc

.field private static final IFD_FORMAT_IFD:I = 0xd

.field private static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_FORMAT_SBYTE:I = 0x6

.field private static final IFD_FORMAT_SINGLE:I = 0xb

.field private static final IFD_FORMAT_SLONG:I = 0x9

.field private static final IFD_FORMAT_SRATIONAL:I = 0xa

.field private static final IFD_FORMAT_SSHORT:I = 0x8

.field private static final IFD_FORMAT_STRING:I = 0x2

.field private static final IFD_FORMAT_ULONG:I = 0x4

.field private static final IFD_FORMAT_UNDEFINED:I = 0x7

.field private static final IFD_FORMAT_URATIONAL:I = 0x5

.field private static final IFD_FORMAT_USHORT:I = 0x3

.field private static final IFD_GPS_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

.field private static final IFD_INTEROPERABILITY_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

.field private static final IFD_OFFSET:I = 0x8

.field private static final IFD_THUMBNAIL_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

.field private static final IFD_TIFF_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

.field private static final IFD_TYPE_EXIF:I = 0x1

.field private static final IFD_TYPE_GPS:I = 0x2

.field private static final IFD_TYPE_INTEROPERABILITY:I = 0x3

.field private static final IFD_TYPE_ORF_CAMERA_SETTINGS:I = 0x7

.field private static final IFD_TYPE_ORF_IMAGE_PROCESSING:I = 0x8

.field private static final IFD_TYPE_ORF_MAKER_NOTE:I = 0x6

.field private static final IFD_TYPE_PEF:I = 0x9

.field private static final IFD_TYPE_PREVIEW:I = 0x5

.field private static final IFD_TYPE_PRIMARY:I = 0x0

.field private static final IFD_TYPE_THUMBNAIL:I = 0x4

.field private static final IMAGE_TYPE_ARW:I = 0x1

.field private static final IMAGE_TYPE_CR2:I = 0x2

.field private static final IMAGE_TYPE_DNG:I = 0x3

.field private static final IMAGE_TYPE_JPEG:I = 0x4

.field private static final IMAGE_TYPE_NEF:I = 0x5

.field private static final IMAGE_TYPE_NRW:I = 0x6

.field private static final IMAGE_TYPE_ORF:I = 0x7

.field private static final IMAGE_TYPE_PEF:I = 0x8

.field private static final IMAGE_TYPE_RAF:I = 0x9

.field private static final IMAGE_TYPE_RW2:I = 0xa

.field private static final IMAGE_TYPE_SRW:I = 0xb

.field private static final IMAGE_TYPE_UNKNOWN:I = 0x0

.field private static final JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Lopenlight/co/lib/exif/ExifInterface$ExifTag;

.field private static final JPEG_INTERCHANGE_FORMAT_TAG:Lopenlight/co/lib/exif/ExifInterface$ExifTag;

.field private static final JPEG_SIGNATURE:[B

.field private static final MARKER:B = -0x1t

.field private static final MARKER_APP1:B = -0x1ft

.field private static final MARKER_COM:B = -0x2t

.field private static final MARKER_EOI:B = -0x27t

.field private static final MARKER_SOF0:B = -0x40t

.field private static final MARKER_SOF1:B = -0x3ft

.field private static final MARKER_SOF10:B = -0x36t

.field private static final MARKER_SOF11:B = -0x35t

.field private static final MARKER_SOF13:B = -0x33t

.field private static final MARKER_SOF14:B = -0x32t

.field private static final MARKER_SOF15:B = -0x31t

.field private static final MARKER_SOF2:B = -0x3et

.field private static final MARKER_SOF3:B = -0x3dt

.field private static final MARKER_SOF5:B = -0x3bt

.field private static final MARKER_SOF6:B = -0x3at

.field private static final MARKER_SOF7:B = -0x39t

.field private static final MARKER_SOF9:B = -0x37t

.field private static final MARKER_SOI:B = -0x28t

.field private static final MARKER_SOS:B = -0x26t

.field private static final MAX_THUMBNAIL_SIZE:I = 0x200

.field private static final ORF_CAMERA_SETTINGS_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

.field private static final ORF_IMAGE_PROCESSING_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

.field private static final ORF_MAKER_NOTE_HEADER_1:[B

.field private static final ORF_MAKER_NOTE_HEADER_1_SIZE:I = 0x8

.field private static final ORF_MAKER_NOTE_HEADER_2:[B

.field private static final ORF_MAKER_NOTE_HEADER_2_SIZE:I = 0xc

.field private static final ORF_MAKER_NOTE_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

.field private static final ORF_SIGNATURE_1:S = 0x4f52s

.field private static final ORF_SIGNATURE_2:S = 0x5352s

.field public static final ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final ORIENTATION_NORMAL:I = 0x1

.field public static final ORIENTATION_ROTATE_180:I = 0x3

.field public static final ORIENTATION_ROTATE_270:I = 0x8

.field public static final ORIENTATION_ROTATE_90:I = 0x6

.field public static final ORIENTATION_TRANSPOSE:I = 0x5

.field public static final ORIENTATION_TRANSVERSE:I = 0x7

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field private static final ORIGINAL_RESOLUTION_IMAGE:I = 0x0

.field private static final PEF_MAKER_NOTE_SKIP_SIZE:I = 0x6

.field private static final PEF_SIGNATURE:Ljava/lang/String; = "PENTAX"

.field private static final PEF_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

.field private static final PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO:I = 0x1

.field private static final PHOTOMETRIC_INTERPRETATION_RGB:I = 0x2

.field private static final PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO:I = 0x0

.field private static final PHOTOMETRIC_INTERPRETATION_YCBCR:I = 0x6

.field private static final RAF_INFO_SIZE:I = 0xa0

.field private static final RAF_JPEG_LENGTH_VALUE_SIZE:I = 0x4

.field private static final RAF_OFFSET_TO_JPEG_IMAGE_OFFSET:I = 0x54

.field private static final RAF_SIGNATURE:Ljava/lang/String; = "FUJIFILMCCD-RAW"

.field private static final REDUCED_RESOLUTION_IMAGE:I = 0x1

.field private static final RW2_SIGNATURE:S = 0x55s

.field private static final SIGNATURE_CHECK_SIZE:I = 0x1388

.field private static final START_CODE:B = 0x2at

.field private static final TAG:Ljava/lang/String; = "ExifInterface"

.field public static final TAG_APERTURE_VALUE:Ljava/lang/String; = "ApertureValue"

.field public static final TAG_ARTIST:Ljava/lang/String; = "Artist"

.field public static final TAG_BITS_PER_SAMPLE:Ljava/lang/String; = "BitsPerSample"

.field public static final TAG_BRIGHTNESS_VALUE:Ljava/lang/String; = "BrightnessValue"

.field public static final TAG_CFA_PATTERN:Ljava/lang/String; = "CFAPattern"

.field public static final TAG_COLOR_SPACE:Ljava/lang/String; = "ColorSpace"

.field public static final TAG_COMPONENTS_CONFIGURATION:Ljava/lang/String; = "ComponentsConfiguration"

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:Ljava/lang/String; = "CompressedBitsPerPixel"

.field public static final TAG_COMPRESSION:Ljava/lang/String; = "Compression"

.field public static final TAG_CONTRAST:Ljava/lang/String; = "Contrast"

.field public static final TAG_COPYRIGHT:Ljava/lang/String; = "Copyright"

.field public static final TAG_CUSTOM_RENDERED:Ljava/lang/String; = "CustomRendered"

.field public static final TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final TAG_DATETIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field public static final TAG_DATETIME_ORIGINAL:Ljava/lang/String; = "DateTimeOriginal"

.field public static final TAG_DEFAULT_CROP_SIZE:Ljava/lang/String; = "DefaultCropSize"

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:Ljava/lang/String; = "DeviceSettingDescription"

.field public static final TAG_DIGITAL_ZOOM_RATIO:Ljava/lang/String; = "DigitalZoomRatio"

.field public static final TAG_DNG_VERSION:Ljava/lang/String; = "DNGVersion"

.field private static final TAG_EXIF_IFD_POINTER:Ljava/lang/String; = "ExifIFDPointer"

.field public static final TAG_EXIF_VERSION:Ljava/lang/String; = "ExifVersion"

.field public static final TAG_EXPOSURE_BIAS_VALUE:Ljava/lang/String; = "ExposureBiasValue"

.field public static final TAG_EXPOSURE_INDEX:Ljava/lang/String; = "ExposureIndex"

.field public static final TAG_EXPOSURE_MODE:Ljava/lang/String; = "ExposureMode"

.field public static final TAG_EXPOSURE_PROGRAM:Ljava/lang/String; = "ExposureProgram"

.field public static final TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final TAG_FILE_SOURCE:Ljava/lang/String; = "FileSource"

.field public static final TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final TAG_FLASHPIX_VERSION:Ljava/lang/String; = "FlashpixVersion"

.field public static final TAG_FLASH_ENERGY:Ljava/lang/String; = "FlashEnergy"

.field public static final TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final TAG_FOCAL_LENGTH_IN_35MM_FILM:Ljava/lang/String; = "FocalLengthIn35mmFilm"

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:Ljava/lang/String; = "FocalPlaneResolutionUnit"

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:Ljava/lang/String; = "FocalPlaneXResolution"

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:Ljava/lang/String; = "FocalPlaneYResolution"

.field public static final TAG_F_NUMBER:Ljava/lang/String; = "FNumber"

.field public static final TAG_GAIN_CONTROL:Ljava/lang/String; = "GainControl"

.field public static final TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final TAG_GPS_AREA_INFORMATION:Ljava/lang/String; = "GPSAreaInformation"

.field public static final TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final TAG_GPS_DEST_BEARING:Ljava/lang/String; = "GPSDestBearing"

.field public static final TAG_GPS_DEST_BEARING_REF:Ljava/lang/String; = "GPSDestBearingRef"

.field public static final TAG_GPS_DEST_DISTANCE:Ljava/lang/String; = "GPSDestDistance"

.field public static final TAG_GPS_DEST_DISTANCE_REF:Ljava/lang/String; = "GPSDestDistanceRef"

.field public static final TAG_GPS_DEST_LATITUDE:Ljava/lang/String; = "GPSDestLatitude"

.field public static final TAG_GPS_DEST_LATITUDE_REF:Ljava/lang/String; = "GPSDestLatitudeRef"

.field public static final TAG_GPS_DEST_LONGITUDE:Ljava/lang/String; = "GPSDestLongitude"

.field public static final TAG_GPS_DEST_LONGITUDE_REF:Ljava/lang/String; = "GPSDestLongitudeRef"

.field public static final TAG_GPS_DIFFERENTIAL:Ljava/lang/String; = "GPSDifferential"

.field public static final TAG_GPS_DOP:Ljava/lang/String; = "GPSDOP"

.field public static final TAG_GPS_IMG_DIRECTION:Ljava/lang/String; = "GPSImgDirection"

.field public static final TAG_GPS_IMG_DIRECTION_REF:Ljava/lang/String; = "GPSImgDirectionRef"

.field private static final TAG_GPS_INFO_IFD_POINTER:Ljava/lang/String; = "GPSInfoIFDPointer"

.field public static final TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final TAG_GPS_MAP_DATUM:Ljava/lang/String; = "GPSMapDatum"

.field public static final TAG_GPS_MEASURE_MODE:Ljava/lang/String; = "GPSMeasureMode"

.field public static final TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final TAG_GPS_SATELLITES:Ljava/lang/String; = "GPSSatellites"

.field public static final TAG_GPS_SPEED:Ljava/lang/String; = "GPSSpeed"

.field public static final TAG_GPS_SPEED_REF:Ljava/lang/String; = "GPSSpeedRef"

.field public static final TAG_GPS_STATUS:Ljava/lang/String; = "GPSStatus"

.field public static final TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final TAG_GPS_TRACK:Ljava/lang/String; = "GPSTrack"

.field public static final TAG_GPS_TRACK_REF:Ljava/lang/String; = "GPSTrackRef"

.field public static final TAG_GPS_VERSION_ID:Ljava/lang/String; = "GPSVersionID"

.field private static final TAG_HAS_THUMBNAIL:Ljava/lang/String; = "HasThumbnail"

.field public static final TAG_IMAGE_DESCRIPTION:Ljava/lang/String; = "ImageDescription"

.field public static final TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final TAG_IMAGE_UNIQUE_ID:Ljava/lang/String; = "ImageUniqueID"

.field public static final TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field private static final TAG_INTEROPERABILITY_IFD_POINTER:Ljava/lang/String; = "InteroperabilityIFDPointer"

.field public static final TAG_INTEROPERABILITY_INDEX:Ljava/lang/String; = "InteroperabilityIndex"

.field public static final TAG_ISO_SPEED_RATINGS:Ljava/lang/String; = "ISOSpeedRatings"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:Ljava/lang/String; = "JPEGInterchangeFormat"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Ljava/lang/String; = "JPEGInterchangeFormatLength"

.field public static final TAG_LIGHT_SOURCE:Ljava/lang/String; = "LightSource"

.field public static final TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final TAG_MAKER_NOTE:Ljava/lang/String; = "MakerNote"

.field public static final TAG_MAX_APERTURE_VALUE:Ljava/lang/String; = "MaxApertureValue"

.field public static final TAG_METERING_MODE:Ljava/lang/String; = "MeteringMode"

.field public static final TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final TAG_NEW_SUBFILE_TYPE:Ljava/lang/String; = "NewSubfileType"

.field public static final TAG_OECF:Ljava/lang/String; = "OECF"

.field public static final TAG_ORF_ASPECT_FRAME:Ljava/lang/String; = "AspectFrame"

.field private static final TAG_ORF_CAMERA_SETTINGS_IFD_POINTER:Ljava/lang/String; = "CameraSettingsIFDPointer"

.field private static final TAG_ORF_IMAGE_PROCESSING_IFD_POINTER:Ljava/lang/String; = "ImageProcessingIFDPointer"

.field public static final TAG_ORF_PREVIEW_IMAGE_LENGTH:Ljava/lang/String; = "PreviewImageLength"

.field public static final TAG_ORF_PREVIEW_IMAGE_START:Ljava/lang/String; = "PreviewImageStart"

.field public static final TAG_ORF_THUMBNAIL_IMAGE:Ljava/lang/String; = "ThumbnailImage"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:Ljava/lang/String; = "PhotometricInterpretation"

.field public static final TAG_PIXEL_X_DIMENSION:Ljava/lang/String; = "PixelXDimension"

.field public static final TAG_PIXEL_Y_DIMENSION:Ljava/lang/String; = "PixelYDimension"

.field public static final TAG_PLANAR_CONFIGURATION:Ljava/lang/String; = "PlanarConfiguration"

.field public static final TAG_PRIMARY_CHROMATICITIES:Ljava/lang/String; = "PrimaryChromaticities"

.field private static final TAG_RAF_IMAGE_SIZE:Lopenlight/co/lib/exif/ExifInterface$ExifTag;

.field public static final TAG_REFERENCE_BLACK_WHITE:Ljava/lang/String; = "ReferenceBlackWhite"

.field public static final TAG_RELATED_SOUND_FILE:Ljava/lang/String; = "RelatedSoundFile"

.field public static final TAG_RESOLUTION_UNIT:Ljava/lang/String; = "ResolutionUnit"

.field public static final TAG_ROWS_PER_STRIP:Ljava/lang/String; = "RowsPerStrip"

.field public static final TAG_RW2_ISO:Ljava/lang/String; = "ISO"

.field public static final TAG_RW2_JPG_FROM_RAW:Ljava/lang/String; = "JpgFromRaw"

.field public static final TAG_RW2_SENSOR_BOTTOM_BORDER:Ljava/lang/String; = "SensorBottomBorder"

.field public static final TAG_RW2_SENSOR_LEFT_BORDER:Ljava/lang/String; = "SensorLeftBorder"

.field public static final TAG_RW2_SENSOR_RIGHT_BORDER:Ljava/lang/String; = "SensorRightBorder"

.field public static final TAG_RW2_SENSOR_TOP_BORDER:Ljava/lang/String; = "SensorTopBorder"

.field public static final TAG_SAMPLES_PER_PIXEL:Ljava/lang/String; = "SamplesPerPixel"

.field public static final TAG_SATURATION:Ljava/lang/String; = "Saturation"

.field public static final TAG_SCENE_CAPTURE_TYPE:Ljava/lang/String; = "SceneCaptureType"

.field public static final TAG_SCENE_TYPE:Ljava/lang/String; = "SceneType"

.field public static final TAG_SENSING_METHOD:Ljava/lang/String; = "SensingMethod"

.field public static final TAG_SHARPNESS:Ljava/lang/String; = "Sharpness"

.field public static final TAG_SHUTTER_SPEED_VALUE:Ljava/lang/String; = "ShutterSpeedValue"

.field public static final TAG_SOFTWARE:Ljava/lang/String; = "Software"

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:Ljava/lang/String; = "SpatialFrequencyResponse"

.field public static final TAG_SPECTRAL_SENSITIVITY:Ljava/lang/String; = "SpectralSensitivity"

.field public static final TAG_STRIP_BYTE_COUNTS:Ljava/lang/String; = "StripByteCounts"

.field public static final TAG_STRIP_OFFSETS:Ljava/lang/String; = "StripOffsets"

.field public static final TAG_SUBFILE_TYPE:Ljava/lang/String; = "SubfileType"

.field public static final TAG_SUBJECT_AREA:Ljava/lang/String; = "SubjectArea"

.field public static final TAG_SUBJECT_DISTANCE:Ljava/lang/String; = "SubjectDistance"

.field public static final TAG_SUBJECT_DISTANCE_RANGE:Ljava/lang/String; = "SubjectDistanceRange"

.field public static final TAG_SUBJECT_LOCATION:Ljava/lang/String; = "SubjectLocation"

.field public static final TAG_SUBSEC_TIME:Ljava/lang/String; = "SubSecTime"

.field public static final TAG_SUBSEC_TIME_DIGITIZED:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_ORIGINAL:Ljava/lang/String; = "SubSecTimeOriginal"

.field private static final TAG_SUB_IFD_POINTER:Ljava/lang/String; = "SubIFDPointer"

.field private static final TAG_THUMBNAIL_DATA:Ljava/lang/String; = "ThumbnailData"

.field public static final TAG_THUMBNAIL_IMAGE_LENGTH:Ljava/lang/String; = "ThumbnailImageLength"

.field public static final TAG_THUMBNAIL_IMAGE_WIDTH:Ljava/lang/String; = "ThumbnailImageWidth"

.field private static final TAG_THUMBNAIL_LENGTH:Ljava/lang/String; = "ThumbnailLength"

.field private static final TAG_THUMBNAIL_OFFSET:Ljava/lang/String; = "ThumbnailOffset"

.field public static final TAG_TRANSFER_FUNCTION:Ljava/lang/String; = "TransferFunction"

.field public static final TAG_USER_COMMENT:Ljava/lang/String; = "UserComment"

.field public static final TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final TAG_WHITE_POINT:Ljava/lang/String; = "WhitePoint"

.field public static final TAG_X_RESOLUTION:Ljava/lang/String; = "XResolution"

.field public static final TAG_Y_CB_CR_COEFFICIENTS:Ljava/lang/String; = "YCbCrCoefficients"

.field public static final TAG_Y_CB_CR_POSITIONING:Ljava/lang/String; = "YCbCrPositioning"

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:Ljava/lang/String; = "YCbCrSubSampling"

.field public static final TAG_Y_RESOLUTION:Ljava/lang/String; = "YResolution"

.field public static final WHITEBALANCE_AUTO:I = 0x0

.field public static final WHITEBALANCE_MANUAL:I = 0x1

.field private static sDateFormatter:Ljava/text/SimpleDateFormat;

.field private static final sExifPointerTagMap:Ljava/util/HashMap;

.field private static final sExifTagMapsForReading:[Ljava/util/HashMap;

.field private static final sExifTagMapsForWriting:[Ljava/util/HashMap;

.field private static sFormatter:Ljava/text/SimpleDateFormat;

.field private static final sGpsTimestampPattern:Ljava/util/regex/Pattern;

.field private static sLocalFormatter:Ljava/text/SimpleDateFormat;

.field private static final sNonZeroTimePattern:Ljava/util/regex/Pattern;

.field private static final sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final mAttributes:[Ljava/util/HashMap;

.field private mExifByteOrder:Ljava/nio/ByteOrder;

.field private mExifOffset:I

.field private final mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z

.field private mIsSupportedFile:Z

.field private mMimeType:I

.field private mOrfMakerNoteOffset:I

.field private mOrfThumbnailLength:I

.field private mOrfThumbnailOffset:I

.field private mRw2JpgFromRawOffset:I

.field private mThumbnailBytes:[B

.field private mThumbnailCompression:I

.field private mThumbnailLength:I

.field private mThumbnailOffset:I


# direct methods
.method static constructor <clinit>()V
    .registers 27

    const/4 v0, 0x3

    .line 408
    new-array v1, v0, [B

    fill-array-data v1, :array_b44

    sput-object v1, Lopenlight/co/lib/exif/ExifInterface;->JPEG_SIGNATURE:[B

    const/4 v1, 0x6

    .line 420
    new-array v2, v1, [B

    fill-array-data v2, :array_b4a

    sput-object v2, Lopenlight/co/lib/exif/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    const/16 v2, 0xa

    .line 422
    new-array v3, v2, [B

    fill-array-data v3, :array_b52

    sput-object v3, Lopenlight/co/lib/exif/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    const-string v4, ""

    const-string v5, "BYTE"

    const-string v6, "STRING"

    const-string v7, "USHORT"

    const-string v8, "ULONG"

    const-string v9, "URATIONAL"

    const-string v10, "SBYTE"

    const-string v11, "UNDEFINED"

    const-string v12, "SSHORT"

    const-string v13, "SLONG"

    const-string v14, "SRATIONAL"

    const-string v15, "SINGLE"

    const-string v16, "DOUBLE"

    .line 471
    filled-new-array/range {v4 .. v16}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lopenlight/co/lib/exif/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    const/16 v3, 0xe

    .line 476
    new-array v4, v3, [I

    fill-array-data v4, :array_b5c

    sput-object v4, Lopenlight/co/lib/exif/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v4, 0x8

    .line 479
    new-array v5, v4, [B

    fill-array-data v5, :array_b7c

    sput-object v5, Lopenlight/co/lib/exif/ExifInterface;->EXIF_ASCII_PREFIX:[B

    .line 502
    new-array v5, v0, [I

    fill-array-data v5, :array_b84

    sput-object v5, Lopenlight/co/lib/exif/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    const/4 v5, 0x1

    .line 503
    new-array v6, v5, [I

    const/4 v7, 0x0

    const/4 v8, 0x4

    aput v8, v6, v7

    sput-object v6, Lopenlight/co/lib/exif/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_1:[I

    .line 504
    new-array v6, v5, [I

    aput v4, v6, v7

    sput-object v6, Lopenlight/co/lib/exif/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    const/16 v6, 0x29

    .line 928
    new-array v6, v6, [Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    new-instance v9, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v10, "NewSubfileType"

    const/4 v11, 0x0

    const/16 v12, 0xfe

    invoke-direct {v9, v10, v12, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v9, v6, v7

    new-instance v9, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v10, "SubfileType"

    const/16 v12, 0xff

    invoke-direct {v9, v10, v12, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v9, v6, v5

    new-instance v9, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v14, "ImageWidth"

    const/16 v15, 0x100

    const/16 v16, 0x3

    const/16 v17, 0x4

    const/16 v18, 0x0

    move-object v13, v9

    invoke-direct/range {v13 .. v18}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILopenlight/co/lib/exif/ExifInterface$1;)V

    const/4 v10, 0x2

    aput-object v9, v6, v10

    new-instance v9, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v13, "ImageLength"

    const/16 v14, 0x101

    const/4 v15, 0x3

    const/16 v16, 0x4

    const/16 v17, 0x0

    move-object v12, v9

    invoke-direct/range {v12 .. v17}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v9, v6, v0

    new-instance v9, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v12, "BitsPerSample"

    const/16 v13, 0x102

    invoke-direct {v9, v12, v13, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v9, v6, v8

    new-instance v9, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v12, "Compression"

    const/16 v13, 0x103

    invoke-direct {v9, v12, v13, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/4 v12, 0x5

    aput-object v9, v6, v12

    new-instance v9, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v13, "PhotometricInterpretation"

    const/16 v14, 0x106

    invoke-direct {v9, v13, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v9, v6, v1

    new-instance v9, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v13, "ImageDescription"

    const/16 v14, 0x10e

    invoke-direct {v9, v13, v14, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/4 v13, 0x7

    aput-object v9, v6, v13

    new-instance v9, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v14, "Make"

    const/16 v15, 0x10f

    invoke-direct {v9, v14, v15, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v9, v6, v4

    new-instance v9, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v14, "Model"

    const/16 v15, 0x110

    invoke-direct {v9, v14, v15, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v14, 0x9

    aput-object v9, v6, v14

    new-instance v9, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v16, "StripOffsets"

    const/16 v17, 0x111

    const/16 v18, 0x3

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object v15, v9

    invoke-direct/range {v15 .. v20}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v9, v6, v2

    new-instance v9, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v15, "Orientation"

    const/16 v2, 0x112

    invoke-direct {v9, v15, v2, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v2, 0xb

    aput-object v9, v6, v2

    new-instance v9, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v15, "SamplesPerPixel"

    const/16 v2, 0x115

    invoke-direct {v9, v15, v2, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v2, 0xc

    aput-object v9, v6, v2

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v16, "RowsPerStrip"

    const/16 v17, 0x116

    move-object v15, v2

    invoke-direct/range {v15 .. v20}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v9, 0xd

    aput-object v2, v6, v9

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v16, "StripByteCounts"

    const/16 v17, 0x117

    move-object v15, v2

    invoke-direct/range {v15 .. v20}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v2, v6, v3

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v9, "XResolution"

    const/16 v15, 0x11a

    invoke-direct {v2, v9, v15, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v9, 0xf

    aput-object v2, v6, v9

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v9, "YResolution"

    const/16 v15, 0x11b

    invoke-direct {v2, v9, v15, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v9, 0x10

    aput-object v2, v6, v9

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v9, "PlanarConfiguration"

    const/16 v15, 0x11c

    invoke-direct {v2, v9, v15, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v9, 0x11

    aput-object v2, v6, v9

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v9, "ResolutionUnit"

    const/16 v15, 0x128

    invoke-direct {v2, v9, v15, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v9, 0x12

    aput-object v2, v6, v9

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v9, "TransferFunction"

    const/16 v15, 0x12d

    invoke-direct {v2, v9, v15, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v9, 0x13

    aput-object v2, v6, v9

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v9, "Software"

    const/16 v15, 0x131

    invoke-direct {v2, v9, v15, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v9, 0x14

    aput-object v2, v6, v9

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v9, "DateTime"

    const/16 v15, 0x132

    invoke-direct {v2, v9, v15, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v9, 0x15

    aput-object v2, v6, v9

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v9, "Artist"

    const/16 v15, 0x13b

    invoke-direct {v2, v9, v15, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v9, 0x16

    aput-object v2, v6, v9

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v9, "WhitePoint"

    const/16 v15, 0x13e

    invoke-direct {v2, v9, v15, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v9, 0x17

    aput-object v2, v6, v9

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v15, "PrimaryChromaticities"

    const/16 v3, 0x13f

    invoke-direct {v2, v15, v3, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v3, 0x18

    aput-object v2, v6, v3

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v3, "SubIFDPointer"

    const/16 v15, 0x14a

    invoke-direct {v2, v3, v15, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v3, 0x19

    aput-object v2, v6, v3

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v3, "JPEGInterchangeFormat"

    const/16 v15, 0x201

    invoke-direct {v2, v3, v15, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v3, 0x1a

    aput-object v2, v6, v3

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v3, "JPEGInterchangeFormatLength"

    const/16 v15, 0x202

    invoke-direct {v2, v3, v15, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v3, 0x1b

    aput-object v2, v6, v3

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v3, "YCbCrCoefficients"

    const/16 v15, 0x211

    invoke-direct {v2, v3, v15, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v3, 0x1c

    aput-object v2, v6, v3

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v3, "YCbCrSubSampling"

    const/16 v15, 0x212

    invoke-direct {v2, v3, v15, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v3, 0x1d

    aput-object v2, v6, v3

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v3, "YCbCrPositioning"

    const/16 v15, 0x213

    invoke-direct {v2, v3, v15, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v3, 0x1e

    aput-object v2, v6, v3

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v3, "ReferenceBlackWhite"

    const/16 v15, 0x214

    invoke-direct {v2, v3, v15, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v3, 0x1f

    aput-object v2, v6, v3

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v3, "Copyright"

    const v15, 0x8298

    invoke-direct {v2, v3, v15, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v3, 0x20

    aput-object v2, v6, v3

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v3, "ExifIFDPointer"

    const v15, 0x8769

    invoke-direct {v2, v3, v15, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v3, 0x21

    aput-object v2, v6, v3

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v3, "GPSInfoIFDPointer"

    const v15, 0x8825

    invoke-direct {v2, v3, v15, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v3, 0x22

    aput-object v2, v6, v3

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v3, "SensorTopBorder"

    invoke-direct {v2, v3, v8, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v3, 0x23

    aput-object v2, v6, v3

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v3, "SensorLeftBorder"

    invoke-direct {v2, v3, v12, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v3, 0x24

    aput-object v2, v6, v3

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v3, "SensorBottomBorder"

    invoke-direct {v2, v3, v1, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v3, 0x25

    aput-object v2, v6, v3

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v3, "SensorRightBorder"

    invoke-direct {v2, v3, v13, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v3, 0x26

    aput-object v2, v6, v3

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v3, "ISO"

    invoke-direct {v2, v3, v9, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v3, 0x27

    aput-object v2, v6, v3

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v3, "JpgFromRaw"

    const/16 v15, 0x2e

    invoke-direct {v2, v3, v15, v13, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v3, 0x28

    aput-object v2, v6, v3

    sput-object v6, Lopenlight/co/lib/exif/ExifInterface;->IFD_TIFF_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const/16 v2, 0x3b

    .line 977
    new-array v2, v2, [Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "ExposureTime"

    const v15, 0x829a

    invoke-direct {v3, v6, v15, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v7

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "FNumber"

    const v15, 0x829d

    invoke-direct {v3, v6, v15, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v5

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "ExposureProgram"

    const v15, 0x8822

    invoke-direct {v3, v6, v15, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v10

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "SpectralSensitivity"

    const v15, 0x8824

    invoke-direct {v3, v6, v15, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v0

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "ISOSpeedRatings"

    const v15, 0x8827

    invoke-direct {v3, v6, v15, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v8

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "OECF"

    const v15, 0x8828

    invoke-direct {v3, v6, v15, v13, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v12

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "ExifVersion"

    const v15, 0x9000

    invoke-direct {v3, v6, v15, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v1

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "DateTimeOriginal"

    const v15, 0x9003

    invoke-direct {v3, v6, v15, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v13

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "DateTimeDigitized"

    const v15, 0x9004

    invoke-direct {v3, v6, v15, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v4

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "ComponentsConfiguration"

    const v15, 0x9101

    invoke-direct {v3, v6, v15, v13, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v14

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "CompressedBitsPerPixel"

    const v15, 0x9102

    invoke-direct {v3, v6, v15, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0xa

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v15, "ShutterSpeedValue"

    const v14, 0x9201

    invoke-direct {v3, v15, v14, v6, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v14, 0xb

    aput-object v3, v2, v14

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v14, "ApertureValue"

    const v15, 0x9202

    invoke-direct {v3, v14, v15, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v14, 0xc

    aput-object v3, v2, v14

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v14, "BrightnessValue"

    const v15, 0x9203

    invoke-direct {v3, v14, v15, v6, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v14, 0xd

    aput-object v3, v2, v14

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v14, "ExposureBiasValue"

    const v15, 0x9204

    invoke-direct {v3, v14, v15, v6, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0xe

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "MaxApertureValue"

    const v14, 0x9205

    invoke-direct {v3, v6, v14, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0xf

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "SubjectDistance"

    const v14, 0x9206

    invoke-direct {v3, v6, v14, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x10

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "MeteringMode"

    const v14, 0x9207

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x11

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "LightSource"

    const v14, 0x9208

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x12

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "Flash"

    const v14, 0x9209

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x13

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "FocalLength"

    const v14, 0x920a

    invoke-direct {v3, v6, v14, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x14

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "SubjectArea"

    const v14, 0x9214

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x15

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "MakerNote"

    const v14, 0x927c

    invoke-direct {v3, v6, v14, v13, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x16

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "UserComment"

    const v14, 0x9286

    invoke-direct {v3, v6, v14, v13, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v9

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "SubSecTime"

    const v14, 0x9290

    invoke-direct {v3, v6, v14, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x18

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "SubSecTimeOriginal"

    const v14, 0x9291

    invoke-direct {v3, v6, v14, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x19

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "SubSecTimeDigitized"

    const v14, 0x9292

    invoke-direct {v3, v6, v14, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x1a

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "FlashpixVersion"

    const v14, 0xa000

    invoke-direct {v3, v6, v14, v13, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x1b

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "ColorSpace"

    const v14, 0xa001

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x1c

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v15, "PixelXDimension"

    const v16, 0xa002

    const/16 v17, 0x3

    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object v14, v3

    invoke-direct/range {v14 .. v19}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x1d

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v15, "PixelYDimension"

    const v16, 0xa003

    move-object v14, v3

    invoke-direct/range {v14 .. v19}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x1e

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "RelatedSoundFile"

    const v14, 0xa004

    invoke-direct {v3, v6, v14, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x1f

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "InteroperabilityIFDPointer"

    const v14, 0xa005

    invoke-direct {v3, v6, v14, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x20

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "FlashEnergy"

    const v14, 0xa20b

    invoke-direct {v3, v6, v14, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x21

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "SpatialFrequencyResponse"

    const v14, 0xa20c

    invoke-direct {v3, v6, v14, v13, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x22

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "FocalPlaneXResolution"

    const v14, 0xa20e

    invoke-direct {v3, v6, v14, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x23

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "FocalPlaneYResolution"

    const v14, 0xa20f

    invoke-direct {v3, v6, v14, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x24

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "FocalPlaneResolutionUnit"

    const v14, 0xa210

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x25

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "SubjectLocation"

    const v14, 0xa214

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x26

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "ExposureIndex"

    const v14, 0xa215

    invoke-direct {v3, v6, v14, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x27

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "SensingMethod"

    const v14, 0xa217

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x28

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "FileSource"

    const v14, 0xa300

    invoke-direct {v3, v6, v14, v13, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x29

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "SceneType"

    const v14, 0xa301

    invoke-direct {v3, v6, v14, v13, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x2a

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "CFAPattern"

    const v14, 0xa302

    invoke-direct {v3, v6, v14, v13, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x2b

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "CustomRendered"

    const v14, 0xa401

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x2c

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "ExposureMode"

    const v14, 0xa402

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x2d

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "WhiteBalance"

    const v14, 0xa403

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x2e

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "DigitalZoomRatio"

    const v14, 0xa404

    invoke-direct {v3, v6, v14, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x2f

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "FocalLengthIn35mmFilm"

    const v14, 0xa405

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x30

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "SceneCaptureType"

    const v14, 0xa406

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x31

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GainControl"

    const v14, 0xa407

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x32

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "Contrast"

    const v14, 0xa408

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x33

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "Saturation"

    const v14, 0xa409

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x34

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "Sharpness"

    const v14, 0xa40a

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x35

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "DeviceSettingDescription"

    const v14, 0xa40b

    invoke-direct {v3, v6, v14, v13, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x36

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "SubjectDistanceRange"

    const v14, 0xa40c

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x37

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "ImageUniqueID"

    const v14, 0xa420

    invoke-direct {v3, v6, v14, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x38

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "DNGVersion"

    const v14, 0xc612

    invoke-direct {v3, v6, v14, v5, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x39

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v15, "DefaultCropSize"

    const v16, 0xc620

    move-object v14, v3

    invoke-direct/range {v14 .. v19}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x3a

    aput-object v3, v2, v6

    sput-object v2, Lopenlight/co/lib/exif/ExifInterface;->IFD_EXIF_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const/16 v2, 0x1f

    .line 1040
    new-array v2, v2, [Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSVersionID"

    invoke-direct {v3, v6, v7, v5, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v7

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSLatitudeRef"

    invoke-direct {v3, v6, v5, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v5

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSLatitude"

    invoke-direct {v3, v6, v10, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v10

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSLongitudeRef"

    invoke-direct {v3, v6, v0, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v0

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSLongitude"

    invoke-direct {v3, v6, v8, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v8

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSAltitudeRef"

    invoke-direct {v3, v6, v12, v5, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v12

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSAltitude"

    invoke-direct {v3, v6, v1, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v1

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSTimeStamp"

    invoke-direct {v3, v6, v13, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v13

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSSatellites"

    invoke-direct {v3, v6, v4, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v4

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSStatus"

    const/16 v14, 0x9

    invoke-direct {v3, v6, v14, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v14

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSMeasureMode"

    const/16 v14, 0xa

    invoke-direct {v3, v6, v14, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v14

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSDOP"

    const/16 v14, 0xb

    invoke-direct {v3, v6, v14, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v14

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSSpeedRef"

    const/16 v14, 0xc

    invoke-direct {v3, v6, v14, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0xc

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSSpeed"

    const/16 v14, 0xd

    invoke-direct {v3, v6, v14, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0xd

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSTrackRef"

    const/16 v14, 0xe

    invoke-direct {v3, v6, v14, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v14

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSTrack"

    const/16 v14, 0xf

    invoke-direct {v3, v6, v14, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0xf

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSImgDirectionRef"

    const/16 v14, 0x10

    invoke-direct {v3, v6, v14, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x10

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSImgDirection"

    const/16 v14, 0x11

    invoke-direct {v3, v6, v14, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x11

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSMapDatum"

    const/16 v14, 0x12

    invoke-direct {v3, v6, v14, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x12

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSDestLatitudeRef"

    const/16 v14, 0x13

    invoke-direct {v3, v6, v14, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x13

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSDestLatitude"

    const/16 v14, 0x14

    invoke-direct {v3, v6, v14, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x14

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSDestLongitudeRef"

    const/16 v14, 0x15

    invoke-direct {v3, v6, v14, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x15

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSDestLongitude"

    const/16 v14, 0x16

    invoke-direct {v3, v6, v14, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x16

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSDestBearingRef"

    invoke-direct {v3, v6, v9, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v9

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSDestBearing"

    const/16 v14, 0x18

    invoke-direct {v3, v6, v14, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x18

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSDestDistanceRef"

    const/16 v14, 0x19

    invoke-direct {v3, v6, v14, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x19

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSDestDistance"

    const/16 v14, 0x1a

    invoke-direct {v3, v6, v14, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x1a

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSProcessingMethod"

    const/16 v14, 0x1b

    invoke-direct {v3, v6, v14, v13, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x1b

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSAreaInformation"

    const/16 v14, 0x1c

    invoke-direct {v3, v6, v14, v13, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x1c

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSDateStamp"

    const/16 v14, 0x1d

    invoke-direct {v3, v6, v14, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x1d

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSDifferential"

    const/16 v14, 0x1e

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x1e

    aput-object v3, v2, v6

    sput-object v2, Lopenlight/co/lib/exif/ExifInterface;->IFD_GPS_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    .line 1074
    new-array v2, v5, [Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "InteroperabilityIndex"

    invoke-direct {v3, v6, v5, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v7

    sput-object v2, Lopenlight/co/lib/exif/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const/16 v2, 0x25

    .line 1078
    new-array v2, v2, [Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "NewSubfileType"

    const/16 v14, 0xfe

    invoke-direct {v3, v6, v14, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v7

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "SubfileType"

    const/16 v14, 0xff

    invoke-direct {v3, v6, v14, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v5

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v16, "ThumbnailImageWidth"

    const/16 v17, 0x100

    const/16 v18, 0x3

    const/16 v19, 0x4

    move-object v15, v3

    invoke-direct/range {v15 .. v20}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v10

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v22, "ThumbnailImageLength"

    const/16 v23, 0x101

    const/16 v24, 0x3

    const/16 v25, 0x4

    const/16 v26, 0x0

    move-object/from16 v21, v3

    invoke-direct/range {v21 .. v26}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v0

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "BitsPerSample"

    const/16 v14, 0x102

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v8

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "Compression"

    const/16 v14, 0x103

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v12

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "PhotometricInterpretation"

    const/16 v14, 0x106

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v1

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "ImageDescription"

    const/16 v14, 0x10e

    invoke-direct {v3, v6, v14, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v13

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "Make"

    const/16 v14, 0x10f

    invoke-direct {v3, v6, v14, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v4

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "Model"

    const/16 v14, 0x110

    invoke-direct {v3, v6, v14, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x9

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v15, "StripOffsets"

    const/16 v16, 0x111

    const/16 v17, 0x3

    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object v14, v3

    invoke-direct/range {v14 .. v19}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0xa

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "Orientation"

    const/16 v14, 0x112

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0xb

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "SamplesPerPixel"

    const/16 v14, 0x115

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0xc

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v15, "RowsPerStrip"

    const/16 v16, 0x116

    move-object v14, v3

    invoke-direct/range {v14 .. v19}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0xd

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v15, "StripByteCounts"

    const/16 v16, 0x117

    move-object v14, v3

    invoke-direct/range {v14 .. v19}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0xe

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "XResolution"

    const/16 v14, 0x11a

    invoke-direct {v3, v6, v14, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0xf

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "YResolution"

    const/16 v14, 0x11b

    invoke-direct {v3, v6, v14, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x10

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "PlanarConfiguration"

    const/16 v14, 0x11c

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x11

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "ResolutionUnit"

    const/16 v14, 0x128

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x12

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "TransferFunction"

    const/16 v14, 0x12d

    invoke-direct {v3, v6, v14, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x13

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "Software"

    const/16 v14, 0x131

    invoke-direct {v3, v6, v14, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x14

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "DateTime"

    const/16 v14, 0x132

    invoke-direct {v3, v6, v14, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x15

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "Artist"

    const/16 v14, 0x13b

    invoke-direct {v3, v6, v14, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x16

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "WhitePoint"

    const/16 v14, 0x13e

    invoke-direct {v3, v6, v14, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v9

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "PrimaryChromaticities"

    const/16 v9, 0x13f

    invoke-direct {v3, v6, v9, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x18

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "SubIFDPointer"

    const/16 v9, 0x14a

    invoke-direct {v3, v6, v9, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x19

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "JPEGInterchangeFormat"

    const/16 v9, 0x201

    invoke-direct {v3, v6, v9, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x1a

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "JPEGInterchangeFormatLength"

    const/16 v9, 0x202

    invoke-direct {v3, v6, v9, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x1b

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "YCbCrCoefficients"

    const/16 v9, 0x211

    invoke-direct {v3, v6, v9, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x1c

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "YCbCrSubSampling"

    const/16 v9, 0x212

    invoke-direct {v3, v6, v9, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x1d

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "YCbCrPositioning"

    const/16 v9, 0x213

    invoke-direct {v3, v6, v9, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x1e

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "ReferenceBlackWhite"

    const/16 v9, 0x214

    invoke-direct {v3, v6, v9, v12, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x1f

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "Copyright"

    const v9, 0x8298

    invoke-direct {v3, v6, v9, v10, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x20

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "ExifIFDPointer"

    const v9, 0x8769

    invoke-direct {v3, v6, v9, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x21

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "GPSInfoIFDPointer"

    const v9, 0x8825

    invoke-direct {v3, v6, v9, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x22

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "DNGVersion"

    const v9, 0xc612

    invoke-direct {v3, v6, v9, v5, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x23

    aput-object v3, v2, v6

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v15, "DefaultCropSize"

    const v16, 0xc620

    move-object v14, v3

    invoke-direct/range {v14 .. v19}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILopenlight/co/lib/exif/ExifInterface$1;)V

    const/16 v6, 0x24

    aput-object v3, v2, v6

    sput-object v2, Lopenlight/co/lib/exif/ExifInterface;->IFD_THUMBNAIL_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    .line 1121
    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v3, "StripOffsets"

    const/16 v6, 0x111

    invoke-direct {v2, v3, v6, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    sput-object v2, Lopenlight/co/lib/exif/ExifInterface;->TAG_RAF_IMAGE_SIZE:Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    .line 1125
    new-array v2, v0, [Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "ThumbnailImage"

    const/16 v9, 0x100

    invoke-direct {v3, v6, v9, v13, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v7

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "CameraSettingsIFDPointer"

    const/16 v9, 0x2020

    invoke-direct {v3, v6, v9, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v5

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "ImageProcessingIFDPointer"

    const/16 v9, 0x2040

    invoke-direct {v3, v6, v9, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v10

    sput-object v2, Lopenlight/co/lib/exif/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    .line 1130
    new-array v2, v10, [Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "PreviewImageStart"

    const/16 v9, 0x101

    invoke-direct {v3, v6, v9, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v7

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "PreviewImageLength"

    const/16 v9, 0x102

    invoke-direct {v3, v6, v9, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v5

    sput-object v2, Lopenlight/co/lib/exif/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    .line 1134
    new-array v2, v5, [Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "AspectFrame"

    const/16 v9, 0x1113

    invoke-direct {v3, v6, v9, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v7

    sput-object v2, Lopenlight/co/lib/exif/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    .line 1138
    new-array v2, v5, [Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v6, "ColorSpace"

    const/16 v9, 0x37

    invoke-direct {v3, v6, v9, v0, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v3, v2, v7

    sput-object v2, Lopenlight/co/lib/exif/ExifInterface;->PEF_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const/16 v2, 0xa

    .line 1165
    new-array v2, v2, [[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    sget-object v3, Lopenlight/co/lib/exif/ExifInterface;->IFD_TIFF_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    aput-object v3, v2, v7

    sget-object v3, Lopenlight/co/lib/exif/ExifInterface;->IFD_EXIF_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    aput-object v3, v2, v5

    sget-object v3, Lopenlight/co/lib/exif/ExifInterface;->IFD_GPS_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    aput-object v3, v2, v10

    sget-object v3, Lopenlight/co/lib/exif/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    aput-object v3, v2, v0

    sget-object v3, Lopenlight/co/lib/exif/ExifInterface;->IFD_THUMBNAIL_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    aput-object v3, v2, v8

    sget-object v3, Lopenlight/co/lib/exif/ExifInterface;->IFD_TIFF_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    aput-object v3, v2, v12

    sget-object v3, Lopenlight/co/lib/exif/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    aput-object v3, v2, v1

    sget-object v3, Lopenlight/co/lib/exif/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    aput-object v3, v2, v13

    sget-object v3, Lopenlight/co/lib/exif/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    aput-object v3, v2, v4

    sget-object v3, Lopenlight/co/lib/exif/ExifInterface;->PEF_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const/16 v6, 0x9

    aput-object v3, v2, v6

    sput-object v2, Lopenlight/co/lib/exif/ExifInterface;->EXIF_TAGS:[[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    .line 1171
    new-array v1, v1, [Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v3, "SubIFDPointer"

    const/16 v6, 0x14a

    invoke-direct {v2, v3, v6, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v2, v1, v7

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v3, "ExifIFDPointer"

    const v6, 0x8769

    invoke-direct {v2, v3, v6, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v2, v1, v5

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v3, "GPSInfoIFDPointer"

    const v6, 0x8825

    invoke-direct {v2, v3, v6, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v2, v1, v10

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v3, "InteroperabilityIFDPointer"

    const v6, 0xa005

    invoke-direct {v2, v3, v6, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v2, v1, v0

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v3, "CameraSettingsIFDPointer"

    const/16 v6, 0x2020

    invoke-direct {v2, v3, v6, v5, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v2, v1, v8

    new-instance v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v3, "ImageProcessingIFDPointer"

    const/16 v6, 0x2040

    invoke-direct {v2, v3, v6, v5, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v2, v1, v12

    sput-object v1, Lopenlight/co/lib/exif/ExifInterface;->EXIF_POINTER_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    .line 1181
    new-instance v1, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v2, "JPEGInterchangeFormat"

    const/16 v3, 0x201

    invoke-direct {v1, v2, v3, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    sput-object v1, Lopenlight/co/lib/exif/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    .line 1183
    new-instance v1, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-string v2, "JPEGInterchangeFormatLength"

    const/16 v3, 0x202

    invoke-direct {v1, v2, v3, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILopenlight/co/lib/exif/ExifInterface$1;)V

    sput-object v1, Lopenlight/co/lib/exif/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    .line 1187
    sget-object v1, Lopenlight/co/lib/exif/ExifInterface;->EXIF_TAGS:[[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    array-length v1, v1

    new-array v1, v1, [Ljava/util/HashMap;

    sput-object v1, Lopenlight/co/lib/exif/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 1189
    sget-object v1, Lopenlight/co/lib/exif/ExifInterface;->EXIF_TAGS:[[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    array-length v1, v1

    new-array v1, v1, [Ljava/util/HashMap;

    sput-object v1, Lopenlight/co/lib/exif/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 1190
    new-instance v1, Ljava/util/HashSet;

    const-string v2, "FNumber"

    const-string v3, "DigitalZoomRatio"

    const-string v6, "ExposureTime"

    const-string v9, "SubjectDistance"

    const-string v11, "GPSTimeStamp"

    filled-new-array {v2, v3, v6, v9, v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lopenlight/co/lib/exif/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 1194
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lopenlight/co/lib/exif/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    const-string v1, "US-ASCII"

    .line 1201
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Lopenlight/co/lib/exif/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    const-string v1, "Exif\u0000\u0000"

    .line 1203
    sget-object v2, Lopenlight/co/lib/exif/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lopenlight/co/lib/exif/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 1242
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lopenlight/co/lib/exif/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 1243
    sget-object v1, Lopenlight/co/lib/exif/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1245
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lopenlight/co/lib/exif/ExifInterface;->sLocalFormatter:Ljava/text/SimpleDateFormat;

    .line 1246
    sget-object v1, Lopenlight/co/lib/exif/ExifInterface;->sLocalFormatter:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1248
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy:MM:dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lopenlight/co/lib/exif/ExifInterface;->sDateFormatter:Ljava/text/SimpleDateFormat;

    .line 1249
    sget-object v1, Lopenlight/co/lib/exif/ExifInterface;->sDateFormatter:Ljava/text/SimpleDateFormat;

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    move v1, v7

    .line 1252
    :goto_a83
    sget-object v2, Lopenlight/co/lib/exif/ExifInterface;->EXIF_TAGS:[[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v1, v2, :cond_ac0

    .line 1253
    sget-object v2, Lopenlight/co/lib/exif/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v1

    .line 1254
    sget-object v2, Lopenlight/co/lib/exif/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v1

    .line 1255
    sget-object v2, Lopenlight/co/lib/exif/ExifInterface;->EXIF_TAGS:[[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    aget-object v2, v2, v1

    array-length v3, v2

    move v6, v7

    :goto_aa0
    if-ge v6, v3, :cond_abd

    aget-object v9, v2, v6

    .line 1256
    sget-object v11, Lopenlight/co/lib/exif/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v11, v11, v1

    iget v14, v9, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->number:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    sget-object v11, Lopenlight/co/lib/exif/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v11, v11, v1

    iget-object v14, v9, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v11, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_aa0

    :cond_abd
    add-int/lit8 v1, v1, 0x1

    goto :goto_a83

    .line 1262
    :cond_ac0
    sget-object v1, Lopenlight/co/lib/exif/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v2, Lopenlight/co/lib/exif/ExifInterface;->EXIF_POINTER_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    aget-object v2, v2, v7

    iget v2, v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    sget-object v1, Lopenlight/co/lib/exif/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v2, Lopenlight/co/lib/exif/ExifInterface;->EXIF_POINTER_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    aget-object v2, v2, v5

    iget v2, v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    sget-object v1, Lopenlight/co/lib/exif/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v2, Lopenlight/co/lib/exif/ExifInterface;->EXIF_POINTER_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    aget-object v2, v2, v10

    iget v2, v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    sget-object v1, Lopenlight/co/lib/exif/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v2, Lopenlight/co/lib/exif/ExifInterface;->EXIF_POINTER_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    aget-object v2, v2, v0

    iget v2, v2, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    sget-object v0, Lopenlight/co/lib/exif/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Lopenlight/co/lib/exif/ExifInterface;->EXIF_POINTER_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    aget-object v1, v1, v8

    iget v1, v1, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    sget-object v0, Lopenlight/co/lib/exif/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Lopenlight/co/lib/exif/ExifInterface;->EXIF_POINTER_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    aget-object v1, v1, v12

    iget v1, v1, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ".*[1-9].*"

    .line 1289
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lopenlight/co/lib/exif/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    .line 1292
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lopenlight/co/lib/exif/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_b44
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_b4a
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_b52
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_b5c
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_b7c
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_b84
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1273
    sget-object v0, Lopenlight/co/lib/exif/ExifInterface;->EXIF_TAGS:[[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1274
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_23

    const/4 v0, 0x0

    .line 1322
    iput-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mFilename:Ljava/lang/String;

    .line 1323
    instance-of v1, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v1, :cond_1d

    .line 1324
    move-object v0, p1

    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    goto :goto_1f

    .line 1326
    :cond_1d
    iput-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1328
    :goto_1f
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V

    return-void

    .line 1320
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "inputStream cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1273
    sget-object v0, Lopenlight/co/lib/exif/ExifInterface;->EXIF_TAGS:[[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 1274
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    if-eqz p1, :cond_29

    const/4 v0, 0x0

    .line 1302
    iput-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 1303
    iput-object p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mFilename:Ljava/lang/String;

    .line 1305
    :try_start_15
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_24

    .line 1306
    :try_start_1a
    invoke-direct {p0, v1}, Lopenlight/co/lib/exif/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_21

    .line 1308
    invoke-static {v1}, Lopenlight/co/lib/exif/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_21
    move-exception p0

    move-object v0, v1

    goto :goto_25

    :catchall_24
    move-exception p0

    :goto_25
    invoke-static {v0}, Lopenlight/co/lib/exif/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 1309
    throw p0

    .line 1299
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "filename cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000()[I
    .registers 1

    .line 68
    sget-object v0, Lopenlight/co/lib/exif/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    return-object v0
.end method

.method static synthetic access$100()Ljava/nio/charset/Charset;
    .registers 1

    .line 68
    sget-object v0, Lopenlight/co/lib/exif/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .registers 1

    .line 68
    sget-object v0, Lopenlight/co/lib/exif/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()[B
    .registers 1

    .line 68
    sget-object v0, Lopenlight/co/lib/exif/ExifInterface;->EXIF_ASCII_PREFIX:[B

    return-object v0
.end method

.method private addDefaultValuesForCompatibility()V
    .registers 7

    const-string v0, "DateTime"

    .line 2644
    invoke-virtual {p0, v0}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    const-string v0, "DateTimeOriginal"

    .line 2646
    invoke-virtual {p0, v0}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 2648
    iget-object v2, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const-string v3, "DateTime"

    .line 2649
    invoke-static {v0}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 2648
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    const-string v0, "ImageWidth"

    .line 2654
    invoke-virtual {p0, v0}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    if-nez v0, :cond_37

    .line 2655
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    const-string v4, "ImageWidth"

    iget-object v5, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2656
    invoke-static {v2, v3, v5}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 2655
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    const-string v0, "ImageLength"

    .line 2658
    invoke-virtual {p0, v0}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4e

    .line 2659
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    const-string v4, "ImageLength"

    iget-object v5, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2660
    invoke-static {v2, v3, v5}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 2659
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    const-string v0, "Orientation"

    .line 2662
    invoke-virtual {p0, v0}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_65

    .line 2663
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    const-string v1, "Orientation"

    iget-object v4, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2664
    invoke-static {v2, v3, v4}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 2663
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    const-string v0, "LightSource"

    .line 2666
    invoke-virtual {p0, v0}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7d

    .line 2667
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "LightSource"

    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2668
    invoke-static {v2, v3, p0}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object p0

    .line 2667
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7d
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_8

    .line 3833
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    goto :goto_8

    :catch_6
    move-exception p0

    .line 3835
    throw p0

    :catch_8
    :cond_8
    :goto_8
    return-void
.end method

.method private static convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D
    .registers 11

    :try_start_0
    const-string v0, ","

    .line 2054
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 2057
    aget-object v1, p0, v0

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2058
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const/4 v4, 0x1

    aget-object v1, v1, v4

    .line 2059
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    div-double/2addr v2, v5

    .line 2061
    aget-object v1, p0, v4

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2062
    aget-object v5, v1, v0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    aget-object v1, v1, v4

    .line 2063
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    div-double/2addr v5, v7

    const/4 v1, 0x2

    .line 2065
    aget-object p0, p0, v1

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2066
    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    aget-object p0, p0, v4

    .line 2067
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    div-double/2addr v0, v7

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    div-double/2addr v5, v7

    add-double/2addr v2, v5

    const-wide v4, 0x40ac200000000000L    # 3600.0

    div-double/2addr v0, v4

    add-double/2addr v2, v0

    const-string p0, "S"

    .line 2070
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7d

    const-string p0, "W"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_79
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_79} :catch_7f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_79} :catch_7f

    if-eqz p0, :cond_7c

    goto :goto_7d

    :cond_7c
    return-wide v2

    :cond_7d
    :goto_7d
    neg-double p0, v2

    return-wide p0

    .line 2076
    :catch_7f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F
    .registers 2

    .line 2048
    invoke-static {p0, p1}, Lopenlight/co/lib/exif/ExifInterface;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    .line 3847
    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 3849
    :goto_6
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_12

    add-int/2addr v2, v3

    .line 3851
    invoke-virtual {p1, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_6

    :cond_12
    return v2
.end method

.method public static formatDate(J)Ljava/lang/String;
    .registers 4

    .line 1395
    sget-object v0, Lopenlight/co/lib/exif/ExifInterface;->sLocalFormatter:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getExifAttribute(Ljava/lang/String;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;
    .registers 4

    const/4 v0, 0x0

    .line 1340
    :goto_1
    sget-object v1, Lopenlight/co/lib/exif/ExifInterface;->EXIF_TAGS:[[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 1341
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 1343
    check-cast v1, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    return-object v1

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method private getJpegAttributes(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;II)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2184
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    int-to-long v0, p2

    .line 2187
    invoke-virtual {p1, v0, v1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 2191
    invoke-virtual {p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15d

    const/4 v2, 0x1

    add-int/2addr p2, v2

    .line 2195
    invoke-virtual {p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v3

    const/16 v4, -0x28

    if-ne v3, v4, :cond_140

    add-int/2addr p2, v2

    .line 2200
    :goto_1b
    invoke-virtual {p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_123

    add-int/2addr p2, v2

    .line 2205
    invoke-virtual {p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v0

    add-int/2addr p2, v2

    const/16 v3, -0x27

    if-eq v0, v3, :cond_11d

    const/16 v3, -0x26

    if-ne v0, v3, :cond_31

    goto/16 :goto_11d

    .line 2216
    :cond_31
    invoke-virtual {p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    add-int/lit8 p2, p2, 0x2

    if-ltz v3, :cond_115

    const/16 v4, -0x1f

    const/4 v5, 0x0

    if-eq v0, v4, :cond_b8

    const/4 v4, -0x2

    if-eq v0, v4, :cond_8a

    packed-switch v0, :pswitch_data_17a

    packed-switch v0, :pswitch_data_186

    packed-switch v0, :pswitch_data_190

    packed-switch v0, :pswitch_data_19a

    goto/16 :goto_e2

    .line 2290
    :pswitch_51
    invoke-virtual {p1, v2}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v0

    if-ne v0, v2, :cond_82

    .line 2293
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p3

    const-string v4, "ImageLength"

    .line 2294
    invoke-virtual {p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    int-to-long v5, v5

    iget-object v7, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2293
    invoke-static {v5, v6, v7}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2295
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p3

    const-string v4, "ImageWidth"

    .line 2296
    invoke-virtual {p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v5

    int-to-long v5, v5

    iget-object v7, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2295
    invoke-static {v5, v6, v7}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x5

    goto :goto_e2

    .line 2291
    :cond_82
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid SOFx"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2265
    :cond_8a
    new-array v0, v3, [B

    .line 2266
    invoke-virtual {p1, v0}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v4

    if-ne v4, v3, :cond_b0

    const-string v3, "UserComment"

    .line 2270
    invoke-virtual {p0, v3}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_ae

    .line 2271
    iget-object v3, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v2

    const-string v4, "UserComment"

    new-instance v6, Ljava/lang/String;

    sget-object v7, Lopenlight/co/lib/exif/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v6}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ae
    :goto_ae
    move v3, v5

    goto :goto_e2

    .line 2267
    :cond_b0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid exif"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b8
    const/4 v0, 0x6

    if-ge v3, v0, :cond_bc

    goto :goto_e2

    .line 2234
    :cond_bc
    new-array v4, v0, [B

    .line 2235
    invoke-virtual {p1, v4}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v6

    if-ne v6, v0, :cond_10d

    add-int/lit8 p2, p2, 0x6

    add-int/lit8 v3, v3, -0x6

    .line 2240
    sget-object v0, Lopenlight/co/lib/exif/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_d1

    goto :goto_e2

    :cond_d1
    if-lez v3, :cond_105

    .line 2251
    iput p2, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifOffset:I

    .line 2253
    new-array v0, v3, [B

    .line 2254
    invoke-virtual {p1, v0}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v4

    if-ne v4, v3, :cond_fd

    add-int/2addr p2, v3

    .line 2260
    invoke-direct {p0, v0, p3}, Lopenlight/co/lib/exif/ExifInterface;->readExifSegment([BI)V

    goto :goto_ae

    :goto_e2
    if-ltz v3, :cond_f5

    .line 2308
    invoke-virtual {p1, v3}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v0

    if-ne v0, v3, :cond_ed

    add-int/2addr p2, v3

    goto/16 :goto_1b

    .line 2309
    :cond_ed
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid JPEG segment"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2306
    :cond_f5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid length"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2255
    :cond_fd
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid exif"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2245
    :cond_105
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid exif"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2236
    :cond_10d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid exif"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2223
    :cond_115
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid length"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2314
    :cond_11d
    :goto_11d
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p0}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void

    .line 2202
    :cond_123
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid marker:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p2, v0, 0xff

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2196
    :cond_140
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid marker: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p2, v0, 0xff

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2192
    :cond_15d
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid marker: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p2, v0, 0xff

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_17a
    .packed-switch -0x40
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
    .end packed-switch

    :pswitch_data_186
    .packed-switch -0x3b
        :pswitch_51
        :pswitch_51
        :pswitch_51
    .end packed-switch

    :pswitch_data_190
    .packed-switch -0x37
        :pswitch_51
        :pswitch_51
        :pswitch_51
    .end packed-switch

    :pswitch_data_19a
    .packed-switch -0x33
        :pswitch_51
        :pswitch_51
        :pswitch_51
    .end packed-switch
.end method

.method private getMimeType(Ljava/io/BufferedInputStream;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1388

    .line 2082
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 2083
    new-array v1, v0, [B

    .line 2084
    invoke-virtual {p1, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    if-ne v2, v0, :cond_34

    .line 2087
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 2088
    invoke-static {v1}, Lopenlight/co/lib/exif/ExifInterface;->isJpegFormat([B)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p0, 0x4

    return p0

    .line 2090
    :cond_18
    invoke-direct {p0, v1}, Lopenlight/co/lib/exif/ExifInterface;->isRafFormat([B)Z

    move-result p1

    if-eqz p1, :cond_21

    const/16 p0, 0x9

    return p0

    .line 2092
    :cond_21
    invoke-direct {p0, v1}, Lopenlight/co/lib/exif/ExifInterface;->isOrfFormat([B)Z

    move-result p1

    if-eqz p1, :cond_29

    const/4 p0, 0x7

    return p0

    .line 2094
    :cond_29
    invoke-direct {p0, v1}, Lopenlight/co/lib/exif/ExifInterface;->isRw2Format([B)Z

    move-result p0

    if-eqz p0, :cond_32

    const/16 p0, 0xa

    return p0

    :cond_32
    const/4 p0, 0x0

    return p0

    .line 2085
    :cond_34
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private getOrfAttributes(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2429
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInterface;->getRawAttributes(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2434
    iget-object p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 2435
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_fc

    .line 2438
    new-instance v1, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;

    iget-object p1, p1, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 2440
    iget-object p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2444
    sget-object p1, Lopenlight/co/lib/exif/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    array-length p1, p1

    new-array p1, p1, [B

    .line 2445
    invoke-virtual {v1, p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    const-wide/16 v2, 0x0

    .line 2446
    invoke-virtual {v1, v2, v3}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 2447
    sget-object v2, Lopenlight/co/lib/exif/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    array-length v2, v2

    new-array v2, v2, [B

    .line 2448
    invoke-virtual {v1, v2}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 2450
    sget-object v3, Lopenlight/co/lib/exif/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_41

    const-wide/16 v2, 0x8

    .line 2451
    invoke-virtual {v1, v2, v3}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_4e

    .line 2452
    :cond_41
    sget-object p1, Lopenlight/co/lib/exif/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_4e

    const-wide/16 v2, 0xc

    .line 2453
    invoke-virtual {v1, v2, v3}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    :cond_4e
    :goto_4e
    const/4 p1, 0x6

    .line 2457
    invoke-direct {p0, v1, p1}, Lopenlight/co/lib/exif/ExifInterface;->readImageFileDirectory(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2460
    iget-object p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x7

    aget-object p1, p1, v1

    const-string v2, "PreviewImageStart"

    .line 2461
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    .line 2462
    iget-object v2, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    const-string v2, "PreviewImageLength"

    .line 2463
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_82

    if-eqz v1, :cond_82

    .line 2466
    iget-object v2, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    const-string v4, "JPEGInterchangeFormat"

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2468
    iget-object p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v3

    const-string v2, "JPEGInterchangeFormatLength"

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2475
    :cond_82
    iget-object p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v1, 0x8

    aget-object p1, p1, v1

    const-string v1, "AspectFrame"

    .line 2476
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_fc

    .line 2478
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    # invokes: Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    invoke-static {p1, v1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->access$700(Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_e1

    .line 2479
    array-length v1, p1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_a1

    goto :goto_e1

    :cond_a1
    const/4 v1, 0x2

    .line 2484
    aget v2, p1, v1

    const/4 v3, 0x0

    aget v4, p1, v3

    if-le v2, v4, :cond_fc

    const/4 v2, 0x3

    aget v4, p1, v2

    aget v5, p1, v0

    if-le v4, v5, :cond_fc

    .line 2486
    aget v1, p1, v1

    aget v4, p1, v3

    sub-int/2addr v1, v4

    add-int/2addr v1, v0

    .line 2487
    aget v2, p1, v2

    aget p1, p1, v0

    sub-int/2addr v2, p1

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_c2

    add-int/2addr v1, v2

    sub-int v2, v1, v2

    sub-int/2addr v1, v2

    .line 2494
    :cond_c2
    iget-object p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2495
    invoke-static {v1, p1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object p1

    .line 2496
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2497
    invoke-static {v2, v0}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 2499
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v3

    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2500
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p0, p0, v3

    const-string p1, "ImageLength"

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_fc

    :cond_e1
    :goto_e1
    const-string p0, "ExifInterface"

    .line 2480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid aspect frame values. frame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2481
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2480
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_fc
    :goto_fc
    return-void
.end method

.method private getRafAttributes(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x54

    .line 2370
    invoke-virtual {p1, v0}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    const/4 v0, 0x4

    .line 2371
    new-array v1, v0, [B

    .line 2372
    new-array v2, v0, [B

    .line 2373
    invoke-virtual {p1, v1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 2375
    invoke-virtual {p1, v0}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 2376
    invoke-virtual {p1, v2}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 2377
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 2378
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/4 v2, 0x5

    .line 2381
    invoke-direct {p0, p1, v0, v2}, Lopenlight/co/lib/exif/ExifInterface;->getJpegAttributes(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;II)V

    int-to-long v0, v1

    .line 2384
    invoke-virtual {p1, v0, v1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 2387
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2388
    invoke-virtual {p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_36
    if-ge v2, v0, :cond_73

    .line 2396
    invoke-virtual {p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    .line 2397
    invoke-virtual {p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v4

    .line 2398
    sget-object v5, Lopenlight/co/lib/exif/ExifInterface;->TAG_RAF_IMAGE_SIZE:Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    iget v5, v5, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->number:I

    if-ne v3, v5, :cond_6d

    .line 2399
    invoke-virtual {p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v0

    .line 2400
    invoke-virtual {p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p1

    .line 2401
    iget-object v2, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2402
    invoke-static {v0, v2}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 2403
    iget-object v2, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2404
    invoke-static {p1, v2}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object p1

    .line 2405
    iget-object v2, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const-string v3, "ImageLength"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2406
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p0, p0, v1

    const-string v0, "ImageWidth"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 2412
    :cond_6d
    invoke-virtual {p1, v4}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_73
    return-void
.end method

.method private getRawAttributes(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2319
    invoke-virtual {p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lopenlight/co/lib/exif/ExifInterface;->parseTiffHeaders(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x0

    .line 2322
    invoke-direct {p0, p1, v0}, Lopenlight/co/lib/exif/ExifInterface;->readImageFileDirectory(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2325
    invoke-direct {p0, p1, v0}, Lopenlight/co/lib/exif/ExifInterface;->updateImageSizeValues(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x5

    .line 2326
    invoke-direct {p0, p1, v0}, Lopenlight/co/lib/exif/ExifInterface;->updateImageSizeValues(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;I)V

    const/4 v0, 0x4

    .line 2327
    invoke-direct {p0, p1, v0}, Lopenlight/co/lib/exif/ExifInterface;->updateImageSizeValues(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2330
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInterface;->validateImages(Ljava/io/InputStream;)V

    .line 2332
    iget p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mMimeType:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_5b

    .line 2335
    iget-object p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const-string v1, "MakerNote"

    .line 2336
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_5b

    .line 2339
    new-instance v1, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;

    iget-object p1, p1, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v1, p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 2341
    iget-object p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const-wide/16 v2, 0x6

    .line 2344
    invoke-virtual {v1, v2, v3}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    const/16 p1, 0x9

    .line 2347
    invoke-direct {p0, v1, p1}, Lopenlight/co/lib/exif/ExifInterface;->readImageFileDirectory(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2350
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, v1, p1

    const-string v1, "ColorSpace"

    .line 2351
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_5b

    .line 2353
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p0, p0, v0

    const-string v0, "ColorSpace"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    return-void
.end method

.method private getRw2Attributes(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2511
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInterface;->getRawAttributes(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;)V

    .line 2514
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "JpgFromRaw"

    .line 2515
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_18

    .line 2517
    iget v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mRw2JpgFromRawOffset:I

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v2}, Lopenlight/co/lib/exif/ExifInterface;->getJpegAttributes(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 2521
    :cond_18
    iget-object p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v1

    const-string v0, "ISO"

    .line 2522
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    .line 2523
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v2, "ISOSpeedRatings"

    .line 2524
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_3e

    if-nez v0, :cond_3e

    .line 2527
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p0, p0, v1

    const-string v0, "ISOSpeedRatings"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    return-void
.end method

.method private static guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, ","

    .line 3417
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-eqz v0, :cond_98

    const-string v0, ","

    .line 3418
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3419
    aget-object v0, p0, v1

    invoke-static {v0}, Lopenlight/co/lib/exif/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 3420
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_23

    return-object v0

    .line 3423
    :cond_23
    :goto_23
    array-length v1, p0

    if-ge v2, v1, :cond_97

    .line 3424
    aget-object v1, p0, v2

    invoke-static {v1}, Lopenlight/co/lib/exif/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 3426
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eq v5, v6, :cond_3b

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v5, v6, :cond_39

    goto :goto_3b

    :cond_39
    move v5, v4

    goto :goto_43

    .line 3428
    :cond_3b
    :goto_3b
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3430
    :goto_43
    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v4, :cond_62

    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eq v6, v7, :cond_59

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v1, v6, :cond_62

    .line 3432
    :cond_59
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_63

    :cond_62
    move v1, v4

    :goto_63
    if-ne v5, v4, :cond_75

    if-ne v1, v4, :cond_75

    .line 3435
    new-instance p0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_75
    if-ne v5, v4, :cond_85

    .line 3438
    new-instance v0, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_94

    :cond_85
    if-ne v1, v4, :cond_94

    .line 3442
    new-instance v0, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_94
    :goto_94
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_97
    return-object v0

    :cond_98
    const-string v0, "/"

    .line 3449
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_107

    const-string v0, "/"

    .line 3450
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 3451
    array-length v0, p0

    if-ne v0, v3, :cond_f9

    .line 3453
    :try_start_ab
    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3454
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long p0, v0, v5

    const/16 v2, 0xa

    if-ltz p0, :cond_eb

    cmp-long p0, v7, v5

    if-gez p0, :cond_c2

    goto :goto_eb

    :cond_c2
    const-wide/32 v5, 0x7fffffff

    cmp-long p0, v0, v5

    const/4 v0, 0x5

    if-gtz p0, :cond_dd

    cmp-long p0, v7, v5

    if-lez p0, :cond_cf

    goto :goto_dd

    .line 3461
    :cond_cf
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 3459
    :cond_dd
    :goto_dd
    new-instance p0, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 3456
    :cond_eb
    :goto_eb
    new-instance p0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f8
    .catch Ljava/lang/NumberFormatException; {:try_start_ab .. :try_end_f8} :catch_f9

    return-object p0

    .line 3466
    :catch_f9
    :cond_f9
    new-instance p0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 3469
    :cond_107
    :try_start_107
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3470
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v5

    const/4 v2, 0x4

    if-ltz v1, :cond_132

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0xffff

    cmp-long v1, v7, v9

    if-gtz v1, :cond_132

    .line 3471
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 3473
    :cond_132
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v5

    if-gez v0, :cond_14a

    .line 3474
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 3476
    :cond_14a
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_157
    .catch Ljava/lang/NumberFormatException; {:try_start_107 .. :try_end_157} :catch_158

    return-object v0

    .line 3481
    :catch_158
    :try_start_158
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 3482
    new-instance p0, Landroid/util/Pair;

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_16a
    .catch Ljava/lang/NumberFormatException; {:try_start_158 .. :try_end_16a} :catch_16b

    return-object p0

    .line 3486
    :catch_16b
    new-instance p0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private handleThumbnailFromJfif(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "JPEGInterchangeFormat"

    .line 2972
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    const-string v1, "JPEGInterchangeFormatLength"

    .line 2974
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_65

    if-eqz p2, :cond_65

    .line 2977
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 2978
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p2

    .line 2981
    invoke-virtual {p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2982
    iget v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mMimeType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_44

    iget v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mMimeType:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_44

    iget v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mMimeType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3b

    goto :goto_44

    .line 2985
    :cond_3b
    iget v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_47

    .line 2987
    iget v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mOrfMakerNoteOffset:I

    add-int/2addr v0, v1

    goto :goto_47

    .line 2984
    :cond_44
    :goto_44
    iget v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifOffset:I

    add-int/2addr v0, v1

    :cond_47
    :goto_47
    if-lez v0, :cond_65

    if-lez p2, :cond_65

    const/4 v1, 0x1

    .line 2994
    iput-boolean v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mHasThumbnail:Z

    .line 2995
    iput v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailOffset:I

    .line 2996
    iput p2, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailLength:I

    .line 2997
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v1, :cond_65

    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v1, :cond_65

    .line 2999
    new-array p2, p2, [B

    int-to-long v0, v0

    .line 3000
    invoke-virtual {p1, v0, v1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 3001
    invoke-virtual {p1, p2}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 3002
    iput-object p2, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailBytes:[B

    :cond_65
    return-void
.end method

.method private handleThumbnailFromStrips(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "StripOffsets"

    .line 3012
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    const-string v1, "StripByteCounts"

    .line 3014
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_7b

    if-eqz p2, :cond_7b

    .line 3017
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3018
    # invokes: Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->access$700(Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 3019
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3020
    # invokes: Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    invoke-static {p2, v1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->access$700(Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [J

    if-nez v0, :cond_2e

    const-string p0, "ExifInterface"

    const-string p1, "stripOffsets should not be null."

    .line 3023
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2e
    if-nez p2, :cond_38

    const-string p0, "ExifInterface"

    const-string p1, "stripByteCounts should not be null."

    .line 3027
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_38
    const-wide/16 v1, 0x0

    .line 3032
    array-length v3, p2

    const/4 v4, 0x0

    move-wide v5, v1

    move v1, v4

    :goto_3e
    if-ge v1, v3, :cond_46

    aget-wide v7, p2, v1

    add-long/2addr v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_46
    long-to-int v1, v5

    .line 3037
    new-array v1, v1, [B

    move v2, v4

    move v3, v2

    move v5, v3

    .line 3041
    :goto_4c
    array-length v6, v0

    if-ge v2, v6, :cond_73

    .line 3042
    aget-wide v6, v0, v2

    long-to-int v6, v6

    .line 3043
    aget-wide v7, p2, v2

    long-to-int v7, v7

    sub-int/2addr v6, v3

    if-gez v6, :cond_5f

    const-string v8, "ExifInterface"

    const-string v9, "Invalid strip offset value"

    .line 3048
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    int-to-long v8, v6

    .line 3050
    invoke-virtual {p1, v8, v9}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    add-int/2addr v3, v6

    .line 3054
    new-array v6, v7, [B

    .line 3055
    invoke-virtual {p1, v6}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    add-int/2addr v3, v7

    .line 3059
    array-length v7, v6

    invoke-static {v6, v4, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3061
    array-length v6, v6

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    :cond_73
    const/4 p1, 0x1

    .line 3064
    iput-boolean p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mHasThumbnail:Z

    .line 3065
    iput-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailBytes:[B

    .line 3066
    array-length p1, v1

    iput p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailLength:I

    :cond_7b
    return-void
.end method

.method private static isJpegFormat([B)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 2106
    :goto_2
    sget-object v2, Lopenlight/co/lib/exif/ExifInterface;->JPEG_SIGNATURE:[B

    array-length v2, v2

    if-ge v1, v2, :cond_13

    .line 2107
    aget-byte v2, p0, v1

    sget-object v3, Lopenlight/co/lib/exif/ExifInterface;->JPEG_SIGNATURE:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_10

    return v0

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_13
    const/4 p0, 0x1

    return p0
.end method

.method private isOrfFormat([B)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2139
    new-instance v0, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 2142
    invoke-direct {p0, v0}, Lopenlight/co/lib/exif/ExifInterface;->readByteOrder(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2144
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p0}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2146
    invoke-virtual {v0}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p0

    const/16 p1, 0x4f52

    if-eq p0, p1, :cond_1f

    const/16 p1, 0x5352

    if-ne p0, p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    return p0
.end method

.method private isRafFormat([B)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "FUJIFILMCCD-RAW"

    .line 2121
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 2122
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 2123
    aget-byte v2, p1, v1

    aget-byte v3, p0, v1

    if-eq v2, v3, :cond_12

    return v0

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_15
    const/4 p0, 0x1

    return p0
.end method

.method private isRw2Format([B)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2155
    new-instance v0, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 2158
    invoke-direct {p0, v0}, Lopenlight/co/lib/exif/ExifInterface;->readByteOrder(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2160
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p0}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2162
    invoke-virtual {v0}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p0

    const/16 p1, 0x55

    if-ne p0, p1, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method private isSupportedDataType(Ljava/util/HashMap;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BitsPerSample"

    .line 3073
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_47

    .line 3075
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    # invokes: Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->access$700(Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 3077
    sget-object v1, Lopenlight/co/lib/exif/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1c

    return v2

    .line 3082
    :cond_1c
    iget v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mMimeType:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_47

    const-string v1, "PhotometricInterpretation"

    .line 3084
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    if-eqz p1, :cond_47

    .line 3086
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3087
    invoke-virtual {p1, p0}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p0

    if-ne p0, v2, :cond_3b

    .line 3088
    sget-object p1, Lopenlight/co/lib/exif/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 3089
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_46

    :cond_3b
    const/4 p1, 0x6

    if-ne p0, p1, :cond_47

    sget-object p0, Lopenlight/co/lib/exif/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 3091
    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_47

    :cond_46
    return v2

    :cond_47
    const/4 p0, 0x0

    return p0
.end method

.method private isThumbnail(Ljava/util/HashMap;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "ImageLength"

    .line 3108
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    const-string v1, "ImageWidth"

    .line 3109
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_28

    if-eqz p1, :cond_28

    .line 3112
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 3113
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p0}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p0

    const/16 p1, 0x200

    if-gt v0, p1, :cond_28

    if-gt p0, p1, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method private loadAttributes(Ljava/io/InputStream;)V
    .registers 6
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1620
    :goto_2
    :try_start_2
    sget-object v2, Lopenlight/co/lib/exif/ExifInterface;->EXIF_TAGS:[[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v1, v2, :cond_13

    .line 1621
    iget-object v2, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1625
    :cond_13
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1626
    move-object p1, v1

    check-cast p1, Ljava/io/BufferedInputStream;

    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInterface;->getMimeType(Ljava/io/BufferedInputStream;)I

    move-result p1

    iput p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mMimeType:I

    .line 1629
    new-instance p1, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {p1, v1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1631
    iget v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mMimeType:I

    packed-switch v1, :pswitch_data_54

    goto :goto_41

    .line 1645
    :pswitch_2e
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInterface;->getRw2Attributes(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_41

    .line 1637
    :pswitch_32
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInterface;->getRafAttributes(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_41

    .line 1641
    :pswitch_36
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInterface;->getOrfAttributes(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;)V

    goto :goto_41

    .line 1633
    :pswitch_3a
    invoke-direct {p0, p1, v0, v0}, Lopenlight/co/lib/exif/ExifInterface;->getJpegAttributes(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;II)V

    goto :goto_41

    .line 1656
    :pswitch_3e
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInterface;->getRawAttributes(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;)V

    .line 1664
    :goto_41
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInterface;->setThumbnailData(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;)V

    const/4 p1, 0x1

    .line 1665
    iput-boolean p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mIsSupportedFile:Z
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_47} :catch_4a
    .catchall {:try_start_2 .. :try_end_47} :catchall_48

    goto :goto_4c

    :catchall_48
    move-exception p1

    goto :goto_50

    .line 1669
    :catch_4a
    :try_start_4a
    iput-boolean v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mIsSupportedFile:Z
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_48

    .line 1676
    :goto_4c
    invoke-direct {p0}, Lopenlight/co/lib/exif/ExifInterface;->addDefaultValuesForCompatibility()V

    return-void

    :goto_50
    invoke-direct {p0}, Lopenlight/co/lib/exif/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 1681
    throw p1

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_3a
        :pswitch_3e
        :pswitch_3e
        :pswitch_36
        :pswitch_3e
        :pswitch_32
        :pswitch_2e
        :pswitch_3e
    .end packed-switch
.end method

.method private static parseExifTime(Ljava/lang/String;)J
    .registers 6

    :try_start_0
    const-string v0, ","

    .line 2026
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 2029
    aget-object v1, p0, v0

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2030
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/2addr v2, v1

    .line 2032
    aget-object v1, p0, v3

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2033
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    div-int/2addr v4, v1

    const/4 v1, 0x2

    .line 2035
    aget-object p0, p0, v1

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2036
    aget-object v0, p0, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    aget-object p0, p0, v3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    div-int/2addr v0, p0

    .line 2039
    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, v2

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, v4

    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_70} :catch_75
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_70} :catch_75

    const/4 p0, 0x0

    add-long/2addr v1, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    return-wide v1

    .line 2042
    :catch_75
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private parseTiffHeaders(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2695
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInterface;->readByteOrder(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2697
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 2700
    invoke-virtual {p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v0

    .line 2701
    iget v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3a

    iget p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mMimeType:I

    const/16 v1, 0xa

    if-eq p0, v1, :cond_3a

    const/16 p0, 0x2a

    if-ne v0, p0, :cond_1f

    goto :goto_3a

    .line 2702
    :cond_1f
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid start code: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2706
    :cond_3a
    :goto_3a
    invoke-virtual {p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result p0

    const/16 v0, 0x8

    if-lt p0, v0, :cond_67

    if-ge p0, p2, :cond_67

    add-int/lit8 p0, p0, -0x8

    if-lez p0, :cond_66

    .line 2712
    invoke-virtual {p1, p0}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result p1

    if-ne p1, p0, :cond_4f

    goto :goto_66

    .line 2713
    :cond_4f
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t jump to first Ifd: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_66
    :goto_66
    return-void

    .line 2708
    :cond_67
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid first Ifd offset: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private printAttributes()V
    .registers 8

    const/4 v0, 0x0

    .line 1686
    :goto_1
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    array-length v1, v1

    if-ge v0, v1, :cond_88

    const-string v1, "ExifInterface"

    .line 1687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The size of tag group["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1689
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    const-string v4, "ExifInterface"

    .line 1690
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tagName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", tagType: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tagValue: \'"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1691
    invoke-virtual {v3, v2}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1690
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :cond_84
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_88
    return-void
.end method

.method private readByteOrder(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2675
    invoke-virtual {p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result p0

    const/16 p1, 0x4949

    if-eq p0, p1, :cond_2a

    const/16 p1, 0x4d4d

    if-ne p0, p1, :cond_f

    .line 2686
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object p0

    .line 2688
    :cond_f
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid byte order: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2681
    :cond_2a
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object p0
.end method

.method private readExifSegment([BI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2631
    new-instance v0, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 2635
    array-length p1, p1

    invoke-direct {p0, v0, p1}, Lopenlight/co/lib/exif/ExifInterface;->parseTiffHeaders(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 2638
    invoke-direct {p0, v0, p2}, Lopenlight/co/lib/exif/ExifInterface;->readImageFileDirectory(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;I)V

    return-void
.end method

.method private readImageFileDirectory(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;I)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 2721
    # getter for: Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->mPosition:I
    invoke-static/range {p1 .. p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->access$800(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    # getter for: Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->mLength:I
    invoke-static/range {p1 .. p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->access$900(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    if-le v3, v4, :cond_13

    return-void

    .line 2726
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v3

    .line 2727
    # getter for: Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->mPosition:I
    invoke-static/range {p1 .. p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->access$800(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    mul-int/lit8 v5, v3, 0xc

    add-int/2addr v4, v5

    # getter for: Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->mLength:I
    invoke-static/range {p1 .. p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->access$900(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v5

    if-le v4, v5, :cond_25

    return-void

    :cond_25
    const/4 v5, 0x0

    :goto_26
    const/4 v7, 0x4

    if-ge v5, v3, :cond_227

    .line 2738
    invoke-virtual/range {p1 .. p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v8

    .line 2739
    invoke-virtual/range {p1 .. p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    .line 2740
    invoke-virtual/range {p1 .. p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v10

    .line 2742
    invoke-virtual/range {p1 .. p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v11

    add-int/2addr v11, v7

    int-to-long v11, v11

    .line 2745
    sget-object v13, Lopenlight/co/lib/exif/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v13, v13, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    const-wide/16 v14, 0x0

    if-nez v13, :cond_66

    const-string v4, "ExifInterface"

    .line 2756
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip the tag entry since tag number is not defined: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v3

    goto :goto_b4

    :cond_66
    if-lez v9, :cond_9c

    .line 2757
    sget-object v4, Lopenlight/co/lib/exif/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    array-length v4, v4

    if-lt v9, v4, :cond_6e

    goto :goto_9c

    :cond_6e
    int-to-long v6, v10

    .line 2760
    sget-object v4, Lopenlight/co/lib/exif/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v4, v4, v9

    move/from16 v16, v3

    int-to-long v3, v4

    mul-long/2addr v3, v6

    cmp-long v6, v3, v14

    if-ltz v6, :cond_85

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v3, v6

    if-lez v6, :cond_83

    goto :goto_85

    :cond_83
    const/4 v6, 0x1

    goto :goto_b7

    :cond_85
    :goto_85
    const-string v6, "ExifInterface"

    .line 2762
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skip the tag entry since the number of components is invalid: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b6

    :cond_9c
    :goto_9c
    move/from16 v16, v3

    const-string v3, "ExifInterface"

    .line 2758
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip the tag entry since data format is invalid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b4
    const-wide/16 v3, 0x0

    :goto_b6
    const/4 v6, 0x0

    :goto_b7
    if-nez v6, :cond_c1

    .line 2769
    invoke-virtual {v1, v11, v12}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    move v4, v2

    move/from16 v17, v5

    goto/16 :goto_21f

    :cond_c1
    const-wide/16 v6, 0x4

    cmp-long v6, v3, v6

    if-lez v6, :cond_15f

    .line 2776
    invoke-virtual/range {p1 .. p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    .line 2780
    iget v7, v0, Lopenlight/co/lib/exif/ExifInterface;->mMimeType:I

    const/4 v14, 0x7

    if-ne v7, v14, :cond_120

    .line 2781
    iget-object v7, v13, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v14, "MakerNote"

    if-ne v7, v14, :cond_db

    .line 2783
    iput v6, v0, Lopenlight/co/lib/exif/ExifInterface;->mOrfMakerNoteOffset:I

    :cond_d8
    move/from16 v17, v5

    goto :goto_130

    :cond_db
    const/4 v7, 0x6

    if-ne v2, v7, :cond_d8

    .line 2784
    iget-object v14, v13, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v15, "ThumbnailImage"

    if-ne v14, v15, :cond_d8

    .line 2787
    iput v6, v0, Lopenlight/co/lib/exif/ExifInterface;->mOrfThumbnailOffset:I

    .line 2788
    iput v10, v0, Lopenlight/co/lib/exif/ExifInterface;->mOrfThumbnailLength:I

    .line 2790
    iget-object v14, v0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2791
    invoke-static {v7, v14}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 2792
    iget v14, v0, Lopenlight/co/lib/exif/ExifInterface;->mOrfThumbnailOffset:I

    int-to-long v14, v14

    move/from16 v17, v5

    iget-object v5, v0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2793
    invoke-static {v14, v15, v5}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 2794
    iget v14, v0, Lopenlight/co/lib/exif/ExifInterface;->mOrfThumbnailLength:I

    int-to-long v14, v14

    iget-object v2, v0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2795
    invoke-static {v14, v15, v2}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 2797
    iget-object v14, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v15, 0x4

    aget-object v14, v14, v15

    const-string v15, "Compression"

    invoke-virtual {v14, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2798
    iget-object v7, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v14, 0x4

    aget-object v7, v7, v14

    const-string v15, "JPEGInterchangeFormat"

    invoke-virtual {v7, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2800
    iget-object v5, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v14

    const-string v7, "JPEGInterchangeFormatLength"

    invoke-virtual {v5, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_130

    :cond_120
    move/from16 v17, v5

    .line 2803
    iget v2, v0, Lopenlight/co/lib/exif/ExifInterface;->mMimeType:I

    const/16 v5, 0xa

    if-ne v2, v5, :cond_130

    .line 2804
    iget-object v2, v13, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v5, "JpgFromRaw"

    if-ne v2, v5, :cond_130

    .line 2805
    iput v6, v0, Lopenlight/co/lib/exif/ExifInterface;->mRw2JpgFromRawOffset:I

    :cond_130
    :goto_130
    int-to-long v14, v6

    add-long v18, v14, v3

    .line 2808
    # getter for: Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->mLength:I
    invoke-static/range {p1 .. p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->access$900(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v2

    move-wide/from16 v20, v3

    int-to-long v2, v2

    cmp-long v2, v18, v2

    if-gtz v2, :cond_142

    .line 2809
    invoke-virtual {v1, v14, v15}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_163

    :cond_142
    const-string v2, "ExifInterface"

    .line 2812
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip the tag entry since data offset is invalid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2813
    invoke-virtual {v1, v11, v12}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    :goto_15b
    move/from16 v4, p2

    goto/16 :goto_21f

    :cond_15f
    move-wide/from16 v20, v3

    move/from16 v17, v5

    .line 2819
    :goto_163
    sget-object v2, Lopenlight/co/lib/exif/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1c2

    const-wide/16 v3, -0x1

    sparse-switch v9, :sswitch_data_262

    :goto_174
    const-wide/16 v5, 0x0

    goto :goto_18e

    .line 2842
    :sswitch_177
    invoke-virtual/range {p1 .. p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v3

    int-to-long v3, v3

    goto :goto_174

    .line 2833
    :sswitch_17d
    invoke-virtual/range {p1 .. p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v3

    int-to-long v3, v3

    goto :goto_174

    .line 2837
    :sswitch_183
    invoke-virtual/range {p1 .. p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v3

    goto :goto_174

    .line 2829
    :sswitch_188
    invoke-virtual/range {p1 .. p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v3

    int-to-long v3, v3

    goto :goto_174

    :goto_18e
    cmp-long v5, v3, v5

    if-lez v5, :cond_1a8

    .line 2853
    # getter for: Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->mLength:I
    invoke-static/range {p1 .. p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->access$900(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_1a8

    .line 2854
    invoke-virtual {v1, v3, v4}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 2855
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lopenlight/co/lib/exif/ExifInterface;->readImageFileDirectory(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_1be

    :cond_1a8
    const-string v2, "ExifInterface"

    .line 2857
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    :goto_1be
    invoke-virtual {v1, v11, v12}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_15b

    :cond_1c2
    move-wide/from16 v3, v20

    long-to-int v2, v3

    .line 2864
    new-array v2, v2, [B

    .line 2865
    invoke-virtual {v1, v2}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 2866
    new-instance v3, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    const/4 v4, 0x0

    invoke-direct {v3, v9, v10, v2, v4}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;-><init>(II[BLopenlight/co/lib/exif/ExifInterface$1;)V

    .line 2867
    iget-object v2, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    move/from16 v4, p2

    aget-object v2, v2, v4

    iget-object v5, v13, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2872
    iget-object v2, v13, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v5, "DNGVersion"

    if-ne v2, v5, :cond_1e4

    const/4 v2, 0x3

    .line 2873
    iput v2, v0, Lopenlight/co/lib/exif/ExifInterface;->mMimeType:I

    .line 2879
    :cond_1e4
    iget-object v2, v13, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v5, "Make"

    if-eq v2, v5, :cond_1f0

    iget-object v2, v13, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v5, "Model"

    if-ne v2, v5, :cond_1fe

    :cond_1f0
    iget-object v2, v0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2880
    invoke-virtual {v3, v2}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "PENTAX"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20f

    :cond_1fe
    iget-object v2, v13, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->name:Ljava/lang/String;

    const-string v5, "Compression"

    if-ne v2, v5, :cond_213

    iget-object v2, v0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2882
    invoke-virtual {v3, v2}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    const v3, 0xffff

    if-ne v2, v3, :cond_213

    :cond_20f
    const/16 v2, 0x8

    .line 2883
    iput v2, v0, Lopenlight/co/lib/exif/ExifInterface;->mMimeType:I

    .line 2887
    :cond_213
    invoke-virtual/range {p1 .. p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, v11

    if-eqz v2, :cond_21f

    .line 2888
    invoke-virtual {v1, v11, v12}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    :cond_21f
    :goto_21f
    add-int/lit8 v5, v17, 0x1

    int-to-short v5, v5

    move v2, v4

    move/from16 v3, v16

    goto/16 :goto_26

    .line 2892
    :cond_227
    invoke-virtual/range {p1 .. p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v2

    const/4 v3, 0x4

    add-int/2addr v2, v3

    # getter for: Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->mLength:I
    invoke-static/range {p1 .. p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->access$900(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    if-gt v2, v4, :cond_261

    .line 2893
    invoke-virtual/range {p1 .. p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    const/16 v4, 0x8

    if-le v2, v4, :cond_261

    .line 2899
    # getter for: Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->mLength:I
    invoke-static/range {p1 .. p1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->access$900(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    if-ge v2, v4, :cond_261

    int-to-long v4, v2

    .line 2900
    invoke-virtual {v1, v4, v5}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 2901
    iget-object v2, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_253

    .line 2903
    invoke-direct {v0, v1, v3}, Lopenlight/co/lib/exif/ExifInterface;->readImageFileDirectory(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_261

    .line 2904
    :cond_253
    iget-object v2, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_261

    .line 2905
    invoke-direct {v0, v1, v3}, Lopenlight/co/lib/exif/ExifInterface;->readImageFileDirectory(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;I)V

    :cond_261
    :goto_261
    return-void

    :sswitch_data_262
    .sparse-switch
        0x3 -> :sswitch_188
        0x4 -> :sswitch_183
        0x8 -> :sswitch_17d
        0x9 -> :sswitch_177
        0xd -> :sswitch_177
    .end sparse-switch
.end method

.method private removeAttribute(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 1607
    :goto_1
    sget-object v1, Lopenlight/co/lib/exif/ExifInterface;->EXIF_TAGS:[[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 1608
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    return-void
.end method

.method private retrieveJpegImageSize(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2920
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "ImageLength"

    .line 2921
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    .line 2922
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageWidth"

    .line 2923
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_1c

    if-nez v1, :cond_33

    .line 2927
    :cond_1c
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "JPEGInterchangeFormat"

    .line 2928
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_33

    .line 2930
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 2931
    invoke-virtual {v0, v1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 2934
    invoke-direct {p0, p1, v0, p2}, Lopenlight/co/lib/exif/ExifInterface;->getJpegAttributes(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;II)V

    :cond_33
    return-void
.end method

.method private saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2539
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2540
    new-instance p1, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p1, p2, v1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 2542
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_e5

    .line 2545
    invoke-virtual {p1, v1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 2546
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result p2

    const/16 v2, -0x28

    if-ne p2, v2, :cond_dd

    .line 2549
    invoke-virtual {p1, v2}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 2552
    invoke-virtual {p1, v1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    const/16 p2, -0x1f

    .line 2553
    invoke-virtual {p1, p2}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    const/4 v2, 0x6

    .line 2554
    invoke-direct {p0, p1, v2}, Lopenlight/co/lib/exif/ExifInterface;->writeExifSegment(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;I)I

    const/16 p0, 0x1000

    .line 2556
    new-array p0, p0, [B

    .line 2559
    :cond_31
    :goto_31
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    if-ne v3, v1, :cond_d5

    .line 2563
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    const/4 v4, 0x0

    if-eq v3, p2, :cond_76

    packed-switch v3, :pswitch_data_ee

    .line 2609
    invoke-virtual {p1, v1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 2610
    invoke-virtual {p1, v3}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 2611
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 2612
    invoke-virtual {p1, v3}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_64

    :goto_52
    if-lez v3, :cond_31

    .line 2618
    array-length v5, p0

    .line 2619
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2618
    invoke-virtual {v0, p0, v4, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v5

    if-ltz v5, :cond_31

    .line 2620
    invoke-virtual {p1, p0, v4, v5}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    sub-int/2addr v3, v5

    goto :goto_52

    .line 2615
    :cond_64
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid length"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2601
    :pswitch_6c
    invoke-virtual {p1, v1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 2602
    invoke-virtual {p1, v3}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 2604
    invoke-static {v0, p1}, Lopenlight/co/lib/exif/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    return-void

    .line 2566
    :cond_76
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_cd

    .line 2570
    new-array v6, v2, [B

    if-lt v5, v2, :cond_a9

    .line 2572
    invoke-virtual {v0, v6}, Ljava/io/DataInputStream;->read([B)I

    move-result v7

    if-ne v7, v2, :cond_a1

    .line 2575
    sget-object v7, Lopenlight/co/lib/exif/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_a9

    add-int/lit8 v5, v5, -0x6

    .line 2577
    invoke-virtual {v0, v5}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v3

    if-ne v3, v5, :cond_99

    goto :goto_31

    .line 2578
    :cond_99
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid length"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2573
    :cond_a1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid exif"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2584
    :cond_a9
    invoke-virtual {p1, v1}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 2585
    invoke-virtual {p1, v3}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    add-int/lit8 v3, v5, 0x2

    .line 2586
    invoke-virtual {p1, v3}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    if-lt v5, v2, :cond_bb

    add-int/lit8 v5, v5, -0x6

    .line 2589
    invoke-virtual {p1, v6}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    :cond_bb
    :goto_bb
    if-lez v5, :cond_31

    .line 2592
    array-length v3, p0

    .line 2593
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2592
    invoke-virtual {v0, p0, v4, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_31

    .line 2594
    invoke-virtual {p1, p0, v4, v3}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    sub-int/2addr v5, v3

    goto :goto_bb

    .line 2568
    :cond_cd
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid length"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2561
    :cond_d5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid marker"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2547
    :cond_dd
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid marker"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2543
    :cond_e5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid marker"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_ee
    .packed-switch -0x27
        :pswitch_6c
        :pswitch_6c
    .end packed-switch
.end method

.method private setThumbnailData(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2941
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const-string v1, "Compression"

    .line 2944
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    if-eqz v1, :cond_2e

    .line 2946
    iget-object v2, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    iput v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailCompression:I

    .line 2947
    iget v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_24

    packed-switch v1, :pswitch_data_36

    goto :goto_34

    .line 2949
    :pswitch_20
    invoke-direct {p0, p1, v0}, Lopenlight/co/lib/exif/ExifInterface;->handleThumbnailFromJfif(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_34

    .line 2954
    :cond_24
    :pswitch_24
    invoke-direct {p0, v0}, Lopenlight/co/lib/exif/ExifInterface;->isSupportedDataType(Ljava/util/HashMap;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 2955
    invoke-direct {p0, p1, v0}, Lopenlight/co/lib/exif/ExifInterface;->handleThumbnailFromStrips(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_34

    :cond_2e
    const/4 v1, 0x6

    .line 2962
    iput v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailCompression:I

    .line 2963
    invoke-direct {p0, p1, v0}, Lopenlight/co/lib/exif/ExifInterface;->handleThumbnailFromJfif(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    :cond_34
    :goto_34
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x6
        :pswitch_20
        :pswitch_24
    .end packed-switch
.end method

.method private swapBasedOnImageSize(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3788
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7c

    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_7c

    .line 3795
    :cond_15
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    const-string v1, "ImageLength"

    .line 3796
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    .line 3797
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p1

    const-string v2, "ImageWidth"

    .line 3798
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    .line 3799
    iget-object v2, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "ImageLength"

    .line 3800
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    .line 3801
    iget-object v3, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "ImageWidth"

    .line 3802
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_7b

    if-nez v1, :cond_4a

    goto :goto_7b

    :cond_4a
    if-eqz v2, :cond_7b

    if-nez v3, :cond_4f

    goto :goto_7b

    .line 3813
    :cond_4f
    iget-object v4, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 3814
    iget-object v4, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 3815
    iget-object v4, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 3816
    iget-object v4, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    if-ge v0, v2, :cond_7b

    if-ge v1, v3, :cond_7b

    .line 3820
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    .line 3821
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    iget-object v2, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    aput-object v2, v1, p1

    .line 3822
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aput-object v0, p0, p2

    :cond_7b
    :goto_7b
    return-void

    :cond_7c
    :goto_7c
    return-void
.end method

.method private updateAttribute(Ljava/lang/String;Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 1592
    :goto_2
    sget-object v2, Lopenlight/co/lib/exif/ExifInterface;->EXIF_TAGS:[[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v0, v2, :cond_1c

    .line 1593
    iget-object v2, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1594
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1c
    return v1
.end method

.method private updateImageSizeValues(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3168
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "DefaultCropSize"

    .line 3169
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    .line 3171
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "SensorTopBorder"

    .line 3172
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    .line 3173
    iget-object v2, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "SensorLeftBorder"

    .line 3174
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    .line 3175
    iget-object v3, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "SensorBottomBorder"

    .line 3176
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    .line 3177
    iget-object v4, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string v5, "SensorRightBorder"

    .line 3178
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    if-eqz v0, :cond_cc

    .line 3184
    iget p1, v0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->format:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne p1, v1, :cond_80

    .line 3185
    iget-object p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3186
    # invokes: Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    invoke-static {v0, p1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->access$700(Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lopenlight/co/lib/exif/ExifInterface$Rational;

    if-eqz p1, :cond_65

    .line 3187
    array-length v0, p1

    if-eq v0, v4, :cond_54

    goto :goto_65

    .line 3192
    :cond_54
    aget-object v0, p1, v3

    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3193
    invoke-static {v0, v1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createURational(Lopenlight/co/lib/exif/ExifInterface$Rational;Ljava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 3194
    aget-object p1, p1, v2

    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3195
    invoke-static {p1, v1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createURational(Lopenlight/co/lib/exif/ExifInterface$Rational;Ljava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object p1

    goto :goto_9e

    :cond_65
    :goto_65
    const-string p0, "ExifInterface"

    .line 3188
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid crop size values. cropSize="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3189
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3188
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3197
    :cond_80
    iget-object p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3198
    # invokes: Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    invoke-static {v0, p1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->access$700(Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_b1

    .line 3199
    array-length v0, p1

    if-eq v0, v4, :cond_8e

    goto :goto_b1

    .line 3204
    :cond_8e
    aget v0, p1, v3

    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3205
    invoke-static {v0, v1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 3206
    aget p1, p1, v2

    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3207
    invoke-static {p1, v1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object p1

    .line 3209
    :goto_9e
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageWidth"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3210
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p0, p0, p2

    const-string p2, "ImageLength"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_114

    :cond_b1
    :goto_b1
    const-string p0, "ExifInterface"

    .line 3200
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid crop size values. cropSize="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3201
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3200
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_cc
    if-eqz v1, :cond_111

    if-eqz v2, :cond_111

    if-eqz v3, :cond_111

    if-eqz v4, :cond_111

    .line 3214
    iget-object p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, p1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p1

    .line 3215
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v0}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v0

    .line 3216
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 3217
    iget-object v3, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    if-le v0, p1, :cond_114

    if-le v1, v2, :cond_114

    sub-int/2addr v0, p1

    sub-int/2addr v1, v2

    .line 3221
    iget-object p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3222
    invoke-static {v0, p1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object p1

    .line 3223
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3224
    invoke-static {v1, v0}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 3225
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageLength"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3226
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p0, p0, p2

    const-string p1, "ImageWidth"

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_114

    .line 3229
    :cond_111
    invoke-direct {p0, p1, p2}, Lopenlight/co/lib/exif/ExifInterface;->retrieveJpegImageSize(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataInputStream;I)V

    :cond_114
    :goto_114
    return-void
.end method

.method private validateImages(Ljava/io/InputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    const/4 v0, 0x5

    .line 3124
    invoke-direct {p0, p1, v0}, Lopenlight/co/lib/exif/ExifInterface;->swapBasedOnImageSize(II)V

    const/4 v1, 0x4

    .line 3125
    invoke-direct {p0, p1, v1}, Lopenlight/co/lib/exif/ExifInterface;->swapBasedOnImageSize(II)V

    .line 3126
    invoke-direct {p0, v0, v1}, Lopenlight/co/lib/exif/ExifInterface;->swapBasedOnImageSize(II)V

    .line 3131
    iget-object v2, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v4, "PixelXDimension"

    .line 3132
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    .line 3133
    iget-object v4, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v4, v3

    const-string v4, "PixelYDimension"

    .line 3134
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    if-eqz v2, :cond_3b

    if-eqz v3, :cond_3b

    .line 3136
    iget-object v4, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p1

    const-string v5, "ImageWidth"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3137
    iget-object v2, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, v2, p1

    const-string v2, "ImageLength"

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3142
    :cond_3b
    iget-object p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_60

    .line 3143
    iget-object p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_60

    .line 3144
    iget-object p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    iget-object v2, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    aput-object v2, p1, v1

    .line 3145
    iget-object p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    aput-object v2, p1, v0

    .line 3150
    :cond_60
    iget-object p1, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result p0

    if-nez p0, :cond_71

    const-string p0, "ExifInterface"

    const-string p1, "No image meets the size requirements of a thumbnail image."

    .line 3151
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    return-void
.end method

.method private writeExifSegment(Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;I)I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3237
    sget-object v2, Lopenlight/co/lib/exif/ExifInterface;->EXIF_TAGS:[[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    array-length v2, v2

    new-array v2, v2, [I

    .line 3238
    sget-object v3, Lopenlight/co/lib/exif/ExifInterface;->EXIF_TAGS:[[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    array-length v3, v3

    new-array v3, v3, [I

    .line 3241
    sget-object v4, Lopenlight/co/lib/exif/ExifInterface;->EXIF_POINTER_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_13
    if-ge v7, v5, :cond_1f

    aget-object v8, v4, v7

    .line 3242
    iget-object v8, v8, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v8}, Lopenlight/co/lib/exif/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 3245
    :cond_1f
    sget-object v4, Lopenlight/co/lib/exif/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    iget-object v4, v4, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v4}, Lopenlight/co/lib/exif/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 3246
    sget-object v4, Lopenlight/co/lib/exif/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    iget-object v4, v4, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v4}, Lopenlight/co/lib/exif/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    move v4, v6

    .line 3249
    :goto_2e
    sget-object v5, Lopenlight/co/lib/exif/ExifInterface;->EXIF_TAGS:[[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    array-length v5, v5

    if-ge v4, v5, :cond_5e

    .line 3250
    iget-object v5, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    array-length v7, v5

    move v8, v6

    :goto_41
    if-ge v8, v7, :cond_5b

    aget-object v9, v5, v8

    .line 3251
    check-cast v9, Ljava/util/Map$Entry;

    .line 3252
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_58

    .line 3253
    iget-object v10, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v4

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_58
    add-int/lit8 v8, v8, 0x1

    goto :goto_41

    :cond_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 3260
    :cond_5e
    iget-object v4, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    const-wide/16 v7, 0x0

    if-nez v4, :cond_7e

    .line 3261
    iget-object v4, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v6

    sget-object v9, Lopenlight/co/lib/exif/ExifInterface;->EXIF_POINTER_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    aget-object v9, v9, v5

    iget-object v9, v9, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v10, v0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3262
    invoke-static {v7, v8, v10}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v10

    .line 3261
    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3264
    :cond_7e
    iget-object v4, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v9, 0x2

    aget-object v4, v4, v9

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9c

    .line 3265
    iget-object v4, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v6

    sget-object v10, Lopenlight/co/lib/exif/ExifInterface;->EXIF_POINTER_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    aget-object v10, v10, v9

    iget-object v10, v10, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v11, v0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3266
    invoke-static {v7, v8, v11}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v11

    .line 3265
    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3268
    :cond_9c
    iget-object v4, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v10, 0x3

    aget-object v4, v4, v10

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_ba

    .line 3269
    iget-object v4, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v5

    sget-object v11, Lopenlight/co/lib/exif/ExifInterface;->EXIF_POINTER_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    aget-object v11, v11, v10

    iget-object v11, v11, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v12, v0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3270
    invoke-static {v7, v8, v12}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v12

    .line 3269
    invoke-virtual {v4, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3272
    :cond_ba
    iget-boolean v4, v0, Lopenlight/co/lib/exif/ExifInterface;->mHasThumbnail:Z

    const/4 v11, 0x4

    if-eqz v4, :cond_e4

    .line 3273
    iget-object v4, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v11

    sget-object v12, Lopenlight/co/lib/exif/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    iget-object v12, v12, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v13, v0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3274
    invoke-static {v7, v8, v13}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 3273
    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3275
    iget-object v4, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v11

    sget-object v12, Lopenlight/co/lib/exif/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    iget-object v12, v12, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget v13, v0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailLength:I

    int-to-long v13, v13

    iget-object v15, v0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3276
    invoke-static {v13, v14, v15}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 3275
    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e4
    move v4, v6

    .line 3281
    :goto_e5
    sget-object v12, Lopenlight/co/lib/exif/ExifInterface;->EXIF_TAGS:[[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    array-length v12, v12

    if-ge v4, v12, :cond_119

    .line 3283
    iget-object v12, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v12, v4

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v13, v6

    :cond_f7
    :goto_f7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_111

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 3284
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    .line 3285
    invoke-virtual {v14}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->size()I

    move-result v14

    if-le v14, v11, :cond_f7

    add-int/2addr v13, v14

    goto :goto_f7

    .line 3290
    :cond_111
    aget v12, v3, v4

    add-int/2addr v12, v13

    aput v12, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_e5

    :cond_119
    const/16 v4, 0x8

    move v13, v4

    move v12, v6

    .line 3295
    :goto_11d
    sget-object v14, Lopenlight/co/lib/exif/ExifInterface;->EXIF_TAGS:[[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    array-length v14, v14

    if-ge v12, v14, :cond_141

    .line 3296
    iget-object v14, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, v12

    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_13e

    .line 3297
    aput v13, v2, v12

    .line 3298
    iget-object v14, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, v12

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    mul-int/lit8 v14, v14, 0xc

    add-int/2addr v14, v9

    add-int/2addr v14, v11

    aget v15, v3, v12

    add-int/2addr v14, v15

    add-int/2addr v13, v14

    :cond_13e
    add-int/lit8 v12, v12, 0x1

    goto :goto_11d

    .line 3301
    :cond_141
    iget-boolean v3, v0, Lopenlight/co/lib/exif/ExifInterface;->mHasThumbnail:Z

    if-eqz v3, :cond_15e

    .line 3303
    iget-object v3, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v11

    sget-object v12, Lopenlight/co/lib/exif/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    iget-object v12, v12, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->name:Ljava/lang/String;

    int-to-long v14, v13

    iget-object v7, v0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3304
    invoke-static {v14, v15, v7}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 3303
    invoke-virtual {v3, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int v3, p2, v13

    .line 3305
    iput v3, v0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailOffset:I

    .line 3306
    iget v3, v0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailLength:I

    add-int/2addr v13, v3

    :cond_15e
    add-int/2addr v13, v4

    .line 3320
    iget-object v3, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17f

    .line 3321
    iget-object v3, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v6

    sget-object v4, Lopenlight/co/lib/exif/ExifInterface;->EXIF_POINTER_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    aget-object v4, v4, v5

    iget-object v4, v4, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v7, v2, v5

    int-to-long v7, v7

    iget-object v12, v0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3322
    invoke-static {v7, v8, v12}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 3321
    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3324
    :cond_17f
    iget-object v3, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19f

    .line 3325
    iget-object v3, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v6

    sget-object v4, Lopenlight/co/lib/exif/ExifInterface;->EXIF_POINTER_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    aget-object v4, v4, v9

    iget-object v4, v4, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v7, v2, v9

    int-to-long v7, v7

    iget-object v12, v0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3326
    invoke-static {v7, v8, v12}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 3325
    invoke-virtual {v3, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3328
    :cond_19f
    iget-object v3, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1bf

    .line 3329
    iget-object v3, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v5

    sget-object v4, Lopenlight/co/lib/exif/ExifInterface;->EXIF_POINTER_TAGS:[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    aget-object v4, v4, v10

    iget-object v4, v4, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v5, v2, v10

    int-to-long v7, v5

    iget-object v5, v0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v7, v8, v5}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3334
    :cond_1bf
    invoke-virtual {v1, v13}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 3335
    sget-object v3, Lopenlight/co/lib/exif/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-virtual {v1, v3}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3336
    iget-object v3, v0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v3, v4, :cond_1d0

    const/16 v3, 0x4d4d

    goto :goto_1d2

    :cond_1d0
    const/16 v3, 0x4949

    :goto_1d2
    invoke-virtual {v1, v3}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->writeShort(S)V

    .line 3338
    iget-object v3, v0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const/16 v3, 0x2a

    .line 3339
    invoke-virtual {v1, v3}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    const-wide/16 v3, 0x8

    .line 3340
    invoke-virtual {v1, v3, v4}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    move v3, v6

    .line 3343
    :goto_1e5
    sget-object v4, Lopenlight/co/lib/exif/ExifInterface;->EXIF_TAGS:[[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    array-length v4, v4

    if-ge v3, v4, :cond_2b0

    .line 3344
    iget-object v4, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2aa

    .line 3347
    iget-object v4, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 3350
    aget v4, v2, v3

    add-int/2addr v4, v9

    iget-object v5, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0xc

    add-int/2addr v4, v5

    add-int/2addr v4, v11

    .line 3351
    iget-object v5, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_21a
    :goto_21a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_264

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 3353
    sget-object v8, Lopenlight/co/lib/exif/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v8, v8, v3

    .line 3354
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    .line 3355
    iget v8, v8, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->number:I

    .line 3356
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    .line 3357
    invoke-virtual {v7}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->size()I

    move-result v10

    .line 3359
    invoke-virtual {v1, v8}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 3360
    iget v8, v7, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {v1, v8}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 3361
    iget v8, v7, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-virtual {v1, v8}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    if-le v10, v11, :cond_255

    int-to-long v7, v4

    .line 3363
    invoke-virtual {v1, v7, v8}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    add-int/2addr v4, v10

    goto :goto_21a

    .line 3366
    :cond_255
    iget-object v7, v7, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->bytes:[B

    invoke-virtual {v1, v7}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    if-ge v10, v11, :cond_21a

    :goto_25c
    if-ge v10, v11, :cond_21a

    .line 3370
    invoke-virtual {v1, v6}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_25c

    :cond_264
    if-nez v3, :cond_279

    .line 3379
    iget-object v4, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_279

    .line 3380
    aget v4, v2, v11

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    const-wide/16 v4, 0x0

    goto :goto_27e

    :cond_279
    const-wide/16 v4, 0x0

    .line 3382
    invoke-virtual {v1, v4, v5}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 3386
    :goto_27e
    iget-object v7, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_28a
    :goto_28a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2ac

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 3387
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    .line 3389
    iget-object v10, v8, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->bytes:[B

    array-length v10, v10

    if-le v10, v11, :cond_28a

    .line 3390
    iget-object v10, v8, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->bytes:[B

    iget-object v8, v8, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->bytes:[B

    array-length v8, v8

    invoke-virtual {v1, v10, v6, v8}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    goto :goto_28a

    :cond_2aa
    const-wide/16 v4, 0x0

    :cond_2ac
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1e5

    .line 3397
    :cond_2b0
    iget-boolean v2, v0, Lopenlight/co/lib/exif/ExifInterface;->mHasThumbnail:Z

    if-eqz v2, :cond_2bb

    .line 3398
    invoke-virtual/range {p0 .. p0}, Lopenlight/co/lib/exif/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 3402
    :cond_2bb
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Lopenlight/co/lib/exif/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    return v13
.end method


# virtual methods
.method public getAltitude(D)D
    .registers 9

    const-string v0, "GPSAltitude"

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 1929
    invoke-virtual {p0, v0, v1, v2}, Lopenlight/co/lib/exif/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    const-string v2, "GPSAltitudeRef"

    const/4 v3, -0x1

    .line 1930
    invoke-virtual {p0, v2, v3}, Lopenlight/co/lib/exif/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    const-wide/16 v4, 0x0

    cmpl-double v2, v0, v4

    if-ltz v2, :cond_1e

    if-ltz p0, :cond_1e

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1b

    move p1, v3

    :cond_1b
    int-to-double p0, p1

    mul-double/2addr v0, p0

    return-wide v0

    :cond_1e
    return-wide p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1356
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInterface;->getExifAttribute(Ljava/lang/String;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_55

    .line 1358
    sget-object v2, Lopenlight/co/lib/exif/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1359
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p0}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const-string v2, "GPSTimeStamp"

    .line 1361
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 1363
    iget p1, v0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->format:I

    const/4 v2, 0x5

    if-eq p1, v2, :cond_42

    iget p1, v0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->format:I

    const/16 v2, 0xa

    if-eq p1, v2, :cond_42

    const-string p0, "ExifInterface"

    .line 1365
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPS Timestamp format is not rational. format="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1368
    :cond_42
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p0}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1381
    :cond_49
    :try_start_49
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p0}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_49 .. :try_end_53} :catch_54

    return-object p0

    :catch_54
    return-object v1

    :cond_55
    return-object v1
.end method

.method public getAttributeDouble(Ljava/lang/String;D)D
    .registers 4

    .line 1428
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInterface;->getExifAttribute(Ljava/lang/String;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object p1

    if-nez p1, :cond_7

    return-wide p2

    .line 1434
    :cond_7
    :try_start_7
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p0}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide p0
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_d} :catch_e

    return-wide p0

    :catch_e
    return-wide p2
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .registers 3

    .line 1407
    invoke-direct {p0, p1}, Lopenlight/co/lib/exif/ExifInterface;->getExifAttribute(Ljava/lang/String;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object p1

    if-nez p1, :cond_7

    return p2

    .line 1413
    :cond_7
    :try_start_7
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p0}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p0
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_d} :catch_e

    return p0

    :catch_e
    return p2
.end method

.method public getDateTime()J
    .registers 10

    const-string v0, "DateTimeOriginal"

    .line 1966
    invoke-virtual {p0, v0}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, "DateTime"

    .line 1969
    invoke-virtual {p0, v0}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    const-wide/16 v1, -0x1

    if-eqz v0, :cond_4c

    .line 1971
    sget-object v3, Lopenlight/co/lib/exif/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 1972
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_4c

    .line 1974
    :cond_1f
    new-instance v3, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1978
    :try_start_25
    sget-object v4, Lopenlight/co/lib/exif/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_2e

    return-wide v1

    .line 1980
    :cond_2e
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-string v0, "SubSecTime"

    .line 1982
    invoke-virtual {p0, v0}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_38} :catch_4b

    if-eqz p0, :cond_4a

    .line 1985
    :try_start_3a
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    :goto_3e
    const-wide/16 v7, 0x3e8

    cmp-long p0, v5, v7

    if-lez p0, :cond_48

    const-wide/16 v7, 0xa

    .line 1987
    div-long/2addr v5, v7
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_47} :catch_4a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_47} :catch_4b

    goto :goto_3e

    :cond_48
    const/4 p0, 0x0

    add-long/2addr v3, v5

    :catch_4a
    :cond_4a
    return-wide v3

    :catch_4b
    return-wide v1

    :cond_4c
    :goto_4c
    return-wide v1
.end method

.method public getGpsDateTime()J
    .registers 8

    const-string v0, "GPSDateStamp"

    .line 2006
    invoke-virtual {p0, v0}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSTimeStamp"

    .line 2007
    invoke-virtual {p0, v1}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3a

    if-eqz p0, :cond_3a

    .line 2009
    sget-object v3, Lopenlight/co/lib/exif/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_3a

    .line 2013
    :cond_1f
    invoke-static {p0}, Lopenlight/co/lib/exif/ExifInterface;->parseExifTime(Ljava/lang/String;)J

    move-result-wide v3

    .line 2014
    new-instance p0, Ljava/text/ParsePosition;

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2016
    :try_start_29
    sget-object v5, Lopenlight/co/lib/exif/ExifInterface;->sDateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p0

    if-nez p0, :cond_32

    return-wide v1

    .line 2018
    :cond_32
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v5
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_36} :catch_39

    const/4 p0, 0x0

    add-long/2addr v5, v3

    return-wide v5

    :catch_39
    return-wide v1

    :cond_3a
    :goto_3a
    return-wide v1
.end method

.method public getLatLong([D)Z
    .registers 10

    const-string v0, "GPSLatitude"

    .line 1903
    invoke-virtual {p0, v0}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSLatitudeRef"

    .line 1904
    invoke-virtual {p0, v1}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPSLongitude"

    .line 1905
    invoke-virtual {p0, v2}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GPSLongitudeRef"

    .line 1906
    invoke-virtual {p0, v3}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    if-eqz v0, :cond_58

    if-eqz v1, :cond_58

    if-eqz v2, :cond_58

    if-eqz p0, :cond_58

    const/4 v4, 0x1

    .line 1910
    :try_start_22
    invoke-static {v0, v1}, Lopenlight/co/lib/exif/ExifInterface;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v5

    aput-wide v5, p1, v3

    .line 1911
    invoke-static {v2, p0}, Lopenlight/co/lib/exif/ExifInterface;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v5

    aput-wide v5, p1, v4
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_2e} :catch_2f

    return v4

    :catch_2f
    const-string p1, "ExifInterface"

    .line 1914
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Latitude/longitude values are not parseable. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "latValue=%s, latRef=%s, lngValue=%s, lngRef=%s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v3

    aput-object v1, v7, v4

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object p0, v7, v0

    .line 1915
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1914
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    return v3
.end method

.method public getLatLong([F)Z
    .registers 10

    const-string v0, "GPSLatitude"

    .line 1876
    invoke-virtual {p0, v0}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSLatitudeRef"

    .line 1877
    invoke-virtual {p0, v1}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPSLongitude"

    .line 1878
    invoke-virtual {p0, v2}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GPSLongitudeRef"

    .line 1879
    invoke-virtual {p0, v3}, Lopenlight/co/lib/exif/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    if-eqz v0, :cond_58

    if-eqz v1, :cond_58

    if-eqz v2, :cond_58

    if-eqz p0, :cond_58

    const/4 v4, 0x1

    .line 1883
    :try_start_22
    invoke-static {v0, v1}, Lopenlight/co/lib/exif/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    aput v5, p1, v3

    .line 1884
    invoke-static {v2, p0}, Lopenlight/co/lib/exif/ExifInterface;->convertRationalLatLonToFloat(Ljava/lang/String;Ljava/lang/String;)F

    move-result v5

    aput v5, p1, v4
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_2e} :catch_2f

    return v4

    :catch_2f
    const-string p1, "ExifInterface"

    .line 1887
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Latitude/longitude values are not parseable. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "latValue=%s, latRef=%s, lngValue=%s, lngRef=%s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v3

    aput-object v1, v7, v4

    const/4 v0, 0x2

    aput-object v2, v7, v0

    const/4 v0, 0x3

    aput-object p0, v7, v0

    .line 1888
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1887
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    return v3
.end method

.method public getThumbnail()[B
    .registers 3

    .line 1754
    iget v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_d

    iget v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return-object p0

    .line 1755
    :cond_d
    :goto_d
    invoke-virtual {p0}, Lopenlight/co/lib/exif/ExifInterface;->getThumbnailBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .registers 9

    .line 1813
    iget-boolean v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 1815
    :cond_6
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailBytes:[B

    if-nez v0, :cond_10

    .line 1816
    invoke-virtual {p0}, Lopenlight/co/lib/exif/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailBytes:[B

    .line 1819
    :cond_10
    iget v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v0, v2, :cond_7b

    iget v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1c

    goto :goto_7b

    .line 1821
    :cond_1c
    iget v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7a

    .line 1822
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailBytes:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    new-array v0, v0, [I

    move v2, v3

    .line 1824
    :goto_29
    array-length v4, v0

    if-ge v2, v4, :cond_4a

    .line 1825
    iget-object v4, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailBytes:[B

    mul-int/lit8 v5, v2, 0x3

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v3

    iget-object v6, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailBytes:[B

    add-int/lit8 v7, v5, 0x1

    aget-byte v6, v6, v7

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v4, v6

    iget-object v6, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailBytes:[B

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, v6, v5

    add-int/2addr v4, v5

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 1829
    :cond_4a
    iget-object v2, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const-string v4, "ImageLength"

    .line 1830
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    .line 1831
    iget-object v4, p0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v4, v3

    const-string v4, "ImageWidth"

    .line 1832
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    if-eqz v2, :cond_7a

    if-eqz v3, :cond_7a

    .line 1834
    iget-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v1}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 1835
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, p0}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result p0

    .line 1836
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_7a
    return-object v1

    .line 1820
    :cond_7b
    :goto_7b
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailBytes:[B

    iget p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailLength:I

    invoke-static {v0, v3, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailBytes()[B
    .registers 7

    .line 1765
    iget-boolean v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 1768
    :cond_6
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailBytes:[B

    if-eqz v0, :cond_d

    .line 1769
    iget-object p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailBytes:[B

    return-object p0

    .line 1775
    :cond_d
    :try_start_d
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_2a

    .line 1776
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_72
    .catchall {:try_start_d .. :try_end_13} :catchall_6f

    .line 1777
    :try_start_13
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1778
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    goto :goto_37

    :cond_1d
    const-string p0, "ExifInterface"

    const-string v2, "Cannot read thumbnail from inputstream without mark/reset support"

    .line 1780
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_24} :catch_28
    .catchall {:try_start_13 .. :try_end_24} :catchall_7f

    .line 1803
    invoke-static {v0}, Lopenlight/co/lib/exif/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catch_28
    move-exception p0

    goto :goto_74

    .line 1783
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_36

    .line 1784
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lopenlight/co/lib/exif/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_35} :catch_72
    .catchall {:try_start_2a .. :try_end_35} :catchall_6f

    goto :goto_37

    :cond_36
    move-object v0, v1

    :goto_37
    if-eqz v0, :cond_69

    .line 1790
    :try_start_39
    iget v2, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailOffset:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    iget v4, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailOffset:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_61

    .line 1793
    iget v2, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailLength:I

    new-array v2, v2, [B

    .line 1794
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    iget v4, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailLength:I

    if-ne v3, v4, :cond_59

    .line 1797
    iput-object v2, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailBytes:[B
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_55} :catch_28
    .catchall {:try_start_39 .. :try_end_55} :catchall_7f

    .line 1803
    invoke-static {v0}, Lopenlight/co/lib/exif/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    .line 1795
    :cond_59
    :try_start_59
    new-instance p0, Ljava/io/IOException;

    const-string v2, "Corrupted image"

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1791
    :cond_61
    new-instance p0, Ljava/io/IOException;

    const-string v2, "Corrupted image"

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1788
    :cond_69
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/io/FileNotFoundException;-><init>()V

    throw p0
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_6f} :catch_28
    .catchall {:try_start_59 .. :try_end_6f} :catchall_7f

    :catchall_6f
    move-exception p0

    move-object v0, v1

    goto :goto_80

    :catch_72
    move-exception p0

    move-object v0, v1

    :goto_74
    :try_start_74
    const-string v2, "ExifInterface"

    const-string v3, "Encountered exception while getting thumbnail"

    .line 1801
    invoke-static {v2, v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_7f

    .line 1803
    invoke-static {v0}, Lopenlight/co/lib/exif/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_7f
    move-exception p0

    :goto_80
    invoke-static {v0}, Lopenlight/co/lib/exif/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 1804
    throw p0
.end method

.method public getThumbnailRange()[J
    .registers 5

    .line 1859
    iget-boolean v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mHasThumbnail:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    const/4 v0, 0x2

    .line 1863
    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 1864
    iget v2, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailOffset:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    .line 1865
    iget p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailLength:I

    int-to-long v2, p0

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public getUtcDateTime()J
    .registers 6

    .line 1947
    invoke-virtual {p0}, Lopenlight/co/lib/exif/ExifInterface;->getGpsDateTime()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1c

    .line 1950
    invoke-virtual {p0}, Lopenlight/co/lib/exif/ExifInterface;->getDateTime()J

    move-result-wide v0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1c

    .line 1954
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    int-to-long v2, p0

    sub-long/2addr v0, v2

    :cond_1c
    return-wide v0
.end method

.method public hasThumbnail()Z
    .registers 1

    .line 1744
    iget-boolean p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mHasThumbnail:Z

    return p0
.end method

.method public isThumbnailCompressed()Z
    .registers 3

    .line 1848
    iget v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_d

    iget p0, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailCompression:I

    const/4 v0, 0x7

    if-ne p0, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public saveAttributes()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1706
    iget-boolean v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mIsSupportedFile:Z

    if-eqz v0, :cond_88

    iget v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mMimeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_88

    .line 1709
    iget-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_80

    .line 1715
    invoke-virtual {p0}, Lopenlight/co/lib/exif/ExifInterface;->getThumbnail()[B

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailBytes:[B

    .line 1717
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lopenlight/co/lib/exif/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1718
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lopenlight/co/lib/exif/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1719
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v1, 0x0

    .line 1727
    :try_start_39
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_59

    .line 1728
    :try_start_3e
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lopenlight/co/lib/exif/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_57

    .line 1729
    :try_start_45
    invoke-direct {p0, v2, v3}, Lopenlight/co/lib/exif/ExifInterface;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_54

    .line 1731
    invoke-static {v2}, Lopenlight/co/lib/exif/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 1732
    invoke-static {v3}, Lopenlight/co/lib/exif/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 1733
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1737
    iput-object v1, p0, Lopenlight/co/lib/exif/ExifInterface;->mThumbnailBytes:[B

    return-void

    :catchall_54
    move-exception p0

    move-object v1, v3

    goto :goto_5b

    :catchall_57
    move-exception p0

    goto :goto_5b

    :catchall_59
    move-exception p0

    move-object v2, v1

    .line 1731
    :goto_5b
    invoke-static {v2}, Lopenlight/co/lib/exif/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 1732
    invoke-static {v1}, Lopenlight/co/lib/exif/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 1733
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1734
    throw p0

    .line 1720
    :cond_65
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not rename to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1710
    :cond_80
    new-instance p0, Ljava/io/IOException;

    const-string v0, "ExifInterface does not support saving attributes for the current input."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1707
    :cond_88
    new-instance p0, Ljava/io/IOException;

    const-string v0, "ExifInterface only supports saving attributes on JPEG formats."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_bc

    .line 1448
    sget-object v5, Lopenlight/co/lib/exif/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bc

    const-string v5, "GPSTimeStamp"

    .line 1449
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 1450
    sget-object v5, Lopenlight/co/lib/exif/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 1452
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_bc

    const-string v6, "ExifInterface"

    .line 1453
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Using non-standard format for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/1,"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/1,"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    .line 1455
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/1"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_bc

    .line 1459
    :cond_7f
    :try_start_7f
    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 1462
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v8, 0x4197d78400000000L    # 1.0E8

    mul-double/2addr v5, v8

    double-to-long v5, v5

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "/100000000"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_9b
    .catch Ljava/lang/NumberFormatException; {:try_start_7f .. :try_end_9b} :catch_9d

    move-object v2, v5

    goto :goto_bc

    :catch_9d
    const-string v0, "ExifInterface"

    .line 1464
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_bc
    :goto_bc
    const/4 v5, 0x0

    move v6, v5

    .line 1470
    :goto_be
    sget-object v7, Lopenlight/co/lib/exif/ExifInterface;->EXIF_TAGS:[[Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    array-length v7, v7

    if-ge v6, v7, :cond_30e

    const/4 v7, 0x4

    if-ne v6, v7, :cond_cc

    .line 1471
    iget-boolean v7, v0, Lopenlight/co/lib/exif/ExifInterface;->mHasThumbnail:Z

    if-nez v7, :cond_cc

    goto/16 :goto_30a

    .line 1474
    :cond_cc
    sget-object v7, Lopenlight/co/lib/exif/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_30a

    if-nez v2, :cond_e1

    .line 1477
    iget-object v7, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_30a

    .line 1480
    :cond_e1
    check-cast v7, Lopenlight/co/lib/exif/ExifInterface$ExifTag;

    .line 1481
    invoke-static {v2}, Lopenlight/co/lib/exif/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8

    .line 1483
    iget v9, v7, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v9, v10, :cond_1c1

    iget v9, v7, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v9, v10, :cond_101

    goto/16 :goto_1c1

    .line 1485
    :cond_101
    iget v9, v7, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->secondaryFormat:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_122

    iget v9, v7, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v9, v11, :cond_11e

    iget v9, v7, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    .line 1486
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v9, v11, :cond_122

    .line 1487
    :cond_11e
    iget v7, v7, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->secondaryFormat:I

    goto/16 :goto_1c3

    .line 1488
    :cond_122
    iget v9, v7, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->primaryFormat:I

    if-eq v9, v4, :cond_1be

    iget v9, v7, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v11, 0x7

    if-eq v9, v11, :cond_1be

    iget v9, v7, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->primaryFormat:I

    if-ne v9, v3, :cond_131

    goto/16 :goto_1be

    :cond_131
    const-string v9, "ExifInterface"

    .line 1493
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Given tag ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ") value didn\'t match with one of expected formats: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lopenlight/co/lib/exif/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v13, v7, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->primaryFormat:I

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v7, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->secondaryFormat:I

    if-ne v12, v10, :cond_155

    const-string v7, ""

    goto :goto_16c

    :cond_155
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lopenlight/co/lib/exif/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v7, v7, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->secondaryFormat:I

    aget-object v7, v13, v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_16c
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (guess: "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lopenlight/co/lib/exif/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget-object v12, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    .line 1497
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v7, v7, v12

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v10, :cond_190

    const-string v7, ""

    goto :goto_1ad

    :cond_190
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lopenlight/co/lib/exif/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    .line 1498
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v8, v10, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1ad
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1493
    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30a

    .line 1491
    :cond_1be
    :goto_1be
    iget v7, v7, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->primaryFormat:I

    goto :goto_1c3

    .line 1484
    :cond_1c1
    :goto_1c1
    iget v7, v7, Lopenlight/co/lib/exif/ExifInterface$ExifTag;->primaryFormat:I

    :goto_1c3
    packed-switch v7, :pswitch_data_310

    :pswitch_1c6
    const-string v8, "ExifInterface"

    .line 1576
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Data format isn\'t one of expected formats: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30a

    :pswitch_1de
    const-string v7, ","

    .line 1566
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1567
    array-length v8, v7

    new-array v8, v8, [D

    move v9, v5

    .line 1568
    :goto_1e8
    array-length v10, v7

    if-ge v9, v10, :cond_1f6

    .line 1569
    aget-object v10, v7, v9

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    aput-wide v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1e8

    .line 1571
    :cond_1f6
    iget-object v7, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    iget-object v9, v0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1572
    invoke-static {v8, v9}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 1571
    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_30a

    :pswitch_205
    const-string v7, ","

    .line 1554
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1555
    array-length v8, v7

    new-array v8, v8, [Lopenlight/co/lib/exif/ExifInterface$Rational;

    move v9, v5

    .line 1556
    :goto_20f
    array-length v10, v7

    if-ge v9, v10, :cond_234

    .line 1557
    aget-object v10, v7, v9

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1558
    new-instance v17, Lopenlight/co/lib/exif/ExifInterface$Rational;

    aget-object v11, v10, v5

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    aget-object v10, v10, v4

    .line 1559
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const/16 v16, 0x0

    move-object/from16 v11, v17

    invoke-direct/range {v11 .. v16}, Lopenlight/co/lib/exif/ExifInterface$Rational;-><init>(JJLopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v17, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_20f

    .line 1561
    :cond_234
    iget-object v7, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    iget-object v9, v0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1562
    invoke-static {v8, v9}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createSRational([Lopenlight/co/lib/exif/ExifInterface$Rational;Ljava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 1561
    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_30a

    :pswitch_243
    const-string v7, ","

    .line 1522
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1523
    array-length v8, v7

    new-array v8, v8, [I

    move v9, v5

    .line 1524
    :goto_24d
    array-length v10, v7

    if-ge v9, v10, :cond_25b

    .line 1525
    aget-object v10, v7, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_24d

    .line 1527
    :cond_25b
    iget-object v7, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    iget-object v9, v0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1528
    invoke-static {v8, v9}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 1527
    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_30a

    :pswitch_26a
    const-string v7, ","

    .line 1542
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1543
    array-length v8, v7

    new-array v8, v8, [Lopenlight/co/lib/exif/ExifInterface$Rational;

    move v9, v5

    .line 1544
    :goto_274
    array-length v10, v7

    if-ge v9, v10, :cond_299

    .line 1545
    aget-object v10, v7, v9

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1546
    new-instance v17, Lopenlight/co/lib/exif/ExifInterface$Rational;

    aget-object v11, v10, v5

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    aget-object v10, v10, v4

    .line 1547
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const/16 v16, 0x0

    move-object/from16 v11, v17

    invoke-direct/range {v11 .. v16}, Lopenlight/co/lib/exif/ExifInterface$Rational;-><init>(JJLopenlight/co/lib/exif/ExifInterface$1;)V

    aput-object v17, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_274

    .line 1549
    :cond_299
    iget-object v7, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    iget-object v9, v0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1550
    invoke-static {v8, v9}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createURational([Lopenlight/co/lib/exif/ExifInterface$Rational;Ljava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 1549
    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30a

    :pswitch_2a7
    const-string v7, ","

    .line 1532
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1533
    array-length v8, v7

    new-array v8, v8, [J

    move v9, v5

    .line 1534
    :goto_2b1
    array-length v10, v7

    if-ge v9, v10, :cond_2bf

    .line 1535
    aget-object v10, v7, v9

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2b1

    .line 1537
    :cond_2bf
    iget-object v7, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    iget-object v9, v0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1538
    invoke-static {v8, v9}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 1537
    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30a

    :pswitch_2cd
    const-string v7, ","

    .line 1512
    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1513
    array-length v8, v7

    new-array v8, v8, [I

    move v9, v5

    .line 1514
    :goto_2d7
    array-length v10, v7

    if-ge v9, v10, :cond_2e5

    .line 1515
    aget-object v10, v7, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2d7

    .line 1517
    :cond_2e5
    iget-object v7, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    iget-object v9, v0, Lopenlight/co/lib/exif/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 1518
    invoke-static {v8, v9}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v8

    .line 1517
    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30a

    .line 1508
    :pswitch_2f3
    iget-object v7, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    invoke-static {v2}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30a

    .line 1503
    :pswitch_2ff
    iget-object v7, v0, Lopenlight/co/lib/exif/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    invoke-static {v2}, Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Lopenlight/co/lib/exif/ExifInterface$ExifAttribute;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30a
    :goto_30a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_be

    :cond_30e
    return-void

    nop

    :pswitch_data_310
    .packed-switch 0x1
        :pswitch_2ff
        :pswitch_2f3
        :pswitch_2cd
        :pswitch_2a7
        :pswitch_26a
        :pswitch_1c6
        :pswitch_2f3
        :pswitch_1c6
        :pswitch_243
        :pswitch_205
        :pswitch_1c6
        :pswitch_1de
    .end packed-switch
.end method
