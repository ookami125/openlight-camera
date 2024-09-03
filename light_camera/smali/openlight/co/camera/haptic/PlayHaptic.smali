.class public Lopenlight/co/camera/haptic/PlayHaptic;
.super Ljava/lang/Object;
.source "PlayHaptic.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayHaptic"

.field private static final sInstance:Lopenlight/co/camera/haptic/PlayHaptic;


# instance fields
.field private mCurrentHapticStrength:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

.field private mHapticBufferMgr:Lopenlight/co/camera/haptic/HapticBufferMgr;

.field private mHapticDevice:Lcom/immersion/Device;

.field private mIsHapticsEnabled:Z

.field private mIsInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Lopenlight/co/camera/haptic/PlayHaptic;

    invoke-direct {v0}, Lopenlight/co/camera/haptic/PlayHaptic;-><init>()V

    sput-object v0, Lopenlight/co/camera/haptic/PlayHaptic;->sInstance:Lopenlight/co/camera/haptic/PlayHaptic;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mIsHapticsEnabled:Z

    .line 30
    iput-boolean v0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mIsInitialized:Z

    .line 31
    sget-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;->OFF:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    iput-object v0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mCurrentHapticStrength:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    .line 43
    invoke-virtual {p0}, Lopenlight/co/camera/haptic/PlayHaptic;->checkAndUpdateHapticsStatus()V

    return-void
.end method

.method private closeHapticDevice()V
    .registers 2

    .line 167
    iget-object v0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mHapticDevice:Lcom/immersion/Device;

    if-eqz v0, :cond_c

    .line 168
    iget-object v0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mHapticDevice:Lcom/immersion/Device;

    invoke-virtual {v0}, Lcom/immersion/Device;->close()V

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mHapticDevice:Lcom/immersion/Device;

    :cond_c
    return-void
.end method

.method public static get()Lopenlight/co/camera/haptic/PlayHaptic;
    .registers 1

    .line 39
    sget-object v0, Lopenlight/co/camera/haptic/PlayHaptic;->sInstance:Lopenlight/co/camera/haptic/PlayHaptic;

    return-object v0
.end method

.method private getBufferType(Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;)Lcom/immersion/IVTBuffer;
    .registers 5

    .line 200
    iget-object v0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mHapticBufferMgr:Lopenlight/co/camera/haptic/HapticBufferMgr;

    if-eqz v0, :cond_33

    sget-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->INVALID:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    if-eq p1, v0, :cond_33

    .line 201
    sget-object v0, Lopenlight/co/camera/haptic/PlayHaptic;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBufferType: buffer manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mHapticBufferMgr:Lopenlight/co/camera/haptic/HapticBufferMgr;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " category name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p1}, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object p0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mHapticBufferMgr:Lopenlight/co/camera/haptic/HapticBufferMgr;

    invoke-virtual {p0, p1}, Lopenlight/co/camera/haptic/HapticBufferMgr;->getHapticBuffer(Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;)Lcom/immersion/IVTBuffer;

    move-result-object p0

    return-object p0

    .line 205
    :cond_33
    sget-object p0, Lopenlight/co/camera/haptic/PlayHaptic;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBufferType: buffer manager is null or category invalid,  category name requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p1}, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private init()Z
    .registers 4

    .line 153
    iget-boolean v0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mIsInitialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 154
    invoke-direct {p0}, Lopenlight/co/camera/haptic/PlayHaptic;->initHapticsDevice()V

    .line 155
    invoke-direct {p0}, Lopenlight/co/camera/haptic/PlayHaptic;->initHapticBuffer()V

    .line 156
    iput-boolean v1, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mIsInitialized:Z

    goto :goto_15

    .line 158
    :cond_e
    sget-object v0, Lopenlight/co/camera/haptic/PlayHaptic;->TAG:Ljava/lang/String;

    const-string v2, "Ignoring call to init, haptic engine initialized"

    invoke-static {v0, v2}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :goto_15
    iget-object p0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mHapticDevice:Lcom/immersion/Device;

    if-eqz p0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method private initHapticBuffer()V
    .registers 3

    .line 143
    iget-object v0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mHapticBufferMgr:Lopenlight/co/camera/haptic/HapticBufferMgr;

    if-nez v0, :cond_17

    .line 144
    invoke-static {}, Lopenlight/co/camera/haptic/HapticBufferMgr;->get()Lopenlight/co/camera/haptic/HapticBufferMgr;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mHapticBufferMgr:Lopenlight/co/camera/haptic/HapticBufferMgr;

    .line 145
    sget-object v0, Lopenlight/co/camera/haptic/PlayHaptic;->TAG:Ljava/lang/String;

    const-string v1, "Initializing Haptic Buffers"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object p0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mHapticBufferMgr:Lopenlight/co/camera/haptic/HapticBufferMgr;

    invoke-virtual {p0}, Lopenlight/co/camera/haptic/HapticBufferMgr;->createHapticBufferForAll()V

    goto :goto_1e

    .line 148
    :cond_17
    sget-object p0, Lopenlight/co/camera/haptic/PlayHaptic;->TAG:Ljava/lang/String;

    const-string v0, "Haptic Buffers already initialized"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    return-void
.end method

.method private initHapticsDevice()V
    .registers 3

    .line 131
    :try_start_0
    iget-object v0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mHapticDevice:Lcom/immersion/Device;

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    .line 132
    invoke-static {v0}, Lcom/immersion/Device;->newDevice(I)Lcom/immersion/Device;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mHapticDevice:Lcom/immersion/Device;
    :try_end_b
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_b} :catch_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_1e

    :catch_c
    move-exception p0

    goto :goto_17

    :catch_e
    move-exception p0

    .line 135
    :try_start_f
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Couldn\'t find haptic library"

    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_c

    .line 138
    :goto_17
    sget-object v0, Lopenlight/co/camera/haptic/PlayHaptic;->TAG:Ljava/lang/String;

    const-string v1, "Unable to find a haptic device"

    invoke-static {v0, v1, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method private releaseHapticBuffer()V
    .registers 3

    .line 174
    iget-object v0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mHapticBufferMgr:Lopenlight/co/camera/haptic/HapticBufferMgr;

    if-eqz v0, :cond_14

    .line 175
    sget-object v0, Lopenlight/co/camera/haptic/PlayHaptic;->TAG:Ljava/lang/String;

    const-string v1, "Releasing Haptic Buffers"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mHapticBufferMgr:Lopenlight/co/camera/haptic/HapticBufferMgr;

    invoke-virtual {v0}, Lopenlight/co/camera/haptic/HapticBufferMgr;->releaseAllBuffer()V

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mHapticBufferMgr:Lopenlight/co/camera/haptic/HapticBufferMgr;

    goto :goto_1b

    .line 179
    :cond_14
    sget-object p0, Lopenlight/co/camera/haptic/PlayHaptic;->TAG:Ljava/lang/String;

    const-string v0, "Haptic Buffers released previously, doing nothing here"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    return-void
.end method


# virtual methods
.method public checkAndUpdateHapticsStatus()V
    .registers 6

    .line 99
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    const-string v1, "device_haptic_setting"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x3df94319

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_34

    const v2, -0x352a8969    # -6994763.5f

    if-eq v1, v2, :cond_2a

    const v2, 0x1ad6f

    if-eq v1, v2, :cond_20

    goto :goto_3e

    :cond_20
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v3

    goto :goto_3f

    :cond_2a
    const-string v1, "strong"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x2

    goto :goto_3f

    :cond_34
    const-string v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v4

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 v0, -0x1

    :goto_3f
    packed-switch v0, :pswitch_data_82

    goto :goto_80

    .line 116
    :pswitch_43
    iput-boolean v4, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mIsHapticsEnabled:Z

    .line 117
    iget-object v0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mCurrentHapticStrength:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    sget-object v1, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;->STRONG:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    if-eq v0, v1, :cond_80

    .line 118
    invoke-virtual {p0}, Lopenlight/co/camera/haptic/PlayHaptic;->close()V

    .line 119
    sget-object v0, Lopenlight/co/camera/haptic/PlayHaptic;->TAG:Ljava/lang/String;

    const-string v1, "Initializing Haptic Engine"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lopenlight/co/camera/haptic/PlayHaptic;->init()Z

    .line 121
    sget-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;->STRONG:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    iput-object v0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mCurrentHapticStrength:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    goto :goto_80

    .line 107
    :pswitch_5d
    iput-boolean v4, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mIsHapticsEnabled:Z

    .line 108
    iget-object v0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mCurrentHapticStrength:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    sget-object v1, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;->NORMAL:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    if-eq v0, v1, :cond_80

    .line 109
    invoke-virtual {p0}, Lopenlight/co/camera/haptic/PlayHaptic;->close()V

    .line 110
    sget-object v0, Lopenlight/co/camera/haptic/PlayHaptic;->TAG:Ljava/lang/String;

    const-string v1, "Initializing Haptic Engine"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lopenlight/co/camera/haptic/PlayHaptic;->init()Z

    .line 112
    sget-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;->NORMAL:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    iput-object v0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mCurrentHapticStrength:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    goto :goto_80

    .line 102
    :pswitch_77
    iput-boolean v3, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mIsHapticsEnabled:Z

    .line 103
    sget-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;->OFF:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    iput-object v0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mCurrentHapticStrength:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    .line 104
    invoke-virtual {p0}, Lopenlight/co/camera/haptic/PlayHaptic;->close()V

    :cond_80
    :goto_80
    return-void

    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_77
        :pswitch_5d
        :pswitch_43
    .end packed-switch
.end method

.method public close()V
    .registers 3

    .line 187
    iget-boolean v0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mIsInitialized:Z

    if-eqz v0, :cond_18

    .line 188
    sget-object v0, Lopenlight/co/camera/haptic/PlayHaptic;->TAG:Ljava/lang/String;

    const-string v1, "Stopping Haptic Engine"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lopenlight/co/camera/haptic/PlayHaptic;->stopAllHaptic()V

    .line 190
    invoke-direct {p0}, Lopenlight/co/camera/haptic/PlayHaptic;->releaseHapticBuffer()V

    .line 191
    invoke-direct {p0}, Lopenlight/co/camera/haptic/PlayHaptic;->closeHapticDevice()V

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mIsInitialized:Z

    goto :goto_1f

    .line 194
    :cond_18
    sget-object p0, Lopenlight/co/camera/haptic/PlayHaptic;->TAG:Ljava/lang/String;

    const-string v0, "Ignoring call to close, haptic engine already stopped"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1f
    return-void
.end method

.method public playHaptic(Lopenlight/co/camera/haptic/Immersion;)V
    .registers 6

    .line 53
    iget-boolean v0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mIsHapticsEnabled:Z

    if-eqz v0, :cond_8c

    invoke-static {}, Lopenlight/co/TheaterMode/TheaterModeSettings;->get()Lopenlight/co/TheaterMode/TheaterModeSettings;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/TheaterMode/TheaterModeSettings;->isHapticFeedbackDisabled()Z

    move-result v0

    if-nez v0, :cond_8c

    .line 54
    invoke-static {}, Lopenlight/co/camera/managers/CameraManager;->get()Lopenlight/co/camera/managers/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/managers/CameraManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_8c

    invoke-direct {p0}, Lopenlight/co/camera/haptic/PlayHaptic;->init()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 56
    invoke-virtual {p1}, Lopenlight/co/camera/haptic/Immersion;->getHapticCategory()Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    move-result-object v0

    .line 57
    sget-object v1, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->INVALID:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    if-eq v0, v1, :cond_75

    .line 58
    invoke-direct {p0, v0}, Lopenlight/co/camera/haptic/PlayHaptic;->getBufferType(Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;)Lcom/immersion/IVTBuffer;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 61
    :try_start_2c
    iget-object v1, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mHapticDevice:Lcom/immersion/Device;

    invoke-virtual {v1}, Lcom/immersion/Device;->stopAllPlayingEffects()V

    .line 62
    sget-object v1, Lopenlight/co/camera/haptic/PlayHaptic;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Playing Haptic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lopenlight/co/camera/haptic/Immersion;->getIndexedEffectName()Ljava/lang/String;

    move-result-object p1

    .line 64
    iget-object p0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mHapticDevice:Lcom/immersion/Device;

    .line 65
    invoke-virtual {v0, p1}, Lcom/immersion/IVTBuffer;->getEffectIndexFromName(Ljava/lang/String;)I

    move-result p1

    .line 64
    invoke-virtual {p0, v0, p1}, Lcom/immersion/Device;->playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_54} :catch_55

    goto :goto_a2

    :catch_55
    move-exception p0

    .line 67
    sget-object p1, Lopenlight/co/camera/haptic/PlayHaptic;->TAG:Ljava/lang/String;

    const-string v0, "Haptic failed to play"

    invoke-static {p1, v0, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_a2

    .line 70
    :cond_5e
    sget-object p0, Lopenlight/co/camera/haptic/PlayHaptic;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error getting ivt buffer for this index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a2

    .line 73
    :cond_75
    sget-object p0, Lopenlight/co/camera/haptic/PlayHaptic;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No Category found to match haptic name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a2

    .line 76
    :cond_8c
    sget-object p0, Lopenlight/co/camera/haptic/PlayHaptic;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Haptics not enabled, ignoring play haptic request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a2
    return-void
.end method

.method public stopAllHaptic()V
    .registers 4

    .line 84
    iget-object v0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mHapticDevice:Lcom/immersion/Device;

    if-eqz v0, :cond_21

    .line 86
    :try_start_4
    iget-object p0, p0, Lopenlight/co/camera/haptic/PlayHaptic;->mHapticDevice:Lcom/immersion/Device;

    invoke-virtual {p0}, Lcom/immersion/Device;->stopAllPlayingEffects()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_21

    :catch_a
    move-exception p0

    .line 88
    sget-object v0, Lopenlight/co/camera/haptic/PlayHaptic;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error stop play of all haptics "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    :goto_21
    return-void
.end method
