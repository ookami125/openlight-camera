.class Lopenlight/co/camera/BasePreviewFragment$1;
.super Ljava/lang/Object;
.source "BasePreviewFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/BasePreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/BasePreviewFragment;


# direct methods
.method constructor <init>(Lopenlight/co/camera/BasePreviewFragment;)V
    .registers 2

    .line 288
    iput-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$1;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    .line 293
    # getter for: Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/BasePreviewFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CONFIGURE] Surface texture available "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$1;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    invoke-virtual {p0, p2, p3}, Lopenlight/co/camera/BasePreviewFragment;->configureTransform(II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    .line 312
    # getter for: Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/BasePreviewFragment;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[CONFIGURE] Surface Texture Destroyed"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$1;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {p1}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/CameraManager;->getCameraStateLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 314
    :try_start_18
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$1;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    const/4 v0, 0x0

    iput-object v0, p0, Lopenlight/co/camera/BasePreviewFragment;->mPreviewSize:Landroid/util/Size;

    .line 315
    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :catchall_20
    move-exception p0

    monitor-exit p1
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_20

    throw p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    .line 300
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$1;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-boolean p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mAspectRatioChange:Z

    if-nez p1, :cond_b

    .line 301
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$1;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    invoke-virtual {p1, p2, p3}, Lopenlight/co/camera/BasePreviewFragment;->configureTransform(II)V

    .line 304
    :cond_b
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$1;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mCrossHairView:Lopenlight/co/camera/view/focus/CrossHair;

    if-eqz p1, :cond_18

    .line 305
    iget-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$1;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p1, p1, Lopenlight/co/camera/BasePreviewFragment;->mCrossHairView:Lopenlight/co/camera/view/focus/CrossHair;

    invoke-virtual {p1, p2, p3}, Lopenlight/co/camera/view/focus/CrossHair;->setSize(II)V

    .line 307
    :cond_18
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$1;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lopenlight/co/camera/BasePreviewFragment;->mAspectRatioChange:Z

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method
