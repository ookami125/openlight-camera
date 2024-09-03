.class Lnet/hockeyapp/android/views/AttachmentView$1;
.super Landroid/os/AsyncTask;
.source "AttachmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/views/AttachmentView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/hockeyapp/android/views/AttachmentView;


# direct methods
.method constructor <init>(Lnet/hockeyapp/android/views/AttachmentView;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lnet/hockeyapp/android/views/AttachmentView$1;->this$0:Lnet/hockeyapp/android/views/AttachmentView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .registers 2

    .line 85
    iget-object p0, p0, Lnet/hockeyapp/android/views/AttachmentView$1;->this$0:Lnet/hockeyapp/android/views/AttachmentView;

    # invokes: Lnet/hockeyapp/android/views/AttachmentView;->loadImageThumbnail()Landroid/graphics/Bitmap;
    invoke-static {p0}, Lnet/hockeyapp/android/views/AttachmentView;->access$000(Lnet/hockeyapp/android/views/AttachmentView;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 82
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/views/AttachmentView$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 91
    iget-object p0, p0, Lnet/hockeyapp/android/views/AttachmentView$1;->this$0:Lnet/hockeyapp/android/views/AttachmentView;

    # invokes: Lnet/hockeyapp/android/views/AttachmentView;->configureViewForThumbnail(Landroid/graphics/Bitmap;Z)V
    invoke-static {p0, p1, v0}, Lnet/hockeyapp/android/views/AttachmentView;->access$100(Lnet/hockeyapp/android/views/AttachmentView;Landroid/graphics/Bitmap;Z)V

    goto :goto_e

    .line 93
    :cond_9
    iget-object p0, p0, Lnet/hockeyapp/android/views/AttachmentView$1;->this$0:Lnet/hockeyapp/android/views/AttachmentView;

    # invokes: Lnet/hockeyapp/android/views/AttachmentView;->configureViewForPlaceholder(Z)V
    invoke-static {p0, v0}, Lnet/hockeyapp/android/views/AttachmentView;->access$200(Lnet/hockeyapp/android/views/AttachmentView;Z)V

    :goto_e
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 82
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lnet/hockeyapp/android/views/AttachmentView$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
