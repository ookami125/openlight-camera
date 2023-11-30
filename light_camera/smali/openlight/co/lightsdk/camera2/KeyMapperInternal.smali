.class Lopenlight/co/lightsdk/camera2/KeyMapperInternal;
.super Ljava/lang/Object;
.source "KeyMapperInternal.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyMapperInternal"

.field private static final sInstance:Lopenlight/co/lightsdk/camera2/KeyMapperInternal;


# instance fields
.field private final mVendorCaptureRequestKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mVendorCaptureResultKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lopenlight/co/lightsdk/camera2/KeyMapperInternal;

    invoke-direct {v0}, Lopenlight/co/lightsdk/camera2/KeyMapperInternal;-><init>()V

    sput-object v0, Lopenlight/co/lightsdk/camera2/KeyMapperInternal;->sInstance:Lopenlight/co/lightsdk/camera2/KeyMapperInternal;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lopenlight/co/lightsdk/camera2/KeyMapperInternal;->mVendorCaptureRequestKeyMap:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lopenlight/co/lightsdk/camera2/KeyMapperInternal;->mVendorCaptureResultKeyMap:Ljava/util/HashMap;

    return-void
.end method

.method public static get()Lopenlight/co/lightsdk/camera2/KeyMapperInternal;
    .locals 1

    .line 23
    sget-object v0, Lopenlight/co/lightsdk/camera2/KeyMapperInternal;->sInstance:Lopenlight/co/lightsdk/camera2/KeyMapperInternal;

    return-object v0
.end method


# virtual methods
.method getVendorRequestKey(Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;)Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lopenlight/co/lightsdk/camera2/CaptureRequest$Key<",
            "TT;>;)",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lopenlight/co/lightsdk/camera2/KeyMapperInternal;->mVendorCaptureRequestKeyMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    return-object v0

    .line 45
    :cond_0
    :try_start_0
    const-class v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 47
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;->mName:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p1, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;->mClassType:Ljava/lang/Class;

    aput-object v2, v1, v5

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 51
    iget-object p0, p0, Lopenlight/co/lightsdk/camera2/KeyMapperInternal;->mVendorCaptureRequestKeyMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method getVendorResultKey(Lopenlight/co/lightsdk/camera2/CaptureResult$Key;)Landroid/hardware/camera2/CaptureResult$Key;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lopenlight/co/lightsdk/camera2/CaptureResult$Key<",
            "TT;>;)",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "TT;>;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lopenlight/co/lightsdk/camera2/KeyMapperInternal;->mVendorCaptureResultKeyMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    check-cast v0, Landroid/hardware/camera2/CaptureResult$Key;

    return-object v0

    .line 76
    :cond_0
    :try_start_0
    const-class v0, Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 79
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lopenlight/co/lightsdk/camera2/CaptureResult$Key;->mName:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p1, Lopenlight/co/lightsdk/camera2/CaptureResult$Key;->mClassType:Ljava/lang/Class;

    aput-object v2, v1, v5

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureResult$Key;

    .line 82
    iget-object p0, p0, Lopenlight/co/lightsdk/camera2/KeyMapperInternal;->mVendorCaptureResultKeyMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object p0, Lopenlight/co/lightsdk/camera2/KeyMapperInternal;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vendor Key: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 87
    sget-object p1, Lopenlight/co/lightsdk/camera2/KeyMapperInternal;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception found while creating key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
