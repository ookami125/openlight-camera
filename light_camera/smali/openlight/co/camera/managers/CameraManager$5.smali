.class synthetic Lopenlight/co/camera/managers/CameraManager$5;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/managers/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$light$co$camera$utils$CameraState$SessionState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 457
    invoke-static {}, Lopenlight/co/camera/utils/CameraState$SessionState;->values()[Lopenlight/co/camera/utils/CameraState$SessionState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lopenlight/co/camera/managers/CameraManager$5;->$SwitchMap$light$co$camera$utils$CameraState$SessionState:[I

    :try_start_0
    sget-object v0, Lopenlight/co/camera/managers/CameraManager$5;->$SwitchMap$light$co$camera$utils$CameraState$SessionState:[I

    sget-object v1, Lopenlight/co/camera/utils/CameraState$SessionState;->PREVIEW:Lopenlight/co/camera/utils/CameraState$SessionState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lopenlight/co/camera/managers/CameraManager$5;->$SwitchMap$light$co$camera$utils$CameraState$SessionState:[I

    sget-object v1, Lopenlight/co/camera/utils/CameraState$SessionState;->WAITING_FOR_FOCUS_TRIGGER:Lopenlight/co/camera/utils/CameraState$SessionState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lopenlight/co/camera/managers/CameraManager$5;->$SwitchMap$light$co$camera$utils$CameraState$SessionState:[I

    sget-object v1, Lopenlight/co/camera/utils/CameraState$SessionState;->WAITING_FOR_FOCUS_ACHIEVED:Lopenlight/co/camera/utils/CameraState$SessionState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lopenlight/co/camera/managers/CameraManager$5;->$SwitchMap$light$co$camera$utils$CameraState$SessionState:[I

    sget-object v1, Lopenlight/co/camera/utils/CameraState$SessionState;->WAITING_FOR_STILL_CAPTURE_COMPLETION:Lopenlight/co/camera/utils/CameraState$SessionState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lopenlight/co/camera/managers/CameraManager$5;->$SwitchMap$light$co$camera$utils$CameraState$SessionState:[I

    sget-object v1, Lopenlight/co/camera/utils/CameraState$SessionState;->WAITING_FOR_BURST_CAPTURE_COMPLETION:Lopenlight/co/camera/utils/CameraState$SessionState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lopenlight/co/camera/managers/CameraManager$5;->$SwitchMap$light$co$camera$utils$CameraState$SessionState:[I

    sget-object v1, Lopenlight/co/camera/utils/CameraState$SessionState;->WAITING_FOR_3A_CONVERGENCE:Lopenlight/co/camera/utils/CameraState$SessionState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
