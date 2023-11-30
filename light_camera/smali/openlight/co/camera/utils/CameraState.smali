.class public Lopenlight/co/camera/utils/CameraState;
.super Ljava/lang/Object;
.source "CameraState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/utils/CameraState$SessionState;,
        Lopenlight/co/camera/utils/CameraState$DeviceState;,
        Lopenlight/co/camera/utils/CameraState$StillCaptureMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraState"

.field private static final sInstance:Lopenlight/co/camera/utils/CameraState;


# instance fields
.field private mAutoFitTextureView:Lopenlight/co/camera/AutoFitTextureView;

.field private mCurrentDeviceState:Lopenlight/co/camera/utils/CameraState$DeviceState;

.field private volatile mCurrentSessionState:Lopenlight/co/camera/utils/CameraState$SessionState;

.field private mStillCaptureMode:Lopenlight/co/camera/utils/CameraState$StillCaptureMode;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lopenlight/co/camera/utils/CameraState;

    invoke-direct {v0}, Lopenlight/co/camera/utils/CameraState;-><init>()V

    sput-object v0, Lopenlight/co/camera/utils/CameraState;->sInstance:Lopenlight/co/camera/utils/CameraState;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lopenlight/co/camera/utils/CameraState$StillCaptureMode;->SINGLE:Lopenlight/co/camera/utils/CameraState$StillCaptureMode;

    iput-object v0, p0, Lopenlight/co/camera/utils/CameraState;->mStillCaptureMode:Lopenlight/co/camera/utils/CameraState$StillCaptureMode;

    .line 73
    sget-object v0, Lopenlight/co/camera/utils/CameraState$DeviceState;->CLOSED:Lopenlight/co/camera/utils/CameraState$DeviceState;

    iput-object v0, p0, Lopenlight/co/camera/utils/CameraState;->mCurrentDeviceState:Lopenlight/co/camera/utils/CameraState$DeviceState;

    .line 76
    sget-object v0, Lopenlight/co/camera/utils/CameraState$SessionState;->PREVIEW:Lopenlight/co/camera/utils/CameraState$SessionState;

    iput-object v0, p0, Lopenlight/co/camera/utils/CameraState;->mCurrentSessionState:Lopenlight/co/camera/utils/CameraState$SessionState;

    return-void
.end method

.method public static get()Lopenlight/co/camera/utils/CameraState;
    .locals 1

    .line 84
    sget-object v0, Lopenlight/co/camera/utils/CameraState;->sInstance:Lopenlight/co/camera/utils/CameraState;

    return-object v0
.end method


# virtual methods
.method public checkAndUpdateCaptureMode()V
    .locals 2

    .line 107
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    const-string v1, "burst_mode"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "burst_off"

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lopenlight/co/camera/utils/CameraState$StillCaptureMode;->SINGLE:Lopenlight/co/camera/utils/CameraState$StillCaptureMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lopenlight/co/camera/utils/CameraState$StillCaptureMode;->BURST:Lopenlight/co/camera/utils/CameraState$StillCaptureMode;

    :goto_0
    iput-object v0, p0, Lopenlight/co/camera/utils/CameraState;->mStillCaptureMode:Lopenlight/co/camera/utils/CameraState$StillCaptureMode;

    return-void
.end method

.method public getAutoFitTextureView()Lopenlight/co/camera/AutoFitTextureView;
    .locals 0

    .line 46
    iget-object p0, p0, Lopenlight/co/camera/utils/CameraState;->mAutoFitTextureView:Lopenlight/co/camera/AutoFitTextureView;

    return-object p0
.end method

.method public getDeviceState()Lopenlight/co/camera/utils/CameraState$DeviceState;
    .locals 0

    .line 92
    iget-object p0, p0, Lopenlight/co/camera/utils/CameraState;->mCurrentDeviceState:Lopenlight/co/camera/utils/CameraState$DeviceState;

    return-object p0
.end method

.method public getSessionState()Lopenlight/co/camera/utils/CameraState$SessionState;
    .locals 0

    .line 113
    iget-object p0, p0, Lopenlight/co/camera/utils/CameraState;->mCurrentSessionState:Lopenlight/co/camera/utils/CameraState$SessionState;

    return-object p0
.end method

.method public getStillCaptureMode()Lopenlight/co/camera/utils/CameraState$StillCaptureMode;
    .locals 0

    .line 100
    iget-object p0, p0, Lopenlight/co/camera/utils/CameraState;->mStillCaptureMode:Lopenlight/co/camera/utils/CameraState$StillCaptureMode;

    return-object p0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    .line 54
    iget-object p0, p0, Lopenlight/co/camera/utils/CameraState;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public isCameraOpen()Z
    .locals 1

    .line 96
    iget-object p0, p0, Lopenlight/co/camera/utils/CameraState;->mCurrentDeviceState:Lopenlight/co/camera/utils/CameraState$DeviceState;

    sget-object v0, Lopenlight/co/camera/utils/CameraState$DeviceState;->OPEN:Lopenlight/co/camera/utils/CameraState$DeviceState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public releaseSurface()V
    .locals 1

    .line 62
    iget-object v0, p0, Lopenlight/co/camera/utils/CameraState;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lopenlight/co/camera/utils/CameraState;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lopenlight/co/camera/utils/CameraState;->mSurface:Landroid/view/Surface;

    :cond_0
    return-void
.end method

.method public setDeviceState(Lopenlight/co/camera/utils/CameraState$DeviceState;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lopenlight/co/camera/utils/CameraState;->mCurrentDeviceState:Lopenlight/co/camera/utils/CameraState$DeviceState;

    return-void
.end method

.method public setSessionState(Lopenlight/co/camera/utils/CameraState$SessionState;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lopenlight/co/camera/utils/CameraState;->mCurrentSessionState:Lopenlight/co/camera/utils/CameraState$SessionState;

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lopenlight/co/camera/utils/CameraState;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method public setTextureView(Lopenlight/co/camera/AutoFitTextureView;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lopenlight/co/camera/utils/CameraState;->mAutoFitTextureView:Lopenlight/co/camera/AutoFitTextureView;

    return-void
.end method
