.class public Lopenlight/co/lightsdk/camera2/Light;
.super Ljava/lang/Object;
.source "Light.java"


# static fields
.field static final SHARED_PREFERENCES:Ljava/lang/String; = "openlight.co.lightsdk.PREFERENCE_FILE"

.field private static final TAG:Ljava/lang/String; = "Light"

.field private static sInstance:Lopenlight/co/lightsdk/camera2/Light;


# instance fields
.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lopenlight/co/lightsdk/camera2/Light;->mContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static get()Lopenlight/co/lightsdk/camera2/Light;
    .locals 2

    .line 91
    sget-object v0, Lopenlight/co/lightsdk/camera2/Light;->sInstance:Lopenlight/co/lightsdk/camera2/Light;

    if-eqz v0, :cond_0

    sget-object v0, Lopenlight/co/lightsdk/camera2/Light;->sInstance:Lopenlight/co/lightsdk/camera2/Light;

    iget-object v0, v0, Lopenlight/co/lightsdk/camera2/Light;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Lopenlight/co/lightsdk/camera2/Light;->sInstance:Lopenlight/co/lightsdk/camera2/Light;

    return-object v0

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Instance not created yet. Call init."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lopenlight/co/lightsdk/camera2/Light;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lopenlight/co/lightsdk/camera2/Light;->sInstance:Lopenlight/co/lightsdk/camera2/Light;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lopenlight/co/lightsdk/camera2/Light;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lopenlight/co/lightsdk/camera2/Light;-><init>(Landroid/content/Context;)V

    sput-object v1, Lopenlight/co/lightsdk/camera2/Light;->sInstance:Lopenlight/co/lightsdk/camera2/Light;

    .line 76
    sget-object p0, Lopenlight/co/lightsdk/camera2/Light;->TAG:Ljava/lang/String;

    const-string v1, "Light SDK initialized"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit v0

    return-void

    .line 78
    :cond_0
    :try_start_1
    sget-object p0, Lopenlight/co/lightsdk/camera2/Light;->TAG:Ljava/lang/String;

    const-string v1, "Light SDK previously initialized, cannot call init twice"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Light SDK previously initialized"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 73
    monitor-exit v0

    throw p0
.end method

.method static isInitalized()Z
    .locals 2

    .line 56
    sget-object v0, Lopenlight/co/lightsdk/camera2/Light;->sInstance:Lopenlight/co/lightsdk/camera2/Light;

    if-eqz v0, :cond_0

    sget-object v0, Lopenlight/co/lightsdk/camera2/Light;->sInstance:Lopenlight/co/lightsdk/camera2/Light;

    iget-object v0, v0, Lopenlight/co/lightsdk/camera2/Light;->mContext:Ljava/lang/ref/WeakReference;

    .line 57
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lopenlight/co/lightsdk/camera2/Light;->sInstance:Lopenlight/co/lightsdk/camera2/Light;

    iget-object v0, v0, Lopenlight/co/lightsdk/camera2/Light;->mContext:Ljava/lang/ref/WeakReference;

    .line 58
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lopenlight/co/lightsdk/camera2/Light;->sInstance:Lopenlight/co/lightsdk/camera2/Light;

    iget-object v0, v0, Lopenlight/co/lightsdk/camera2/Light;->mContext:Ljava/lang/ref/WeakReference;

    .line 60
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    .line 98
    iget-object p0, p0, Lopenlight/co/lightsdk/camera2/Light;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method
