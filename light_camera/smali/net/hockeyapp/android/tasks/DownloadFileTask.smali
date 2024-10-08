.class public Lnet/hockeyapp/android/tasks/DownloadFileTask;
.super Landroid/os/AsyncTask;
.source "DownloadFileTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field protected static final MAX_REDIRECTS:I = 0x6


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDownloadErrorMessage:Ljava/lang/String;

.field protected mFilePath:Ljava/lang/String;

.field protected mFilename:Ljava/lang/String;

.field protected mNotifier:Lnet/hockeyapp/android/listeners/DownloadFileListener;

.field protected mProgressDialog:Landroid/app/ProgressDialog;

.field protected mUrlString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/listeners/DownloadFileListener;)V
    .registers 4

    .line 47
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 48
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mUrlString:Ljava/lang/String;

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ".apk"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mFilename:Ljava/lang/String;

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/Download"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mFilePath:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mNotifier:Lnet/hockeyapp/android/listeners/DownloadFileListener;

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mDownloadErrorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public attach(Landroid/content/Context;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected createConnection(Ljava/net/URL;I)Ljava/net/URLConnection;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 143
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->setConnectionProperties(Ljava/net/HttpURLConnection;)V

    .line 145
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_19

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_19

    const/16 v2, 0x12f

    if-ne v1, v2, :cond_3f

    :cond_19
    if-nez p2, :cond_1c

    return-object v0

    .line 155
    :cond_1c
    new-instance v1, Ljava/net/URL;

    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 159
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    add-int/lit8 p2, p2, -0x1

    .line 160
    invoke-virtual {p0, v1, p2}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->createConnection(Ljava/net/URL;I)Ljava/net/URLConnection;

    move-result-object p0

    return-object p0

    :cond_3f
    return-object v0
.end method

.method public detach()V
    .registers 2

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mContext:Landroid/content/Context;

    .line 62
    iput-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .registers 13

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    .line 71
    :try_start_3
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p0}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->getURLString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x6

    .line 72
    invoke-virtual {p0, v2, v3}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->createConnection(Ljava/net/URL;I)Ljava/net/URLConnection;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    .line 75
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I

    move-result v3

    .line 76
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2f

    const-string v5, "text"

    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const-string v2, "The requested download does not appear to be a file."

    .line 80
    iput-object v2, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mDownloadErrorMessage:Ljava/lang/String;

    .line 81
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 84
    :cond_2f
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_5e

    .line 86
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_43

    goto :goto_5e

    .line 87
    :cond_43
    new-instance p0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create the dir(s):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 89
    :cond_5e
    :goto_5e
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mFilename:Ljava/lang/String;

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6e} :catch_ba
    .catchall {:try_start_3 .. :try_end_6e} :catchall_b7

    .line 92
    :try_start_6e
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_73} :catch_b5
    .catchall {:try_start_6e .. :try_end_73} :catchall_d5

    const/16 p1, 0x400

    .line 94
    :try_start_75
    new-array p1, p1, [B

    move-wide v5, v0

    .line 97
    :goto_78
    invoke-virtual {v4, p1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_9c

    int-to-long v8, v7

    add-long/2addr v5, v8

    const/4 v8, 0x1

    .line 99
    new-array v8, v8, [Ljava/lang/Integer;

    long-to-float v9, v5

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    int-to-float v10, v3

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {p0, v8}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->publishProgress([Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v2, p1, v10, v7}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_78

    .line 103
    :cond_9c
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 105
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_a3} :catch_b2
    .catchall {:try_start_75 .. :try_end_a3} :catchall_af

    .line 112
    :try_start_a3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 115
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a9} :catch_aa

    goto :goto_ae

    :catch_aa
    move-exception p1

    .line 118
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_ae
    return-object p0

    :catchall_af
    move-exception p0

    move-object p1, v2

    goto :goto_d6

    :catch_b2
    move-exception p0

    move-object p1, v2

    goto :goto_bc

    :catch_b5
    move-exception p0

    goto :goto_bc

    :catchall_b7
    move-exception p0

    move-object v4, p1

    goto :goto_d6

    :catch_ba
    move-exception p0

    move-object v4, p1

    .line 107
    :goto_bc
    :try_start_bc
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 108
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_c3
    .catchall {:try_start_bc .. :try_end_c3} :catchall_d5

    if-eqz p1, :cond_cb

    .line 112
    :try_start_c5
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    goto :goto_cb

    :catch_c9
    move-exception p1

    goto :goto_d1

    :cond_cb
    :goto_cb
    if-eqz v4, :cond_d4

    .line 115
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_d0} :catch_c9

    goto :goto_d4

    .line 118
    :goto_d1
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_d4
    :goto_d4
    return-object p0

    :catchall_d5
    move-exception p0

    :goto_d6
    if-eqz p1, :cond_de

    .line 112
    :try_start_d8
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    goto :goto_de

    :catch_dc
    move-exception p1

    goto :goto_e4

    :cond_de
    :goto_de
    if-eqz v4, :cond_e7

    .line 115
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_e3} :catch_dc

    goto :goto_e7

    .line 118
    :goto_e4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 119
    :cond_e7
    :goto_e7
    throw p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 36
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method protected getURLString()Ljava/lang/String;
    .registers 2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mUrlString:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&type=apk"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .registers 6

    .line 184
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    .line 186
    :try_start_4
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_9

    .line 192
    :catch_9
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_5c

    .line 193
    iget-object p1, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mNotifier:Lnet/hockeyapp/android/listeners/DownloadFileListener;

    invoke-virtual {p1, p0}, Lnet/hockeyapp/android/listeners/DownloadFileListener;->downloadSuccessful(Lnet/hockeyapp/android/tasks/DownloadFileTask;)V

    .line 195
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mFilePath:Ljava/lang/String;

    iget-object v2, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 198
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 202
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_51

    .line 203
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 205
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 206
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    .line 209
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 212
    :cond_51
    iget-object p0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz v0, :cond_95

    .line 215
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_95

    .line 220
    :cond_5c
    :try_start_5c
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 221
    sget v0, Lnet/hockeyapp/android/R$string;->hockeyapp_download_failed_dialog_title:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 224
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mDownloadErrorMessage:Ljava/lang/String;

    if-nez v0, :cond_75

    .line 225
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mContext:Landroid/content/Context;

    sget v1, Lnet/hockeyapp/android/R$string;->hockeyapp_download_failed_dialog_message:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_77

    .line 227
    :cond_75
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mDownloadErrorMessage:Ljava/lang/String;

    .line 229
    :goto_77
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 231
    sget v0, Lnet/hockeyapp/android/R$string;->hockeyapp_download_failed_dialog_negative_button:I

    new-instance v1, Lnet/hockeyapp/android/tasks/DownloadFileTask$1;

    invoke-direct {v1, p0}, Lnet/hockeyapp/android/tasks/DownloadFileTask$1;-><init>(Lnet/hockeyapp/android/tasks/DownloadFileTask;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    sget v0, Lnet/hockeyapp/android/R$string;->hockeyapp_download_failed_dialog_positive_button:I

    new-instance v1, Lnet/hockeyapp/android/tasks/DownloadFileTask$2;

    invoke-direct {v1, p0}, Lnet/hockeyapp/android/tasks/DownloadFileTask$2;-><init>(Lnet/hockeyapp/android/tasks/DownloadFileTask;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 245
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_95} :catch_95

    :catch_95
    :cond_95
    :goto_95
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 36
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 5

    .line 169
    :try_start_0
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    if-nez v0, :cond_25

    .line 170
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 171
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 172
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v2, "Loading..."

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 174
    iget-object v0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 176
    :cond_25
    iget-object p0, p0, Lnet/hockeyapp/android/tasks/DownloadFileTask;->mProgressDialog:Landroid/app/ProgressDialog;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_30

    :catch_30
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    .line 36
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/tasks/DownloadFileTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method protected setConnectionProperties(Ljava/net/HttpURLConnection;)V
    .registers 3

    const-string p0, "User-Agent"

    const-string v0, "HockeySDK/Android 4.1.2"

    .line 124
    invoke-virtual {p1, p0, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 125
    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 128
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x9

    if-gt p0, v0, :cond_18

    const-string p0, "connection"

    const-string v0, "close"

    .line 129
    invoke-virtual {p1, p0, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    return-void
.end method
