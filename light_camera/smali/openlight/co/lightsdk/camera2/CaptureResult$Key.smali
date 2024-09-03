.class final Lopenlight/co/lightsdk/camera2/CaptureResult$Key;
.super Ljava/lang/Object;
.source "CaptureResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/lightsdk/camera2/CaptureResult;
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
.field public static final CONTROL_IS_ON_TRIPOD:Lopenlight/co/lightsdk/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/lightsdk/camera2/CaptureResult$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_IS_STACKED_CAPTURE:Lopenlight/co/lightsdk/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/lightsdk/camera2/CaptureResult$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_STACKED_NUM_IMAGES:Lopenlight/co/lightsdk/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/lightsdk/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTROL_STACKED_RAW_IMAGE_SIZE:Lopenlight/co/lightsdk/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lopenlight/co/lightsdk/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
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

    .line 115
    new-instance v0, Lopenlight/co/lightsdk/camera2/CaptureResult$Key;

    const-string v1, "co.light.stacked_capture_fw"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lopenlight/co/lightsdk/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lopenlight/co/lightsdk/camera2/CaptureResult$Key;->CONTROL_IS_STACKED_CAPTURE:Lopenlight/co/lightsdk/camera2/CaptureResult$Key;

    .line 119
    new-instance v0, Lopenlight/co/lightsdk/camera2/CaptureResult$Key;

    const-string v1, "co.light.tripod_fw"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lopenlight/co/lightsdk/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lopenlight/co/lightsdk/camera2/CaptureResult$Key;->CONTROL_IS_ON_TRIPOD:Lopenlight/co/lightsdk/camera2/CaptureResult$Key;

    .line 123
    new-instance v0, Lopenlight/co/lightsdk/camera2/CaptureResult$Key;

    const-string v1, "co.light.stacked_capture_total_size"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lopenlight/co/lightsdk/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lopenlight/co/lightsdk/camera2/CaptureResult$Key;->CONTROL_STACKED_RAW_IMAGE_SIZE:Lopenlight/co/lightsdk/camera2/CaptureResult$Key;

    .line 127
    new-instance v0, Lopenlight/co/lightsdk/camera2/CaptureResult$Key;

    const-string v1, "co.light.stacked_capture_num_transfers"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lopenlight/co/lightsdk/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lopenlight/co/lightsdk/camera2/CaptureResult$Key;->CONTROL_STACKED_NUM_IMAGES:Lopenlight/co/lightsdk/camera2/CaptureResult$Key;

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

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p2, p0, Lopenlight/co/lightsdk/camera2/CaptureResult$Key;->mClassType:Ljava/lang/Class;

    .line 136
    iput-object p1, p0, Lopenlight/co/lightsdk/camera2/CaptureResult$Key;->mName:Ljava/lang/String;

    return-void
.end method
