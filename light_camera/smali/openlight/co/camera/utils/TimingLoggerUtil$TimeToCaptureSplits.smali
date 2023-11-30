.class public final enum Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;
.super Ljava/lang/Enum;
.source "TimingLoggerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/utils/TimingLoggerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeToCaptureSplits"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

.field public static final enum AE_PRE_CAPTURE_TRIGGER:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

.field public static final enum CAPTURE_COMPLETE:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

.field public static final enum HARD_KEY_PRESS_PROCESS:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

.field public static final enum IN_STATE_STILL_CAPTURE:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

.field public static final enum ISSUE_CAPTURE_REQUEST_TO_PLATFORM:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

.field public static final enum JPEG_AVAILABLE:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

.field public static final enum JPEG_SAVED:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

.field public static final enum RAW_AVAILABLE:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

.field public static final enum RAW_SAVED:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

.field public static final enum SOFT_BUTTON_PRESS:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

.field public static final enum TEST_TRIGGER:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 21
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    const-string v1, "HARD_KEY_PRESS_PROCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->HARD_KEY_PRESS_PROCESS:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    .line 22
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    const-string v1, "SOFT_BUTTON_PRESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->SOFT_BUTTON_PRESS:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    .line 23
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    const-string v1, "TEST_TRIGGER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->TEST_TRIGGER:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    .line 24
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    const-string v1, "AE_PRE_CAPTURE_TRIGGER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->AE_PRE_CAPTURE_TRIGGER:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    .line 25
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    const-string v1, "IN_STATE_STILL_CAPTURE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->IN_STATE_STILL_CAPTURE:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    .line 26
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    const-string v1, "ISSUE_CAPTURE_REQUEST_TO_PLATFORM"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->ISSUE_CAPTURE_REQUEST_TO_PLATFORM:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    .line 27
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    const-string v1, "CAPTURE_COMPLETE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->CAPTURE_COMPLETE:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    .line 28
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    const-string v1, "JPEG_AVAILABLE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->JPEG_AVAILABLE:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    .line 29
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    const-string v1, "RAW_AVAILABLE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->RAW_AVAILABLE:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    .line 30
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    const-string v1, "JPEG_SAVED"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->JPEG_SAVED:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    .line 31
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    const-string v1, "RAW_SAVED"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->RAW_SAVED:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    const/16 v0, 0xb

    .line 20
    new-array v0, v0, [Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->HARD_KEY_PRESS_PROCESS:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->SOFT_BUTTON_PRESS:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->TEST_TRIGGER:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    aput-object v1, v0, v4

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->AE_PRE_CAPTURE_TRIGGER:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    aput-object v1, v0, v5

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->IN_STATE_STILL_CAPTURE:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    aput-object v1, v0, v6

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->ISSUE_CAPTURE_REQUEST_TO_PLATFORM:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    aput-object v1, v0, v7

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->CAPTURE_COMPLETE:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    aput-object v1, v0, v8

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->JPEG_AVAILABLE:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    aput-object v1, v0, v9

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->RAW_AVAILABLE:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    aput-object v1, v0, v10

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->JPEG_SAVED:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    aput-object v1, v0, v11

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->RAW_SAVED:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    aput-object v1, v0, v12

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->$VALUES:[Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;
    .locals 1

    .line 20
    const-class v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;
    .locals 1

    .line 20
    sget-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->$VALUES:[Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    invoke-virtual {v0}, [Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToCaptureSplits;

    return-object v0
.end method
