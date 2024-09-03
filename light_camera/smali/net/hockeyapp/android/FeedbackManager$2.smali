.class final Lnet/hockeyapp/android/FeedbackManager$2;
.super Landroid/os/AsyncTask;
.source "FeedbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/FeedbackManager;->takeScreenshot(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/io/File;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .registers 3

    .line 357
    iput-object p1, p0, Lnet/hockeyapp/android/FeedbackManager$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lnet/hockeyapp/android/FeedbackManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/io/File;)Ljava/lang/Boolean;
    .registers 5

    const/4 v0, 0x0

    .line 361
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    aget-object p1, p1, v0

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 362
    iget-object p0, p0, Lnet/hockeyapp/android/FeedbackManager$2;->val$bitmap:Landroid/graphics/Bitmap;

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, p1, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 363
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const/4 p0, 0x1

    .line 364
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    const-string p1, "Could not save screenshot."

    .line 366
    invoke-static {p1, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 368
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 357
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/FeedbackManager$2;->doInBackground([Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 3

    .line 373
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_12

    .line 374
    iget-object p0, p0, Lnet/hockeyapp/android/FeedbackManager$2;->val$context:Landroid/content/Context;

    const-string p1, "Screenshot could not be created. Sorry."

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 375
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_12
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 357
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/FeedbackManager$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
