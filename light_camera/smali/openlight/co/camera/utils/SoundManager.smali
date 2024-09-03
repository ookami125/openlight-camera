.class public Lopenlight/co/camera/utils/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/camera/utils/SoundManager$Sound;,
        Lopenlight/co/camera/utils/SoundManager$Theme;
    }
.end annotation


# static fields
.field private static final LOADED_SOUND_NOT_FOUND:I = 0x0

.field private static final LOOP:I = 0x0

.field private static final MSG_INIT_POOL:I = 0x1

.field private static final MSG_PLAY_SOUND:I = 0x3

.field private static final MSG_RELEASE_POOL:I = 0x2

.field private static final PLAY_BURST_TICK_PRIORITY:I = 0x5

.field private static final PLAY_OTHER_SOUND_PRIORITY:I = 0xa

.field private static final RATE:F = 1.0f

.field private static final SOUND_RESOURCE_PRIORITY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SoundManager"

.field private static final sInstance:Lopenlight/co/camera/utils/SoundManager;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentTheme:Lopenlight/co/camera/utils/SoundManager$Theme;

.field private mCurrentlyPlayingLoadedSoundId:I

.field private mIsInitialized:Z

.field private final mLoadedResourceMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lopenlight/co/camera/utils/SoundManager$Sound;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNumSoundsLoaded:I

.field private volatile mPlayVolume:F

.field private mSoundBackgroundThread:Landroid/os/HandlerThread;

.field private mSoundEnabled:Z

.field private mSoundHandler:Landroid/os/Handler;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Lopenlight/co/camera/utils/SoundManager;

    invoke-direct {v0}, Lopenlight/co/camera/utils/SoundManager;-><init>()V

    sput-object v0, Lopenlight/co/camera/utils/SoundManager;->sInstance:Lopenlight/co/camera/utils/SoundManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundEnabled:Z

    .line 47
    iput v0, p0, Lopenlight/co/camera/utils/SoundManager;->mCurrentlyPlayingLoadedSoundId:I

    const/4 v1, 0x0

    .line 48
    iput v1, p0, Lopenlight/co/camera/utils/SoundManager;->mPlayVolume:F

    .line 53
    iput-boolean v0, p0, Lopenlight/co/camera/utils/SoundManager;->mIsInitialized:Z

    .line 55
    iput v0, p0, Lopenlight/co/camera/utils/SoundManager;->mNumSoundsLoaded:I

    .line 57
    iput-boolean v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundPoolLoaded:Z

    .line 59
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lopenlight/co/camera/utils/SoundManager$Sound;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lopenlight/co/camera/utils/SoundManager;->mLoadedResourceMap:Ljava/util/EnumMap;

    .line 364
    invoke-virtual {p0}, Lopenlight/co/camera/utils/SoundManager;->checkAndEnableSound()V

    return-void
.end method

.method static synthetic access$000(Lopenlight/co/camera/utils/SoundManager;)I
    .registers 1

    .line 27
    iget p0, p0, Lopenlight/co/camera/utils/SoundManager;->mNumSoundsLoaded:I

    return p0
.end method

.method static synthetic access$008(Lopenlight/co/camera/utils/SoundManager;)I
    .registers 3

    .line 27
    iget v0, p0, Lopenlight/co/camera/utils/SoundManager;->mNumSoundsLoaded:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lopenlight/co/camera/utils/SoundManager;->mNumSoundsLoaded:I

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 27
    sget-object v0, Lopenlight/co/camera/utils/SoundManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lopenlight/co/camera/utils/SoundManager;Z)Z
    .registers 2

    .line 27
    iput-boolean p1, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundPoolLoaded:Z

    return p1
.end method

.method private createSound(Landroid/media/SoundPool;)V
    .registers 10

    const/4 v0, 0x0

    .line 276
    iput-boolean v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundPoolLoaded:Z

    .line 277
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v1

    .line 278
    invoke-static {}, Lopenlight/co/camera/utils/SoundManager$Sound;->values()[Lopenlight/co/camera/utils/SoundManager$Sound;

    move-result-object v2

    array-length v3, v2

    :goto_c
    if-ge v0, v3, :cond_27

    aget-object v4, v2, v0

    .line 279
    iget-object v5, p0, Lopenlight/co/camera/utils/SoundManager;->mLoadedResourceMap:Ljava/util/EnumMap;

    iget-object v6, p0, Lopenlight/co/camera/utils/SoundManager;->mCurrentTheme:Lopenlight/co/camera/utils/SoundManager$Theme;

    .line 280
    invoke-virtual {v4, v6}, Lopenlight/co/camera/utils/SoundManager$Sound;->getRawSoundResourceId(Lopenlight/co/camera/utils/SoundManager$Theme;)I

    move-result v6

    const/4 v7, 0x1

    .line 279
    invoke-virtual {p1, v1, v6, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_27
    return-void
.end method

.method public static get()Lopenlight/co/camera/utils/SoundManager;
    .registers 1

    .line 62
    sget-object v0, Lopenlight/co/camera/utils/SoundManager;->sInstance:Lopenlight/co/camera/utils/SoundManager;

    return-object v0
.end method

.method private getSound(I)I
    .registers 8

    .line 330
    invoke-static {}, Lopenlight/co/camera/utils/SoundManager$Sound;->values()[Lopenlight/co/camera/utils/SoundManager$Sound;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_23

    aget-object v4, v0, v3

    .line 331
    iget-object v5, p0, Lopenlight/co/camera/utils/SoundManager;->mCurrentTheme:Lopenlight/co/camera/utils/SoundManager$Theme;

    invoke-virtual {v4, v5}, Lopenlight/co/camera/utils/SoundManager$Sound;->getRawSoundResourceId(Lopenlight/co/camera/utils/SoundManager$Theme;)I

    move-result v5

    if-ne v5, p1, :cond_20

    .line 332
    iget-object p0, p0, Lopenlight/co/camera/utils/SoundManager;->mLoadedResourceMap:Ljava/util/EnumMap;

    invoke-virtual {p0, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_23
    return v2
.end method

.method private init()V
    .registers 4

    .line 229
    iget-boolean v0, p0, Lopenlight/co/camera/utils/SoundManager;->mIsInitialized:Z

    if-nez v0, :cond_3f

    .line 230
    sget-object v0, Lopenlight/co/camera/utils/SoundManager;->TAG:Ljava/lang/String;

    const-string v1, "Initializing Sound Background Thread/Handler and Pool"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/CameraApp;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lopenlight/co/camera/utils/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    .line 232
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SoundPlayBackground"

    const/16 v2, -0x10

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundBackgroundThread:Landroid/os/HandlerThread;

    .line 234
    iget-object v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 235
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundHandler:Landroid/os/Handler;

    .line 236
    iget-object v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 237
    iput-boolean v1, p0, Lopenlight/co/camera/utils/SoundManager;->mIsInitialized:Z

    goto :goto_46

    .line 239
    :cond_3f
    sget-object p0, Lopenlight/co/camera/utils/SoundManager;->TAG:Ljava/lang/String;

    const-string v0, "Ignoring call to init, sound engine already initialized earlier"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_46
    return-void
.end method

.method private initSoundPool()V
    .registers 4

    .line 247
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 248
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 249
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 251
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v2, 0x1

    .line 252
    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    .line 253
    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 255
    iget-object v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-direct {p0, v0}, Lopenlight/co/camera/utils/SoundManager;->createSound(Landroid/media/SoundPool;)V

    .line 256
    iget-object v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lopenlight/co/camera/utils/SoundManager$1;

    invoke-direct {v1, p0}, Lopenlight/co/camera/utils/SoundManager$1;-><init>(Lopenlight/co/camera/utils/SoundManager;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method

.method private playSound(I)V
    .registers 9

    .line 196
    invoke-direct {p0, p1}, Lopenlight/co/camera/utils/SoundManager;->getSound(I)I

    move-result p1

    iput p1, p0, Lopenlight/co/camera/utils/SoundManager;->mCurrentlyPlayingLoadedSoundId:I

    .line 197
    iget p1, p0, Lopenlight/co/camera/utils/SoundManager;->mCurrentlyPlayingLoadedSoundId:I

    if-eqz p1, :cond_3a

    .line 198
    invoke-static {}, Lopenlight/co/TheaterMode/TheaterModeSettings;->get()Lopenlight/co/TheaterMode/TheaterModeSettings;

    move-result-object p1

    invoke-virtual {p1}, Lopenlight/co/TheaterMode/TheaterModeSettings;->isAudioDisabled()Z

    move-result p1

    if-nez p1, :cond_3a

    .line 201
    iget p1, p0, Lopenlight/co/camera/utils/SoundManager;->mCurrentlyPlayingLoadedSoundId:I

    iget-object v0, p0, Lopenlight/co/camera/utils/SoundManager;->mLoadedResourceMap:Ljava/util/EnumMap;

    sget-object v1, Lopenlight/co/camera/utils/SoundManager$Sound;->BURST_TICKS:Lopenlight/co/camera/utils/SoundManager$Sound;

    .line 202
    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_29

    const/4 p1, 0x5

    :goto_27
    move v4, p1

    goto :goto_2c

    :cond_29
    const/16 p1, 0xa

    goto :goto_27

    .line 203
    :goto_2c
    iget-object v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lopenlight/co/camera/utils/SoundManager;->mCurrentlyPlayingLoadedSoundId:I

    iget v2, p0, Lopenlight/co/camera/utils/SoundManager;->mPlayVolume:F

    iget v3, p0, Lopenlight/co/camera/utils/SoundManager;->mPlayVolume:F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_3a
    return-void
.end method

.method private postPlaySoundRequest(I)V
    .registers 8

    .line 290
    iget-boolean v0, p0, Lopenlight/co/camera/utils/SoundManager;->mIsInitialized:Z

    if-nez v0, :cond_7

    .line 291
    invoke-virtual {p0}, Lopenlight/co/camera/utils/SoundManager;->checkAndEnableSound()V

    .line 294
    :cond_7
    iget-boolean v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundEnabled:Z

    if-eqz v0, :cond_8b

    .line 295
    iget-object v0, p0, Lopenlight/co/camera/utils/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 297
    iget-object v2, p0, Lopenlight/co/camera/utils/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 299
    iget-object v2, p0, Lopenlight/co/camera/utils/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 301
    sget-object v3, Lopenlight/co/camera/utils/SoundManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Play sound resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " audio_mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lopenlight/co/camera/utils/SoundManager;->mAudioManager:Landroid/media/AudioManager;

    .line 302
    invoke-virtual {v5}, Landroid/media/AudioManager;->getMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ringer mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " media vol: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " max vol: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 301
    invoke-static {v3, v4}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v3, v1

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 307
    iput v3, p0, Lopenlight/co/camera/utils/SoundManager;->mPlayVolume:F

    if-eqz v2, :cond_a1

    if-lez v1, :cond_a1

    .line 310
    iget-boolean v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundPoolLoaded:Z

    if-nez v0, :cond_7d

    .line 311
    sget-object v0, Lopenlight/co/camera/utils/SoundManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not all sounds have been loaded yet, play of sound may fail :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_7d
    iget-object v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 315
    iget-object p0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a1

    .line 318
    :cond_8b
    sget-object p0, Lopenlight/co/camera/utils/SoundManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sound Not Enabled, not playing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a1
    :goto_a1
    return-void
.end method

.method private releaseSoundPool()V
    .registers 4

    .line 343
    iget-object v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 344
    iget-object v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lopenlight/co/camera/utils/SoundManager;->mCurrentlyPlayingLoadedSoundId:I

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 345
    iget-object v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 346
    iput-object v1, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    .line 350
    :cond_13
    iget-object v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1e

    .line 351
    iget-object v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 352
    iput-object v1, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundHandler:Landroid/os/Handler;

    .line 356
    :cond_1e
    iget-object v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_29

    .line 357
    iget-object v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 358
    iput-object v1, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundBackgroundThread:Landroid/os/HandlerThread;

    :cond_29
    const/4 v0, 0x0

    .line 360
    iput-boolean v0, p0, Lopenlight/co/camera/utils/SoundManager;->mIsInitialized:Z

    return-void
.end method

.method private shouldPlaySound()Z
    .registers 4

    .line 215
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v0

    const-string v1, "device_audio_setting"

    invoke-interface {v0, v1}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 218
    sget-object v0, Lopenlight/co/camera/utils/SoundManager$Theme;->CLASSIC:Lopenlight/co/camera/utils/SoundManager$Theme;

    invoke-virtual {v0}, Lopenlight/co/camera/utils/SoundManager$Theme;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object v1

    const-string v2, "device_audio_setting"

    invoke-interface {v1, v2, v0}, Lopenlight/co/lib/content/Prefs;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_21
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lopenlight/co/camera/utils/SoundManager$Theme;->valueOf(Ljava/lang/String;)Lopenlight/co/camera/utils/SoundManager$Theme;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/utils/SoundManager;->mCurrentTheme:Lopenlight/co/camera/utils/SoundManager$Theme;

    .line 225
    iget-object p0, p0, Lopenlight/co/camera/utils/SoundManager;->mCurrentTheme:Lopenlight/co/camera/utils/SoundManager$Theme;

    sget-object v0, Lopenlight/co/camera/utils/SoundManager$Theme;->OFF:Lopenlight/co/camera/utils/SoundManager$Theme;

    if-eq p0, v0, :cond_33

    const/4 p0, 0x1

    goto :goto_34

    :cond_33
    const/4 p0, 0x0

    :goto_34
    return p0
.end method


# virtual methods
.method public checkAndEnableSound()V
    .registers 2

    .line 123
    invoke-direct {p0}, Lopenlight/co/camera/utils/SoundManager;->shouldPlaySound()Z

    move-result v0

    iput-boolean v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundEnabled:Z

    .line 124
    iget-boolean v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundEnabled:Z

    if-eqz v0, :cond_e

    .line 125
    invoke-direct {p0}, Lopenlight/co/camera/utils/SoundManager;->init()V

    goto :goto_11

    .line 127
    :cond_e
    invoke-virtual {p0}, Lopenlight/co/camera/utils/SoundManager;->releaseSoundResources()V

    :goto_11
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 3

    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    goto :goto_13

    .line 112
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lopenlight/co/camera/utils/SoundManager;->playSound(I)V

    goto :goto_13

    .line 108
    :pswitch_c
    invoke-direct {p0}, Lopenlight/co/camera/utils/SoundManager;->releaseSoundPool()V

    goto :goto_13

    .line 105
    :pswitch_10
    invoke-direct {p0}, Lopenlight/co/camera/utils/SoundManager;->initSoundPool()V

    :goto_13
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_10
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method

.method public playBurstSingle()V
    .registers 2

    .line 168
    iget-boolean v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundEnabled:Z

    if-eqz v0, :cond_9

    const/high16 v0, 0x7f0d0000

    .line 169
    invoke-direct {p0, v0}, Lopenlight/co/camera/utils/SoundManager;->postPlaySoundRequest(I)V

    :cond_9
    return-void
.end method

.method public playCaptureEnd()V
    .registers 3

    .line 159
    iget-boolean v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundEnabled:Z

    if-eqz v0, :cond_f

    .line 160
    sget-object v0, Lopenlight/co/camera/utils/SoundManager$Sound;->SHUTTER_CLOSE:Lopenlight/co/camera/utils/SoundManager$Sound;

    iget-object v1, p0, Lopenlight/co/camera/utils/SoundManager;->mCurrentTheme:Lopenlight/co/camera/utils/SoundManager$Theme;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/utils/SoundManager$Sound;->getRawSoundResourceId(Lopenlight/co/camera/utils/SoundManager$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lopenlight/co/camera/utils/SoundManager;->postPlaySoundRequest(I)V

    :cond_f
    return-void
.end method

.method public playCaptureStart()V
    .registers 3

    .line 150
    iget-boolean v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundEnabled:Z

    if-eqz v0, :cond_f

    .line 151
    sget-object v0, Lopenlight/co/camera/utils/SoundManager$Sound;->SHUTTER_OPEN:Lopenlight/co/camera/utils/SoundManager$Sound;

    iget-object v1, p0, Lopenlight/co/camera/utils/SoundManager;->mCurrentTheme:Lopenlight/co/camera/utils/SoundManager$Theme;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/utils/SoundManager$Sound;->getRawSoundResourceId(Lopenlight/co/camera/utils/SoundManager$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lopenlight/co/camera/utils/SoundManager;->postPlaySoundRequest(I)V

    :cond_f
    return-void
.end method

.method public playCountDownTimer()V
    .registers 3

    .line 177
    iget-boolean v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundEnabled:Z

    if-eqz v0, :cond_f

    .line 178
    sget-object v0, Lopenlight/co/camera/utils/SoundManager$Sound;->COUNTDOWN_TIMER:Lopenlight/co/camera/utils/SoundManager$Sound;

    iget-object v1, p0, Lopenlight/co/camera/utils/SoundManager;->mCurrentTheme:Lopenlight/co/camera/utils/SoundManager$Theme;

    invoke-virtual {v0, v1}, Lopenlight/co/camera/utils/SoundManager$Sound;->getRawSoundResourceId(Lopenlight/co/camera/utils/SoundManager$Theme;)I

    move-result v0

    invoke-direct {p0, v0}, Lopenlight/co/camera/utils/SoundManager;->postPlaySoundRequest(I)V

    :cond_f
    return-void
.end method

.method public playFocusAchieved()V
    .registers 2

    .line 186
    iget-boolean v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundEnabled:Z

    if-eqz v0, :cond_a

    const v0, 0x7f0d0003

    .line 187
    invoke-direct {p0, v0}, Lopenlight/co/camera/utils/SoundManager;->postPlaySoundRequest(I)V

    :cond_a
    return-void
.end method

.method public releaseSoundResources()V
    .registers 3

    .line 135
    iget-boolean v0, p0, Lopenlight/co/camera/utils/SoundManager;->mIsInitialized:Z

    if-eqz v0, :cond_1d

    .line 136
    sget-object v0, Lopenlight/co/camera/utils/SoundManager;->TAG:Ljava/lang/String;

    const-string v1, "Releasing sound pool, and quiting sound background thread"

    invoke-static {v0, v1}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    iget-object v0, p0, Lopenlight/co/camera/utils/SoundManager;->mLoadedResourceMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    .line 140
    iget-object p0, p0, Lopenlight/co/camera/utils/SoundManager;->mSoundHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_24

    .line 142
    :cond_1d
    sget-object p0, Lopenlight/co/camera/utils/SoundManager;->TAG:Ljava/lang/String;

    const-string v0, "Ignoring call to release, sound engine already released"

    invoke-static {p0, v0}, Lopenlight/co/lib/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    return-void
.end method
