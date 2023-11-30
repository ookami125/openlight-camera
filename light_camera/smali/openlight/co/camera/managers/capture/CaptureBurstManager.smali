.class public Lopenlight/co/camera/managers/capture/CaptureBurstManager;
.super Ljava/lang/Object;
.source "CaptureBurstManager.java"


# static fields
.field private static final BURST_DISABLE_FILE:Ljava/lang/String; = "disable_burst.prop"

.field private static final BURST_NINE_SHOT_CAPTURE_INTENT:I = 0xa

.field private static final BURST_SIX_SHOT_CAPTURE_INTENT:I = 0xc

.field private static final BURST_THREE_SHOT_CAPTURE_INTENT:I = 0xd

.field private static final BURST_TRANSFER_CAPTURE_INTENT:I = 0xb

.field private static final PENDING_CAPTURE_FOR_BURST_NINE:I = 0x9

.field private static final PENDING_CAPTURE_FOR_BURST_SIX:I = 0x6

.field private static final PENDING_CAPTURE_FOR_BURST_THREE:I = 0x3

.field private static sInstance:Lopenlight/co/camera/managers/capture/CaptureBurstManager;


# instance fields
.field private mBurstOrientation:I

.field private final mCamPref:Lopenlight/co/lib/content/Prefs;

.field private final mIsBurstDisabled:Z

.field private mIsFetchRequest:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    .line 41
    new-instance v0, Ljava/io/File;

    .line 42
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "disable_burst.prop"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->mIsBurstDisabled:Z

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->mIsFetchRequest:Z

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->mBurstOrientation:I

    .line 57
    iget-boolean v0, p0, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->mIsBurstDisabled:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object p0, p0, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "burst_mode"

    invoke-interface {p0, v0}, Lopenlight/co/lib/content/Prefs;->removeValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized get()Lopenlight/co/camera/managers/capture/CaptureBurstManager;
    .locals 2

    const-class v0, Lopenlight/co/camera/managers/capture/CaptureBurstManager;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->sInstance:Lopenlight/co/camera/managers/capture/CaptureBurstManager;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lopenlight/co/camera/managers/capture/CaptureBurstManager;

    invoke-direct {v1}, Lopenlight/co/camera/managers/capture/CaptureBurstManager;-><init>()V

    sput-object v1, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->sInstance:Lopenlight/co/camera/managers/capture/CaptureBurstManager;

    .line 53
    :cond_0
    sget-object v1, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->sInstance:Lopenlight/co/camera/managers/capture/CaptureBurstManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 49
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getBurstOrientation()I
    .locals 0

    .line 121
    iget p0, p0, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->mBurstOrientation:I

    return p0
.end method

.method public getIfFetchRequest()Z
    .locals 0

    .line 112
    iget-boolean p0, p0, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->mIsFetchRequest:Z

    return p0
.end method

.method public getPendingUserCaptureCount()I
    .locals 1

    .line 70
    iget-object p0, p0, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v0, "burst_mode"

    invoke-interface {p0, v0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lopenlight/co/camera/enums/BurstMode;->getModeByPrefsKey(Ljava/lang/String;)Lopenlight/co/camera/enums/BurstMode;

    move-result-object p0

    .line 72
    sget-object v0, Lopenlight/co/camera/managers/capture/CaptureBurstManager$1;->$SwitchMap$light$co$camera$enums$BurstMode:[I

    invoke-virtual {p0}, Lopenlight/co/camera/enums/BurstMode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/4 p0, 0x6

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBurstOrientation(I)V
    .locals 0

    .line 117
    iput p1, p0, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->mBurstOrientation:I

    return-void
.end method

.method setCaptureRequestForBurst(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2

    .line 92
    iget-object v0, p0, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->mCamPref:Lopenlight/co/lib/content/Prefs;

    const-string v1, "burst_mode"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lopenlight/co/camera/enums/BurstMode;->getModeByPrefsKey(Ljava/lang/String;)Lopenlight/co/camera/enums/BurstMode;

    move-result-object v0

    const/4 v1, 0x1

    .line 93
    iput-boolean v1, p0, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->mIsFetchRequest:Z

    .line 94
    sget-object v1, Lopenlight/co/camera/managers/capture/CaptureBurstManager$1;->$SwitchMap$light$co$camera$enums$BurstMode:[I

    invoke-virtual {v0}, Lopenlight/co/camera/enums/BurstMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 103
    iput-boolean v1, p0, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->mIsFetchRequest:Z

    const/16 p0, 0xd

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 97
    iput-boolean v1, p0, Lopenlight/co/camera/managers/capture/CaptureBurstManager;->mIsFetchRequest:Z

    const/16 p0, 0xc

    goto :goto_1

    :cond_0
    :goto_0
    const/16 p0, 0xb

    .line 108
    :goto_1
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
