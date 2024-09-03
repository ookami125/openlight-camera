.class public Lnet/hockeyapp/android/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static ANDROID_BUILD:Ljava/lang/String; = null

.field public static ANDROID_VERSION:Ljava/lang/String; = null

.field public static APP_PACKAGE:Ljava/lang/String; = null

.field public static APP_VERSION:Ljava/lang/String; = null

.field public static APP_VERSION_NAME:Ljava/lang/String; = null

.field public static final BASE_URL:Ljava/lang/String; = "https://sdk.hockeyapp.net/"

.field private static final BUNDLE_BUILD_NUMBER:Ljava/lang/String; = "buildNumber"

.field public static CRASH_IDENTIFIER:Ljava/lang/String; = null

.field public static DEVICE_IDENTIFIER:Ljava/lang/String; = null

.field public static final FILES_DIRECTORY_NAME:Ljava/lang/String; = "HockeyApp"

.field public static FILES_PATH:Ljava/lang/String; = null

.field public static PHONE_MANUFACTURER:Ljava/lang/String; = null

.field public static PHONE_MODEL:Ljava/lang/String; = null

.field public static final SDK_NAME:Ljava/lang/String; = "HockeySDK"

.field public static final SDK_USER_AGENT:Ljava/lang/String; = "HockeySDK/Android 4.1.2"

.field public static final SDK_VERSION:Ljava/lang/String; = "4.1.2"

.field public static final UPDATE_PERMISSIONS_REQUEST:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .registers 7

    const-string v0, "0123456789ABCDEF"

    .line 296
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 297
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    .line 298
    :goto_c
    array-length v3, p0

    if-ge v2, v3, :cond_26

    .line 299
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    .line 300
    aget-char v5, v0, v5

    aput-char v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v3, v3, 0xf

    .line 301
    aget-char v3, v0, v3

    aput-char v3, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 303
    :cond_26
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    const-string v0, "(\\w{8})(\\w{4})(\\w{4})(\\w{4})(\\w{12})"

    const-string v1, "$1-$2-$3-$4-$5"

    .line 304
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createSalt(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 272
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_c

    .line 273
    sget-object p0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_e

    .line 275
    :cond_c
    sget-object p0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 278
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    rem-int/lit8 p0, p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    rem-int/lit8 p0, p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    .line 282
    :try_start_48
    const-class v1, Landroid/os/Build;

    const-string v2, "SERIAL"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_59} :catch_5a

    move-object v0, v1

    .line 286
    :catch_5a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHockeyAppStorageDir()Ljava/io/File;
    .registers 3

    .line 120
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 122
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "HockeyApp"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_32

    :cond_30
    const/4 v0, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v0, 0x1

    :goto_33
    if-nez v0, :cond_3a

    const-string v0, "Couldn\'t create HockeyApp Storage dir"

    .line 125
    invoke-static {v0}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;)V

    :cond_3a
    return-object v1
.end method

.method private static loadBuildNumber(Landroid/content/Context;Landroid/content/pm/PackageManager;)I
    .registers 4

    const/4 v0, 0x0

    .line 187
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 188
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_1f

    const-string p1, "buildNumber"

    .line 190
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_15} :catch_16

    return p0

    :catch_16
    move-exception p0

    const-string p1, "Exception thrown when accessing the application info:"

    .line 193
    invoke-static {p1}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1f
    return v0
.end method

.method private static loadCrashIdentifier(Landroid/content/Context;)V
    .registers 4

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    sget-object v1, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->createSalt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_3a
    const-string v0, "SHA-1"

    .line 210
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 211
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x0

    .line 212
    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 213
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 215
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lnet/hockeyapp/android/Constants;->CRASH_IDENTIFIER:Ljava/lang/String;
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_55} :catch_56

    goto :goto_6f

    :catch_56
    move-exception p0

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t create CrashIdentifier with Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;)V

    :cond_6f
    :goto_6f
    return-void
.end method

.method private static loadDeviceIdentifier(Landroid/content/Context;)V
    .registers 3

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    .line 231
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 233
    invoke-static {p0, v0}, Lnet/hockeyapp/android/Constants;->tryHashStringSha256(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_13

    goto :goto_1b

    .line 235
    :cond_13
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1b
    sput-object p0, Lnet/hockeyapp/android/Constants;->DEVICE_IDENTIFIER:Ljava/lang/String;

    :cond_1d
    return-void
.end method

.method private static loadFilesPath(Landroid/content/Context;)V
    .registers 2

    if-eqz p0, :cond_18

    .line 139
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 144
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_18

    :catch_f
    move-exception p0

    const-string v0, "Exception thrown when accessing the files dir:"

    .line 147
    invoke-static {v0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_18
    :goto_18
    return-void
.end method

.method public static loadFromContext(Landroid/content/Context;)V
    .registers 2

    .line 103
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lnet/hockeyapp/android/Constants;->ANDROID_VERSION:Ljava/lang/String;

    .line 104
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sput-object v0, Lnet/hockeyapp/android/Constants;->ANDROID_BUILD:Ljava/lang/String;

    .line 105
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lnet/hockeyapp/android/Constants;->PHONE_MODEL:Ljava/lang/String;

    .line 106
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lnet/hockeyapp/android/Constants;->PHONE_MANUFACTURER:Ljava/lang/String;

    .line 108
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->loadFilesPath(Landroid/content/Context;)V

    .line 109
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->loadPackageData(Landroid/content/Context;)V

    .line 110
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->loadCrashIdentifier(Landroid/content/Context;)V

    .line 111
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->loadDeviceIdentifier(Landroid/content/Context;)V

    return-void
.end method

.method private static loadPackageData(Landroid/content/Context;)V
    .registers 5

    if-eqz p0, :cond_53

    .line 162
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 164
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v2, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    .line 166
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v2, Lnet/hockeyapp/android/Constants;->APP_VERSION_NAME:Ljava/lang/String;

    .line 168
    invoke-static {p0, v0}, Lnet/hockeyapp/android/Constants;->loadBuildNumber(Landroid/content/Context;Landroid/content/pm/PackageManager;)I

    move-result p0

    if-eqz p0, :cond_53

    .line 169
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le p0, v0, :cond_53

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;
    :try_end_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_49} :catch_4a

    goto :goto_53

    :catch_4a
    move-exception p0

    const-string v0, "Exception thrown when accessing the package info:"

    .line 173
    invoke-static {v0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_53
    :goto_53
    return-void
.end method

.method private static tryHashStringSha256(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 247
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->createSalt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    :try_start_4
    const-string v0, "SHA-256"

    .line 250
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 251
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 252
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 253
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 254
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 256
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_23} :catch_24

    return-object p0

    :catch_24
    const/4 p0, 0x0

    return-object p0
.end method
