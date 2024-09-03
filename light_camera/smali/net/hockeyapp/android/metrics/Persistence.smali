.class Lnet/hockeyapp/android/metrics/Persistence;
.super Ljava/lang/Object;
.source "Persistence.java"


# static fields
.field private static final BIT_TELEMETRY_DIRECTORY:Ljava/lang/String; = "/net.hockeyapp.android/telemetry/"

.field private static final LOCK:Ljava/lang/Object;

.field private static final MAX_FILE_COUNT:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String; = "HA-MetricsPersistence"


# instance fields
.field protected mServedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTelemetryDirectory:Ljava/io/File;

.field private final mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected mWeakSender:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lnet/hockeyapp/android/metrics/Sender;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/hockeyapp/android/metrics/Persistence;->LOCK:Ljava/lang/Object;

    const/16 v0, 0x32

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lnet/hockeyapp/android/metrics/Persistence;->MAX_FILE_COUNT:Ljava/lang/Integer;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/io/File;Lnet/hockeyapp/android/metrics/Sender;)V
    .registers 5

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mWeakContext:Ljava/lang/ref/WeakReference;

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x33

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/Persistence;->mServedFiles:Ljava/util/ArrayList;

    .line 67
    iput-object p2, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    .line 68
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lnet/hockeyapp/android/metrics/Persistence;->mWeakSender:Ljava/lang/ref/WeakReference;

    .line 69
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Persistence;->createDirectoriesIfNecessary()V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lnet/hockeyapp/android/metrics/Sender;)V
    .registers 6

    .line 79
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/net.hockeyapp.android/telemetry/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/hockeyapp/android/metrics/Persistence;-><init>(Landroid/content/Context;Ljava/io/File;Lnet/hockeyapp/android/metrics/Sender;)V

    .line 80
    invoke-virtual {p0, p2}, Lnet/hockeyapp/android/metrics/Persistence;->setSender(Lnet/hockeyapp/android/metrics/Sender;)V

    return-void
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .line 307
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mWeakContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    .line 308
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method


# virtual methods
.method protected createDirectoriesIfNecessary()V
    .registers 4

    const-string v0, "Successfully created directory"

    const-string v1, "Error creating directory"

    .line 291
    iget-object v2, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_23

    .line 292
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_1e

    const-string p0, "HA-MetricsPersistence"

    .line 293
    invoke-static {p0, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :cond_1e
    const-string p0, "HA-MetricsPersistence"

    .line 295
    invoke-static {p0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method

.method protected deleteFile(Ljava/io/File;)V
    .registers 6

    if-eqz p1, :cond_4a

    .line 236
    sget-object v0, Lnet/hockeyapp/android/metrics/Persistence;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_5
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_26

    const-string p0, "HA-MetricsPersistence"

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error deleting telemetry file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    :cond_26
    const-string v1, "HA-MetricsPersistence"

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully deleted telemetry file at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mServedFiles:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 244
    :goto_45
    monitor-exit v0

    goto :goto_51

    :catchall_47
    move-exception p0

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_5 .. :try_end_49} :catchall_47

    throw p0

    :cond_4a
    const-string p0, "HA-MetricsPersistence"

    const-string p1, "Couldn\'t delete file, the reference to the file was null"

    .line 246
    invoke-static {p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_51
    return-void
.end method

.method protected getSender()Lnet/hockeyapp/android/metrics/Sender;
    .registers 2

    .line 321
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mWeakSender:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    .line 322
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mWeakSender:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/hockeyapp/android/metrics/Sender;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method protected hasFilesAvailable()Z
    .registers 1

    .line 192
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Persistence;->nextAvailableFileInDirectory()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method protected isFreeSpaceAvailable()Z
    .registers 4

    .line 270
    sget-object v0, Lnet/hockeyapp/android/metrics/Persistence;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_3
    invoke-direct {p0}, Lnet/hockeyapp/android/metrics/Persistence;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_44

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/net.hockeyapp.android/telemetry/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 275
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 276
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_42

    .line 278
    array-length p0, p0

    sget-object v1, Lnet/hockeyapp/android/metrics/Persistence;->MAX_FILE_COUNT:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge p0, v1, :cond_42

    const/4 v2, 0x1

    :cond_42
    monitor-exit v0

    return v2

    .line 281
    :cond_44
    monitor-exit v0

    return v2

    :catchall_46
    move-exception p0

    .line 282
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw p0
.end method

.method protected load(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    .line 154
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_9c

    const/4 v0, 0x0

    .line 158
    :try_start_8
    sget-object v1, Lnet/hockeyapp/android/metrics/Persistence;->LOCK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_3d
    .catchall {:try_start_8 .. :try_end_b} :catchall_3b

    .line 159
    :try_start_b
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 160
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 161
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_38

    .line 163
    :goto_1a
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_26

    int-to-char p1, p1

    .line 164
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 166
    :cond_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_35

    .line 174
    :try_start_27
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2c

    goto/16 :goto_9c

    :catch_2c
    move-exception p1

    const-string v0, "HA-MetricsPersistence"

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_66

    :catchall_35
    move-exception p1

    move-object v0, v2

    goto :goto_39

    :catchall_38
    move-exception p1

    .line 166
    :goto_39
    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw p1
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3b} :catch_3d
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception p0

    goto :goto_7a

    :catch_3d
    move-exception p1

    :try_start_3e
    const-string v1, "HA-MetricsPersistence"

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading telemetry data from file with exception message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-static {v1, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_3e .. :try_end_58} :catchall_3b

    if-eqz v0, :cond_9c

    .line 174
    :try_start_5a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_9c

    :catch_5e
    move-exception p1

    const-string v0, "HA-MetricsPersistence"

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_66
    const-string v2, "Error closing stream."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-static {v0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    :goto_7a
    if-eqz v0, :cond_9b

    .line 174
    :try_start_7c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_9b

    :catch_80
    move-exception p1

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error closing stream."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HA-MetricsPersistence"

    .line 177
    invoke-static {v0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_9b
    :goto_9b
    throw p0

    .line 183
    :cond_9c
    :goto_9c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected makeAvailable(Ljava/io/File;)V
    .registers 3

    .line 257
    sget-object v0, Lnet/hockeyapp/android/metrics/Persistence;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_d

    .line 259
    :try_start_5
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mServedFiles:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_f

    .line 261
    :cond_d
    :goto_d
    monitor-exit v0

    return-void

    :goto_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_b

    throw p0
.end method

.method protected nextAvailableFileInDirectory()Ljava/io/File;
    .registers 8

    .line 202
    sget-object v0, Lnet/hockeyapp/android/metrics/Persistence;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_3
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    if-eqz v1, :cond_6a

    .line 204
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 207
    array-length v2, v1

    if-lez v2, :cond_6a

    const/4 v2, 0x0

    .line 208
    :goto_13
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_6a

    .line 210
    aget-object v3, v1, v2

    .line 211
    iget-object v4, p0, Lnet/hockeyapp/android/metrics/Persistence;->mServedFiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_48

    const-string v1, "HA-MetricsPersistence"

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The directory "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (ADDING TO SERVED AND RETURN)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mServedFiles:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    monitor-exit v0

    return-object v3

    :cond_48
    const-string v4, "HA-MetricsPersistence"

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (WAS ALREADY SERVED)"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lnet/hockeyapp/android/utils/HockeyLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 221
    :cond_6a
    iget-object v1, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    if-eqz v1, :cond_8f

    const-string v1, "HA-MetricsPersistence"

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " did not contain any unserved files"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8f
    const/4 p0, 0x0

    .line 225
    monitor-exit v0

    return-object p0

    :catchall_92
    move-exception p0

    .line 226
    monitor-exit v0
    :try_end_94
    .catchall {:try_start_3 .. :try_end_94} :catchall_92

    throw p0
.end method

.method protected persist([Ljava/lang/String;)V
    .registers 7

    .line 92
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Persistence;->isFreeSpaceAvailable()Z

    move-result v0

    if-nez v0, :cond_15

    const-string p1, "HA-MetricsPersistence"

    const-string v0, "Failed to persist file: Too many files on disk."

    .line 93
    invoke-static {p1, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Persistence;->getSender()Lnet/hockeyapp/android/metrics/Sender;

    move-result-object p0

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->triggerSending()V

    goto :goto_42

    .line 96
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v1, :cond_31

    aget-object v3, p1, v2

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2b

    const/16 v4, 0xa

    .line 100
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    :cond_2b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 105
    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/Persistence;->writeToDisk(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 108
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Persistence;->getSender()Lnet/hockeyapp/android/metrics/Sender;

    move-result-object p0

    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->triggerSending()V

    :cond_42
    :goto_42
    return-void
.end method

.method protected setSender(Lnet/hockeyapp/android/metrics/Sender;)V
    .registers 3

    .line 334
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mWeakSender:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected writeToDisk(Ljava/lang/String;)Z
    .registers 8

    .line 122
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 123
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    .line 126
    :try_start_e
    sget-object v3, Lnet/hockeyapp/android/metrics/Persistence;->LOCK:Ljava/lang/Object;

    monitor-enter v3
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_6f
    .catchall {:try_start_e .. :try_end_11} :catchall_6d

    .line 127
    :try_start_11
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lnet/hockeyapp/android/metrics/Persistence;->mTelemetryDirectory:Ljava/io/File;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    new-instance p0, Ljava/io/FileOutputStream;

    const/4 v0, 0x1

    invoke-direct {p0, v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_6a

    .line 129
    :try_start_32
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    const-string p1, "HA-MetricsPersistence"

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saving data to: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    monitor-exit v3
    :try_end_54
    .catchall {:try_start_32 .. :try_end_54} :catchall_67

    .line 132
    :try_start_54
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_58} :catch_64
    .catchall {:try_start_54 .. :try_end_58} :catchall_61

    .line 138
    :try_start_58
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_95

    :catch_5c
    move-exception p0

    .line 140
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_95

    :catchall_61
    move-exception p1

    move-object v2, p0

    goto :goto_9a

    :catch_64
    move-exception p1

    move-object v2, p0

    goto :goto_70

    :catchall_67
    move-exception p1

    move-object v2, p0

    goto :goto_6b

    :catchall_6a
    move-exception p1

    .line 131
    :goto_6b
    :try_start_6b
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    :try_start_6c
    throw p1
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6d} :catch_6f
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception p1

    goto :goto_9a

    :catch_6f
    move-exception p1

    :goto_70
    :try_start_70
    const-string p0, "HA-MetricsPersistence"

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to save data with exception: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_70 .. :try_end_8a} :catchall_6d

    if-eqz v2, :cond_94

    .line 138
    :try_start_8c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_94

    :catch_90
    move-exception p0

    .line 140
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_94
    :goto_94
    move-object p1, v1

    .line 144
    :goto_95
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :goto_9a
    if-eqz v2, :cond_a4

    .line 138
    :try_start_9c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0

    goto :goto_a4

    :catch_a0
    move-exception p0

    .line 140
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    :cond_a4
    :goto_a4
    throw p1
.end method
