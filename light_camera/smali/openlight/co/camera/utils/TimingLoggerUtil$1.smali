.class synthetic Lopenlight/co/camera/utils/TimingLoggerUtil$1;
.super Ljava/lang/Object;
.source "TimingLoggerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/utils/TimingLoggerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToAutoFocusSplits:[I

.field static final synthetic $SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToCaptureSplits:[I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 87
    invoke-static {}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->values()[Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToAutoFocusSplits:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToAutoFocusSplits:[I

    sget-object v2, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->HARD_KEY_PRESS_START:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToAutoFocusSplits:[I

    sget-object v3, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->SOFT_ROI_TAP:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToAutoFocusSplits:[I

    sget-object v4, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->SIGNIFICANT_MOTION:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToAutoFocusSplits:[I

    sget-object v5, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->FACE_DETECTED:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToAutoFocusSplits:[I

    sget-object v6, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->FOCUS_LOCKED:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToAutoFocusSplits:[I

    sget-object v7, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->INTERNAL_TRIGGER:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToAutoFocusSplits:[I

    sget-object v8, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->TEST:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToAutoFocusSplits:[I

    sget-object v9, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->HARD_KEY_PRESS_PROCESS:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v8, 0x9

    :try_start_8
    sget-object v9, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToAutoFocusSplits:[I

    sget-object v10, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->START_AE_METERING:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/16 v9, 0xa

    :try_start_9
    sget-object v10, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToAutoFocusSplits:[I

    sget-object v11, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->START_FOCUS:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/16 v10, 0xb

    :try_start_a
    sget-object v11, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToAutoFocusSplits:[I

    sget-object v12, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->ISSUE_FOCUS_REQUEST_TO_PLATFORM:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v11, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToAutoFocusSplits:[I

    sget-object v12, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->FOCUS_ACHIEVED:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    const/16 v13, 0xc

    aput v13, v11, v12
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 57
    :catch_b
    invoke-static {}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->values()[Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToCaptureSplits:[I

    :try_start_c
    sget-object v11, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToCaptureSplits:[I

    sget-object v12, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->HARD_KEY_PRESS_PROCESS:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToCaptureSplits:[I

    sget-object v11, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->SOFT_BUTTON_PRESS:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v1, v0, v11
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToCaptureSplits:[I

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->TEST_TRIGGER:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToCaptureSplits:[I

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->AE_PRE_CAPTURE_TRIGGER:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToCaptureSplits:[I

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->IN_STATE_STILL_CAPTURE:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToCaptureSplits:[I

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->ISSUE_CAPTURE_REQUEST_TO_PLATFORM:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToCaptureSplits:[I

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->RAW_AVAILABLE:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToCaptureSplits:[I

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->JPEG_AVAILABLE:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToCaptureSplits:[I

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->RAW_SAVED:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToCaptureSplits:[I

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->CAPTURE_COMPLETE:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$1;->$SwitchMap$light$co$camera$utils$TimingLoggerUtil$TimeToCaptureSplits:[I

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->JPEG_SAVED:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v10, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    return-void
.end method
