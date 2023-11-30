.class synthetic Lopenlight/co/camera/VideoController$2;
.super Ljava/lang/Object;
.source "VideoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/VideoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$light$co$camera$managers$video$VideoManager$ErrorType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 316
    invoke-static {}, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;->values()[Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lopenlight/co/camera/VideoController$2;->$SwitchMap$light$co$camera$managers$video$VideoManager$ErrorType:[I

    :try_start_0
    sget-object v0, Lopenlight/co/camera/VideoController$2;->$SwitchMap$light$co$camera$managers$video$VideoManager$ErrorType:[I

    sget-object v1, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;->FILE_SAVE_FAILED:Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lopenlight/co/camera/VideoController$2;->$SwitchMap$light$co$camera$managers$video$VideoManager$ErrorType:[I

    sget-object v1, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;->MAX_FILE_SIZE_REACHED:Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lopenlight/co/camera/VideoController$2;->$SwitchMap$light$co$camera$managers$video$VideoManager$ErrorType:[I

    sget-object v1, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;->VIDEO_RECORD_START_FAILED:Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lopenlight/co/camera/VideoController$2;->$SwitchMap$light$co$camera$managers$video$VideoManager$ErrorType:[I

    sget-object v1, Lopenlight/co/camera/managers/video/VideoManager$ErrorType;->VIDEO_RECORD_STOP_FAILED:Lopenlight/co/camera/managers/video/VideoManager$ErrorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
