.class synthetic Lopenlight/co/camera/view/setting/SettingAdapter$1;
.super Ljava/lang/Object;
.source "SettingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/view/setting/SettingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$light$co$camera$view$setting$SettingAdapter$SettingsId:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 460
    invoke-static {}, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->values()[Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$1;->$SwitchMap$light$co$camera$view$setting$SettingAdapter$SettingsId:[I

    :try_start_9
    sget-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$1;->$SwitchMap$light$co$camera$view$setting$SettingAdapter$SettingsId:[I

    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->IN_POCKET_DETECTION:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_14

    :catch_14
    :try_start_14
    sget-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$1;->$SwitchMap$light$co$camera$view$setting$SettingAdapter$SettingsId:[I

    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->LENS_BLOCKED_DETECTION:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    sget-object v0, Lopenlight/co/camera/view/setting/SettingAdapter$1;->$SwitchMap$light$co$camera$view$setting$SettingAdapter$SettingsId:[I

    sget-object v1, Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;->ENCRYPT_IMAGES:Lopenlight/co/camera/view/setting/SettingAdapter$SettingsId;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method
