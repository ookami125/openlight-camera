.class public final enum Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;
.super Ljava/lang/Enum;
.source "TimingLoggerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lopenlight/co/camera/utils/TimingLoggerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeToAutoFocusSplits"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

.field public static final enum FACE_DETECTED:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

.field public static final enum FOCUS_ACHIEVED:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

.field public static final enum FOCUS_LOCKED:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

.field public static final enum HARD_KEY_PRESS_PROCESS:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

.field public static final enum HARD_KEY_PRESS_START:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

.field public static final enum INTERNAL_TRIGGER:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

.field public static final enum ISSUE_FOCUS_REQUEST_TO_PLATFORM:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

.field public static final enum SIGNIFICANT_MOTION:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

.field public static final enum SOFT_ROI_TAP:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

.field public static final enum START_AE_METERING:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

.field public static final enum START_FOCUS:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

.field public static final enum TEST:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 35
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    const-string v1, "HARD_KEY_PRESS_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->HARD_KEY_PRESS_START:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    .line 36
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    const-string v1, "HARD_KEY_PRESS_PROCESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->HARD_KEY_PRESS_PROCESS:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    .line 37
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    const-string v1, "SOFT_ROI_TAP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->SOFT_ROI_TAP:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    .line 38
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    const-string v1, "TEST"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->TEST:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    .line 39
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    const-string v1, "SIGNIFICANT_MOTION"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->SIGNIFICANT_MOTION:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    .line 40
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    const-string v1, "FACE_DETECTED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->FACE_DETECTED:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    .line 41
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    const-string v1, "FOCUS_LOCKED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->FOCUS_LOCKED:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    .line 42
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    const-string v1, "INTERNAL_TRIGGER"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->INTERNAL_TRIGGER:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    .line 43
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    const-string v1, "START_AE_METERING"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->START_AE_METERING:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    .line 44
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    const-string v1, "START_FOCUS"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->START_FOCUS:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    .line 45
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    const-string v1, "ISSUE_FOCUS_REQUEST_TO_PLATFORM"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->ISSUE_FOCUS_REQUEST_TO_PLATFORM:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    .line 46
    new-instance v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    const-string v1, "FOCUS_ACHIEVED"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->FOCUS_ACHIEVED:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    const/16 v0, 0xc

    .line 34
    new-array v0, v0, [Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->HARD_KEY_PRESS_START:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    aput-object v1, v0, v2

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->HARD_KEY_PRESS_PROCESS:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    aput-object v1, v0, v3

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->SOFT_ROI_TAP:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    aput-object v1, v0, v4

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->TEST:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    aput-object v1, v0, v5

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->SIGNIFICANT_MOTION:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    aput-object v1, v0, v6

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->FACE_DETECTED:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    aput-object v1, v0, v7

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->FOCUS_LOCKED:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    aput-object v1, v0, v8

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->INTERNAL_TRIGGER:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    aput-object v1, v0, v9

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->START_AE_METERING:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    aput-object v1, v0, v10

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->START_FOCUS:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    aput-object v1, v0, v11

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->ISSUE_FOCUS_REQUEST_TO_PLATFORM:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    aput-object v1, v0, v12

    sget-object v1, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->FOCUS_ACHIEVED:Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    aput-object v1, v0, v13

    sput-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->$VALUES:[Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;
    .locals 1

    .line 34
    const-class v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    return-object p0
.end method

.method public static values()[Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;
    .locals 1

    .line 34
    sget-object v0, Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->$VALUES:[Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    invoke-virtual {v0}, [Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lopenlight/co/camera/utils/TimingLoggerUtil$TimeToAutoFocusSplits;

    return-object v0
.end method
