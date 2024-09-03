.class public Lnet/hockeyapp/android/metrics/Sender;
.super Ljava/lang/Object;
.source "Sender.java"


# static fields
.field static final DEFAULT_ENDPOINT_URL:Ljava/lang/String; = "https://gate.hockeyapp.net/v2/track"

.field static final DEFAULT_SENDER_CONNECT_TIMEOUT:I = 0x3a98

.field static final DEFAULT_SENDER_READ_TIMEOUT:I = 0x2710

.field static final MAX_REQUEST_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "HockeyApp-Metrics"


# instance fields
.field private mCustomServerURL:Ljava/lang/String;

.field private mRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mWeakPersistence:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lnet/hockeyapp/android/metrics/Persistence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/Sender;->mRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private logRequest(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_98

    if-eqz p2, :cond_98

    :try_start_5
    const-string v1, "HockeyApp-Metrics"

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending payload:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HockeyApp-Metrics"

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/Sender;->getWriter(Ljava/net/HttpURLConnection;)Ljava/io/Writer;

    move-result-object p0
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3d} :catch_4c
    .catchall {:try_start_5 .. :try_end_3d} :catchall_4a

    .line 321
    :try_start_3d
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_43} :catch_47
    .catchall {:try_start_3d .. :try_end_43} :catchall_44

    goto :goto_99

    :catchall_44
    move-exception p1

    move-object v0, p0

    goto :goto_76

    :catch_47
    move-exception p1

    move-object v0, p0

    goto :goto_4d

    :catchall_4a
    move-exception p1

    goto :goto_76

    :catch_4c
    move-exception p1

    :goto_4d
    :try_start_4d
    const-string p0, "HockeyApp-Metrics"

    .line 325
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t log data with: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_4d .. :try_end_67} :catchall_4a

    if-eqz v0, :cond_ba

    .line 329
    :try_start_69
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_ba

    :catch_6d
    move-exception p0

    const-string p1, "HockeyApp-Metrics"

    .line 331
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_a7

    :goto_76
    if-eqz v0, :cond_97

    .line 329
    :try_start_78
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_97

    :catch_7c
    move-exception p0

    .line 331
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t close writer with: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "HockeyApp-Metrics"

    invoke-static {p2, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_97
    :goto_97
    throw p1

    :cond_98
    move-object p0, v0

    :goto_99
    if-eqz p0, :cond_ba

    .line 329
    :try_start_9b
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f

    goto :goto_ba

    :catch_9f
    move-exception p0

    const-string p1, "HockeyApp-Metrics"

    .line 331
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_a7
    const-string v0, "Couldn\'t close writer with: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ba
    :goto_ba
    return-void
.end method


# virtual methods
.method protected createConnection()Ljava/net/HttpURLConnection;
    .registers 5

    const/4 v0, 0x0

    .line 195
    :try_start_1
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getCustomServerURL()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    .line 196
    new-instance p0, Ljava/net/URL;

    const-string v1, "https://gate.hockeyapp.net/v2/track"

    invoke-direct {p0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_17

    .line 198
    :cond_f
    new-instance v1, Ljava/net/URL;

    iget-object p0, p0, Lnet/hockeyapp/android/metrics/Sender;->mCustomServerURL:Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object p0, v1

    .line 207
    :goto_17
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_41

    const/16 v0, 0x2710

    .line 208
    :try_start_1f
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v0, 0x3a98

    .line 209
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v0, "POST"

    .line 210
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v1, "application/x-json-stream"

    .line 211
    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 212
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 213
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_3e} :catch_3f

    goto :goto_4c

    :catch_3f
    move-exception v0

    goto :goto_45

    :catch_41
    move-exception p0

    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    :goto_45
    const-string v1, "HockeyApp-Metrics"

    const-string v2, "Could not open connection for provided URL with exception: "

    .line 216
    invoke-static {v1, v2, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4c
    return-object p0
.end method

.method protected getCustomServerURL()Ljava/lang/String;
    .registers 1

    .line 433
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/Sender;->mCustomServerURL:Ljava/lang/String;

    return-object p0
.end method

.method protected getPersistence()Lnet/hockeyapp/android/metrics/Persistence;
    .registers 2

    .line 408
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Sender;->mWeakPersistence:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    .line 409
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/Sender;->mWeakPersistence:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/hockeyapp/android/metrics/Persistence;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method protected getWriter(Ljava/net/HttpURLConnection;)Ljava/io/Writer;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p0, v0, :cond_26

    const-string p0, "Content-Encoding"

    const-string v0, "gzip"

    .line 396
    invoke-virtual {p1, p0, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Content-Type"

    const-string v0, "application/x-json-stream"

    .line 397
    invoke-virtual {p1, p0, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    new-instance p0, Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 399
    new-instance p1, Ljava/io/OutputStreamWriter;

    const-string v0, "UTF-8"

    invoke-direct {p1, p0, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object p1

    .line 402
    :cond_26
    new-instance p0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-direct {p0, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-object p0
.end method

.method protected isExpected(I)Z
    .registers 2

    const/16 p0, 0xc8

    if-gt p0, p1, :cond_a

    const/16 p0, 0xcb

    if-gt p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method protected isRecoverableError(I)Z
    .registers 4

    const/4 p0, 0x5

    .line 271
    new-array p0, p0, [Ljava/lang/Integer;

    const/16 v0, 0x198

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/16 v0, 0x1ad

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const/16 v0, 0x1f4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    const/16 v0, 0x1f7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, p0, v1

    const/16 v0, 0x1ff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, p0, v1

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 272
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected loadData(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    .line 172
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v0

    if-eqz v0, :cond_20

    if-eqz p1, :cond_20

    .line 174
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/hockeyapp/android/metrics/Persistence;->load(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 176
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/metrics/Persistence;->deleteFile(Ljava/io/File;)V

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :cond_21
    :goto_21
    return-object v0
.end method

.method protected onResponse(Ljava/net/HttpURLConnection;ILjava/lang/String;Ljava/io/File;)V
    .registers 8

    .line 233
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Sender;->mRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    const-string v0, "HockeyApp-Metrics"

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0, p2}, Lnet/hockeyapp/android/metrics/Sender;->isRecoverableError(I)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string p1, "HockeyApp-Metrics"

    .line 238
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Recoverable error (probably a server error), persisting data:\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object p1

    if-eqz p1, :cond_68

    .line 240
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object p0

    invoke-virtual {p0, p4}, Lnet/hockeyapp/android/metrics/Persistence;->makeAvailable(Ljava/io/File;)V

    goto :goto_68

    .line 244
    :cond_49
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object p3

    if-eqz p3, :cond_56

    .line 245
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object p3

    invoke-virtual {p3, p4}, Lnet/hockeyapp/android/metrics/Persistence;->deleteFile(Ljava/io/File;)V

    .line 249
    :cond_56
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    invoke-virtual {p0, p2}, Lnet/hockeyapp/android/metrics/Sender;->isExpected(I)Z

    move-result p4

    if-eqz p4, :cond_65

    .line 251
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->triggerSending()V

    goto :goto_68

    .line 253
    :cond_65
    invoke-virtual {p0, p1, p2, p3}, Lnet/hockeyapp/android/metrics/Sender;->onUnexpected(Ljava/net/HttpURLConnection;ILjava/lang/StringBuilder;)V

    :cond_68
    :goto_68
    return-void
.end method

.method protected onUnexpected(Ljava/net/HttpURLConnection;ILjava/lang/StringBuilder;)V
    .registers 8

    .line 294
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "Unexpected response code: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 295
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    .line 296
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "HockeyApp-Metrics"

    .line 299
    invoke-static {v0, p2}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0, p1, p3}, Lnet/hockeyapp/android/metrics/Sender;->readResponse(Ljava/net/HttpURLConnection;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method protected readResponse(Ljava/net/HttpURLConnection;Ljava/lang/StringBuilder;)V
    .registers 5

    .line 345
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 p2, 0x0

    .line 349
    :try_start_6
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_a} :catch_52
    .catchall {:try_start_6 .. :try_end_a} :catchall_50

    if-nez v0, :cond_17

    .line 351
    :try_start_c
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_14
    .catchall {:try_start_c .. :try_end_10} :catchall_11

    goto :goto_18

    :catchall_11
    move-exception p0

    move-object p2, v0

    goto :goto_6d

    :catch_14
    move-exception p0

    move-object p2, v0

    goto :goto_53

    :cond_17
    move-object p2, v0

    :goto_18
    if-eqz p2, :cond_35

    .line 355
    :try_start_1a
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 357
    :goto_26
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 358
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_26

    .line 360
    :cond_30
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_39

    .line 363
    :cond_35
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    .line 366
    :goto_39
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_43

    .line 367
    invoke-static {p0}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;)V

    goto :goto_4a

    :cond_43
    const-string p0, "HockeyApp-Metrics"

    const-string p1, "Couldn\'t log response, result is null or empty string"

    .line 370
    invoke-static {p0, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_4a} :catch_52
    .catchall {:try_start_1a .. :try_end_4a} :catchall_50

    :goto_4a
    if-eqz p2, :cond_6c

    .line 377
    :try_start_4c
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_62

    goto :goto_6c

    :catchall_50
    move-exception p0

    goto :goto_6d

    :catch_52
    move-exception p0

    :goto_53
    :try_start_53
    const-string p1, "HockeyApp-Metrics"

    .line 373
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_50

    if-eqz p2, :cond_6c

    .line 377
    :try_start_5e
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_6c

    :catch_62
    move-exception p0

    const-string p1, "HockeyApp-Metrics"

    .line 379
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6c
    :goto_6c
    return-void

    :goto_6d
    if-eqz p2, :cond_7d

    .line 377
    :try_start_6f
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_7d

    :catch_73
    move-exception p1

    .line 379
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HockeyApp-Metrics"

    invoke-static {p2, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_7d
    :goto_7d
    throw p0
.end method

.method protected requestCount()I
    .registers 1

    .line 429
    iget-object p0, p0, Lnet/hockeyapp/android/metrics/Sender;->mRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method protected send(Ljava/net/HttpURLConnection;Ljava/io/File;Ljava/lang/String;)V
    .registers 6

    .line 141
    invoke-direct {p0, p1, p3}, Lnet/hockeyapp/android/metrics/Sender;->logRequest(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    if-eqz p1, :cond_4d

    if-eqz p2, :cond_4d

    if-eqz p3, :cond_4d

    .line 143
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Sender;->mRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 146
    :try_start_e
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 148
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 150
    invoke-virtual {p0, p1, v0, p3, p2}, Lnet/hockeyapp/android/metrics/Sender;->onResponse(Ljava/net/HttpURLConnection;ILjava/lang/String;Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_19

    goto :goto_4d

    :catch_19
    move-exception p1

    const-string p3, "HockeyApp-Metrics"

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t send data with IOException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lnet/hockeyapp/android/metrics/Sender;->mRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 155
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object p1

    if-eqz p1, :cond_4d

    const-string p1, "HockeyApp-Metrics"

    const-string p3, "Persisting because of IOException: We\'re probably offline."

    .line 156
    invoke-static {p1, p3}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object p0

    invoke-virtual {p0, p2}, Lnet/hockeyapp/android/metrics/Persistence;->makeAvailable(Ljava/io/File;)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method protected sendAvailableFiles()V
    .registers 4

    .line 120
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 121
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->getPersistence()Lnet/hockeyapp/android/metrics/Persistence;

    move-result-object v0

    invoke-virtual {v0}, Lnet/hockeyapp/android/metrics/Persistence;->nextAvailableFileInDirectory()Ljava/io/File;

    move-result-object v0

    .line 122
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/metrics/Sender;->loadData(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->createConnection()Ljava/net/HttpURLConnection;

    move-result-object v2

    if-eqz v1, :cond_1d

    if-eqz v2, :cond_1d

    .line 126
    invoke-virtual {p0, v2, v0, v1}, Lnet/hockeyapp/android/metrics/Sender;->send(Ljava/net/HttpURLConnection;Ljava/io/File;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method protected setCustomServerURL(Ljava/lang/String;)V
    .registers 2

    .line 442
    iput-object p1, p0, Lnet/hockeyapp/android/metrics/Sender;->mCustomServerURL:Ljava/lang/String;

    return-void
.end method

.method protected setPersistence(Lnet/hockeyapp/android/metrics/Persistence;)V
    .registers 3

    .line 420
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/hockeyapp/android/metrics/Sender;->mWeakPersistence:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method protected triggerSending()V
    .registers 3

    .line 79
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->requestCount()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_18

    .line 81
    :try_start_8
    new-instance v0, Lnet/hockeyapp/android/metrics/Sender$1;

    invoke-direct {v0, p0}, Lnet/hockeyapp/android/metrics/Sender$1;-><init>(Lnet/hockeyapp/android/metrics/Sender;)V

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V
    :try_end_10
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_8 .. :try_end_10} :catch_11

    goto :goto_1f

    :catch_11
    move-exception p0

    const-string v0, "Could not send events. Executor rejected async task."

    .line 92
    invoke-static {v0, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f

    :cond_18
    const-string p0, "HockeyApp-Metrics"

    const-string v0, "We have already 10 pending requests, not sending anything."

    .line 95
    invoke-static {p0, v0}, Lnet/hockeyapp/android/utils/HockeyLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1f
    return-void
.end method

.method protected triggerSendingForTesting(Ljava/net/HttpURLConnection;Ljava/io/File;Ljava/lang/String;)V
    .registers 6

    .line 100
    invoke-virtual {p0}, Lnet/hockeyapp/android/metrics/Sender;->requestCount()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_15

    .line 101
    iget-object v0, p0, Lnet/hockeyapp/android/metrics/Sender;->mRequestCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 103
    new-instance v0, Lnet/hockeyapp/android/metrics/Sender$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/hockeyapp/android/metrics/Sender$2;-><init>(Lnet/hockeyapp/android/metrics/Sender;Ljava/net/HttpURLConnection;Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    :cond_15
    return-void
.end method
