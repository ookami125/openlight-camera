.class synthetic Lopenlight/co/camera/ImagePreviewFragment$4;
.super Ljava/lang/Object;
.source "ImagePreviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/ImagePreviewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$light$co$camera$listener$HardKeyManager$KeyAction:[I

.field static final synthetic $SwitchMap$light$co$camera$utils$CameraState$StillCaptureMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 704
    invoke-static {}, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->values()[Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lopenlight/co/camera/ImagePreviewFragment$4;->$SwitchMap$light$co$camera$listener$HardKeyManager$KeyAction:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lopenlight/co/camera/ImagePreviewFragment$4;->$SwitchMap$light$co$camera$listener$HardKeyManager$KeyAction:[I

    sget-object v2, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->DOWN:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lopenlight/co/camera/ImagePreviewFragment$4;->$SwitchMap$light$co$camera$listener$HardKeyManager$KeyAction:[I

    sget-object v3, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->UP:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lopenlight/co/camera/ImagePreviewFragment$4;->$SwitchMap$light$co$camera$listener$HardKeyManager$KeyAction:[I

    sget-object v3, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->LONG_PRESS:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 706
    :catch_2
    invoke-static {}, Lopenlight/co/camera/utils/CameraState$StillCaptureMode;->values()[Lopenlight/co/camera/utils/CameraState$StillCaptureMode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lopenlight/co/camera/ImagePreviewFragment$4;->$SwitchMap$light$co$camera$utils$CameraState$StillCaptureMode:[I

    :try_start_3
    sget-object v2, Lopenlight/co/camera/ImagePreviewFragment$4;->$SwitchMap$light$co$camera$utils$CameraState$StillCaptureMode:[I

    sget-object v3, Lopenlight/co/camera/utils/CameraState$StillCaptureMode;->SINGLE:Lopenlight/co/camera/utils/CameraState$StillCaptureMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lopenlight/co/camera/ImagePreviewFragment$4;->$SwitchMap$light$co$camera$utils$CameraState$StillCaptureMode:[I

    sget-object v2, Lopenlight/co/camera/utils/CameraState$StillCaptureMode;->BURST:Lopenlight/co/camera/utils/CameraState$StillCaptureMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
