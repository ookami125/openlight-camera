.class public Lopenlight/co/camera/utils/MicManager;
.super Ljava/lang/Object;
.source "MicManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MicManager"

.field private static final sInstance:Lopenlight/co/camera/utils/MicManager;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lopenlight/co/camera/utils/MicManager;

    invoke-direct {v0}, Lopenlight/co/camera/utils/MicManager;-><init>()V

    sput-object v0, Lopenlight/co/camera/utils/MicManager;->sInstance:Lopenlight/co/camera/utils/MicManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/CameraApp;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lopenlight/co/camera/utils/MicManager;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public static get()Lopenlight/co/camera/utils/MicManager;
    .locals 1

    .line 20
    sget-object v0, Lopenlight/co/camera/utils/MicManager;->sInstance:Lopenlight/co/camera/utils/MicManager;

    return-object v0
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 42
    iget-object p0, p0, Lopenlight/co/camera/utils/MicManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    return-void
.end method

.method public updateMicFromPrefs()Z
    .locals 3

    .line 30
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    const-string v1, "device_microphone_setting"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 32
    iget-object p0, p0, Lopenlight/co/camera/utils/MicManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 33
    sget-object p0, Lopenlight/co/camera/utils/MicManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Microphone muted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
