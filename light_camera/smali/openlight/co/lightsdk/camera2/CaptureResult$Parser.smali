.class public final Lopenlight/co/lightsdk/camera2/CaptureResult$Parser;
.super Ljava/lang/Object;
.source "CaptureResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/lightsdk/camera2/CaptureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parser"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CaptureResult$Parser"


# instance fields
.field private final mBaseCaptureResult:Landroid/hardware/camera2/CaptureResult;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/hardware/camera2/CaptureResult;)V
    .registers 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lopenlight/co/lightsdk/camera2/CaptureResult$Parser;->mBaseCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-void
.end method

.method public static get(Landroid/hardware/camera2/CaptureResult;)Lopenlight/co/lightsdk/camera2/CaptureResult$Parser;
    .registers 2

    .line 36
    invoke-static {}, Lopenlight/co/lightsdk/camera2/Light;->isInitalized()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 40
    new-instance v0, Lopenlight/co/lightsdk/camera2/CaptureResult$Parser;

    invoke-direct {v0, p0}, Lopenlight/co/lightsdk/camera2/CaptureResult$Parser;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    return-object v0

    .line 37
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Light.init() must be first called before any other operations"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method get(Lopenlight/co/lightsdk/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .registers 3
    .param p1    # Lopenlight/co/lightsdk/camera2/CaptureResult$Key;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lopenlight/co/lightsdk/camera2/CaptureResult$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 102
    invoke-static {}, Lopenlight/co/lightsdk/camera2/KeyMapperInternal;->get()Lopenlight/co/lightsdk/camera2/KeyMapperInternal;

    move-result-object v0

    .line 103
    invoke-virtual {v0, p1}, Lopenlight/co/lightsdk/camera2/KeyMapperInternal;->getVendorResultKey(Lopenlight/co/lightsdk/camera2/CaptureResult$Key;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object p1

    .line 104
    iget-object p0, p0, Lopenlight/co/lightsdk/camera2/CaptureResult$Parser;->mBaseCaptureResult:Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getTotalRawStackSize()I
    .registers 2

    .line 94
    invoke-static {}, Lopenlight/co/lightsdk/camera2/Util;->isLightDevice()Z

    move-result v0

    if-nez v0, :cond_13

    .line 95
    sget-object v0, Lopenlight/co/lightsdk/camera2/CaptureResult$Key;->CONTROL_STACKED_RAW_IMAGE_SIZE:Lopenlight/co/lightsdk/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Lopenlight/co/lightsdk/camera2/CaptureResult$Parser;->get(Lopenlight/co/lightsdk/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 97
    :cond_13
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This operation is not supported for the current device"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isCaptureStacked()Ljava/lang/Byte;
    .registers 2

    .line 56
    invoke-static {}, Lopenlight/co/lightsdk/camera2/Util;->isLightDevice()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 57
    sget-object v0, Lopenlight/co/lightsdk/camera2/CaptureResult$Key;->CONTROL_IS_STACKED_CAPTURE:Lopenlight/co/lightsdk/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Lopenlight/co/lightsdk/camera2/CaptureResult$Parser;->get(Lopenlight/co/lightsdk/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    return-object p0

    .line 59
    :cond_f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This operation is not supported for the current device"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isOnTripod()Ljava/lang/Byte;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 76
    invoke-static {}, Lopenlight/co/lightsdk/camera2/Util;->isLightDevice()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 77
    sget-object v0, Lopenlight/co/lightsdk/camera2/CaptureResult$Key;->CONTROL_IS_ON_TRIPOD:Lopenlight/co/lightsdk/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Lopenlight/co/lightsdk/camera2/CaptureResult$Parser;->get(Lopenlight/co/lightsdk/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    return-object p0

    .line 79
    :cond_f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This operation is not supported for the current device"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
