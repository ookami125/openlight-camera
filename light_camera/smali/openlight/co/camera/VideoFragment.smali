.class public Lopenlight/co/camera/VideoFragment;
.super Lopenlight/co/camera/BasePreviewFragment;
.source "VideoFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoFragment"


# instance fields
.field private mFtuContainer:Landroid/view/ViewGroup;

.field private mFtuDimmer:Landroid/view/View;

.field private final mMicManager:Lopenlight/co/camera/utils/MicManager;

.field private mMuteMicView:Landroid/widget/ImageView;

.field private mMutePreviewStatusOnClickListener:Landroid/view/View$OnClickListener;

.field private final mVideoManager:Lopenlight/co/camera/managers/video/VideoManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Lopenlight/co/camera/BasePreviewFragment;-><init>()V

    .line 37
    invoke-static {}, Lopenlight/co/camera/managers/video/VideoManager;->get()Lopenlight/co/camera/managers/video/VideoManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/VideoFragment;->mVideoManager:Lopenlight/co/camera/managers/video/VideoManager;

    .line 38
    invoke-static {}, Lopenlight/co/camera/utils/MicManager;->get()Lopenlight/co/camera/utils/MicManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/VideoFragment;->mMicManager:Lopenlight/co/camera/utils/MicManager;

    return-void
.end method

.method private clearAndRelease()V
    .registers 1

    .line 239
    invoke-virtual {p0}, Lopenlight/co/camera/VideoFragment;->clear()V

    .line 241
    invoke-virtual {p0}, Lopenlight/co/camera/VideoFragment;->releaseTextureView()V

    return-void
.end method

.method public static synthetic lambda$-1uF3DC8GJtVDr7kqBdbqCWVrcU(Lopenlight/co/camera/VideoFragment;)V
    .registers 1

    invoke-direct {p0}, Lopenlight/co/camera/VideoFragment;->clearAndRelease()V

    return-void
.end method


# virtual methods
.method protected clear()V
    .registers 3

    .line 185
    iget-object v0, p0, Lopenlight/co/camera/VideoFragment;->mCameraManager:Lopenlight/co/camera/utils/Provider;

    invoke-interface {v0}, Lopenlight/co/camera/utils/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopenlight/co/camera/managers/CameraManager;

    sget-object v1, Lopenlight/co/camera/managers/CameraManager$State;->CLOSING:Lopenlight/co/camera/managers/CameraManager$State;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/managers/CameraManager;->setCurrentCameraState(Lopenlight/co/camera/managers/CameraManager$State;)V

    .line 186
    iget-object v0, p0, Lopenlight/co/camera/VideoFragment;->mVideoController:Lopenlight/co/camera/VideoController;

    invoke-virtual {v0}, Lopenlight/co/camera/VideoController;->clear()V

    .line 188
    invoke-static {}, Lopenlight/co/camera/utils/MediaFileManager;->get()Lopenlight/co/camera/utils/MediaFileManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/utils/MediaFileManager;->deleteTempVideoFile()V

    .line 189
    invoke-super {p0}, Lopenlight/co/camera/BasePreviewFragment;->clear()V

    return-void
.end method

.method public focusCompleted()V
    .registers 1

    return-void
.end method

.method public focusFailedUpdateUi()V
    .registers 1

    return-void
.end method

.method public focusSuccessUpdateUi()V
    .registers 1

    return-void
.end method

.method public getListenerName()Ljava/lang/String;
    .registers 1

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getSizeForConfigureTransform(IIZLandroid/graphics/Point;)Landroid/util/Size;
    .registers 5

    .line 220
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x780

    const/16 p2, 0x438

    invoke-direct {p0, p1, p2}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 200
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xca

    if-ne p1, v0, :cond_b

    .line 201
    iget-object p0, p0, Lopenlight/co/camera/VideoFragment;->mVideoController:Lopenlight/co/camera/VideoController;

    invoke-virtual {p0}, Lopenlight/co/camera/VideoController;->addOrShowPrimaryControl()V

    :cond_b
    return-void
.end method

.method protected handleSystemUIChangeListener(Z)V
    .registers 4

    if-eqz p1, :cond_b

    .line 209
    iget-object p1, p0, Lopenlight/co/camera/VideoFragment;->mVideoController:Lopenlight/co/camera/VideoController;

    invoke-virtual {p1}, Lopenlight/co/camera/VideoController;->hideAllControlViews()V

    .line 210
    invoke-virtual {p0}, Lopenlight/co/camera/VideoFragment;->hideSystemUIAfterADelay()V

    goto :goto_10

    :cond_b
    const-wide/16 v0, 0x15e

    .line 213
    invoke-virtual {p0, v0, v1}, Lopenlight/co/camera/VideoFragment;->showPrimaryControlWithDelay(J)V

    :goto_10
    return-void
.end method

.method protected isWithinPreview(Landroid/view/MotionEvent;Z)Z
    .registers 3

    xor-int/lit8 p0, p2, 0x1

    return p0
.end method

.method public onCaptureSessionConfigured()V
    .registers 1

    .line 154
    invoke-super {p0}, Lopenlight/co/camera/BasePreviewFragment;->onCaptureSessionConfigured()V

    .line 155
    iget-object p0, p0, Lopenlight/co/camera/VideoFragment;->mVideoController:Lopenlight/co/camera/VideoController;

    invoke-virtual {p0}, Lopenlight/co/camera/VideoController;->onCaptureSessionConfigured()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 54
    sget-object p0, Lopenlight/co/camera/VideoFragment;->TAG:Ljava/lang/String;

    const-string p3, "onCreateView"

    invoke-static {p0, p3}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0x7f0b0035

    const/4 p3, 0x0

    .line 55
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .registers 3

    .line 100
    invoke-super {p0}, Lopenlight/co/camera/BasePreviewFragment;->onPause()V

    .line 101
    iget-object v0, p0, Lopenlight/co/camera/VideoFragment;->mVideoManager:Lopenlight/co/camera/managers/video/VideoManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/video/VideoManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 105
    iget-object v0, p0, Lopenlight/co/camera/VideoFragment;->mVideoController:Lopenlight/co/camera/VideoController;

    new-instance v1, Lopenlight/co/camera/-$$Lambda$VideoFragment$-1uF3DC8GJtVDr7kqBdbqCWVrcU;

    invoke-direct {v1, p0}, Lopenlight/co/camera/-$$Lambda$VideoFragment$-1uF3DC8GJtVDr7kqBdbqCWVrcU;-><init>(Lopenlight/co/camera/VideoFragment;)V

    invoke-virtual {v0, v1}, Lopenlight/co/camera/VideoController;->setStatusListener(Lopenlight/co/camera/VideoController$OnStatusListener;)V

    .line 106
    iget-object v0, p0, Lopenlight/co/camera/VideoFragment;->mVideoManager:Lopenlight/co/camera/managers/video/VideoManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/video/VideoManager;->stopRecording()V

    goto :goto_1e

    .line 108
    :cond_1b
    invoke-direct {p0}, Lopenlight/co/camera/VideoFragment;->clearAndRelease()V

    .line 111
    :goto_1e
    iget-object p0, p0, Lopenlight/co/camera/VideoFragment;->mMicManager:Lopenlight/co/camera/utils/MicManager;

    invoke-virtual {p0}, Lopenlight/co/camera/utils/MicManager;->release()V

    return-void
.end method

.method public onResume()V
    .registers 4

    .line 84
    invoke-virtual {p0}, Lopenlight/co/camera/VideoFragment;->addTextureView()V

    .line 85
    iget-object v0, p0, Lopenlight/co/camera/VideoFragment;->mVideoManager:Lopenlight/co/camera/managers/video/VideoManager;

    invoke-static {v0}, Lopenlight/co/camera/managers/CameraManager;->set(Lopenlight/co/camera/managers/CameraManager;)V

    .line 87
    iget-object v0, p0, Lopenlight/co/camera/VideoFragment;->mCameraPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "camera_mode_setting"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lopenlight/co/camera/VideoFragment;->mVideoManager:Lopenlight/co/camera/managers/video/VideoManager;

    invoke-static {v0}, Lopenlight/co/camera/CameraMode;->getMode(Ljava/lang/String;)Lopenlight/co/camera/CameraMode;

    move-result-object v0

    invoke-virtual {v1, v0}, Lopenlight/co/camera/managers/video/VideoManager;->updateCameraMode(Lopenlight/co/camera/CameraMode;)V

    .line 90
    iget-object v0, p0, Lopenlight/co/camera/VideoFragment;->mMicManager:Lopenlight/co/camera/utils/MicManager;

    invoke-virtual {v0}, Lopenlight/co/camera/utils/MicManager;->updateMicFromPrefs()Z

    move-result v0

    .line 91
    iget-object v1, p0, Lopenlight/co/camera/VideoFragment;->mMuteMicView:Landroid/widget/ImageView;

    iget-object v2, p0, Lopenlight/co/camera/VideoFragment;->mMutePreviewStatusOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v1, p0, Lopenlight/co/camera/VideoFragment;->mMuteMicView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    goto :goto_2e

    :cond_2c
    const/16 v0, 0x8

    :goto_2e
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lopenlight/co/camera/VideoFragment;->mVideoController:Lopenlight/co/camera/VideoController;

    invoke-virtual {v0}, Lopenlight/co/camera/VideoController;->onResume()V

    .line 94
    invoke-virtual {p0}, Lopenlight/co/camera/VideoFragment;->onDelayedResume()V

    .line 95
    invoke-super {p0}, Lopenlight/co/camera/BasePreviewFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 60
    sget-object p2, Lopenlight/co/camera/VideoFragment;->TAG:Ljava/lang/String;

    const-string v0, "onViewCreated"

    invoke-static {p2, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lopenlight/co/camera/VideoFragment;->mRootContainer:Landroid/view/ViewGroup;

    const p2, 0x7f090166

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lopenlight/co/camera/VideoFragment;->mTextureLayout:Landroid/widget/FrameLayout;

    const p2, 0x7f0901a1

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lopenlight/co/camera/view/zoom/ZoomWheel;

    iput-object p2, p0, Lopenlight/co/camera/VideoFragment;->mZoomWheel:Lopenlight/co/camera/view/zoom/ZoomWheel;

    .line 66
    iget-object p2, p0, Lopenlight/co/camera/VideoFragment;->mRootContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lopenlight/co/camera/VideoFragment;->mScreenGestureListener:Lopenlight/co/camera/listener/ScreenGestureListener;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p2, 0x7f090105

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lopenlight/co/camera/view/alerts/OverlayWarningView;

    iput-object p2, p0, Lopenlight/co/camera/VideoFragment;->mOverlayWarningView:Lopenlight/co/camera/view/alerts/OverlayWarningView;

    const p2, 0x7f090056

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lopenlight/co/camera/view/focus/CrossHair;

    iput-object p2, p0, Lopenlight/co/camera/VideoFragment;->mCrossHairView:Lopenlight/co/camera/view/focus/CrossHair;

    .line 71
    new-instance p2, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;

    invoke-virtual {p0}, Lopenlight/co/camera/VideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lopenlight/co/camera/BasePreviewFragment$PreviewGestureListener;-><init>(Lopenlight/co/camera/BasePreviewFragment;Landroid/content/Context;)V

    iput-object p2, p0, Lopenlight/co/camera/VideoFragment;->mScreenGestureListener:Lopenlight/co/camera/listener/ScreenGestureListener;

    const p2, 0x7f090081

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lopenlight/co/camera/VideoFragment;->mFtuContainer:Landroid/view/ViewGroup;

    const p2, 0x7f090082

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lopenlight/co/camera/VideoFragment;->mFtuDimmer:Landroid/view/View;

    const p2, 0x7f0900fc

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lopenlight/co/camera/VideoFragment;->mMuteMicView:Landroid/widget/ImageView;

    .line 79
    new-instance p1, Lopenlight/co/camera/VideoController;

    invoke-virtual {p0}, Lopenlight/co/camera/VideoFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lopenlight/co/camera/VideoFragment;->mRootContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lopenlight/co/camera/VideoFragment;->mFtuContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lopenlight/co/camera/VideoFragment;->mFtuDimmer:Landroid/view/View;

    invoke-direct {p1, p2, v0, v1, v2}, Lopenlight/co/camera/VideoController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object p1, p0, Lopenlight/co/camera/VideoFragment;->mVideoController:Lopenlight/co/camera/VideoController;

    return-void
.end method

.method protected processHardKeyCapture(Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method protected processHardKeyFocus(Lopenlight/co/camera/listener/HardKeyManager$KeyAction;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public setMutePreviewStatusListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lopenlight/co/camera/VideoFragment;->mMutePreviewStatusOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public triggerFocusPostZoom()V
    .registers 2

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lopenlight/co/camera/VideoFragment;->mZoomTriggersFocus:Z

    return-void
.end method

.method public updateHandshakeAssist(Z)V
    .registers 2

    return-void
.end method

.method public updateLowLightAssist(Ljava/lang/Byte;)V
    .registers 2

    return-void
.end method

.method public updateTripodAssist(Ljava/lang/Byte;)V
    .registers 2

    return-void
.end method

.method public updateVideoPreview()V
    .registers 3

    const/16 v0, 0x780

    const/16 v1, 0x438

    .line 163
    invoke-virtual {p0, v0, v1}, Lopenlight/co/camera/VideoFragment;->configureTransform(II)V

    return-void
.end method
