.class public Lnet/hockeyapp/android/ExceptionHandler;
.super Ljava/lang/Object;
.source "ExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private mCrashManagerListener:Lnet/hockeyapp/android/CrashManagerListener;

.field private mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mIgnoreDefaultHandler:Z


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .registers 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lnet/hockeyapp/android/ExceptionHandler;->mIgnoreDefaultHandler:Z

    .line 31
    iput-object p1, p0, Lnet/hockeyapp/android/ExceptionHandler;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 32
    iput-boolean p3, p0, Lnet/hockeyapp/android/ExceptionHandler;->mIgnoreDefaultHandler:Z

    .line 33
    iput-object p2, p0, Lnet/hockeyapp/android/ExceptionHandler;->mCrashManagerListener:Lnet/hockeyapp/android/CrashManagerListener;

    return-void
.end method

.method private static limitedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 230
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_13

    const/4 v0, 0x0

    .line 231
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_13
    return-object p0
.end method

.method public static saveException(Ljava/lang/Throwable;Ljava/lang/Thread;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 7

    .line 62
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 63
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->getInitializeTimestamp()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 64
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 65
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 67
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 69
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    new-instance v3, Lnet/hockeyapp/android/objects/CrashDetails;

    invoke-direct {v3, v2, p0}, Lnet/hockeyapp/android/objects/CrashDetails;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    sget-object p0, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppPackage(Ljava/lang/String;)V

    .line 73
    sget-object p0, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppVersionCode(Ljava/lang/String;)V

    .line 74
    sget-object p0, Lnet/hockeyapp/android/Constants;->APP_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppVersionName(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v3, v1}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppStartDate(Ljava/util/Date;)V

    .line 76
    invoke-virtual {v3, v0}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppCrashDate(Ljava/util/Date;)V

    if-eqz p2, :cond_45

    .line 78
    invoke-virtual {p2}, Lnet/hockeyapp/android/CrashManagerListener;->includeDeviceData()Z

    move-result p0

    if-eqz p0, :cond_59

    .line 79
    :cond_45
    sget-object p0, Lnet/hockeyapp/android/Constants;->ANDROID_VERSION:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lnet/hockeyapp/android/objects/CrashDetails;->setOsVersion(Ljava/lang/String;)V

    .line 80
    sget-object p0, Lnet/hockeyapp/android/Constants;->ANDROID_BUILD:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lnet/hockeyapp/android/objects/CrashDetails;->setOsBuild(Ljava/lang/String;)V

    .line 81
    sget-object p0, Lnet/hockeyapp/android/Constants;->PHONE_MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lnet/hockeyapp/android/objects/CrashDetails;->setDeviceManufacturer(Ljava/lang/String;)V

    .line 82
    sget-object p0, Lnet/hockeyapp/android/Constants;->PHONE_MODEL:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lnet/hockeyapp/android/objects/CrashDetails;->setDeviceModel(Ljava/lang/String;)V

    :cond_59
    if-eqz p1, :cond_82

    if-eqz p2, :cond_63

    .line 85
    invoke-virtual {p2}, Lnet/hockeyapp/android/CrashManagerListener;->includeThreadDetails()Z

    move-result p0

    if-eqz p0, :cond_82

    .line 86
    :cond_63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lnet/hockeyapp/android/objects/CrashDetails;->setThreadName(Ljava/lang/String;)V

    .line 89
    :cond_82
    sget-object p0, Lnet/hockeyapp/android/Constants;->CRASH_IDENTIFIER:Ljava/lang/String;

    if-eqz p0, :cond_93

    if-eqz p2, :cond_8e

    invoke-virtual {p2}, Lnet/hockeyapp/android/CrashManagerListener;->includeDeviceIdentifier()Z

    move-result p0

    if-eqz p0, :cond_93

    .line 90
    :cond_8e
    sget-object p0, Lnet/hockeyapp/android/Constants;->CRASH_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lnet/hockeyapp/android/objects/CrashDetails;->setReporterKey(Ljava/lang/String;)V

    .line 93
    :cond_93
    invoke-virtual {v3}, Lnet/hockeyapp/android/objects/CrashDetails;->writeCrashReport()V

    if-eqz p2, :cond_ef

    .line 97
    :try_start_98
    invoke-virtual {p2}, Lnet/hockeyapp/android/CrashManagerListener;->getUserID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/hockeyapp/android/ExceptionHandler;->limitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".user"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/hockeyapp/android/ExceptionHandler;->writeValueToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Lnet/hockeyapp/android/CrashManagerListener;->getContact()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/hockeyapp/android/ExceptionHandler;->limitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".contact"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/hockeyapp/android/ExceptionHandler;->writeValueToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Lnet/hockeyapp/android/CrashManagerListener;->getDescription()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".description"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/hockeyapp/android/ExceptionHandler;->writeValueToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_e8} :catch_e9

    goto :goto_ef

    :catch_e9
    move-exception p0

    const-string p1, "Error saving crash meta data!"

    .line 101
    invoke-static {p1, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_ef
    :goto_ef
    return-void
.end method

.method public static saveException(Ljava/lang/Throwable;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 51
    invoke-static {p0, v0, p1}, Lnet/hockeyapp/android/ExceptionHandler;->saveException(Ljava/lang/Throwable;Ljava/lang/Thread;Lnet/hockeyapp/android/CrashManagerListener;)V

    return-void
.end method

.method public static saveManagedException(Ljava/lang/Throwable;Ljava/lang/Thread;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 5

    const/4 v0, 0x1

    .line 141
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lnet/hockeyapp/android/ExceptionHandler;->saveXamarinException(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/Boolean;Lnet/hockeyapp/android/CrashManagerListener;)V

    return-void
.end method

.method public static saveNativeException(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Thread;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 7

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    const-string v0, "--- End of managed exception stack trace ---"

    const/4 v2, 0x2

    .line 123
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 124
    array-length v2, v0

    if-lez v2, :cond_15

    .line 125
    aget-object p1, v0, v1

    .line 129
    :cond_15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p2, p1, v0, p3}, Lnet/hockeyapp/android/ExceptionHandler;->saveXamarinException(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/Boolean;Lnet/hockeyapp/android/CrashManagerListener;)V

    return-void
.end method

.method private static saveXamarinException(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/Boolean;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 10

    .line 145
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->getInitializeTimestamp()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 146
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 149
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 150
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    if-eqz p0, :cond_25

    .line 152
    invoke-virtual {p0, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 155
    :cond_25
    new-instance v3, Lnet/hockeyapp/android/objects/CrashDetails;

    invoke-direct {v3, v1, p0, p2, p3}, Lnet/hockeyapp/android/objects/CrashDetails;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 156
    sget-object p0, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppPackage(Ljava/lang/String;)V

    .line 157
    sget-object p0, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppVersionCode(Ljava/lang/String;)V

    .line 158
    sget-object p0, Lnet/hockeyapp/android/Constants;->APP_VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppVersionName(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v3, v0}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppStartDate(Ljava/util/Date;)V

    .line 160
    invoke-virtual {v3, v2}, Lnet/hockeyapp/android/objects/CrashDetails;->setAppCrashDate(Ljava/util/Date;)V

    if-eqz p4, :cond_47

    .line 162
    invoke-virtual {p4}, Lnet/hockeyapp/android/CrashManagerListener;->includeDeviceData()Z

    move-result p0

    if-eqz p0, :cond_5b

    .line 163
    :cond_47
    sget-object p0, Lnet/hockeyapp/android/Constants;->ANDROID_VERSION:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lnet/hockeyapp/android/objects/CrashDetails;->setOsVersion(Ljava/lang/String;)V

    .line 164
    sget-object p0, Lnet/hockeyapp/android/Constants;->ANDROID_BUILD:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lnet/hockeyapp/android/objects/CrashDetails;->setOsBuild(Ljava/lang/String;)V

    .line 165
    sget-object p0, Lnet/hockeyapp/android/Constants;->PHONE_MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lnet/hockeyapp/android/objects/CrashDetails;->setDeviceManufacturer(Ljava/lang/String;)V

    .line 166
    sget-object p0, Lnet/hockeyapp/android/Constants;->PHONE_MODEL:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lnet/hockeyapp/android/objects/CrashDetails;->setDeviceModel(Ljava/lang/String;)V

    :cond_5b
    if-eqz p1, :cond_84

    if-eqz p4, :cond_65

    .line 169
    invoke-virtual {p4}, Lnet/hockeyapp/android/CrashManagerListener;->includeThreadDetails()Z

    move-result p0

    if-eqz p0, :cond_84

    .line 170
    :cond_65
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lnet/hockeyapp/android/objects/CrashDetails;->setThreadName(Ljava/lang/String;)V

    .line 173
    :cond_84
    sget-object p0, Lnet/hockeyapp/android/Constants;->CRASH_IDENTIFIER:Ljava/lang/String;

    if-eqz p0, :cond_95

    if-eqz p4, :cond_90

    invoke-virtual {p4}, Lnet/hockeyapp/android/CrashManagerListener;->includeDeviceIdentifier()Z

    move-result p0

    if-eqz p0, :cond_95

    .line 174
    :cond_90
    sget-object p0, Lnet/hockeyapp/android/Constants;->CRASH_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lnet/hockeyapp/android/objects/CrashDetails;->setReporterKey(Ljava/lang/String;)V

    .line 177
    :cond_95
    invoke-virtual {v3}, Lnet/hockeyapp/android/objects/CrashDetails;->writeCrashReport()V

    if-eqz p4, :cond_f1

    .line 181
    :try_start_9a
    invoke-virtual {p4}, Lnet/hockeyapp/android/CrashManagerListener;->getUserID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/hockeyapp/android/ExceptionHandler;->limitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".user"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/hockeyapp/android/ExceptionHandler;->writeValueToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p4}, Lnet/hockeyapp/android/CrashManagerListener;->getContact()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/hockeyapp/android/ExceptionHandler;->limitedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".contact"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/hockeyapp/android/ExceptionHandler;->writeValueToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p4}, Lnet/hockeyapp/android/CrashManagerListener;->getDescription()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".description"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/hockeyapp/android/ExceptionHandler;->writeValueToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_ea} :catch_eb

    goto :goto_f1

    :catch_eb
    move-exception p0

    const-string p1, "Error saving crash meta data!"

    .line 185
    invoke-static {p1, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f1
    :goto_f1
    return-void
.end method

.method private static writeValueToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 214
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 215
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    invoke-static {p0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_41

    .line 216
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_34} :catch_4b
    .catchall {:try_start_8 .. :try_end_34} :catchall_44

    .line 217
    :try_start_34
    invoke-virtual {v1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3a} :catch_3f
    .catchall {:try_start_34 .. :try_end_3a} :catchall_3c

    move-object v0, v1

    goto :goto_41

    :catchall_3c
    move-exception p0

    move-object v0, v1

    goto :goto_45

    :catch_3f
    move-object v0, v1

    goto :goto_4b

    :cond_41
    :goto_41
    if-eqz v0, :cond_50

    goto :goto_4d

    :catchall_44
    move-exception p0

    :goto_45
    if-eqz v0, :cond_4a

    .line 224
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_4a
    throw p0

    :catch_4b
    :goto_4b
    if-eqz v0, :cond_50

    :goto_4d
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_50
    return-void
.end method


# virtual methods
.method public setListener(Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lnet/hockeyapp/android/ExceptionHandler;->mCrashManagerListener:Lnet/hockeyapp/android/CrashManagerListener;

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    .line 192
    sget-object v0, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 195
    iget-object p0, p0, Lnet/hockeyapp/android/ExceptionHandler;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_25

    .line 197
    :cond_a
    iget-object v0, p0, Lnet/hockeyapp/android/ExceptionHandler;->mCrashManagerListener:Lnet/hockeyapp/android/CrashManagerListener;

    invoke-static {p2, p1, v0}, Lnet/hockeyapp/android/ExceptionHandler;->saveException(Ljava/lang/Throwable;Ljava/lang/Thread;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 199
    iget-boolean v0, p0, Lnet/hockeyapp/android/ExceptionHandler;->mIgnoreDefaultHandler:Z

    if-nez v0, :cond_19

    .line 200
    iget-object p0, p0, Lnet/hockeyapp/android/ExceptionHandler;->mDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_25

    .line 202
    :cond_19
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    const/16 p0, 0xa

    .line 203
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :goto_25
    return-void
.end method
