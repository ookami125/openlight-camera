.class Lnet/hockeyapp/android/views/PaintView$1;
.super Landroid/os/AsyncTask;
.source "PaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/views/PaintView;-><init>(Landroid/content/Context;Landroid/net/Uri;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/views/PaintView;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/views/PaintView;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lnet/hockeyapp/android/views/PaintView$1;->this$0:Lnet/hockeyapp/android/views/PaintView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 5

    const/4 p0, 0x0

    .line 152
    aget-object p0, p1, p0

    check-cast p0, Landroid/content/Context;

    const/4 v0, 0x1

    .line 153
    aget-object v0, p1, v0

    check-cast v0, Landroid/net/Uri;

    const/4 v1, 0x2

    .line 154
    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    .line 155
    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Integer;

    .line 157
    :try_start_14
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    # invokes: Lnet/hockeyapp/android/views/PaintView;->decodeSampledBitmapFromResource(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    invoke-static {p0, v0, v1, p1}, Lnet/hockeyapp/android/views/PaintView;->access$000(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_24} :catch_25

    return-object p0

    :catch_25
    move-exception p0

    const-string p1, "Could not load image into ImageView."

    .line 160
    invoke-static {p1, p0}, Lnet/hockeyapp/android/utils/HockeyLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 142
    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/views/PaintView$1;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 169
    :cond_3
    iget-object p0, p0, Lnet/hockeyapp/android/views/PaintView$1;->this$0:Lnet/hockeyapp/android/views/PaintView;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/views/PaintView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 142
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/views/PaintView$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 2

    .line 147
    iget-object p0, p0, Lnet/hockeyapp/android/views/PaintView$1;->this$0:Lnet/hockeyapp/android/views/PaintView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/views/PaintView;->setAdjustViewBounds(Z)V

    return-void
.end method
