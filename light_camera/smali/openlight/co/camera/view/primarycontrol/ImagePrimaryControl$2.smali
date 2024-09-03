.class Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$2;
.super Lopenlight/co/camera/listener/OnSwipeTouchListener;
.source "ImagePrimaryControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;-><init>(Landroid/content/Context;Lopenlight/co/camera/ImagePreviewFragment;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;


# direct methods
.method constructor <init>(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;Landroid/content/Context;)V
    .registers 3

    .line 268
    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$2;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    invoke-direct {p0, p2}, Lopenlight/co/camera/listener/OnSwipeTouchListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSingleTap()V
    .registers 7

    .line 271
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->canGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 272
    invoke-static {}, Lopenlight/co/camera/utils/Util;->getGalleryIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 274
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$2;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # getter for: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;
    invoke-static {v1}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$500(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    move-result-object v1

    invoke-virtual {v1}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    .line 276
    :goto_1f
    iget-object v3, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$2;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # getter for: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;
    invoke-static {v3}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$600(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Lopenlight/co/camera/metrics/Metrics;

    move-result-object v3

    const-string v4, "event_ui_gallery_open"

    .line 277
    invoke-static {v2}, Lopenlight/co/camera/metrics/CameraMetrics;->createPropertiesForCameraLocked(Z)Ljava/util/HashMap;

    move-result-object v5

    .line 276
    invoke-virtual {v3, v4, v5}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v3, "image_path"

    .line 278
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "show_key_guard"

    .line 279
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 280
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl$2;->this$0:Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;

    # getter for: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$700(Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4b

    .line 283
    :cond_42
    # getter for: Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/view/primarycontrol/ImagePrimaryControl;->access$800()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Gallery Thumbnail View Single Tap: can\'t go to gallery"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    :goto_4b
    return-void
.end method
