.class public Lnet/hockeyapp/android/objects/CrashDetails;
.super Ljava/lang/Object;
.source "CrashDetails.java"


# static fields
.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final FIELD_APP_CRASH_DATE:Ljava/lang/String; = "Date"

.field private static final FIELD_APP_PACKAGE:Ljava/lang/String; = "Package"

.field private static final FIELD_APP_START_DATE:Ljava/lang/String; = "Start Date"

.field private static final FIELD_APP_VERSION_CODE:Ljava/lang/String; = "Version Code"

.field private static final FIELD_APP_VERSION_NAME:Ljava/lang/String; = "Version Name"

.field private static final FIELD_CRASH_REPORTER_KEY:Ljava/lang/String; = "CrashReporter Key"

.field private static final FIELD_DEVICE_MANUFACTURER:Ljava/lang/String; = "Manufacturer"

.field private static final FIELD_DEVICE_MODEL:Ljava/lang/String; = "Model"

.field private static final FIELD_FORMAT:Ljava/lang/String; = "Format"

.field private static final FIELD_FORMAT_VALUE:Ljava/lang/String; = "Xamarin"

.field private static final FIELD_OS_BUILD:Ljava/lang/String; = "Android Build"

.field private static final FIELD_OS_VERSION:Ljava/lang/String; = "Android"

.field private static final FIELD_THREAD_NAME:Ljava/lang/String; = "Thread"

.field private static final FIELD_XAMARIN_CAUSED_BY:Ljava/lang/String; = "Xamarin caused by: "


# instance fields
.field private appCrashDate:Ljava/util/Date;

.field private appPackage:Ljava/lang/String;

.field private appStartDate:Ljava/util/Date;

.field private appVersionCode:Ljava/lang/String;

.field private appVersionName:Ljava/lang/String;

.field private final crashIdentifier:Ljava/lang/String;

.field private deviceManufacturer:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private format:Ljava/lang/String;

.field private isXamarinException:Ljava/lang/Boolean;

.field private osBuild:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private reporterKey:Ljava/lang/String;

.field private threadName:Ljava/lang/String;

.field private throwableStackTrace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE MMM dd HH:mm:ss zzz yyyy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lnet/hockeyapp/android/objects/CrashDetails;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->crashIdentifier:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 62
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/objects/CrashDetails;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 64
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->isXamarinException:Ljava/lang/Boolean;

    .line 66
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 67
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 68
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->throwableStackTrace:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 7

    .line 73
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/objects/CrashDetails;-><init>(Ljava/lang/String;)V

    .line 75
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 76
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v1, 0x1

    .line 78
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->isXamarinException:Ljava/lang/Boolean;

    const-string v1, "Xamarin"

    .line 83
    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/objects/CrashDetails;->setFormat(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_28

    const-string p3, "Xamarin caused by: "

    .line 87
    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_3d

    .line 94
    :cond_28
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3a

    .line 96
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string p2, "Xamarin caused by: "

    .line 99
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3d

    .line 104
    :cond_3a
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 108
    :goto_3d
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->throwableStackTrace:Ljava/lang/String;

    return-void
.end method

.method public static fromFile(Ljava/io/File;)Lnet/hockeyapp/android/objects/CrashDetails;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".stacktrace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-static {v0, v1}, Lnet/hockeyapp/android/objects/CrashDetails;->fromReader(Ljava/lang/String;Ljava/io/Reader;)Lnet/hockeyapp/android/objects/CrashDetails;

    move-result-object p0

    return-object p0
.end method

.method public static fromReader(Ljava/lang/String;Ljava/io/Reader;)Lnet/hockeyapp/android/objects/CrashDetails;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 120
    new-instance p1, Lnet/hockeyapp/android/objects/CrashDetails;

    invoke-direct {p1, p0}, Lnet/hockeyapp/android/objects/CrashDetails;-><init>(Ljava/lang/String;)V

    .line 124
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 125
    :cond_11
    :goto_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_115

    if-nez v2, :cond_10b

    .line 128
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v2, 0x1

    goto :goto_11

    :cond_21
    const-string v4, ":"

    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_42

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed header line when parsing crash details: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;)V

    .line 139
    :cond_42
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 140
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CrashReporter Key"

    .line 142
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 143
    invoke-virtual {p1, v3}, Lnet/hockeyapp/android/objects/CrashDetails;->setReporterKey(Ljava/lang/String;)V

    goto :goto_11

    :cond_64
    const-string v4, "Start Date"

    .line 144
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 146
    :try_start_6c
    sget-object v4, Lnet/hockeyapp/android/objects/CrashDetails;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppStartDate(Ljava/util/Date;)V
    :try_end_75
    .catch Ljava/text/ParseException; {:try_start_6c .. :try_end_75} :catch_76

    goto :goto_11

    :catch_76
    move-exception p0

    .line 148
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_7d
    const-string v4, "Date"

    .line 150
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_96

    .line 152
    :try_start_85
    sget-object v4, Lnet/hockeyapp/android/objects/CrashDetails;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p1, v3}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppCrashDate(Ljava/util/Date;)V
    :try_end_8e
    .catch Ljava/text/ParseException; {:try_start_85 .. :try_end_8e} :catch_8f

    goto :goto_11

    :catch_8f
    move-exception p0

    .line 154
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_96
    const-string v4, "Android"

    .line 156
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 157
    invoke-virtual {p1, v3}, Lnet/hockeyapp/android/objects/CrashDetails;->setOsVersion(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_a3
    const-string v4, "Android Build"

    .line 158
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 159
    invoke-virtual {p1, v3}, Lnet/hockeyapp/android/objects/CrashDetails;->setOsBuild(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_b0
    const-string v4, "Manufacturer"

    .line 160
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 161
    invoke-virtual {p1, v3}, Lnet/hockeyapp/android/objects/CrashDetails;->setDeviceManufacturer(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_bd
    const-string v4, "Model"

    .line 162
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ca

    .line 163
    invoke-virtual {p1, v3}, Lnet/hockeyapp/android/objects/CrashDetails;->setDeviceModel(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_ca
    const-string v4, "Package"

    .line 164
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d7

    .line 165
    invoke-virtual {p1, v3}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppPackage(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_d7
    const-string v4, "Version Name"

    .line 166
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e4

    .line 167
    invoke-virtual {p1, v3}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppVersionName(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_e4
    const-string v4, "Version Code"

    .line 168
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f1

    .line 169
    invoke-virtual {p1, v3}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppVersionCode(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_f1
    const-string v4, "Thread"

    .line 170
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fe

    .line 171
    invoke-virtual {p1, v3}, Lnet/hockeyapp/android/objects/CrashDetails;->setThreadName(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_fe
    const-string v4, "Format"

    .line 172
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 173
    invoke-virtual {p1, v3}, Lnet/hockeyapp/android/objects/CrashDetails;->setFormat(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 177
    :cond_10b
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_11

    .line 180
    :cond_115
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/hockeyapp/android/objects/CrashDetails;->setThrowableStackTrace(Ljava/lang/String;)V

    return-object p1
.end method

.method private writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAppCrashDate()Ljava/util/Date;
    .registers 1

    .line 256
    iget-object p0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appCrashDate:Ljava/util/Date;

    return-object p0
.end method

.method public getAppPackage()Ljava/lang/String;
    .registers 1

    .line 296
    iget-object p0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getAppStartDate()Ljava/util/Date;
    .registers 1

    .line 248
    iget-object p0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appStartDate:Ljava/util/Date;

    return-object p0
.end method

.method public getAppVersionCode()Ljava/lang/String;
    .registers 1

    .line 312
    iget-object p0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appVersionCode:Ljava/lang/String;

    return-object p0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .registers 1

    .line 304
    iget-object p0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appVersionName:Ljava/lang/String;

    return-object p0
.end method

.method public getCrashIdentifier()Ljava/lang/String;
    .registers 1

    .line 236
    iget-object p0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->crashIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceManufacturer()Ljava/lang/String;
    .registers 1

    .line 280
    iget-object p0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->deviceManufacturer:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .registers 1

    .line 288
    iget-object p0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->deviceModel:Ljava/lang/String;

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 1

    .line 345
    iget-object p0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->format:Ljava/lang/String;

    return-object p0
.end method

.method public getIsXamarinException()Ljava/lang/Boolean;
    .registers 1

    .line 336
    iget-object p0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->isXamarinException:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getOsBuild()Ljava/lang/String;
    .registers 1

    .line 272
    iget-object p0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->osBuild:Ljava/lang/String;

    return-object p0
.end method

.method public getOsVersion()Ljava/lang/String;
    .registers 1

    .line 264
    iget-object p0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->osVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getReporterKey()Ljava/lang/String;
    .registers 1

    .line 240
    iget-object p0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->reporterKey:Ljava/lang/String;

    return-object p0
.end method

.method public getThreadName()Ljava/lang/String;
    .registers 1

    .line 320
    iget-object p0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->threadName:Ljava/lang/String;

    return-object p0
.end method

.method public getThrowableStackTrace()Ljava/lang/String;
    .registers 1

    .line 328
    iget-object p0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->throwableStackTrace:Ljava/lang/String;

    return-object p0
.end method

.method public setAppCrashDate(Ljava/util/Date;)V
    .registers 2

    .line 260
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appCrashDate:Ljava/util/Date;

    return-void
.end method

.method public setAppPackage(Ljava/lang/String;)V
    .registers 2

    .line 300
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appPackage:Ljava/lang/String;

    return-void
.end method

.method public setAppStartDate(Ljava/util/Date;)V
    .registers 2

    .line 252
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appStartDate:Ljava/util/Date;

    return-void
.end method

.method public setAppVersionCode(Ljava/lang/String;)V
    .registers 2

    .line 316
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appVersionCode:Ljava/lang/String;

    return-void
.end method

.method public setAppVersionName(Ljava/lang/String;)V
    .registers 2

    .line 308
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appVersionName:Ljava/lang/String;

    return-void
.end method

.method public setDeviceManufacturer(Ljava/lang/String;)V
    .registers 2

    .line 284
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->deviceManufacturer:Ljava/lang/String;

    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .registers 2

    .line 292
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .registers 2

    .line 349
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->format:Ljava/lang/String;

    return-void
.end method

.method public setIsXamarinException(Ljava/lang/Boolean;)V
    .registers 2

    .line 340
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->isXamarinException:Ljava/lang/Boolean;

    return-void
.end method

.method public setOsBuild(Ljava/lang/String;)V
    .registers 2

    .line 276
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->osBuild:Ljava/lang/String;

    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .registers 2

    .line 268
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->osVersion:Ljava/lang/String;

    return-void
.end method

.method public setReporterKey(Ljava/lang/String;)V
    .registers 2

    .line 244
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->reporterKey:Ljava/lang/String;

    return-void
.end method

.method public setThreadName(Ljava/lang/String;)V
    .registers 2

    .line 324
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->threadName:Ljava/lang/String;

    return-void
.end method

.method public setThrowableStackTrace(Ljava/lang/String;)V
    .registers 2

    .line 332
    iput-object p1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->throwableStackTrace:Ljava/lang/String;

    return-void
.end method

.method public writeCrashReport()V
    .registers 5

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->crashIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".stacktrace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing unhandled exception to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 192
    :try_start_32
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3c} :catch_bd
    .catchall {:try_start_32 .. :try_end_3c} :catchall_ba

    :try_start_3c
    const-string v0, "Package"

    .line 194
    iget-object v1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appPackage:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lnet/hockeyapp/android/objects/CrashDetails;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Version Code"

    .line 195
    iget-object v1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appVersionCode:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lnet/hockeyapp/android/objects/CrashDetails;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Version Name"

    .line 196
    iget-object v1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appVersionName:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lnet/hockeyapp/android/objects/CrashDetails;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Android"

    .line 197
    iget-object v1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->osVersion:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lnet/hockeyapp/android/objects/CrashDetails;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Android Build"

    .line 198
    iget-object v1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->osBuild:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lnet/hockeyapp/android/objects/CrashDetails;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Manufacturer"

    .line 199
    iget-object v1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->deviceManufacturer:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lnet/hockeyapp/android/objects/CrashDetails;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Model"

    .line 200
    iget-object v1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->deviceModel:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lnet/hockeyapp/android/objects/CrashDetails;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Thread"

    .line 201
    iget-object v1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->threadName:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lnet/hockeyapp/android/objects/CrashDetails;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CrashReporter Key"

    .line 202
    iget-object v1, p0, Lnet/hockeyapp/android/objects/CrashDetails;->reporterKey:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lnet/hockeyapp/android/objects/CrashDetails;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Start Date"

    .line 204
    sget-object v1, Lnet/hockeyapp/android/objects/CrashDetails;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appStartDate:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lnet/hockeyapp/android/objects/CrashDetails;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Date"

    .line 205
    sget-object v1, Lnet/hockeyapp/android/objects/CrashDetails;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lnet/hockeyapp/android/objects/CrashDetails;->appCrashDate:Ljava/util/Date;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lnet/hockeyapp/android/objects/CrashDetails;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->isXamarinException:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a4

    const-string v0, "Format"

    const-string v1, "Xamarin"

    .line 208
    invoke-direct {p0, v2, v0, v1}, Lnet/hockeyapp/android/objects/CrashDetails;->writeHeader(Ljava/io/Writer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a4
    const-string v0, "\n"

    .line 211
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 212
    iget-object p0, p0, Lnet/hockeyapp/android/objects/CrashDetails;->throwableStackTrace:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_b1} :catch_b7
    .catchall {:try_start_3c .. :try_end_b1} :catchall_b5

    .line 221
    :try_start_b1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_c9

    goto :goto_cf

    :catchall_b5
    move-exception p0

    goto :goto_d0

    :catch_b7
    move-exception p0

    move-object v1, v2

    goto :goto_be

    :catchall_ba
    move-exception p0

    move-object v2, v1

    goto :goto_d0

    :catch_bd
    move-exception p0

    :goto_be
    :try_start_be
    const-string v0, "Error saving crash report!"

    .line 217
    invoke-static {v0, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c3
    .catchall {:try_start_be .. :try_end_c3} :catchall_ba

    if-eqz v1, :cond_cf

    .line 221
    :try_start_c5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_c9

    goto :goto_cf

    :catch_c9
    move-exception p0

    const-string v0, "Error saving crash report!"

    .line 224
    invoke-static {v0, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_cf
    :goto_cf
    return-void

    :goto_d0
    if-eqz v2, :cond_dc

    .line 221
    :try_start_d2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_d6

    goto :goto_dc

    :catch_d6
    move-exception v0

    const-string v1, "Error saving crash report!"

    .line 224
    invoke-static {v1, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    :cond_dc
    :goto_dc
    throw p0
.end method
