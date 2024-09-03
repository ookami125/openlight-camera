.class synthetic Lopenlight/co/camera/testintent/TestIntentManager$1;
.super Ljava/lang/Object;
.source "TestIntentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/testintent/TestIntentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$light$co$camera$testintent$TestIntentManager$CITest:[I

.field static final synthetic $SwitchMap$light$co$camera$utils$SoundManager$Theme:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 173
    invoke-static {}, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->values()[Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lopenlight/co/camera/testintent/TestIntentManager$1;->$SwitchMap$light$co$camera$testintent$TestIntentManager$CITest:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lopenlight/co/camera/testintent/TestIntentManager$1;->$SwitchMap$light$co$camera$testintent$TestIntentManager$CITest:[I

    sget-object v2, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->FOCAL_LENGTH:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lopenlight/co/camera/testintent/TestIntentManager$1;->$SwitchMap$light$co$camera$testintent$TestIntentManager$CITest:[I

    sget-object v3, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->MODE:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Lopenlight/co/camera/testintent/TestIntentManager$1;->$SwitchMap$light$co$camera$testintent$TestIntentManager$CITest:[I

    sget-object v4, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->ISO:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2a
    sget-object v3, Lopenlight/co/camera/testintent/TestIntentManager$1;->$SwitchMap$light$co$camera$testintent$TestIntentManager$CITest:[I

    sget-object v4, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->EXPOSURE_TIME:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_35

    :catch_35
    :try_start_35
    sget-object v3, Lopenlight/co/camera/testintent/TestIntentManager$1;->$SwitchMap$light$co$camera$testintent$TestIntentManager$CITest:[I

    sget-object v4, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->EV:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_40

    :catch_40
    :try_start_40
    sget-object v3, Lopenlight/co/camera/testintent/TestIntentManager$1;->$SwitchMap$light$co$camera$testintent$TestIntentManager$CITest:[I

    sget-object v4, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->FLASH:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4b
    sget-object v3, Lopenlight/co/camera/testintent/TestIntentManager$1;->$SwitchMap$light$co$camera$testintent$TestIntentManager$CITest:[I

    sget-object v4, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->BURST:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_56

    :catch_56
    :try_start_56
    sget-object v3, Lopenlight/co/camera/testintent/TestIntentManager$1;->$SwitchMap$light$co$camera$testintent$TestIntentManager$CITest:[I

    sget-object v4, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->AUDIO:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0x8

    aput v5, v3, v4
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_62

    :catch_62
    :try_start_62
    sget-object v3, Lopenlight/co/camera/testintent/TestIntentManager$1;->$SwitchMap$light$co$camera$testintent$TestIntentManager$CITest:[I

    sget-object v4, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->METERING:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0x9

    aput v5, v3, v4
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6e

    :catch_6e
    :try_start_6e
    sget-object v3, Lopenlight/co/camera/testintent/TestIntentManager$1;->$SwitchMap$light$co$camera$testintent$TestIntentManager$CITest:[I

    sget-object v4, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->TIMER:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0xa

    aput v5, v3, v4
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_7a

    :catch_7a
    :try_start_7a
    sget-object v3, Lopenlight/co/camera/testintent/TestIntentManager$1;->$SwitchMap$light$co$camera$testintent$TestIntentManager$CITest:[I

    sget-object v4, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->FOCUS:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0xb

    aput v5, v3, v4
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_86

    :catch_86
    :try_start_86
    sget-object v3, Lopenlight/co/camera/testintent/TestIntentManager$1;->$SwitchMap$light$co$camera$testintent$TestIntentManager$CITest:[I

    sget-object v4, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->CAF:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0xc

    aput v5, v3, v4
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_92

    :catch_92
    :try_start_92
    sget-object v3, Lopenlight/co/camera/testintent/TestIntentManager$1;->$SwitchMap$light$co$camera$testintent$TestIntentManager$CITest:[I

    sget-object v4, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->TRIGGER_CAPTURE:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0xd

    aput v5, v3, v4
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_9e

    .line 402
    :catch_9e
    invoke-static {}, Lopenlight/co/camera/utils/SoundManager$Theme;->values()[Lopenlight/co/camera/utils/SoundManager$Theme;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lopenlight/co/camera/testintent/TestIntentManager$1;->$SwitchMap$light$co$camera$utils$SoundManager$Theme:[I

    :try_start_a7
    sget-object v3, Lopenlight/co/camera/testintent/TestIntentManager$1;->$SwitchMap$light$co$camera$utils$SoundManager$Theme:[I

    sget-object v4, Lopenlight/co/camera/utils/SoundManager$Theme;->OFF:Lopenlight/co/camera/utils/SoundManager$Theme;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_b1} :catch_b1

    :catch_b1
    :try_start_b1
    sget-object v0, Lopenlight/co/camera/testintent/TestIntentManager$1;->$SwitchMap$light$co$camera$utils$SoundManager$Theme:[I

    sget-object v3, Lopenlight/co/camera/utils/SoundManager$Theme;->CLASSIC:Lopenlight/co/camera/utils/SoundManager$Theme;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_bb} :catch_bb

    :catch_bb
    :try_start_bb
    sget-object v0, Lopenlight/co/camera/testintent/TestIntentManager$1;->$SwitchMap$light$co$camera$utils$SoundManager$Theme:[I

    sget-object v1, Lopenlight/co/camera/utils/SoundManager$Theme;->MODERN:Lopenlight/co/camera/utils/SoundManager$Theme;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_c5} :catch_c5

    :catch_c5
    return-void
.end method
