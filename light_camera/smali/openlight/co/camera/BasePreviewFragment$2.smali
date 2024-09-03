.class Lopenlight/co/camera/BasePreviewFragment$2;
.super Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;
.source "BasePreviewFragment.java"


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

    .line 325
    iput-object p1, p0, Lopenlight/co/camera/BasePreviewFragment$2;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    invoke-direct {p0}, Lopenlight/co/camera/utils/LensObstructionDetector$OnObstructionEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onInPocket()V
    .registers 4

    .line 341
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment$2;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object v0, v0, Lopenlight/co/camera/BasePreviewFragment;->mOverlayWarningView:Lopenlight/co/camera/view/alerts/OverlayWarningView;

    const v1, 0x7f0e00d9

    const v2, 0x7f080143

    invoke-virtual {v0, v1, v2}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->setContent(II)V

    .line 344
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment$2;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object v0, v0, Lopenlight/co/camera/BasePreviewFragment;->mOverlayWarningView:Lopenlight/co/camera/view/alerts/OverlayWarningView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->finishActivityOnWarningInactivity(Z)V

    .line 345
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$2;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mOverlayWarningView:Lopenlight/co/camera/view/alerts/OverlayWarningView;

    invoke-virtual {p0, v1}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->setVisibility(Z)V

    .line 346
    # getter for: Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/BasePreviewFragment;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Camera in pocket, warning displayed"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNoObstruction()V
    .registers 1

    .line 334
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$2;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    # getter for: Lopenlight/co/camera/BasePreviewFragment;->mProximityNotification:Lopenlight/co/camera/view/proximity/ProximitySensorNotification;
    invoke-static {p0}, Lopenlight/co/camera/BasePreviewFragment;->access$100(Lopenlight/co/camera/BasePreviewFragment;)Lopenlight/co/camera/view/proximity/ProximitySensorNotification;

    move-result-object p0

    invoke-virtual {p0}, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->closeAll()V

    return-void
.end method

.method public onObstruction(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment$2;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object v0, v0, Lopenlight/co/camera/BasePreviewFragment;->mHaptic:Lopenlight/co/camera/haptic/PlayHaptic;

    sget-object v1, Lopenlight/co/camera/haptic/Immersion;->LENS_BLOCKED:Lopenlight/co/camera/haptic/Immersion;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/haptic/PlayHaptic;->playHaptic(Lopenlight/co/camera/haptic/Immersion;)V

    .line 329
    iget-object v0, p0, Lopenlight/co/camera/BasePreviewFragment$2;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    # getter for: Lopenlight/co/camera/BasePreviewFragment;->mProximityNotification:Lopenlight/co/camera/view/proximity/ProximitySensorNotification;
    invoke-static {v0}, Lopenlight/co/camera/BasePreviewFragment;->access$100(Lopenlight/co/camera/BasePreviewFragment;)Lopenlight/co/camera/view/proximity/ProximitySensorNotification;

    move-result-object v0

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$2;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mRootContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p0}, Lopenlight/co/camera/view/proximity/ProximitySensorNotification;->setBlockedLensNumbers(Ljava/util/List;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onOutOfPocket()V
    .registers 2

    .line 351
    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment$2;->this$0:Lopenlight/co/camera/BasePreviewFragment;

    iget-object p0, p0, Lopenlight/co/camera/BasePreviewFragment;->mOverlayWarningView:Lopenlight/co/camera/view/alerts/OverlayWarningView;

    invoke-virtual {p0}, Lopenlight/co/camera/view/alerts/OverlayWarningView;->clearActivityFinish()V

    .line 352
    # getter for: Lopenlight/co/camera/BasePreviewFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lopenlight/co/camera/BasePreviewFragment;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Camera out of pocket"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
