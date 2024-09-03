.class public final Lopenlight/co/lightsdk/camera2/CaptureRequest;
.super Ljava/lang/Object;
.source "CaptureRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;,
        Lopenlight/co/lightsdk/camera2/CaptureRequest$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isStackedCaptureEnabled(Landroid/hardware/camera2/CaptureRequest;)Z
    .registers 3

    .line 280
    invoke-static {}, Lopenlight/co/lightsdk/camera2/KeyMapperInternal;->get()Lopenlight/co/lightsdk/camera2/KeyMapperInternal;

    move-result-object v0

    sget-object v1, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;->CONTROL_STACKED_CAPTURE_STATE:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Lopenlight/co/lightsdk/camera2/KeyMapperInternal;->getVendorRequestKey(Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v0

    .line 281
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method
