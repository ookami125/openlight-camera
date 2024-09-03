.class Lopenlight/co/camera/view/thumbnail/ThumbnailView$1;
.super Landroid/os/AsyncTask;
.source "ThumbnailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/thumbnail/ThumbnailView;->loadAndAnimateGalleryThumbnail()V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/thumbnail/ThumbnailView;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/thumbnail/ThumbnailView;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView$1;->this$0:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private validateThumbnailPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 141
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_11

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_3b

    .line 142
    :cond_11
    invoke-static {}, Lopenlight/co/camera/utils/MediaFileManager;->get()Lopenlight/co/camera/utils/MediaFileManager;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/utils/MediaFileManager;->getFirstMedia()Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_3d

    if-eqz p0, :cond_3a

    .line 145
    :try_start_1b
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object p1

    const-string v0, "locked_names"

    .line 146
    invoke-interface {p1, v0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 148
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_34} :catch_38

    if-nez p1, :cond_3a

    const/4 p1, 0x0

    goto :goto_3b

    :catch_38
    move-exception p1

    goto :goto_41

    :cond_3a
    move-object p1, p0

    :cond_3b
    :goto_3b
    move-object p0, p1

    goto :goto_4a

    :catch_3d
    move-exception p0

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    .line 158
    :goto_41
    # getter for: Lopenlight/co/camera/view/thumbnail/ThumbnailView;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadAndAnimateGalleryThumbnail: Runtime exception"

    invoke-static {v0, v1, p1}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_4a
    return-object p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 123
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/thumbnail/ThumbnailView$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 3

    .line 126
    iget-object p1, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView$1;->this$0:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    const/4 v0, 0x0

    # setter for: Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mGalleryThumbnailTiming:Landroid/util/TimingLogger;
    invoke-static {p1, v0}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->access$002(Lopenlight/co/camera/view/thumbnail/ThumbnailView;Landroid/util/TimingLogger;)Landroid/util/TimingLogger;

    .line 128
    iget-object p1, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView$1;->this$0:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    iget-object v0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView$1;->this$0:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    # getter for: Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mThumbnailPath:Ljava/lang/String;
    invoke-static {v0}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->access$100(Lopenlight/co/camera/view/thumbnail/ThumbnailView;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lopenlight/co/camera/view/thumbnail/ThumbnailView$1;->validateThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    # setter for: Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mThumbnailPath:Ljava/lang/String;
    invoke-static {p1, p0}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->access$102(Lopenlight/co/camera/view/thumbnail/ThumbnailView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 123
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/thumbnail/ThumbnailView$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 3

    .line 168
    iget-object v0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView$1;->this$0:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    iget-object p0, p0, Lopenlight/co/camera/view/thumbnail/ThumbnailView$1;->this$0:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    # getter for: Lopenlight/co/camera/view/thumbnail/ThumbnailView;->mGalleryThumb:Landroid/widget/ImageView;
    invoke-static {p0}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->access$300(Lopenlight/co/camera/view/thumbnail/ThumbnailView;)Landroid/widget/ImageView;

    move-result-object p0

    # invokes: Lopenlight/co/camera/view/thumbnail/ThumbnailView;->setThumbImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    invoke-static {v0, p0, p1}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->access$400(Lopenlight/co/camera/view/thumbnail/ThumbnailView;Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method
