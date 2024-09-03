.class synthetic Lopenlight/co/camera/view/hud/HudLayout$3;
.super Ljava/lang/Object;
.source "HudLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/hud/HudLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$light$co$camera$CameraMode:[I

.field static final synthetic $SwitchMap$light$co$camera$view$hud$HudLayout$HudValue:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 553
    invoke-static {}, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->values()[Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lopenlight/co/camera/view/hud/HudLayout$3;->$SwitchMap$light$co$camera$view$hud$HudLayout$HudValue:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lopenlight/co/camera/view/hud/HudLayout$3;->$SwitchMap$light$co$camera$view$hud$HudLayout$HudValue:[I

    sget-object v2, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->EV:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lopenlight/co/camera/view/hud/HudLayout$3;->$SwitchMap$light$co$camera$view$hud$HudLayout$HudValue:[I

    sget-object v3, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->ISO:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Lopenlight/co/camera/view/hud/HudLayout$3;->$SwitchMap$light$co$camera$view$hud$HudLayout$HudValue:[I

    sget-object v4, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->ZOOM:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    const/4 v3, 0x4

    :try_start_2b
    sget-object v4, Lopenlight/co/camera/view/hud/HudLayout$3;->$SwitchMap$light$co$camera$view$hud$HudLayout$HudValue:[I

    sget-object v5, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->SHUTTER_SPEED:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_35

    :catch_35
    :try_start_35
    sget-object v4, Lopenlight/co/camera/view/hud/HudLayout$3;->$SwitchMap$light$co$camera$view$hud$HudLayout$HudValue:[I

    sget-object v5, Lopenlight/co/camera/view/hud/HudLayout$HudValue;->RESOLUTION:Lopenlight/co/camera/view/hud/HudLayout$HudValue;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x5

    aput v6, v4, v5
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_40

    .line 172
    :catch_40
    invoke-static {}, Lopenlight/co/camera/CameraMode;->values()[Lopenlight/co/camera/CameraMode;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lopenlight/co/camera/view/hud/HudLayout$3;->$SwitchMap$light$co$camera$CameraMode:[I

    :try_start_49
    sget-object v4, Lopenlight/co/camera/view/hud/HudLayout$3;->$SwitchMap$light$co$camera$CameraMode:[I

    sget-object v5, Lopenlight/co/camera/CameraMode;->AUTO:Lopenlight/co/camera/CameraMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_53} :catch_53

    :catch_53
    :try_start_53
    sget-object v0, Lopenlight/co/camera/view/hud/HudLayout$3;->$SwitchMap$light$co$camera$CameraMode:[I

    sget-object v4, Lopenlight/co/camera/CameraMode;->ISO:Lopenlight/co/camera/CameraMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_5d} :catch_5d

    :catch_5d
    :try_start_5d
    sget-object v0, Lopenlight/co/camera/view/hud/HudLayout$3;->$SwitchMap$light$co$camera$CameraMode:[I

    sget-object v1, Lopenlight/co/camera/CameraMode;->SHUTTER:Lopenlight/co/camera/CameraMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_67} :catch_67

    :catch_67
    :try_start_67
    sget-object v0, Lopenlight/co/camera/view/hud/HudLayout$3;->$SwitchMap$light$co$camera$CameraMode:[I

    sget-object v1, Lopenlight/co/camera/CameraMode;->MANUAL:Lopenlight/co/camera/CameraMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_71} :catch_71

    :catch_71
    return-void
.end method
