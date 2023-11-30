.class final enum Lopenlight/co/camera/testintent/TestIntentManager$CITest;
.super Ljava/lang/Enum;
.source "TestIntentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/testintent/TestIntentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CITest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/testintent/TestIntentManager$CITest;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/testintent/TestIntentManager$CITest;

.field public static final enum AUDIO:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

.field public static final enum BURST:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

.field public static final enum CAF:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

.field public static final enum EV:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

.field public static final enum EXPOSURE_TIME:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

.field public static final enum FLASH:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

.field public static final enum FOCAL_LENGTH:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

.field public static final enum FOCUS:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

.field public static final enum ISO:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

.field public static final enum METERING:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

.field public static final enum MODE:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

.field public static final enum TIMER:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

.field public static final enum TRIGGER_CAPTURE:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

.field private static final sVals:[Lopenlight/co/camera/testintent/TestIntentManager$CITest;


# instance fields
.field private final mEventMsg:I

.field private final mTestKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 59
    new-instance v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    const-string v1, "FOCAL_LENGTH"

    const-string v2, "focal_length_test"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lopenlight/co/camera/testintent/TestIntentManager$CITest;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->FOCAL_LENGTH:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    .line 60
    new-instance v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    const-string v1, "MODE"

    const-string v2, "mode_test"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v4}, Lopenlight/co/camera/testintent/TestIntentManager$CITest;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->MODE:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    .line 61
    new-instance v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    const-string v1, "ISO"

    const-string v2, "iso_test"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2, v5}, Lopenlight/co/camera/testintent/TestIntentManager$CITest;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->ISO:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    .line 62
    new-instance v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    const-string v1, "EXPOSURE_TIME"

    const-string v2, "exposure_test"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2, v6}, Lopenlight/co/camera/testintent/TestIntentManager$CITest;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->EXPOSURE_TIME:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    .line 63
    new-instance v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    const-string v1, "EV"

    const-string v2, "ev_test"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2, v7}, Lopenlight/co/camera/testintent/TestIntentManager$CITest;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->EV:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    .line 64
    new-instance v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    const-string v1, "FLASH"

    const-string v2, "flash_test"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2, v8}, Lopenlight/co/camera/testintent/TestIntentManager$CITest;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->FLASH:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    .line 65
    new-instance v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    const-string v1, "BURST"

    const-string v2, "burst_test"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2, v9}, Lopenlight/co/camera/testintent/TestIntentManager$CITest;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->BURST:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    .line 66
    new-instance v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    const-string v1, "AUDIO"

    const-string v2, "audio_test"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2, v10}, Lopenlight/co/camera/testintent/TestIntentManager$CITest;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->AUDIO:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    .line 67
    new-instance v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    const-string v1, "METERING"

    const-string v2, "metering_test"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2, v11}, Lopenlight/co/camera/testintent/TestIntentManager$CITest;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->METERING:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    .line 68
    new-instance v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    const-string v1, "TIMER"

    const-string v2, "timer_test"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2, v12}, Lopenlight/co/camera/testintent/TestIntentManager$CITest;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->TIMER:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    .line 69
    new-instance v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    const-string v1, "FOCUS"

    const-string v2, "focus_test"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2, v13}, Lopenlight/co/camera/testintent/TestIntentManager$CITest;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->FOCUS:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    .line 70
    new-instance v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    const-string v1, "CAF"

    const-string v2, "caf_test"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2, v14}, Lopenlight/co/camera/testintent/TestIntentManager$CITest;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->CAF:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    .line 71
    new-instance v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    const-string v1, "TRIGGER_CAPTURE"

    const-string v2, "capture_test"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2, v15}, Lopenlight/co/camera/testintent/TestIntentManager$CITest;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->TRIGGER_CAPTURE:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    const/16 v0, 0xd

    .line 58
    new-array v0, v0, [Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    sget-object v1, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->FOCAL_LENGTH:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->MODE:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    aput-object v1, v0, v4

    sget-object v1, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->ISO:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    aput-object v1, v0, v5

    sget-object v1, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->EXPOSURE_TIME:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    aput-object v1, v0, v6

    sget-object v1, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->EV:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    aput-object v1, v0, v7

    sget-object v1, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->FLASH:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    aput-object v1, v0, v8

    sget-object v1, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->BURST:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    aput-object v1, v0, v9

    sget-object v1, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->AUDIO:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    aput-object v1, v0, v10

    sget-object v1, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->METERING:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    aput-object v1, v0, v11

    sget-object v1, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->TIMER:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    aput-object v1, v0, v12

    sget-object v1, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->FOCUS:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    aput-object v1, v0, v13

    sget-object v1, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->CAF:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    aput-object v1, v0, v14

    sget-object v1, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->TRIGGER_CAPTURE:Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    aput-object v1, v0, v15

    sput-object v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->$VALUES:[Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    .line 75
    invoke-static {}, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->values()[Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    move-result-object v0

    sput-object v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->sVals:[Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput-object p3, p0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->mTestKey:Ljava/lang/String;

    .line 79
    iput p4, p0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->mEventMsg:I

    return-void
.end method

.method static forIndex(I)Lopenlight/co/camera/testintent/TestIntentManager$CITest;
    .locals 1

    .line 91
    sget-object v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->sVals:[Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/testintent/TestIntentManager$CITest;
    .locals 1

    .line 58
    const-class v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/testintent/TestIntentManager$CITest;
    .locals 1

    .line 58
    sget-object v0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->$VALUES:[Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    invoke-virtual {v0}, [Lopenlight/co/camera/testintent/TestIntentManager$CITest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/testintent/TestIntentManager$CITest;

    return-object v0
.end method


# virtual methods
.method getEventMessage()I
    .locals 0

    .line 87
    iget p0, p0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->mEventMsg:I

    return p0
.end method

.method getTestKey()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lopenlight/co/camera/testintent/TestIntentManager$CITest;->mTestKey:Ljava/lang/String;

    return-object p0
.end method
