.class Lopenlight/co/camera/ImagePreviewFragment$2;
.super Ljava/lang/Object;
.source "ImagePreviewFragment.java"

# interfaces
.implements Lopenlight/co/camera/listener/AncillaryCamToolBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/ImagePreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lopenlight/co/camera/ImagePreviewFragment;


# direct methods
.method constructor <init>(Lopenlight/co/camera/ImagePreviewFragment;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lopenlight/co/camera/ImagePreviewFragment$2;->this$0:Lopenlight/co/camera/ImagePreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateHistogram(Z)V
    .registers 3

    .line 174
    iget-object v0, p0, Lopenlight/co/camera/ImagePreviewFragment$2;->this$0:Lopenlight/co/camera/ImagePreviewFragment;

    # invokes: Lopenlight/co/camera/ImagePreviewFragment;->setHistogramEnabled(Z)V
    invoke-static {v0, p1}, Lopenlight/co/camera/ImagePreviewFragment;->access$000(Lopenlight/co/camera/ImagePreviewFragment;Z)V

    .line 175
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment$2;->this$0:Lopenlight/co/camera/ImagePreviewFragment;

    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {p0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/managers/CameraManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/CameraManager;->startRepeatingRequestInPreview()V

    return-void
.end method

.method public updateMeteringMode(Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 180
    sget-object v0, Lopenlight/co/camera/ImagePreviewFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMeteringMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->get()Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;

    move-result-object v0

    .line 182
    invoke-virtual {v0, p1}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->onMeteringModeUpdate(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Lopenlight/co/camera/managers/autoexposure/AutoExposureManager;->shouldAutoMeteringBeTriggered()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 184
    sget-object p1, Lopenlight/co/camera/ImagePreviewFragment;->TAG:Ljava/lang/String;

    const-string v0, "Metering mode changed to Center-weighted. Metering again."

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment$2;->this$0:Lopenlight/co/camera/ImagePreviewFragment;

    iget-object p0, p0, Lopenlight/co/camera/ImagePreviewFragment;->mFocusManager:Lopenlight/co/camera/managers/focus/FocusManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/focus/FocusManager;->resetFocusStateToIdle()V

    :cond_31
    return-void
.end method
