.class Lopenlight/co/camera/utils/ImageUtil$ImageSaver$1;
.super Ljava/lang/Object;
.source "ImageUtil.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/utils/ImageUtil$ImageSaver;


# direct methods
.method constructor <init>(Lopenlight/co/camera/utils/ImageUtil$ImageSaver;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$1;->this$0:Lopenlight/co/camera/utils/ImageUtil$ImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 0

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    .line 270
    invoke-static {}, Lopenlight/co/camera/utils/ImageUtil;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scanned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lopenlight/co/camera/utils/ImageUtil;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-> uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object p2, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$1;->this$0:Lopenlight/co/camera/utils/ImageUtil$ImageSaver;

    invoke-static {p2}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->access$100(Lopenlight/co/camera/utils/ImageUtil$ImageSaver;)Lopenlight/co/camera/listener/OnImageSavedListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 273
    iget-object p2, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$1;->this$0:Lopenlight/co/camera/utils/ImageUtil$ImageSaver;

    invoke-static {p2}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->access$100(Lopenlight/co/camera/utils/ImageUtil$ImageSaver;)Lopenlight/co/camera/listener/OnImageSavedListener;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lopenlight/co/camera/listener/OnImageSavedListener;->onSaved(Ljava/lang/String;I)V

    .line 275
    :cond_0
    iget-object p1, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$1;->this$0:Lopenlight/co/camera/utils/ImageUtil$ImageSaver;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->access$202(Lopenlight/co/camera/utils/ImageUtil$ImageSaver;Landroid/content/Context;)Landroid/content/Context;

    .line 277
    :try_start_0
    iget-object p0, p0, Lopenlight/co/camera/utils/ImageUtil$ImageSaver$1;->this$0:Lopenlight/co/camera/utils/ImageUtil$ImageSaver;

    invoke-static {p0}, Lopenlight/co/camera/utils/ImageUtil$ImageSaver;->access$300(Lopenlight/co/camera/utils/ImageUtil$ImageSaver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 279
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
