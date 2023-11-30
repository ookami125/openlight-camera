.class public Lopenlight/co/camera/view/face/FaceViewHelper;
.super Ljava/lang/Object;
.source "FaceViewHelper.java"

# interfaces
.implements Lopenlight/co/camera/utils/FaceDetector$OnFaceEventListener;


# static fields
.field private static final FACE_UI_UPDATE_REFRESH_PERIOD:J

.field private static final MSG_ENABLE_UPDATES:I = 0x65

.field private static final MSG_SETUP_FACE_VIEW:I = 0x66

.field private static final MSG_UPDATE_FACES:I = 0x64

.field private static final TAG:Ljava/lang/String; = "FaceViewHelper"

.field private static final sInstance:Lopenlight/co/camera/view/face/FaceViewHelper;


# instance fields
.field private mContainerLayout:Landroid/view/ViewGroup;

.field private final mCurrentFaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;"
        }
    .end annotation
.end field

.field private final mFaceDetector:Lopenlight/co/camera/utils/FaceDetector;

.field private mFaceView:Lopenlight/co/camera/view/face/FaceView;

.field private final mMainLooperHandler:Landroid/os/Handler;

.field private mPreviewSize:Landroid/util/Size;

.field private volatile mProcessAndDrawFace:Z

.field private final mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

.field private final mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lopenlight/co/camera/view/face/FaceViewHelper;

    invoke-direct {v0}, Lopenlight/co/camera/view/face/FaceViewHelper;-><init>()V

    sput-object v0, Lopenlight/co/camera/view/face/FaceViewHelper;->sInstance:Lopenlight/co/camera/view/face/FaceViewHelper;

    .line 41
    invoke-static {}, Lopenlight/co/lib/utils/FeatureManager;->get()Lopenlight/co/lib/utils/FeatureManager;

    move-result-object v0

    const-string v1, "face.ui.period"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lopenlight/co/lib/utils/FeatureManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lopenlight/co/camera/view/face/FaceViewHelper;->FACE_UI_UPDATE_REFRESH_PERIOD:J

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lopenlight/co/camera/managers/zoom/ZoomManager;->get()Lopenlight/co/camera/managers/zoom/ZoomManager;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    .line 45
    invoke-static {}, Lopenlight/co/camera/utils/FaceDetector;->get()Lopenlight/co/camera/utils/FaceDetector;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mFaceDetector:Lopenlight/co/camera/utils/FaceDetector;

    .line 47
    invoke-static {}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->get()Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mProcessAndDrawFace:Z

    .line 54
    new-instance v0, Lopenlight/co/camera/view/face/FaceViewHelper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lopenlight/co/camera/view/face/FaceViewHelper$1;-><init>(Lopenlight/co/camera/view/face/FaceViewHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mMainLooperHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mCurrentFaces:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 23
    sget-wide v0, Lopenlight/co/camera/view/face/FaceViewHelper;->FACE_UI_UPDATE_REFRESH_PERIOD:J

    return-wide v0
.end method

.method static synthetic access$100(Lopenlight/co/camera/view/face/FaceViewHelper;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lopenlight/co/camera/view/face/FaceViewHelper;->updateFaces()V

    return-void
.end method

.method static synthetic access$202(Lopenlight/co/camera/view/face/FaceViewHelper;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mProcessAndDrawFace:Z

    return p1
.end method

.method static synthetic access$300(Lopenlight/co/camera/view/face/FaceViewHelper;)Lopenlight/co/camera/view/face/FaceView;
    .locals 0

    .line 23
    iget-object p0, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mFaceView:Lopenlight/co/camera/view/face/FaceView;

    return-object p0
.end method

.method static synthetic access$302(Lopenlight/co/camera/view/face/FaceViewHelper;Lopenlight/co/camera/view/face/FaceView;)Lopenlight/co/camera/view/face/FaceView;
    .locals 0

    .line 23
    iput-object p1, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mFaceView:Lopenlight/co/camera/view/face/FaceView;

    return-object p1
.end method

.method static synthetic access$400(Lopenlight/co/camera/view/face/FaceViewHelper;)Landroid/view/ViewGroup;
    .locals 0

    .line 23
    iget-object p0, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mContainerLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static get()Lopenlight/co/camera/view/face/FaceViewHelper;
    .locals 1

    .line 36
    sget-object v0, Lopenlight/co/camera/view/face/FaceViewHelper;->sInstance:Lopenlight/co/camera/view/face/FaceViewHelper;

    return-object v0
.end method

.method private updateFaces()V
    .locals 1

    .line 191
    sget-boolean v0, Lopenlight/co/camera/view/face/FaceView;->DISPLAY_FACE_RECTANGLES:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mFaceView:Lopenlight/co/camera/view/face/FaceView;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mFaceView:Lopenlight/co/camera/view/face/FaceView;

    iget-object p0, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mCurrentFaces:Ljava/util/List;

    invoke-virtual {v0, p0}, Lopenlight/co/camera/view/face/FaceView;->clearAndDrawAllRectangles(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public init(Landroid/view/ViewGroup;Landroid/util/Size;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 171
    iget-object v0, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mFaceDetector:Lopenlight/co/camera/utils/FaceDetector;

    invoke-virtual {v0}, Lopenlight/co/camera/utils/FaceDetector;->isFaceDetectionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iput-object p2, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mPreviewSize:Landroid/util/Size;

    .line 173
    iget-object p2, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mFaceDetector:Lopenlight/co/camera/utils/FaceDetector;

    invoke-virtual {p2, p0}, Lopenlight/co/camera/utils/FaceDetector;->registerOnFaceEventListener(Lopenlight/co/camera/utils/FaceDetector$OnFaceEventListener;)V

    const/4 p2, 0x1

    .line 174
    iput-boolean p2, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mProcessAndDrawFace:Z

    .line 175
    iput-object p1, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mContainerLayout:Landroid/view/ViewGroup;

    .line 179
    sget-boolean p1, Lopenlight/co/camera/view/face/FaceView;->DISPLAY_FACE_RECTANGLES:Z

    if-eqz p1, :cond_0

    .line 180
    iget-object p1, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mMainLooperHandler:Landroid/os/Handler;

    iget-object p0, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mMainLooperHandler:Landroid/os/Handler;

    const/16 p2, 0x66

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    .line 168
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot call init with null parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onFaceDetected(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/Face;",
            ">;)V"
        }
    .end annotation

    .line 99
    iget-boolean v0, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mProcessAndDrawFace:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mProcessAndDrawFace:Z

    .line 102
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object p1, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mCurrentFaces:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_3

    .line 105
    :cond_0
    iget-object v1, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    .line 106
    invoke-virtual {v1}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->getLastFocusTriggeredFace()Landroid/hardware/camera2/params/Face;

    move-result-object v1

    .line 108
    iget-object v2, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mCurrentFaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/high16 v0, -0x80000000

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mCurrentFaces:Ljava/util/List;

    .line 109
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/Face;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v0

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v0

    .line 114
    :goto_1
    iget-object v1, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mCurrentFaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 121
    new-instance v1, Lopenlight/co/camera/view/face/FaceViewHelper$2;

    invoke-direct {v1, p0, v0}, Lopenlight/co/camera/view/face/FaceViewHelper$2;-><init>(Lopenlight/co/camera/view/face/FaceViewHelper;I)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 140
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/Face;

    .line 142
    iget-object v1, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mFaceDetector:Lopenlight/co/camera/utils/FaceDetector;

    iget-object v2, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mPreviewSize:Landroid/util/Size;

    .line 144
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mPreviewSize:Landroid/util/Size;

    .line 145
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget-object v4, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mZoomManager:Lopenlight/co/camera/managers/zoom/ZoomManager;

    .line 146
    invoke-virtual {v4}, Lopenlight/co/camera/managers/zoom/ZoomManager;->getZoomCroppedView()Landroid/graphics/Rect;

    move-result-object v4

    .line 142
    invoke-virtual {v1, v0, v2, v3, v4}, Lopenlight/co/camera/utils/FaceDetector;->convertFaceRectToDisplayCoordinates(Landroid/hardware/camera2/params/Face;IILandroid/graphics/Rect;)V

    .line 147
    iget-object v1, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mCurrentFaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 153
    :cond_3
    :goto_3
    iget-object p1, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mSmartAFTriggerMgr:Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;

    iget-object v0, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mCurrentFaces:Ljava/util/List;

    invoke-virtual {p1, v0}, Lopenlight/co/camera/managers/focus/SmartAFTriggerMgr;->processFaces(Ljava/util/List;)V

    .line 155
    iget-object p1, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mMainLooperHandler:Landroid/os/Handler;

    iget-object p0, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    return-void
.end method

.method public release()V
    .locals 2

    .line 200
    iget-object v0, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mFaceDetector:Lopenlight/co/camera/utils/FaceDetector;

    invoke-virtual {v0}, Lopenlight/co/camera/utils/FaceDetector;->isFaceDetectionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mFaceDetector:Lopenlight/co/camera/utils/FaceDetector;

    invoke-virtual {v0}, Lopenlight/co/camera/utils/FaceDetector;->unregisterOnFaceEventListener()V

    .line 202
    iget-object v0, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    iget-object v0, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    iget-object v0, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mMainLooperHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lopenlight/co/camera/view/face/FaceViewHelper;->mProcessAndDrawFace:Z

    :cond_0
    return-void
.end method
