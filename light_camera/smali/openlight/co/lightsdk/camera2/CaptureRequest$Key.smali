.class final Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;
.super Ljava/lang/Object;
.source "CaptureRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/lightsdk/camera2/CaptureRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CONTROL_BURST_FPS:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/lightsdk/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_FOCUS_TYPE:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/lightsdk/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_ISO_PRIORITY_MAX_KEY:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/lightsdk/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_ISO_PRIORITY_MIN_KEY:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/lightsdk/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_SHUTTER_PRIORITY_MAX_KEY:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/lightsdk/camera2/CaptureRequest$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_SHUTTER_PRIORITY_MIN_KEY:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/lightsdk/camera2/CaptureRequest$Key<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_STACKED_CAPTURE_STATE:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/lightsdk/camera2/CaptureRequest$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_ZOOM_FACTOR:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/lightsdk/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mClassType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 299
    new-instance v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    const-string v1, "co.light.zoom_factor"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;->CONTROL_ZOOM_FACTOR:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    .line 304
    new-instance v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    const-string v1, "co.light.iso_range_min"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;->CONTROL_ISO_PRIORITY_MIN_KEY:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    .line 309
    new-instance v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    const-string v1, "co.light.iso_range_max"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;->CONTROL_ISO_PRIORITY_MAX_KEY:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    .line 314
    new-instance v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    const-string v1, "co.light.shutter_range_min"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;->CONTROL_SHUTTER_PRIORITY_MIN_KEY:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    .line 319
    new-instance v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    const-string v1, "co.light.shutter_range_max"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;->CONTROL_SHUTTER_PRIORITY_MAX_KEY:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    .line 324
    new-instance v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    const-string v1, "co.light.focus_type"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;->CONTROL_FOCUS_TYPE:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    .line 328
    new-instance v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    const-string v1, "co.light.stacked_capture_state"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;->CONTROL_STACKED_CAPTURE_STATE:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    .line 332
    new-instance v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    const-string v1, "co.light.burst_fps"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;->CONTROL_BURST_FPS:Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p2, p0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;->mClassType:Ljava/lang/Class;

    .line 340
    iput-object p1, p0, Lopenlight/co/lightsdk/camera2/CaptureRequest$Key;->mName:Ljava/lang/String;

    return-void
.end method
