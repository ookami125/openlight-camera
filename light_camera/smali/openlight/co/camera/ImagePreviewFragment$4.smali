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
    .registers 5

    .line 704
    invoke-static {}, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->values()[Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lopenlight/co/camera/ImagePreviewFragment$4;->$SwitchMap$light$co$camera$listener$HardKeyManager$KeyAction:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lopenlight/co/camera/ImagePreviewFragment$4;->$SwitchMap$light$co$camera$listener$HardKeyManager$KeyAction:[I

    sget-object v2, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->DOWN:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lopenlight/co/camera/ImagePreviewFragment$4;->$SwitchMap$light$co$camera$listener$HardKeyManager$KeyAction:[I

    sget-object v3, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->UP:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v2, Lopenlight/co/camera/ImagePreviewFragment$4;->$SwitchMap$light$co$camera$listener$HardKeyManager$KeyAction:[I

    sget-object v3, Lopenlight/co/camera/listener/HardKeyManager$KeyAction;->LONG_PRESS:Lopenlight/co/camera/listener/HardKeyManager$KeyAction;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    .line 706
    :catch_2a
    invoke-static {}, Lopenlight/co/camera/utils/CameraState$StillCaptureMode;->values()[Lopenlight/co/camera/utils/CameraState$StillCaptureMode;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lopenlight/co/camera/ImagePreviewFragment$4;->$SwitchMap$light$co$camera$utils$CameraState$StillCaptureMode:[I

    :try_start_33
    sget-object v2, Lopenlight/co/camera/ImagePreviewFragment$4;->$SwitchMap$light$co$camera$utils$CameraState$StillCaptureMode:[I

    sget-object v3, Lopenlight/co/camera/utils/CameraState$StillCaptureMode;->SINGLE:Lopenlight/co/camera/utils/CameraState$StillCaptureMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3d
    sget-object v0, Lopenlight/co/camera/ImagePreviewFragment$4;->$SwitchMap$light$co$camera$utils$CameraState$StillCaptureMode:[I

    sget-object v2, Lopenlight/co/camera/utils/CameraState$StillCaptureMode;->BURST:Lopenlight/co/camera/utils/CameraState$StillCaptureMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_47} :catch_47

    :catch_47
    return-void
.end method
