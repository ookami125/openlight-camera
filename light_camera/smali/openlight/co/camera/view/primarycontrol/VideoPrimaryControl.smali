.class public Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;
.super Lopenlight/co/camera/view/primarycontrol/BaseControl;
.source "VideoPrimaryControl.java"


# static fields
.field private static final DISABLE_ALPHA:F = 0.5f

.field private static final ENABLE_ALPHA:F = 1.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;

.field private mGalleryThumbContainer:Landroid/view/ViewGroup;

.field private final mRecordControlView:Landroid/widget/ImageView;

.field private mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

.field private final mToolbarView:Landroid/view/ViewGroup;

.field private final mVideoManager:Lopenlight/co/camera/managers/video/VideoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;

    invoke-static {v0}, Lopenlight/co/lib/utils/Utils;->safeTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lopenlight/co/camera/view/primarycontrol/BaseControl;-><init>(Landroid/content/Context;ILandroid/view/ViewGroup;)V

    .line 38
    invoke-static {}, Lopenlight/co/camera/managers/video/VideoManager;->get()Lopenlight/co/camera/managers/video/VideoManager;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mVideoManager:Lopenlight/co/camera/managers/video/VideoManager;

    .line 42
    invoke-static {}, Lopenlight/co/camera/metrics/Metrics;->get()Lopenlight/co/camera/metrics/Metrics;

    move-result-object p1

    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;

    .line 56
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->initThumbnailView()V

    .line 58
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mBaseControlView:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 59
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mBaseControlView:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 61
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mBaseControlView:Landroid/view/View;

    const p2, 0x7f09018a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mRecordControlView:Landroid/widget/ImageView;

    .line 62
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mBaseControlView:Landroid/view/View;

    const p2, 0x7f090175

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mToolbarView:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->gotoGallery()V

    return-void
.end method

.method private gotoGallery()V
    .locals 6

    .line 180
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mVideoManager:Lopenlight/co/camera/managers/video/VideoManager;

    invoke-virtual {v0}, Lopenlight/co/camera/managers/video/VideoManager;->canGotoGallery()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-static {}, Lopenlight/co/camera/utils/Util;->getGalleryIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    invoke-virtual {v1}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 186
    :goto_0
    iget-object v3, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mCameraMetrics:Lopenlight/co/camera/metrics/Metrics;

    const-string v4, "event_ui_gallery_open"

    .line 187
    invoke-static {v2}, Lopenlight/co/camera/metrics/CameraMetrics;->createPropertiesForCameraLocked(Z)Ljava/util/HashMap;

    move-result-object v5

    .line 186
    invoke-virtual {v3, v4, v5}, Lopenlight/co/camera/metrics/Metrics;->add(Ljava/lang/String;Ljava/util/HashMap;)V

    const-string v3, "image_path"

    .line 188
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "show_key_guard"

    .line 189
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 190
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private initThumbnailView()V
    .locals 5

    .line 156
    new-instance v0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl$1;

    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl$1;-><init>(Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;Landroid/content/Context;)V

    .line 166
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mBaseControlView:Landroid/view/View;

    const v2, 0x7f0900ad

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mGalleryThumbContainer:Landroid/view/ViewGroup;

    .line 167
    new-instance v1, Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    iget-object v3, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mGalleryThumbContainer:Landroid/view/ViewGroup;

    invoke-direct {v1, v3, v4, v0}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;-><init>(Landroid/content/Context;Landroid/view/View;Lopenlight/co/camera/listener/OnSwipeTouchListener;)V

    iput-object v1, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    .line 169
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mBaseControlView:Landroid/view/View;

    const v1, 0x7f09018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mBaseControlView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mBaseControlView:Landroid/view/View;

    const v1, 0x7f090175

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    invoke-virtual {p0}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->loadAndAnimateGalleryThumbnail()V

    return-void
.end method


# virtual methods
.method public declared-synchronized enableControls(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    .line 120
    :goto_0
    :try_start_0
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mRecordControlView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 121
    iget-object v1, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mToolbarView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 123
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mBaseControlView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mRecordControlView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    invoke-virtual {v0, p1}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->enableIcon(Z)V

    .line 126
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mToolbarView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    if-eqz p1, :cond_1

    .line 130
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->showThumbnailLoading(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 117
    monitor-exit p0

    throw p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0900ad

    if-eq v0, v1, :cond_3

    const v1, 0x7f090175

    if-eq v0, v1, :cond_2

    const p1, 0x7f09018a

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mVideoManager:Lopenlight/co/camera/managers/video/VideoManager;

    invoke-virtual {p1}, Lopenlight/co/camera/managers/video/VideoManager;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mVideoManager:Lopenlight/co/camera/managers/video/VideoManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/video/VideoManager;->stopRecording()V

    goto :goto_0

    .line 77
    :cond_1
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mVideoManager:Lopenlight/co/camera/managers/video/VideoManager;

    invoke-virtual {p0}, Lopenlight/co/camera/managers/video/VideoManager;->startRecording()V

    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_4

    .line 83
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 70
    :cond_3
    sget-object p1, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->TAG:Ljava/lang/String;

    const-string v0, "Go to gallery"

    invoke-static {p1, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->gotoGallery()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onOrientationChanged(Lopenlight/co/camera/enums/OrientationConfig;)V
    .locals 2

    .line 146
    invoke-virtual {p1}, Lopenlight/co/camera/enums/OrientationConfig;->getViewRotationAngle()I

    move-result p1

    .line 147
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mToolbarView:Landroid/view/ViewGroup;

    const/16 v1, 0x32

    invoke-static {v0, p1, v1}, Lopenlight/co/lib/utils/AnimationUtils;->rotateOnOrientationChange(Landroid/view/View;II)V

    .line 148
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mGalleryThumbContainer:Landroid/view/ViewGroup;

    invoke-static {p0, p1, v1}, Lopenlight/co/lib/utils/AnimationUtils;->rotateOnOrientationChange(Landroid/view/View;II)V

    return-void
.end method

.method public resetThumbnailPath()V
    .locals 0

    .line 101
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    invoke-virtual {p0}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->resetPath()V

    return-void
.end method

.method public setThumbnailSpinnerVisibility(Z)V
    .locals 0

    .line 109
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->showThumbnailLoading(Z)V

    return-void
.end method

.method public updateRecordControlDrawable(Z)V
    .locals 2

    .line 139
    iget-object v0, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mRecordControlView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v1, 0x7f080084

    goto :goto_0

    :cond_0
    const v1, 0x7f080082

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_1
    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->setIconAlpha(F)V

    return-void
.end method

.method public updateThumbnailPath(Ljava/lang/String;)V
    .locals 0

    .line 94
    iget-object p0, p0, Lopenlight/co/camera/view/primarycontrol/VideoPrimaryControl;->mThumbnailView:Lopenlight/co/camera/view/thumbnail/ThumbnailView;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/view/thumbnail/ThumbnailView;->setPath(Ljava/lang/String;)V

    return-void
.end method
