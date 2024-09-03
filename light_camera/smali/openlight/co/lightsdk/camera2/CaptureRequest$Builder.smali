.class public final Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;
.super Ljava/lang/Object;
.source "CaptureRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/lightsdk/camera2/CaptureRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final CONTROL_BURST_FPS_MIN_VALUE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CaptureRequest$Builder"

.field private static final mBuilderMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBaseCaptureRequestBuilder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 64
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->mBuilderMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->mBaseCaptureRequestBuilder:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static get(Landroid/hardware/camera2/CaptureRequest$Builder;)Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;
    .registers 3

    .line 78
    invoke-static {}, Lopenlight/co/lightsdk/camera2/Light;->isInitalized()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 82
    sget-object v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->mBuilderMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 83
    sget-object v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->mBuilderMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;

    return-object p0

    .line 85
    :cond_17
    new-instance v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;

    invoke-direct {v0, p0}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 86
    sget-object v1, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->mBuilderMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 79
    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Light.init() must be first called before any other operations"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Landroid/hardware/camera2/CaptureRequest;
    .registers 1

    .line 262
    iget-object p0, p0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->mBaseCaptureRequestBuilder:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    return-object p0
.end method

.method public enableStackedCaptureState(Z)V
    .registers 3

    .line 214
    sget-object v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;->CONTROL_STACKED_CAPTURE_STATE:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->set(Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method set(Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .registers 7
    .param p1    # Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lopenlight/co/lightsdk/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 251
    invoke-static {}, Lopenlight/co/lightsdk/camera2/KeyMapperInternal;->get()Lopenlight/co/lightsdk/camera2/KeyMapperInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lopenlight/co/lightsdk/camera2/KeyMapperInternal;->getVendorRequestKey(Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    .line 252
    sget-object v1, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vendor Key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object p0, p0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->mBaseCaptureRequestBuilder:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p0, v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public setBurstFps(I)V
    .registers 3

    .line 229
    invoke-static {}, Lopenlight/co/lightsdk/camera2/Util;->isLightDevice()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x2

    if-lt p1, v0, :cond_13

    .line 231
    sget-object v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;->CONTROL_BURST_FPS:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->set(Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    .line 233
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum supported burst fps is 2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 237
    :cond_1b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This operation is not supported for the current device"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFocusType(I)V
    .registers 3

    .line 192
    invoke-static {}, Lopenlight/co/lightsdk/camera2/Util;->isLightDevice()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 193
    sget-object v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;->CONTROL_FOCUS_TYPE:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->set(Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    .line 195
    :cond_10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This operation is not supported for the current device"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setIsoPriority(II)V
    .registers 4

    .line 108
    invoke-static {}, Lopenlight/co/lightsdk/camera2/Util;->isLightDevice()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 109
    sget-object v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;->CONTROL_ISO_PRIORITY_MIN_KEY:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->set(Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 110
    sget-object p1, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;->CONTROL_ISO_PRIORITY_MAX_KEY:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->set(Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    .line 112
    :cond_19
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This operation is not supported for the current device"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setShutterPriority(JJ)V
    .registers 6

    .line 139
    invoke-static {}, Lopenlight/co/lightsdk/camera2/Util;->isLightDevice()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 140
    sget-object v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;->CONTROL_SHUTTER_PRIORITY_MIN_KEY:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->set(Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 141
    sget-object p1, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;->CONTROL_SHUTTER_PRIORITY_MAX_KEY:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->set(Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    .line 143
    :cond_19
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This operation is not supported for the current device"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setZoomFactor(F)V
    .registers 3

    .line 160
    invoke-static {}, Lopenlight/co/lightsdk/camera2/Util;->isLightDevice()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 161
    sget-object v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;->CONTROL_ZOOM_FACTOR:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;->set(Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    .line 163
    :cond_10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This operation is not supported for the current device"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
