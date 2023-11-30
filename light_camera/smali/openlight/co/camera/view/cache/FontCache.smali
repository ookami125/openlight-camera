.class public Lopenlight/co/camera/view/cache/FontCache;
.super Ljava/lang/Object;
.source "FontCache.java"


# static fields
.field private static final HARMONIA_REGULAR:Ljava/lang/String; = "harmonia-regular.ttf"

.field private static final HARMONIA_SEMIBOLD:Ljava/lang/String; = "harmonia-semibold.ttf"

.field private static final TAG:Ljava/lang/String; = "FontCache"

.field private static sInstance:Lopenlight/co/camera/view/cache/FontCache;


# instance fields
.field private final mFontCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lopenlight/co/camera/view/cache/FontCache;->mFontCache:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized get()Lopenlight/co/camera/view/cache/FontCache;
    .locals 2

    const-class v0, Lopenlight/co/camera/view/cache/FontCache;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lopenlight/co/camera/view/cache/FontCache;->sInstance:Lopenlight/co/camera/view/cache/FontCache;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lopenlight/co/camera/view/cache/FontCache;

    invoke-direct {v1}, Lopenlight/co/camera/view/cache/FontCache;-><init>()V

    sput-object v1, Lopenlight/co/camera/view/cache/FontCache;->sInstance:Lopenlight/co/camera/view/cache/FontCache;

    .line 35
    :cond_0
    sget-object v1, Lopenlight/co/camera/view/cache/FontCache;->sInstance:Lopenlight/co/camera/view/cache/FontCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 31
    monitor-exit v0

    throw v1
.end method

.method private getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1

    .line 47
    iget-object v0, p0, Lopenlight/co/camera/view/cache/FontCache;->mFontCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 50
    :try_start_0
    invoke-static {}, Lopenlight/co/camera/CameraApp;->get()Lopenlight/co/camera/CameraApp;

    move-result-object v0

    invoke-virtual {v0}, Lopenlight/co/camera/CameraApp;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    iget-object p0, p0, Lopenlight/co/camera/view/cache/FontCache;->mFontCache:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 52
    sget-object p1, Lopenlight/co/camera/view/cache/FontCache;->TAG:Ljava/lang/String;

    const-string v0, "Error getting typeface"

    invoke-static {p1, v0, p0}, Lopenlight/co/lib/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getHarmoniaBold()Landroid/graphics/Typeface;
    .locals 1

    const-string v0, "harmonia-semibold.ttf"

    .line 43
    invoke-direct {p0, v0}, Lopenlight/co/camera/view/cache/FontCache;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getHarmoniaRegular()Landroid/graphics/Typeface;
    .locals 1

    const-string v0, "harmonia-regular.ttf"

    .line 39
    invoke-direct {p0, v0}, Lopenlight/co/camera/view/cache/FontCache;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method
