.class public Lopenlight/co/camera/haptic/HapticBufferMgr;
.super Ljava/lang/Object;
.source "HapticBufferMgr.java"


# static fields
.field private static final SDCARD_HAPTIC_OVERRIDE_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "HapticBufferMgr"

.field private static final sInstance:Lopenlight/co/camera/haptic/HapticBufferMgr;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHapticBuffers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;",
            "Lcom/immersion/IVTBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lopenlight/co/camera/haptic/HapticBufferMgr;

    invoke-direct {v0}, Lopenlight/co/camera/haptic/HapticBufferMgr;-><init>()V

    sput-object v0, Lopenlight/co/camera/haptic/HapticBufferMgr;->sInstance:Lopenlight/co/camera/haptic/HapticBufferMgr;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/haptic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/haptic/HapticBufferMgr;->SDCARD_HAPTIC_OVERRIDE_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lopenlight/co/camera/haptic/HapticBufferMgr;->mHapticBuffers:Ljava/util/HashMap;

    .line 36
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/haptic/HapticBufferMgr;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createIVTBufferForCategory(Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;)Lcom/immersion/IVTBuffer;
    .locals 2

    .line 72
    sget-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->INVALID:Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    if-eq p1, v0, :cond_1

    .line 73
    invoke-virtual {p1, p2}, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->getHapticFile(Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;)Ljava/lang/String;

    move-result-object p2

    .line 74
    new-instance v0, Ljava/io/File;

    sget-object v1, Lopenlight/co/camera/haptic/HapticBufferMgr;->SDCARD_HAPTIC_OVERRIDE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 78
    new-instance p2, Lcom/immersion/IVTBuffer;

    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/immersion/IVTBuffer;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 80
    sget-object p2, Lopenlight/co/camera/haptic/HapticBufferMgr;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to initialize IVT Buffer from SDCARD Override for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 85
    :cond_0
    :try_start_1
    iget-object p0, p0, Lopenlight/co/camera/haptic/HapticBufferMgr;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 86
    new-instance p2, Lcom/immersion/IVTBuffer;

    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/immersion/IVTBuffer;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p2

    :catch_1
    move-exception p0

    .line 88
    sget-object p2, Lopenlight/co/camera/haptic/HapticBufferMgr;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to initialize IVT Buffer from Assets for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static get()Lopenlight/co/camera/haptic/HapticBufferMgr;
    .locals 1

    .line 39
    sget-object v0, Lopenlight/co/camera/haptic/HapticBufferMgr;->sInstance:Lopenlight/co/camera/haptic/HapticBufferMgr;

    return-object v0
.end method

.method private getCurrentHapticStrength()Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;
    .locals 2

    .line 58
    invoke-static {}, Lopenlight/co/lib/content/CamPrefsFactory;->get()Lopenlight/co/lib/content/Prefs;

    move-result-object p0

    const-string v0, "device_haptic_setting"

    invoke-interface {p0, v0}, Lopenlight/co/lib/content/Prefs;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 60
    sget-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;->OFF:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    const-string v1, "strong"

    .line 62
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    sget-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;->STRONG:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    goto :goto_0

    :cond_0
    const-string v1, "normal"

    .line 64
    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 65
    sget-object v0, Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;->NORMAL:Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method createHapticBufferForAll()V
    .locals 9

    .line 43
    invoke-direct {p0}, Lopenlight/co/camera/haptic/HapticBufferMgr;->getCurrentHapticStrength()Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;

    move-result-object v0

    .line 44
    invoke-static {}, Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;->values()[Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 45
    invoke-direct {p0, v4, v0}, Lopenlight/co/camera/haptic/HapticBufferMgr;->createIVTBufferForCategory(Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;Lopenlight/co/camera/haptic/HapticFiles$HapticStrength;)Lcom/immersion/IVTBuffer;

    move-result-object v5

    .line 46
    sget-object v6, Lopenlight/co/camera/haptic/HapticBufferMgr;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Initialized IVT Buffer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " for category "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " for strength "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lopenlight/co/lib/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_0

    .line 51
    iget-object v6, p0, Lopenlight/co/camera/haptic/HapticBufferMgr;->mHapticBuffers:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getHapticBuffer(Lopenlight/co/camera/haptic/HapticFiles$HapticCategory;)Lcom/immersion/IVTBuffer;
    .locals 0

    .line 97
    iget-object p0, p0, Lopenlight/co/camera/haptic/HapticBufferMgr;->mHapticBuffers:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/immersion/IVTBuffer;

    return-object p0
.end method

.method public releaseAllBuffer()V
    .locals 0

    .line 101
    iget-object p0, p0, Lopenlight/co/camera/haptic/HapticBufferMgr;->mHapticBuffers:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
