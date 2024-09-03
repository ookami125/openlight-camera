.class public Lcom/fihtdc/UploadAgentService/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final APR_SERVER_URL:Ljava/lang/String; = "apr.c2dms.com"

.field public static final DUTINFO_FILE_NAME:Ljava/lang/String; = "DUTInfo.txt"

.field private static final TAG:Ljava/lang/String; = "com.fihtdc.AprUploadService.common.util(7.0010.05(Evenwell_s))"

.field private static final TAG_LOG:Ljava/lang/String; = "com.fihtdc.AprUploadService.process.log"

.field public static final TMP_UPLOAD_FOLDER:Ljava/lang/String; = "upload"

.field public static final UPLOAD_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.evenwell.AprUploadService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileFolder(Landroid/content/Context;)Ljava/io/File;
    .registers 2

    .line 57
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string p0, "null"

    :try_start_2
    const-string v0, "phone"

    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 98
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_f
    if-eqz v0, :cond_21

    const-string v2, ""

    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_21
    const/4 v2, 0x5

    if-lt v1, v2, :cond_38

    :cond_24
    if-eqz v0, :cond_45

    const-string p1, ""

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    const-string p1, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    move-object p0, v0

    goto :goto_45

    .line 102
    :cond_38
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3c} :catch_3f

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :catch_3f
    move-exception p0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "null"

    :cond_45
    :goto_45
    return-object p0
.end method

.method private getImeiFromProperty()Ljava/lang/String;
    .registers 2

    const-string p0, "persist.radio.imei"

    const-string v0, "null"

    .line 120
    invoke-static {p0, v0}, Lcom/fihtdc/UploadAgentService/util/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMeidFromProperty()Ljava/lang/String;
    .registers 2

    const-string p0, "persist.radio.meid"

    const-string v0, "null"

    .line 124
    invoke-static {p0, v0}, Lcom/fihtdc/UploadAgentService/util/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSWVerInfo()Ljava/lang/String;
    .registers 4

    .line 344
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/fver"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 347
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 348
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    if-eqz v0, :cond_5e

    const-string v1, "-"

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 353
    array-length v1, v0

    const/4 v2, 0x5

    if-lt v1, v2, :cond_5e

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    return-object v0

    .line 362
    :cond_5e
    new-instance v0, Ljava/io/File;

    const-string v1, "/build_id"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 365
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 366
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    if-eqz v0, :cond_85

    return-object v0

    .line 372
    :cond_85
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/build_id"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_ac

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 375
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 376
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 377
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a9} :catch_af

    if-eqz v0, :cond_ac

    return-object v0

    :cond_ac
    const-string v0, "0000_0000_000"

    return-object v0

    :catch_af
    move-exception v0

    .line 387
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "0000_0000_000"

    return-object v0
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 10

    const-string v0, ""

    :try_start_2
    const-string v1, "android.os.SystemProperties"

    .line 145
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x2

    .line 146
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    .line 147
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object p1, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_29

    goto :goto_2e

    :catch_29
    move-exception p0

    .line 149
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v0

    :goto_2e
    return-object p0
.end method

.method public static getUploadFiles(Landroid/content/Context;)[Ljava/io/File;
    .registers 1

    .line 62
    invoke-static {p0}, Lcom/fihtdc/UploadAgentService/util/Util;->getUploadFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getUploadFolder(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    .line 49
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/fihtdc/UploadAgentService/util/Util;->getFileFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "upload"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_14

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_14
    return-object v0
.end method

.method private isNormalZipFile(Ljava/io/File;)Z
    .registers 8

    const/16 p0, 0x400

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 291
    :try_start_5
    new-array p0, p0, [B

    .line 292
    new-instance v3, Ljava/util/zip/ZipInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_3b
    .catchall {:try_start_5 .. :try_end_11} :catchall_4c

    .line 293
    :try_start_11
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    move v4, v1

    :goto_16
    if-nez v2, :cond_1a

    :goto_18
    move v1, v0

    goto :goto_31

    .line 295
    :cond_1a
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 296
    invoke-virtual {v3, p0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_21} :catch_3b
    .catchall {:try_start_11 .. :try_end_21} :catchall_49

    :goto_21
    const/4 v5, -0x1

    if-gt v2, v5, :cond_25

    goto :goto_2e

    :cond_25
    if-nez v2, :cond_29

    add-int/lit8 v4, v4, 0x1

    :cond_29
    const/16 v2, 0x7d0

    if-le v4, v2, :cond_44

    move v0, v1

    :goto_2e
    if-nez v0, :cond_3f

    goto :goto_18

    :goto_31
    if-eqz v1, :cond_39

    .line 323
    :try_start_33
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 324
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_39} :catch_39

    :catch_39
    :cond_39
    if-nez v1, :cond_5d

    .line 332
    :catch_3b
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_5d

    .line 293
    :cond_3f
    :try_start_3f
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2

    goto :goto_16

    .line 297
    :cond_44
    invoke-virtual {v3, p0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v2
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_48} :catch_3b
    .catchall {:try_start_3f .. :try_end_48} :catchall_49

    goto :goto_21

    :catchall_49
    move-exception p0

    move-object v2, v3

    goto :goto_4d

    :catchall_4c
    move-exception p0

    :goto_4d
    if-eqz v0, :cond_57

    if-eqz v2, :cond_57

    .line 323
    :try_start_51
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 324
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_57} :catch_57

    :catch_57
    :cond_57
    if-nez v0, :cond_5c

    .line 332
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 334
    :cond_5c
    throw p0

    :cond_5d
    :goto_5d
    return v1
.end method


# virtual methods
.method public addFilesToZip(Ljava/io/File;[Ljava/io/File;)V
    .registers 12

    .line 226
    invoke-direct {p0, p1}, Lcom/fihtdc/UploadAgentService/util/Util;->isNormalZipFile(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_ac

    .line 229
    :try_start_6
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 231
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 232
    invoke-virtual {p1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_ac

    const/16 v0, 0x400

    .line 234
    new-array v0, v0, [B

    .line 235
    new-instance v1, Ljava/util/zip/ZipInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 236
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 237
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 239
    :goto_38
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-nez v4, :cond_86

    .line 254
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 255
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    move v1, v6

    .line 256
    :goto_47
    array-length v4, p2

    if-lt v1, v4, :cond_51

    .line 273
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 274
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_ac

    .line 259
    :cond_51
    aget-object v4, p2, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_83

    .line 260
    new-instance v4, Ljava/io/FileInputStream;

    aget-object v7, p2, v1

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 261
    new-instance v7, Ljava/util/zip/ZipEntry;

    aget-object v8, p2, v1

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 262
    :goto_72
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-gt v7, v5, :cond_7f

    .line 267
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 268
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_83

    .line 265
    :cond_7f
    invoke-virtual {v2, v0, v6, v7}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_72

    :cond_83
    :goto_83
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 241
    :cond_86
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 242
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-virtual {v2, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 245
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    :goto_97
    if-gt v4, v5, :cond_9d

    .line 251
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_38

    .line 249
    :cond_9d
    invoke-virtual {v2, v0, v6, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 246
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a4} :catch_a5

    goto :goto_97

    :catch_a5
    move-exception p0

    .line 280
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 281
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_ac
    :goto_ac
    return-void
.end method

.method public convertStringToFile(Ljava/lang/String;Ljava/io/File;)V
    .registers 5

    const/4 p0, 0x0

    .line 205
    :try_start_1
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_25
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b

    .line 206
    :try_start_b
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_19
    .catchall {:try_start_b .. :try_end_e} :catchall_15

    .line 214
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 215
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_2d

    goto :goto_2d

    :catchall_15
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    goto :goto_1c

    :catch_19
    move-object p0, v0

    goto :goto_25

    :catchall_1b
    move-exception p1

    :goto_1c
    if-eqz p0, :cond_24

    .line 214
    :try_start_1e
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V

    .line 215
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_24} :catch_24

    .line 220
    :catch_24
    :cond_24
    throw p1

    :catch_25
    :goto_25
    if-eqz p0, :cond_2d

    .line 214
    :try_start_27
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V

    .line 215
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2d} :catch_2d

    :catch_2d
    :cond_2d
    :goto_2d
    return-void
.end method

.method public getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 71
    invoke-direct {p0}, Lcom/fihtdc/UploadAgentService/util/Util;->getImeiFromProperty()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 74
    :cond_14
    invoke-static {p1}, Lcom/fihtdc/UploadAgentService/adapter/FihDualTelephonyManager;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_18
    const-string v1, "null"

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 77
    :cond_28
    invoke-direct {p0, p1}, Lcom/fihtdc/UploadAgentService/util/Util;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_2c
    const-string v1, "null"

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 81
    :cond_3c
    invoke-direct {p0}, Lcom/fihtdc/UploadAgentService/util/Util;->getMeidFromProperty()Ljava/lang/String;

    move-result-object v0

    :cond_40
    const-string v1, "null"

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 85
    :cond_50
    invoke-virtual {p0, p1}, Lcom/fihtdc/UploadAgentService/util/Util;->getSerialNo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_54
    return-object v0
.end method

.method public getDeviceModel(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 160
    :try_start_0
    new-instance p0, Ljava/io/File;

    const-string p1, "/proc/fver"

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_41

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 163
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 164
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 165
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    if-eqz p0, :cond_41

    const-string p1, "-"

    .line 168
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 169
    array-length p1, p0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_41

    const/4 p1, 0x0

    .line 171
    aget-object p0, p0, p1

    const-string p1, ","

    .line 172
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 173
    array-length p1, p0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_41

    const/4 p1, 0x1

    .line 174
    aget-object p0, p0, p1

    return-object p0

    .line 180
    :cond_41
    new-instance p0, Ljava/io/File;

    const-string p1, "/proc/devmodel"

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_6b

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 183
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 184
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 185
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_65} :catch_6e

    if-eqz p0, :cond_68

    return-object p0

    :cond_68
    const-string p0, "null"

    return-object p0

    :cond_6b
    const-string p0, "null"

    return-object p0

    :catch_6e
    move-exception p0

    .line 196
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "null"

    return-object p0
.end method

.method public getSerialNo(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string p0, "ro.serialno"

    const-string p1, "null"

    .line 131
    invoke-static {p0, p1}, Lcom/fihtdc/UploadAgentService/util/Util;->getSystemProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_f

    :catch_9
    move-exception p0

    .line 136
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "null"

    :goto_f
    return-object p0
.end method
