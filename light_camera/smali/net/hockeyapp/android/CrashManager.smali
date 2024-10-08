.class public Lnet/hockeyapp/android/CrashManager;
.super Ljava/lang/Object;
.source "CrashManager.java"


# static fields
.field private static final ALWAYS_SEND_KEY:Ljava/lang/String; = "always_send_crash_reports"

.field private static final STACK_TRACES_FOUND_CONFIRMED:I = 0x2

.field private static final STACK_TRACES_FOUND_NEW:I = 0x1

.field private static final STACK_TRACES_FOUND_NONE:I = 0x0

.field private static didCrashInLastSession:Z = false

.field private static identifier:Ljava/lang/String; = null

.field private static initializeTimestamp:J = 0x0L

.field private static submitting:Z = false

.field private static urlString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .line 43
    sput-boolean p0, Lnet/hockeyapp/android/CrashManager;->submitting:Z

    return p0
.end method

.method private static contentsOfFile(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_57

    .line 696
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    if-eqz p0, :cond_57

    .line 698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 701
    :try_start_10
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_1e} :catch_4f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1e} :catch_3f
    .catchall {:try_start_10 .. :try_end_1e} :catchall_3d

    .line 703
    :goto_1e
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_31

    .line 704
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "line.separator"

    .line 705
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_30} :catch_3b
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_30} :catch_38
    .catchall {:try_start_1e .. :try_end_30} :catchall_35

    goto :goto_1e

    .line 713
    :cond_31
    :try_start_31
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_52

    goto :goto_52

    :catchall_35
    move-exception p0

    move-object v0, v2

    goto :goto_49

    :catch_38
    move-exception p0

    move-object v0, v2

    goto :goto_40

    :catch_3b
    move-object v0, v2

    goto :goto_4f

    :catchall_3d
    move-exception p0

    goto :goto_49

    :catch_3f
    move-exception p0

    .line 709
    :goto_40
    :try_start_40
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_3d

    if-eqz v0, :cond_52

    .line 713
    :goto_45
    :try_start_45
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_52

    goto :goto_52

    :goto_49
    if-eqz v0, :cond_4e

    :try_start_4b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4e

    .line 715
    :catch_4e
    :cond_4e
    throw p0

    :catch_4f
    :goto_4f
    if-eqz v0, :cond_52

    goto :goto_45

    .line 719
    :catch_52
    :cond_52
    :goto_52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_57
    return-object v0
.end method

.method private static deleteRetryCounter(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    if-eqz p0, :cond_2c

    .line 657
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    if-eqz p0, :cond_2c

    const-string p2, "HockeySDK"

    const/4 v0, 0x0

    .line 659
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 660
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 661
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RETRY_COUNT: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 662
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2c
    return-void
.end method

.method private static deleteStackTrace(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_2e

    .line 674
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    if-eqz p0, :cond_2e

    .line 676
    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    const-string v0, ".stacktrace"

    const-string v1, ".user"

    .line 678
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    const-string v0, ".stacktrace"

    const-string v1, ".contact"

    .line 681
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 682
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    const-string v0, ".stacktrace"

    const-string v1, ".description"

    .line 684
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 685
    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :cond_2e
    return-void
.end method

.method public static deleteStackTraces(Ljava/lang/ref/WeakReference;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 387
    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->searchForStackTraces()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 389
    array-length v1, v0

    if-lez v1, :cond_5e

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " stacktrace(s)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 392
    :goto_24
    array-length v2, v0

    if-ge v1, v2, :cond_5e

    if-eqz p0, :cond_5b

    .line 396
    :try_start_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete stacktrace "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    .line 397
    aget-object v2, v0, v1

    invoke-static {p0, v2}, Lnet/hockeyapp/android/CrashManager;->deleteStackTrace(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 399
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-eqz v2, :cond_5b

    .line 401
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception v2

    .line 405
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5b
    :goto_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_5e
    return-void
.end method

.method public static didCrashInLastSession()Z
    .registers 1

    .line 238
    sget-boolean v0, Lnet/hockeyapp/android/CrashManager;->didCrashInLastSession:Z

    return v0
.end method

.method public static execute(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_c

    .line 167
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->ignoreDefaultHandler()Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v1

    goto :goto_d

    :cond_c
    move v2, v0

    :goto_d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 168
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 170
    invoke-static {v3}, Lnet/hockeyapp/android/CrashManager;->hasStackTraces(Ljava/lang/ref/WeakReference;)I

    move-result v4

    if-ne v4, v1, :cond_70

    .line 172
    sput-boolean v1, Lnet/hockeyapp/android/CrashManager;->didCrashInLastSession:Z

    .line 173
    instance-of v4, p0, Landroid/app/Activity;

    if-nez v4, :cond_23

    goto :goto_24

    :cond_23
    move v1, v0

    :goto_24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 174
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 175
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v4, "always_send_crash_reports"

    invoke-interface {p0, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    or-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p1, :cond_5a

    .line 178
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->shouldAutoUploadCrashes()Z

    move-result v0

    or-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 179
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesFound()Z

    move-result v0

    or-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 181
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onNewCrashesFound()V

    .line 184
    :cond_5a
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_68

    .line 185
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {v3, p1, p0}, Lnet/hockeyapp/android/CrashManager;->showDialog(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    goto :goto_87

    .line 187
    :cond_68
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {v3, p1, p0}, Lnet/hockeyapp/android/CrashManager;->sendCrashes(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    goto :goto_87

    :cond_70
    const/4 p0, 0x2

    if-ne v4, p0, :cond_80

    if-eqz p1, :cond_78

    .line 191
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onConfirmedCrashesFound()V

    .line 194
    :cond_78
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {v3, p1, p0}, Lnet/hockeyapp/android/CrashManager;->sendCrashes(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    goto :goto_87

    .line 196
    :cond_80
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {v3, p1, p0}, Lnet/hockeyapp/android/CrashManager;->registerHandler(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    :goto_87
    return-void
.end method

.method private static getAlertTitle(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 553
    invoke-static {p0}, Lnet/hockeyapp/android/utils/Util;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 555
    sget v1, Lnet/hockeyapp/android/R$string;->hockeyapp_crash_dialog_title:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    .line 556
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getConfirmedFilenames(Ljava/lang/ref/WeakReference;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_24

    .line 792
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    if-eqz p0, :cond_24

    const-string v0, "HockeySDK"

    const/4 v1, 0x0

    .line 794
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "ConfirmedFilenames"

    const-string v1, ""

    .line 795
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return-object p0
.end method

.method public static getInitializeTimestamp()J
    .registers 2

    .line 802
    sget-wide v0, Lnet/hockeyapp/android/CrashManager;->initializeTimestamp:J

    return-wide v0
.end method

.method public static getLastCrashDetails()Lnet/hockeyapp/android/objects/CrashDetails;
    .registers 10

    .line 242
    sget-object v0, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5b

    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->didCrashInLastSession()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_5b

    .line 246
    :cond_c
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    new-instance v2, Lnet/hockeyapp/android/CrashManager$1;

    invoke-direct {v2}, Lnet/hockeyapp/android/CrashManager$1;-><init>()V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 257
    array-length v4, v0

    const/4 v5, 0x0

    move-object v6, v1

    :goto_32
    if-ge v5, v4, :cond_46

    aget-object v7, v0, v5

    .line 258
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v8, v8, v2

    if-lez v8, :cond_43

    .line 259
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    move-object v6, v7

    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    :cond_46
    if-eqz v6, :cond_5a

    .line 264
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 266
    :try_start_4e
    invoke-static {v6}, Lnet/hockeyapp/android/objects/CrashDetails;->fromFile(Ljava/io/File;)Lnet/hockeyapp/android/objects/CrashDetails;

    move-result-object v1
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_52} :catch_53

    goto :goto_5a

    :catch_53
    move-exception v0

    .line 268
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_5a
    :goto_5a
    return-object v1

    :cond_5b
    :goto_5b
    return-object v1
.end method

.method private static getURLString()Ljava/lang/String;
    .registers 2

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/hockeyapp/android/CrashManager;->urlString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "api/2/apps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/hockeyapp/android/CrashManager;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/crashes/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static handleUserInput(Lnet/hockeyapp/android/objects/CrashManagerUserInput;Lnet/hockeyapp/android/objects/CrashMetaData;Lnet/hockeyapp/android/CrashManagerListener;Ljava/lang/ref/WeakReference;Z)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/hockeyapp/android/objects/CrashManagerUserInput;",
            "Lnet/hockeyapp/android/objects/CrashMetaData;",
            "Lnet/hockeyapp/android/CrashManagerListener;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;Z)Z"
        }
    .end annotation

    .line 428
    sget-object v0, Lnet/hockeyapp/android/CrashManager$7;->$SwitchMap$net$hockeyapp$android$objects$CrashManagerUserInput:[I

    invoke-virtual {p0}, Lnet/hockeyapp/android/objects/CrashManagerUserInput;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_40

    return v0

    .line 453
    :pswitch_e
    invoke-static {p3, p2, p4, p1}, Lnet/hockeyapp/android/CrashManager;->sendCrashes(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;ZLnet/hockeyapp/android/objects/CrashMetaData;)V

    return v1

    :pswitch_12
    const/4 p0, 0x0

    if-eqz p3, :cond_1b

    .line 440
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    :cond_1b
    if-nez p0, :cond_1e

    return v0

    .line 447
    :cond_1e
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 448
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "always_send_crash_reports"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 450
    invoke-static {p3, p2, p4, p1}, Lnet/hockeyapp/android/CrashManager;->sendCrashes(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;ZLnet/hockeyapp/android/objects/CrashMetaData;)V

    return v1

    :pswitch_33
    if-eqz p2, :cond_38

    .line 431
    invoke-virtual {p2}, Lnet/hockeyapp/android/CrashManagerListener;->onUserDeniedCrashes()V

    .line 434
    :cond_38
    invoke-static {p3}, Lnet/hockeyapp/android/CrashManager;->deleteStackTraces(Ljava/lang/ref/WeakReference;)V

    .line 435
    invoke-static {p3, p2, p4}, Lnet/hockeyapp/android/CrashManager;->registerHandler(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    return v1

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_33
        :pswitch_12
        :pswitch_e
    .end packed-switch
.end method

.method public static hasStackTraces(Ljava/lang/ref/WeakReference;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;)I"
        }
    .end annotation

    .line 209
    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->searchForStackTraces()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_26

    .line 212
    array-length v3, v0

    if-lez v3, :cond_26

    .line 214
    :try_start_b
    invoke-static {p0}, Lnet/hockeyapp/android/CrashManager;->getConfirmedFilenames(Ljava/lang/ref/WeakReference;)Ljava/util/List;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_10

    goto :goto_11

    :catch_10
    const/4 p0, 0x0

    :goto_11
    if-eqz p0, :cond_25

    const/4 v3, 0x2

    .line 223
    array-length v4, v0

    :goto_15
    if-ge v1, v4, :cond_23

    aget-object v5, v0, v1

    .line 224
    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    goto :goto_25

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_23
    move v1, v3

    goto :goto_26

    :cond_25
    :goto_25
    move v1, v2

    :cond_26
    :goto_26
    return v1
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 5

    const/4 v0, 0x1

    .line 154
    invoke-static {p0, p1, p2, p3, v0}, Lnet/hockeyapp/android/CrashManager;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    return-void
.end method

.method private static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .registers 9

    if-eqz p0, :cond_41

    .line 486
    sget-wide v0, Lnet/hockeyapp/android/CrashManager;->initializeTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 487
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lnet/hockeyapp/android/CrashManager;->initializeTimestamp:J

    .line 489
    :cond_10
    sput-object p1, Lnet/hockeyapp/android/CrashManager;->urlString:Ljava/lang/String;

    .line 490
    invoke-static {p2}, Lnet/hockeyapp/android/utils/Util;->sanitizeAppIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lnet/hockeyapp/android/CrashManager;->identifier:Ljava/lang/String;

    const/4 p1, 0x0

    .line 491
    sput-boolean p1, Lnet/hockeyapp/android/CrashManager;->didCrashInLastSession:Z

    .line 493
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 495
    sget-object p2, Lnet/hockeyapp/android/CrashManager;->identifier:Ljava/lang/String;

    if-nez p2, :cond_26

    .line 496
    sget-object p2, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    sput-object p2, Lnet/hockeyapp/android/CrashManager;->identifier:Ljava/lang/String;

    :cond_26
    if-eqz p4, :cond_41

    if-eqz p3, :cond_31

    .line 500
    invoke-virtual {p3}, Lnet/hockeyapp/android/CrashManagerListener;->ignoreDefaultHandler()Z

    move-result p2

    if-eqz p2, :cond_31

    const/4 p1, 0x1

    :cond_31
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 501
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 502
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p2, p3, p0}, Lnet/hockeyapp/android/CrashManager;->registerHandler(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    :cond_41
    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 5

    const-string v0, "https://sdk.hockeyapp.net/"

    const/4 v1, 0x1

    .line 139
    invoke-static {p0, v0, p1, p2, v1}, Lnet/hockeyapp/android/CrashManager;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    return-void
.end method

.method private static joinArray([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 752
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 753
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_19

    .line 754
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 755
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_16

    .line 756
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 759
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static register(Landroid/content/Context;)V
    .registers 3

    .line 81
    invoke-static {p0}, Lnet/hockeyapp/android/utils/Util;->getAppIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 85
    invoke-static {p0, v0}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 83
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HockeyApp app identifier was not configured correctly in manifest or build configuration."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "https://sdk.hockeyapp.net/"

    const/4 v1, 0x0

    .line 97
    invoke-static {p0, v0, p1, v1}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V

    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 5

    const/4 v0, 0x0

    .line 124
    invoke-static {p0, p1, p2, p3, v0}, Lnet/hockeyapp/android/CrashManager;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 125
    invoke-static {p0, p3}, Lnet/hockeyapp/android/CrashManager;->execute(Landroid/content/Context;Lnet/hockeyapp/android/CrashManagerListener;)V

    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 4

    const-string v0, "https://sdk.hockeyapp.net/"

    .line 110
    invoke-static {p0, v0, p1, p2}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V

    return-void
.end method

.method private static registerHandler(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Lnet/hockeyapp/android/CrashManagerListener;",
            "Z)V"
        }
    .end annotation

    .line 598
    sget-object p0, Lnet/hockeyapp/android/Constants;->APP_VERSION:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_45

    sget-object p0, Lnet/hockeyapp/android/Constants;->APP_PACKAGE:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_45

    .line 600
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current handler class = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    .line 606
    :cond_32
    instance-of v0, p0, Lnet/hockeyapp/android/ExceptionHandler;

    if-eqz v0, :cond_3c

    .line 607
    check-cast p0, Lnet/hockeyapp/android/ExceptionHandler;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/ExceptionHandler;->setListener(Lnet/hockeyapp/android/CrashManagerListener;)V

    goto :goto_4a

    .line 609
    :cond_3c
    new-instance v0, Lnet/hockeyapp/android/ExceptionHandler;

    invoke-direct {v0, p0, p1, p2}, Lnet/hockeyapp/android/ExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_4a

    :cond_45
    const-string p0, "Exception handler not set because version or package is null."

    .line 612
    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    :goto_4a
    return-void
.end method

.method public static resetAlwaysSend(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1b

    .line 470
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    if-eqz p0, :cond_1b

    .line 473
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 474
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "always_send_crash_reports"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1b
    return-void
.end method

.method private static saveConfirmedStackTraces(Ljava/lang/ref/WeakReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_27

    .line 732
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    if-eqz p0, :cond_27

    .line 735
    :try_start_a
    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->searchForStackTraces()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "HockeySDK"

    const/4 v2, 0x0

    .line 736
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 737
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "ConfirmedFilenames"

    const-string v2, "|"

    .line 738
    invoke-static {v0, v2}, Lnet/hockeyapp/android/CrashManager;->joinArray([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 739
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_27} :catch_27

    :catch_27
    :cond_27
    return-void
.end method

.method private static searchForStackTraces()[Ljava/lang/String;
    .registers 3

    .line 766
    sget-object v0, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    if-eqz v0, :cond_4c

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Looking for exceptions in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    .line 770
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lnet/hockeyapp/android/Constants;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_42

    .line 772
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_42

    const/4 v0, 0x0

    .line 773
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 777
    :cond_42
    new-instance v1, Lnet/hockeyapp/android/CrashManager$6;

    invoke-direct {v1}, Lnet/hockeyapp/android/CrashManager$6;-><init>()V

    .line 782
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4c
    const-string v0, "Can\'t search for exception as file path is null."

    .line 784
    invoke-static {v0}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static sendCrashes(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Lnet/hockeyapp/android/CrashManagerListener;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 564
    invoke-static {p0, p1, p2, v0}, Lnet/hockeyapp/android/CrashManager;->sendCrashes(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;ZLnet/hockeyapp/android/objects/CrashMetaData;)V

    return-void
.end method

.method private static sendCrashes(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;ZLnet/hockeyapp/android/objects/CrashMetaData;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Lnet/hockeyapp/android/CrashManagerListener;",
            "Z",
            "Lnet/hockeyapp/android/objects/CrashMetaData;",
            ")V"
        }
    .end annotation

    .line 572
    invoke-static {p0}, Lnet/hockeyapp/android/CrashManager;->saveConfirmedStackTraces(Ljava/lang/ref/WeakReference;)V

    .line 573
    invoke-static {p0, p1, p2}, Lnet/hockeyapp/android/CrashManager;->registerHandler(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V

    .line 575
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    if-eqz p2, :cond_15

    .line 576
    invoke-static {p2}, Lnet/hockeyapp/android/utils/Util;->isConnectedToNetwork(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_15

    return-void

    .line 581
    :cond_15
    sget-boolean p2, Lnet/hockeyapp/android/CrashManager;->submitting:Z

    if-nez p2, :cond_24

    const/4 p2, 0x1

    .line 582
    sput-boolean p2, Lnet/hockeyapp/android/CrashManager;->submitting:Z

    .line 584
    new-instance p2, Lnet/hockeyapp/android/CrashManager$5;

    invoke-direct {p2, p0, p1, p3}, Lnet/hockeyapp/android/CrashManager$5;-><init>(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Lnet/hockeyapp/android/objects/CrashMetaData;)V

    .line 590
    invoke-virtual {p2}, Lnet/hockeyapp/android/CrashManager$5;->start()V

    :cond_24
    return-void
.end method

.method private static showDialog(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Lnet/hockeyapp/android/CrashManagerListener;",
            "Z)V"
        }
    .end annotation

    if-eqz p0, :cond_9

    .line 514
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_d

    return-void

    :cond_d
    if-eqz p1, :cond_16

    .line 521
    invoke-virtual {p1}, Lnet/hockeyapp/android/CrashManagerListener;->onHandleAlertView()Z

    move-result v1

    if-eqz v1, :cond_16

    return-void

    .line 525
    :cond_16
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 526
    invoke-static {v0}, Lnet/hockeyapp/android/CrashManager;->getAlertTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 527
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 528
    sget v0, Lnet/hockeyapp/android/R$string;->hockeyapp_crash_dialog_message:I

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 530
    sget v0, Lnet/hockeyapp/android/R$string;->hockeyapp_crash_dialog_negative_button:I

    new-instance v2, Lnet/hockeyapp/android/CrashManager$2;

    invoke-direct {v2, p1, p0, p2}, Lnet/hockeyapp/android/CrashManager$2;-><init>(Lnet/hockeyapp/android/CrashManagerListener;Ljava/lang/ref/WeakReference;Z)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 536
    sget v0, Lnet/hockeyapp/android/R$string;->hockeyapp_crash_dialog_neutral_button:I

    new-instance v2, Lnet/hockeyapp/android/CrashManager$3;

    invoke-direct {v2, p1, p0, p2}, Lnet/hockeyapp/android/CrashManager$3;-><init>(Lnet/hockeyapp/android/CrashManagerListener;Ljava/lang/ref/WeakReference;Z)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 542
    sget v0, Lnet/hockeyapp/android/R$string;->hockeyapp_crash_dialog_positive_button:I

    new-instance v2, Lnet/hockeyapp/android/CrashManager$4;

    invoke-direct {v2, p1, p0, p2}, Lnet/hockeyapp/android/CrashManager$4;-><init>(Lnet/hockeyapp/android/CrashManagerListener;Ljava/lang/ref/WeakReference;Z)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 549
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static submitStackTraces(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Lnet/hockeyapp/android/CrashManagerListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 282
    invoke-static {p0, p1, v0}, Lnet/hockeyapp/android/CrashManager;->submitStackTraces(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Lnet/hockeyapp/android/objects/CrashMetaData;)V

    return-void
.end method

.method public static submitStackTraces(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/CrashManagerListener;Lnet/hockeyapp/android/objects/CrashMetaData;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Lnet/hockeyapp/android/CrashManagerListener;",
            "Lnet/hockeyapp/android/objects/CrashMetaData;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 293
    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->searchForStackTraces()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 294
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v4, :cond_1c6

    .line 296
    array-length v6, v4

    if-lez v6, :cond_1c6

    .line 297
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " stacktrace(s)."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    move-object v7, v0

    move v6, v5

    .line 299
    :goto_2c
    array-length v0, v4

    if-ge v6, v0, :cond_1c6

    const/4 v8, 0x0

    .line 303
    :try_start_30
    aget-object v0, v4, v6

    .line 304
    invoke-static {v1, v0}, Lnet/hockeyapp/android/CrashManager;->contentsOfFile(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 305
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_113

    .line 308
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Transmitting crash data: \n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    const-string v10, ".stacktrace"

    const-string v11, ".user"

    .line 311
    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lnet/hockeyapp/android/CrashManager;->contentsOfFile(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ".stacktrace"

    const-string v12, ".contact"

    .line 312
    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lnet/hockeyapp/android/CrashManager;->contentsOfFile(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz p2, :cond_80

    .line 315
    invoke-virtual/range {p2 .. p2}, Lnet/hockeyapp/android/objects/CrashMetaData;->getUserID()Ljava/lang/String;

    move-result-object v12

    .line 316
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_75

    move-object v10, v12

    .line 319
    :cond_75
    invoke-virtual/range {p2 .. p2}, Lnet/hockeyapp/android/objects/CrashMetaData;->getUserEmail()Ljava/lang/String;

    move-result-object v12

    .line 320
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_80

    move-object v11, v12

    :cond_80
    const-string v12, ".stacktrace"

    const-string v13, ".description"

    .line 326
    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/hockeyapp/android/CrashManager;->contentsOfFile(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_93

    .line 327
    invoke-virtual/range {p2 .. p2}, Lnet/hockeyapp/android/objects/CrashMetaData;->getUserDescription()Ljava/lang/String;

    move-result-object v12

    goto :goto_95

    :cond_93
    const-string v12, ""

    .line 328
    :goto_95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const/4 v14, 0x1

    if-nez v13, :cond_ba

    .line 329
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_b0

    const-string v13, "%s\n\nLog:\n%s"

    const/4 v15, 0x2

    .line 330
    new-array v15, v15, [Ljava/lang/Object;

    aput-object v12, v15, v5

    aput-object v0, v15, v14

    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_ba

    :cond_b0
    const-string v12, "Log:\n%s"

    .line 332
    new-array v13, v14, [Ljava/lang/Object;

    aput-object v0, v13, v5

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 336
    :cond_ba
    :goto_ba
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v13, "raw"

    .line 338
    invoke-interface {v0, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "userID"

    .line 339
    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "contact"

    .line 340
    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "description"

    .line 341
    invoke-interface {v0, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "sdk"

    const-string v10, "HockeySDK"

    .line 342
    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "sdk_version"

    const-string v10, "4.1.2"

    .line 343
    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    new-instance v9, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    invoke-static {}, Lnet/hockeyapp/android/CrashManager;->getURLString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "POST"

    .line 346
    invoke-virtual {v9, v10}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->setRequestMethod(Ljava/lang/String;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    move-result-object v9

    .line 347
    invoke-virtual {v9, v0}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->writeFormFields(Ljava/util/Map;)Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lnet/hockeyapp/android/utils/HttpURLConnectionBuilder;->build()Ljava/net/HttpURLConnection;

    move-result-object v9
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_f8} :catch_14f
    .catchall {:try_start_30 .. :try_end_f8} :catchall_14d

    .line 350
    :try_start_f8
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v8, 0xca

    if-eq v0, v8, :cond_106

    const/16 v8, 0xc9

    if-ne v0, v8, :cond_105

    goto :goto_106

    :cond_105
    move v14, v5

    .line 352
    :cond_106
    :goto_106
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_10a} :catch_110
    .catchall {:try_start_f8 .. :try_end_10a} :catchall_10c

    move-object v8, v9

    goto :goto_114

    :catchall_10c
    move-exception v0

    move-object v8, v9

    goto/16 :goto_18e

    :catch_110
    move-exception v0

    move-object v8, v9

    goto :goto_150

    :cond_113
    move-object v0, v7

    :goto_114
    if-eqz v8, :cond_119

    .line 359
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 361
    :cond_119
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_138

    const-string v7, "Transmission succeeded"

    .line 362
    invoke-static {v7}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    .line 363
    aget-object v7, v4, v6

    invoke-static {v1, v7}, Lnet/hockeyapp/android/CrashManager;->deleteStackTrace(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    if-eqz p1, :cond_14b

    .line 366
    invoke-virtual/range {p1 .. p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesSent()V

    .line 367
    aget-object v7, v4, v6

    invoke-virtual/range {p1 .. p1}, Lnet/hockeyapp/android/CrashManagerListener;->getMaxRetryAttempts()I

    move-result v8

    invoke-static {v1, v7, v8}, Lnet/hockeyapp/android/CrashManager;->deleteRetryCounter(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V

    goto :goto_14b

    :cond_138
    const-string v7, "Transmission failed, will retry on next register() call"

    .line 370
    invoke-static {v7}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    if-eqz p1, :cond_14b

    .line 372
    invoke-virtual/range {p1 .. p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesNotSent()V

    .line 373
    aget-object v7, v4, v6

    invoke-virtual/range {p1 .. p1}, Lnet/hockeyapp/android/CrashManagerListener;->getMaxRetryAttempts()I

    move-result v8

    invoke-static {v1, v7, v8}, Lnet/hockeyapp/android/CrashManager;->updateRetryCounter(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V

    :cond_14b
    :goto_14b
    move-object v7, v0

    goto :goto_18a

    :catchall_14d
    move-exception v0

    goto :goto_18e

    :catch_14f
    move-exception v0

    .line 356
    :goto_150
    :try_start_150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_153
    .catchall {:try_start_150 .. :try_end_153} :catchall_14d

    if-eqz v8, :cond_158

    .line 359
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 361
    :cond_158
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_177

    const-string v0, "Transmission succeeded"

    .line 362
    invoke-static {v0}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    .line 363
    aget-object v0, v4, v6

    invoke-static {v1, v0}, Lnet/hockeyapp/android/CrashManager;->deleteStackTrace(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    if-eqz p1, :cond_18a

    .line 366
    invoke-virtual/range {p1 .. p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesSent()V

    .line 367
    aget-object v0, v4, v6

    invoke-virtual/range {p1 .. p1}, Lnet/hockeyapp/android/CrashManagerListener;->getMaxRetryAttempts()I

    move-result v8

    invoke-static {v1, v0, v8}, Lnet/hockeyapp/android/CrashManager;->deleteRetryCounter(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V

    goto :goto_18a

    :cond_177
    const-string v0, "Transmission failed, will retry on next register() call"

    .line 370
    invoke-static {v0}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    if-eqz p1, :cond_18a

    .line 372
    invoke-virtual/range {p1 .. p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesNotSent()V

    .line 373
    aget-object v0, v4, v6

    invoke-virtual/range {p1 .. p1}, Lnet/hockeyapp/android/CrashManagerListener;->getMaxRetryAttempts()I

    move-result v8

    invoke-static {v1, v0, v8}, Lnet/hockeyapp/android/CrashManager;->updateRetryCounter(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V

    :cond_18a
    :goto_18a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2c

    :goto_18e
    if-eqz v8, :cond_193

    .line 359
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 361
    :cond_193
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1b2

    const-string v3, "Transmission succeeded"

    .line 362
    invoke-static {v3}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    .line 363
    aget-object v3, v4, v6

    invoke-static {v1, v3}, Lnet/hockeyapp/android/CrashManager;->deleteStackTrace(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    if-eqz p1, :cond_1c5

    .line 366
    invoke-virtual/range {p1 .. p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesSent()V

    .line 367
    aget-object v3, v4, v6

    invoke-virtual/range {p1 .. p1}, Lnet/hockeyapp/android/CrashManagerListener;->getMaxRetryAttempts()I

    move-result v2

    invoke-static {v1, v3, v2}, Lnet/hockeyapp/android/CrashManager;->deleteRetryCounter(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V

    goto :goto_1c5

    :cond_1b2
    const-string v3, "Transmission failed, will retry on next register() call"

    .line 370
    invoke-static {v3}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;)V

    if-eqz p1, :cond_1c5

    .line 372
    invoke-virtual/range {p1 .. p1}, Lnet/hockeyapp/android/CrashManagerListener;->onCrashesNotSent()V

    .line 373
    aget-object v3, v4, v6

    invoke-virtual/range {p1 .. p1}, Lnet/hockeyapp/android/CrashManagerListener;->getMaxRetryAttempts()I

    move-result v2

    invoke-static {v1, v3, v2}, Lnet/hockeyapp/android/CrashManager;->updateRetryCounter(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V

    :cond_1c5
    :goto_1c5
    throw v0

    :cond_1c6
    return-void
.end method

.method private static updateRetryCounter(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    return-void

    :cond_4
    if-eqz p0, :cond_50

    .line 633
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_50

    const-string v1, "HockeySDK"

    const/4 v2, 0x0

    .line 635
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 636
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RETRY_COUNT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lt v0, p2, :cond_37

    .line 640
    invoke-static {p0, p1}, Lnet/hockeyapp/android/CrashManager;->deleteStackTrace(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    .line 641
    invoke-static {p0, p1, p2}, Lnet/hockeyapp/android/CrashManager;->deleteRetryCounter(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V

    goto :goto_50

    .line 643
    :cond_37
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RETRY_COUNT: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 644
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_50
    :goto_50
    return-void
.end method
